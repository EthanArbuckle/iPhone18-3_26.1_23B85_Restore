@interface MTLJSONAdapter
+ (id)JSONArrayFromModels:(id)models error:(id *)error;
+ (id)JSONDictionaryFromModel:(id)model error:(id *)error;
+ (id)arrayTransformerWithModelClass:(Class)class;
+ (id)dictionaryTransformerWithModelClass:(Class)class;
+ (id)modelOfClass:(Class)class fromJSONDictionary:(id)dictionary error:(id *)error;
+ (id)modelsOfClass:(Class)class fromJSONArray:(id)array error:(id *)error;
+ (id)transformerForModelPropertiesOfClass:(Class)class;
+ (id)transformerForModelPropertiesOfObjCType:(const char *)type;
+ (id)valueTransformersForModelClass:(Class)class;
- (MTLJSONAdapter)init;
- (MTLJSONAdapter)initWithModelClass:(Class)class;
- (id)JSONAdapterForModelClass:(Class)class error:(id *)error;
- (id)JSONDictionaryFromModel:(id)model error:(id *)error;
- (id)modelFromJSONDictionary:(id)dictionary error:(id *)error;
@end

@implementation MTLJSONAdapter

- (id)JSONAdapterForModelClass:(Class)class error:(id *)error
{
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"modelClass != nil"}];
  }

  if (([(objc_class *)class conformsToProtocol:&unk_1F4AB1410, error]& 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"[modelClass conformsToProtocol:@protocol(MTLJSONSerializing)]"}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  jSONAdaptersByModelClass = [(MTLJSONAdapter *)selfCopy JSONAdaptersByModelClass];
  v9 = [jSONAdaptersByModelClass objectForKey:class];

  if (!v9)
  {
    v9 = [objc_alloc(objc_opt_class()) initWithModelClass:class];
    if (v9)
    {
      jSONAdaptersByModelClass2 = [(MTLJSONAdapter *)selfCopy JSONAdaptersByModelClass];
      [jSONAdaptersByModelClass2 setObject:v9 forKey:class];
    }
  }

  v11 = v9;

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)modelFromJSONDictionary:(id)dictionary error:(id *)error
{
  v61[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  [(MTLJSONAdapter *)self modelClass];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(objc_class *)[(MTLJSONAdapter *)self modelClass] classForParsingJSONDictionary:dictionaryCopy];
    if (!v7)
    {
      if (error)
      {
        v60[0] = *MEMORY[0x1E696A578];
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        v36 = [mainBundle localizedStringForKey:@"Could not parse JSON" value:&stru_1F4A1C408 table:0];
        v60[1] = *MEMORY[0x1E696A588];
        v61[0] = v36;
        mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
        v38 = [mainBundle2 localizedStringForKey:@"No model class could be found to parse the JSON dictionary." value:&stru_1F4A1C408 table:0];
        v61[1] = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];

        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLJSONAdapterErrorDomain" code:2 userInfo:v39];
      }

      v10 = 0;
      goto LABEL_47;
    }

    v8 = v7;
    if (v7 != [(MTLJSONAdapter *)self modelClass])
    {
      if (([(objc_class *)v8 conformsToProtocol:&unk_1F4AB1410]& 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:276 description:{@"Class %@ returned from +classForParsingJSONDictionary: does not conform to <MTLJSONSerializing>", v8}];
      }

      v9 = [(MTLJSONAdapter *)self JSONAdapterForModelClass:v8 error:error];
      v10 = [v9 modelFromJSONDictionary:dictionaryCopy error:error];

      goto LABEL_47;
    }
  }

  v47 = dictionaryCopy;
  v42 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  selfCopy = self;
  obj = [(objc_class *)[(MTLJSONAdapter *)self modelClass] propertyKeys];
  v44 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v44)
  {
    v43 = *v55;
    v11 = &selRef_temporaryDirectoryURL;
LABEL_9:
    v12 = 0;
    v41 = v11[77];
    while (1)
    {
      if (*v55 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v54 + 1) + 8 * v12);
      jSONKeyPathsByPropertyKey = [(MTLJSONAdapter *)selfCopy JSONKeyPathsByPropertyKey];
      v15 = [jSONKeyPathsByPropertyKey objectForKeyedSubscript:v13];

      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v17 = v15;
          v18 = [v17 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v18)
          {
            v19 = *v51;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v51 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v50 + 1) + 8 * i);
                v49 = 0;
                v22 = [v47 mtl_valueForJSONKeyPath:v21 success:&v49 error:error];
                v23 = v22;
                if (v49 != 1)
                {

                  goto LABEL_45;
                }

                if (v22)
                {
                  [dictionary setObject:v22 forKeyedSubscript:v21];
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v50 objects:v58 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v49 = 0;
          dictionary = [v47 mtl_valueForJSONKeyPath:v15 success:&v49 error:error];
          if (v49 != 1)
          {
            v17 = v15;
            goto LABEL_45;
          }
        }

        if (dictionary)
        {
          valueTransformersByPropertyKey = [(MTLJSONAdapter *)selfCopy valueTransformersByPropertyKey];
          v25 = [valueTransformersByPropertyKey objectForKeyedSubscript:v13];

          if (v25)
          {
            null = [MEMORY[0x1E695DFB0] null];
            v27 = [dictionary isEqual:null];

            if (v27)
            {

              dictionary = 0;
            }

            if (objc_opt_respondsToSelector())
            {
              v28 = v25;
              v49 = 1;
              v29 = [v28 transformedValue:dictionary success:&v49 error:error];

              v30 = v49;
              if ((v30 & 1) == 0)
              {

                v17 = v15;
                dictionary = v29;
LABEL_45:

                v10 = 0;
                v31 = obj;
                goto LABEL_46;
              }
            }

            else
            {
              v29 = [v25 transformedValue:dictionary];
            }

            dictionary = v29;
            if (!v29)
            {
              dictionary = [MEMORY[0x1E695DFB0] null];
            }
          }

          [v42 setObject:dictionary forKeyedSubscript:v13];
        }
      }

      if (++v12 == v44)
      {
        v44 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
        v11 = &selRef_temporaryDirectoryURL;
        if (v44)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  v31 = [(objc_class *)[(MTLJSONAdapter *)selfCopy modelClass] modelWithDictionary:v42 error:error];
  if ([v31 validate:error])
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v10 = v32;
LABEL_46:

  dictionaryCopy = v47;
LABEL_47:

  v33 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)JSONDictionaryFromModel:(id)model error:(id *)error
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"model != nil"}];
  }

  [(MTLJSONAdapter *)self modelClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"[model isKindOfClass:self.modelClass]"}];
  }

  modelClass = [(MTLJSONAdapter *)self modelClass];
  if (modelClass == objc_opt_class())
  {
    v11 = MEMORY[0x1E695DFD8];
    jSONKeyPathsByPropertyKey = [(MTLJSONAdapter *)self JSONKeyPathsByPropertyKey];
    allKeys = [jSONKeyPathsByPropertyKey allKeys];
    v14 = [v11 setWithArray:allKeys];
    v15 = [(MTLJSONAdapter *)self serializablePropertyKeys:v14 forModel:modelCopy];

    dictionaryValue = [modelCopy dictionaryValue];
    allObjects = [v15 allObjects];
    v18 = [dictionaryValue dictionaryWithValuesForKeys:allObjects];

    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__66073;
    v32 = __Block_byref_object_dispose__66074;
    v33 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __48__MTLJSONAdapter_JSONDictionaryFromModel_error___block_invoke;
    v24[3] = &unk_1E837E108;
    v24[4] = self;
    v26 = &v34;
    v27 = &v28;
    v20 = v19;
    v25 = v20;
    [v18 enumerateKeysAndObjectsUsingBlock:v24];
    if (*(v35 + 24) == 1)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
      if (error)
      {
        *error = v29[5];
      }
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v9 = [(MTLJSONAdapter *)self JSONAdapterForModelClass:objc_opt_class() error:error];
    v10 = [v9 JSONDictionaryFromModel:modelCopy error:error];
  }

  return v10;
}

