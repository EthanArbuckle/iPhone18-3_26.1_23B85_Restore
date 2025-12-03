@interface WFDictionaryValueVariableAggrandizement
- (NSString)dictionaryKey;
- (WFDictionaryValueVariableAggrandizement)initWithDictionary:(id)dictionary;
- (WFDictionaryValueVariableAggrandizement)initWithDictionaryKey:(id)key;
- (id)processedContentClasses:(id)classes;
- (void)applyToContentCollection:(id)collection completionHandler:(id)handler;
@end

@implementation WFDictionaryValueVariableAggrandizement

- (void)applyToContentCollection:(id)collection completionHandler:(id)handler
{
  handlerCopy = handler;
  collectionCopy = collection;
  v8 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__WFDictionaryValueVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke;
  v10[3] = &unk_1E8378930;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [collectionCopy generateCollectionByCoercingToItemClass:v8 completionHandler:v10];
}

void __86__WFDictionaryValueVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 items];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [v8 dictionary];
    v10 = [*(a1 + 32) dictionaryKey];
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v13 = MEMORY[0x1E6996E78];
      v14 = [*(a1 + 32) dictionaryKey];
      v15 = [v8 dictionary];
      v22 = 0;
      v11 = [v13 evaluateKeyPath:v14 onObject:v15 error:&v22];
      v12 = v22;

      if (!v11)
      {
        (*(*(a1 + 40) + 16))();
        goto LABEL_7;
      }
    }

    v16 = MEMORY[0x1E6996DD8];
    v17 = [v8 preferredFileType];
    v18 = [v8 attributionSet];
    v19 = [v16 itemsWithPropertyListObject:v11 preferredDictionaryType:v17 attributionSet:v18];

    v20 = *(a1 + 40);
    v21 = [MEMORY[0x1E6996D40] collectionWithItems:v19];
    (*(v20 + 16))(v20, v21, 0);

LABEL_7:
    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))();
LABEL_8:
}

- (id)processedContentClasses:(id)classes
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v3 orderedSetWithObjects:{v4, v5, v6, v7, objc_opt_class(), 0}];
}

- (NSString)dictionaryKey
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"DictionaryKey"];

  return v3;
}

- (WFDictionaryValueVariableAggrandizement)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"DictionaryKey"];
  v6 = objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v16 = "WFEnforceClass";
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v6;
      v10 = v20;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v14.receiver = self;
    v14.super_class = WFDictionaryValueVariableAggrandizement;
    self = [(WFVariableAggrandizement *)&v14 initWithDictionary:dictionaryCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFDictionaryValueVariableAggrandizement)initWithDictionaryKey:(id)key
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"DictionaryKey";
  v11[0] = key;
  v4 = MEMORY[0x1E695DF20];
  keyCopy = key;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(WFDictionaryValueVariableAggrandizement *)self initWithDictionary:v6];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end