void __48__MTLJSONAdapter_JSONDictionaryFromModel_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) JSONKeyPathsByPropertyKey];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [*(a1 + 32) valueTransformersByPropertyKey];
    v12 = [v11 objectForKeyedSubscript:v7];

    if ([objc_opt_class() allowsReverseTransformation])
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      v14 = [v8 isEqual:v13];

      if (v14)
      {

        v8 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v15 = *(*(a1 + 48) + 8);
        v16 = *(*(a1 + 56) + 8);
        obj = *(v16 + 40);
        v17 = [v12 reverseTransformedValue:v8 success:v15 + 24 error:&obj];
        objc_storeStrong((v16 + 40), obj);

        if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
        {
          *a4 = 1;
LABEL_24:

          v8 = v17;
          goto LABEL_25;
        }
      }

      else
      {
        v18 = [v12 reverseTransformedValue:v8];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [MEMORY[0x1E695DFB0] null];
        }

        v17 = v20;
      }
    }

    else
    {
      v17 = v8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      __48__MTLJSONAdapter_JSONDictionaryFromModel_error___block_invoke_2(*(a1 + 40), v10);
      [*(a1 + 40) setValue:v17 forKeyPath:v10];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v12;
      v31 = v7;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v21 = v10;
      v22 = [v21 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v33;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v33 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v32 + 1) + 8 * i);
            __48__MTLJSONAdapter_JSONDictionaryFromModel_error___block_invoke_2(*(a1 + 40), v26);
            v27 = *(a1 + 40);
            v28 = [v17 objectForKeyedSubscript:v26];
            [v27 setValue:v28 forKeyPath:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v23);
      }

      v12 = v30;
      v7 = v31;
    }

    goto LABEL_24;
  }

LABEL_25:

  v29 = *MEMORY[0x1E69E9840];
}

void __48__MTLJSONAdapter_JSONDictionaryFromModel_error___block_invoke_2(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 componentsSeparatedByString:@"."];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v8);
        v11 = [v9 valueForKey:v10];

        if (!v11)
        {
          v12 = [MEMORY[0x1E695DF90] dictionary];
          [v9 setValue:v12 forKey:v10];
        }

        v3 = [v9 valueForKey:v10];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (MTLJSONAdapter)initWithModelClass:(Class)class
{
  classCopy = class;
  v50 = *MEMORY[0x1E69E9840];
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"modelClass != nil"}];
  }

  if (([(objc_class *)classCopy conformsToProtocol:&unk_1F4AB1410]& 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"[modelClass conformsToProtocol:@protocol(MTLJSONSerializing)]"}];
  }

  v47.receiver = self;
  v47.super_class = MTLJSONAdapter;
  v6 = [(MTLJSONAdapter *)&v47 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelClass, classCopy);
    jSONKeyPathsByPropertyKey = [(objc_class *)classCopy JSONKeyPathsByPropertyKey];
    JSONKeyPathsByPropertyKey = v7->_JSONKeyPathsByPropertyKey;
    v7->_JSONKeyPathsByPropertyKey = jSONKeyPathsByPropertyKey;

    propertyKeys = [(objc_class *)[(MTLJSONAdapter *)v7 modelClass] propertyKeys];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = v7->_JSONKeyPathsByPropertyKey;
    v38 = [(NSDictionary *)v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v38)
    {
      v12 = *v44;
      v35 = a2;
      v36 = v11;
      v37 = propertyKeys;
      v33 = classCopy;
      v34 = *v44;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v43 + 1) + 8 * v13);
        if (([propertyKeys containsObject:v14] & 1) == 0)
        {
          break;
        }

        v15 = [(NSDictionary *)v7->_JSONKeyPathsByPropertyKey objectForKeyedSubscript:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          currentHandler5 = v15;
          v17 = [currentHandler5 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v40;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v40 != v19)
                {
                  objc_enumerationMutation(currentHandler5);
                }

                v21 = *(*(&v39 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
                  [currentHandler3 handleFailureInMethod:v35 object:v7 file:@"MTLJSONAdapter.m" lineNumber:159 description:{@"%@ must either map to a JSON key path or a JSON array of key paths, got: %@.", v14, currentHandler5}];

                  currentHandler4 = currentHandler5;
                  v11 = v36;
                  propertyKeys = v37;
                  goto LABEL_28;
                }
              }

              v18 = [currentHandler5 countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v11 = v36;
          propertyKeys = v37;
          v12 = v34;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler4 handleFailureInMethod:v35 object:v7 file:@"MTLJSONAdapter.m" lineNumber:163 description:{@"%@ must either map to a JSON key path or a JSON array of key paths, got: %@.", v14, v15}];
            currentHandler5 = v15;
LABEL_28:

            goto LABEL_29;
          }
        }

        if (++v13 == v38)
        {
          classCopy = v33;
          v38 = [(NSDictionary *)v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
          if (v38)
          {
            goto LABEL_8;
          }

          goto LABEL_25;
        }
      }

      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler5 handleFailureInMethod:v35 object:v7 file:@"MTLJSONAdapter.m" lineNumber:149 description:{@"%@ is not a property of %@.", v14, v33}];
LABEL_29:

      v26 = 0;
      goto LABEL_30;
    }

LABEL_25:

    v22 = [objc_opt_class() valueTransformersForModelClass:classCopy];
    valueTransformersByPropertyKey = v7->_valueTransformersByPropertyKey;
    v7->_valueTransformersByPropertyKey = v22;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    JSONAdaptersByModelClass = v7->_JSONAdaptersByModelClass;
    v7->_JSONAdaptersByModelClass = strongToStrongObjectsMapTable;

    v26 = v7;
LABEL_30:
  }

  else
  {
    v26 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

- (MTLJSONAdapter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:130 description:{@"%@ must be initialized with a model class", objc_opt_class()}];

  return 0;
}

+ (id)transformerForModelPropertiesOfObjCType:(const char *)type
{
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"objCType != NULL"}];
  }

  if (*type == 66 && !type[1])
  {
    mtl_BOOLeanValueTransformer = [MEMORY[0x1E696B0A0] mtl_BOOLeanValueTransformer];
  }

  else
  {
    mtl_BOOLeanValueTransformer = 0;
  }

  return mtl_BOOLeanValueTransformer;
}

+ (id)transformerForModelPropertiesOfClass:(Class)class
{
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:451 description:{@"Invalid parameter not satisfying: %@", @"modelClass != nil"}];
  }

  v5 = NSStringFromClass(class);
  v6 = MTLSelectorWithKeyPattern(v5, "JSONTransformer");

  if (objc_opt_respondsToSelector())
  {
    v7 = ([self methodForSelector:v6])(self, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)valueTransformersForModelClass:(Class)class
{
  v33 = *MEMORY[0x1E69E9840];
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"modelClass != nil"}];
  }

  if (([(objc_class *)class conformsToProtocol:&unk_1F4AB1410]& 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"[modelClass conformsToProtocol:@protocol(MTLJSONSerializing)]"}];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(objc_class *)class propertyKeys];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = MTLSelectorWithKeyPattern(v9, "JSONTransformer");
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([(objc_class *)class JSONTransformerForKey:v9], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v12 = v9;
            Property = class_getProperty(class, [v9 UTF8String]);
            if (!Property)
            {
              continue;
            }

            v14 = mtl_copyPropertyAttributes(Property);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __49__MTLJSONAdapter_valueTransformersForModelClass___block_invoke;
            aBlock[3] = &__block_descriptor_40_e5_v8__0l;
            aBlock[4] = v14;
            v11 = _Block_copy(aBlock);
            if (v14[48] == 64)
            {
              v15 = *(v14 + 5);
              if (v15)
              {
                v16 = [self transformerForModelPropertiesOfClass:v15];
                if (v16)
                {
                  goto LABEL_29;
                }
              }

              if ([v15 conformsToProtocol:&unk_1F4AB1410])
              {
                v16 = [self dictionaryTransformerWithModelClass:v15];
                if (v16)
                {
                  goto LABEL_29;
                }
              }

              v17 = MEMORY[0x1E696B0A0];
              if (!v15)
              {
                v15 = objc_opt_class();
              }

              v16 = [v17 mtl_validatingTransformerForClass:v15];
LABEL_28:
              if (v16)
              {
LABEL_29:
                [dictionary setObject:v16 forKeyedSubscript:v9];
              }

              v11[2](v11);
              goto LABEL_31;
            }

            v18 = [self transformerForModelPropertiesOfObjCType:v14 + 48];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = [MEMORY[0x1E696B0A0] mtl_validatingTransformerForClass:objc_opt_class()];
            }

            v16 = v20;

            goto LABEL_28;
          }

LABEL_12:
          [dictionary setObject:v11 forKeyedSubscript:v9];
          goto LABEL_31;
        }

        v11 = ([(objc_class *)class methodForSelector:v10])(class, v10);
        if (v11)
        {
          goto LABEL_12;
        }

LABEL_31:
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)JSONArrayFromModels:(id)models error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  if (!modelsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"models != nil"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"[models isKindOfClass:NSArray.class]"}];
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(modelsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = modelsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [self JSONDictionaryFromModel:*(*(&v21 + 1) + 8 * i) error:error];
        if (!v14)
        {

          v16 = 0;
          goto LABEL_15;
        }

        v15 = v14;
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = v8;
LABEL_15:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)JSONDictionaryFromModel:(id)model error:(id *)error
{
  modelCopy = model;
  v7 = [[self alloc] initWithModelClass:objc_opt_class()];
  v8 = [v7 JSONDictionaryFromModel:modelCopy error:error];

  return v8;
}

+ (id)modelsOfClass:(Class)class fromJSONArray:(id)array error:(id *)error
{
  v33[2] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (arrayCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = arrayCopy;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [self modelOfClass:class fromJSONDictionary:*(*(&v27 + 1) + 8 * i) error:error];
          if (!v15)
          {

            v17 = 0;
            goto LABEL_16;
          }

          v16 = v15;
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = v9;
    v17 = v9;
  }

  else
  {
    if (!error)
    {
      v17 = 0;
      goto LABEL_17;
    }

    v32[0] = *MEMORY[0x1E696A578];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v19 = [mainBundle localizedStringForKey:@"Missing JSON array" value:&stru_1F4A1C408 table:0];
    v32[1] = *MEMORY[0x1E696A588];
    v33[0] = v19;
    v20 = MEMORY[0x1E696AEC0];
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    v22 = [mainBundle2 localizedStringForKey:@"%@ could not be created because an invalid JSON array was provided: %@" value:&stru_1F4A1C408 table:0];
    v23 = NSStringFromClass(class);
    v24 = [v20 stringWithFormat:v22, v23, objc_opt_class()];
    v33[1] = v24;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

    [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLJSONAdapterErrorDomain" code:3 userInfo:v9];
    *error = v17 = 0;
  }

LABEL_16:

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)modelOfClass:(Class)class fromJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = [[self alloc] initWithModelClass:class];
  v10 = [v9 modelFromJSONDictionary:dictionaryCopy error:error];

  return v10;
}

+ (id)arrayTransformerWithModelClass:(Class)class
{
  v3 = [self dictionaryTransformerWithModelClass:class];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__MTLJSONAdapter_ValueTransformers__arrayTransformerWithModelClass___block_invoke;
  v9[3] = &unk_1E837E190;
  v10 = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MTLJSONAdapter_ValueTransformers__arrayTransformerWithModelClass___block_invoke_2;
  v7[3] = &unk_1E837E190;
  v8 = v10;
  v4 = v10;
  v5 = [MTLValueTransformer transformerUsingForwardBlock:v9 reverseBlock:v7];

  return v5;
}

id __68__MTLJSONAdapter_ValueTransformers__arrayTransformerWithModelClass___block_invoke(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v45[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = a4;
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v35 = v7;
      obj = v7;
      v10 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          v15 = [MEMORY[0x1E695DFB0] null];

          if (v14 == v15)
          {
            break;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = v35;
            if (v8)
            {
              v41[0] = *MEMORY[0x1E696A578];
              v26 = [MEMORY[0x1E696AAE8] mainBundle];
              v34 = [v26 localizedStringForKey:@"Could not convert JSON array to model array" value:&stru_1F4A1C408 table:0];
              v42[0] = v34;
              v41[1] = *MEMORY[0x1E696A588];
              v27 = MEMORY[0x1E696AEC0];
              v28 = [MEMORY[0x1E696AAE8] mainBundle];
              v29 = [v28 localizedStringForKey:@"Expected an NSDictionary or an NSNull value:got: %@." table:{&stru_1F4A1C408, 0}];
              v30 = [v27 stringWithFormat:v29, v14];
              v41[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
              v42[1] = v30;
              v42[2] = v14;
              v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

              *v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v31];
            }

            *a3 = 0;
            goto LABEL_26;
          }

          v16 = [*(a1 + 32) transformedValue:v14 success:a3 error:v8];
          v17 = v16;
          if (!*a3)
          {

            v7 = v35;
LABEL_26:

            v18 = 0;
            goto LABEL_27;
          }

          if (v16)
          {
            goto LABEL_14;
          }

LABEL_15:

          if (v11 == ++v13)
          {
            v11 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_17;
          }
        }

        v17 = [MEMORY[0x1E695DFB0] null];
LABEL_14:
        [v9 addObject:v17];
        goto LABEL_15;
      }

LABEL_17:

      v18 = v9;
      v7 = v35;
LABEL_27:
    }

    else
    {
      if (a4)
      {
        v44[0] = *MEMORY[0x1E696A578];
        v19 = [MEMORY[0x1E696AAE8] mainBundle];
        v20 = [v19 localizedStringForKey:@"Could not convert JSON array to model array" value:&stru_1F4A1C408 table:0];
        v45[0] = v20;
        v44[1] = *MEMORY[0x1E696A588];
        v21 = MEMORY[0x1E696AEC0];
        v22 = [MEMORY[0x1E696AAE8] mainBundle];
        v23 = [v22 localizedStringForKey:@"Expected an NSArray value:got: %@." table:{&stru_1F4A1C408, 0}];
        v24 = [v21 stringWithFormat:v23, v7];
        v44[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v45[1] = v24;
        v45[2] = v7;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v25];
      }

      v18 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v18;
}

id __68__MTLJSONAdapter_ValueTransformers__arrayTransformerWithModelClass___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v45[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = a4;
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v35 = v7;
      obj = v7;
      v10 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          v15 = [MEMORY[0x1E695DFB0] null];

          if (v14 == v15)
          {
            break;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v8)
            {
              v41[0] = *MEMORY[0x1E696A578];
              v26 = [MEMORY[0x1E696AAE8] mainBundle];
              v27 = [v26 localizedStringForKey:@"Could not convert JSON array to model array" value:&stru_1F4A1C408 table:0];
              v42[0] = v27;
              v41[1] = *MEMORY[0x1E696A588];
              v28 = MEMORY[0x1E696AEC0];
              v29 = [MEMORY[0x1E696AAE8] mainBundle];
              v30 = [v29 localizedStringForKey:@"Expected a MTLModel or an NSNull value:got: %@." table:{&stru_1F4A1C408, 0}];
              v31 = [v28 stringWithFormat:v30, v14];
              v41[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
              v42[1] = v31;
              v42[2] = v14;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

              *v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v32];
            }

            *a3 = 0;
            goto LABEL_26;
          }

          v16 = [*(a1 + 32) reverseTransformedValue:v14 success:a3 error:v8];
          v17 = v16;
          if (!*a3)
          {

LABEL_26:
            v18 = 0;
            goto LABEL_27;
          }

          if (v16)
          {
            goto LABEL_14;
          }

LABEL_15:

          if (v11 == ++v13)
          {
            v11 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_17;
          }
        }

        v17 = [MEMORY[0x1E695DFB0] null];
LABEL_14:
        [v9 addObject:v17];
        goto LABEL_15;
      }

LABEL_17:

      v18 = v9;
LABEL_27:
      v7 = v35;
    }

    else
    {
      if (a4)
      {
        v44[0] = *MEMORY[0x1E696A578];
        v19 = [MEMORY[0x1E696AAE8] mainBundle];
        v20 = [v19 localizedStringForKey:@"Could not convert model array to JSON array" value:&stru_1F4A1C408 table:0];
        v45[0] = v20;
        v44[1] = *MEMORY[0x1E696A588];
        v21 = MEMORY[0x1E696AEC0];
        v22 = [MEMORY[0x1E696AAE8] mainBundle];
        v23 = [v22 localizedStringForKey:@"Expected an NSArray value:got: %@." table:{&stru_1F4A1C408, 0}];
        v24 = [v21 stringWithFormat:v23, v7];
        v44[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v45[1] = v24;
        v45[2] = v7;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v25];
      }

      v18 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)dictionaryTransformerWithModelClass:(Class)class
{
  if (([(objc_class *)class conformsToProtocol:&unk_1F4AB1340]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:478 description:{@"Invalid parameter not satisfying: %@", @"[modelClass conformsToProtocol:@protocol(MTLModel)]"}];
  }

  if (([(objc_class *)class conformsToProtocol:&unk_1F4AB1410]& 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MTLJSONAdapter.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"[modelClass conformsToProtocol:@protocol(MTLJSONSerializing)]"}];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__66073;
  v12[4] = __Block_byref_object_dispose__66074;
  v13 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__MTLJSONAdapter_ValueTransformers__dictionaryTransformerWithModelClass___block_invoke;
  v11[3] = &unk_1E837E140;
  v11[4] = v12;
  v11[5] = self;
  v11[6] = class;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__MTLJSONAdapter_ValueTransformers__dictionaryTransformerWithModelClass___block_invoke_2;
  v10[3] = &unk_1E837E168;
  v10[4] = v12;
  v10[5] = self;
  v10[6] = class;
  v6 = [MTLValueTransformer transformerUsingForwardBlock:v11 reverseBlock:v10];
  _Block_object_dispose(v12, 8);

  return v6;
}

id __73__MTLJSONAdapter_ValueTransformers__dictionaryTransformerWithModelClass___block_invoke(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v22[0] = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AAE8] mainBundle];
      v14 = [v13 localizedStringForKey:@"Could not convert JSON dictionary to model object" value:&stru_1F4A1C408 table:0];
      v23[0] = v14;
      v22[1] = *MEMORY[0x1E696A588];
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AAE8] mainBundle];
      v17 = [v16 localizedStringForKey:@"Expected an NSDictionary value:got: %@" table:{&stru_1F4A1C408, 0}];
      v18 = [v15 stringWithFormat:v17, v7];
      v22[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
      v23[1] = v18;
      v23[2] = v7;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v19];
    }

    goto LABEL_10;
  }

  v8 = *(*(*(a1 + 32) + 8) + 40);
  if (!v8)
  {
    v9 = [objc_alloc(*(a1 + 40)) initWithModelClass:*(a1 + 48)];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = *(*(*(a1 + 32) + 8) + 40);
  }

  v12 = [v8 modelFromJSONDictionary:v7 error:a4];
  if (!v12)
  {
LABEL_10:
    v12 = 0;
    *a3 = 0;
  }

LABEL_11:

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

id __73__MTLJSONAdapter_ValueTransformers__dictionaryTransformerWithModelClass___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    if (![v7 conformsToProtocol:&unk_1F4AB1340] || (objc_msgSend(v8, "conformsToProtocol:", &unk_1F4AB1410) & 1) == 0)
    {
      if (a4)
      {
        v23[0] = *MEMORY[0x1E696A578];
        v14 = [MEMORY[0x1E696AAE8] mainBundle];
        v15 = [v14 localizedStringForKey:@"Could not convert model object to JSON dictionary" value:&stru_1F4A1C408 table:0];
        v24[0] = v15;
        v23[1] = *MEMORY[0x1E696A588];
        v16 = MEMORY[0x1E696AEC0];
        v17 = [MEMORY[0x1E696AAE8] mainBundle];
        v18 = [v17 localizedStringForKey:@"Expected a MTLModel object conforming to <MTLJSONSerializing> value:got: %@." table:{&stru_1F4A1C408, 0}];
        v19 = [v16 stringWithFormat:v18, v8];
        v23[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v24[1] = v19;
        v24[2] = v8;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v20];
      }

      goto LABEL_10;
    }

    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (!v9)
    {
      v10 = [objc_alloc(*(a1 + 40)) initWithModelClass:*(a1 + 48)];
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v9 = *(*(*(a1 + 32) + 8) + 40);
    }

    v13 = [v9 JSONDictionaryFromModel:v8 error:a4];
    if (!v13)
    {
LABEL_10:
      v13 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v13;
}

@end