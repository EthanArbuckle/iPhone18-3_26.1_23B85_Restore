@interface WFPropertyVariableAggrandizement
- (BOOL)negativeProperty;
- (NSString)negativePropertyName;
- (NSString)propertyName;
- (WFPropertyListObject)propertyUserInfo;
- (WFPropertyVariableAggrandizement)initWithDictionary:(id)dictionary;
- (WFPropertyVariableAggrandizement)initWithPropertyName:(id)name propertyUserInfo:(id)info negativeProperty:(BOOL)property negativePropertyName:(id)propertyName;
- (id)processedContentClasses:(id)classes;
- (void)applyToContentCollection:(id)collection completionHandler:(id)handler;
@end

@implementation WFPropertyVariableAggrandizement

- (void)applyToContentCollection:(id)collection completionHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__WFPropertyVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke;
  v4[3] = &unk_1E8373478;
  v4[4] = self;
  [collection transformItemsAndFlattenUsingBlock:v4 completionHandler:handler];
}

void __79__WFPropertyVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [*(a1 + 32) propertyName];
  v9 = [v7 propertyForName:v8];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__WFPropertyVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_2;
    v10[3] = &unk_1E837D5A8;
    v10[4] = *(a1 + 32);
    v11 = v6;
    [v9 getValuesForObject:v5 completionHandler:v10];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

void __79__WFPropertyVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__WFPropertyVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_3;
  v4[3] = &unk_1E837E220;
  v4[4] = *(a1 + 32);
  v3 = [a2 if_map:v4];
  (*(*(a1 + 40) + 16))();
}

id __79__WFPropertyVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = v3;
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 localizedValue];
    goto LABEL_4;
  }

  v5 = v3;
  if ([*(a1 + 32) negativeProperty])
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = objc_opt_class();
    v10 = v5;
    if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = getWFGeneralLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v14 = 136315906;
        v15 = "WFEnforceClass";
        v16 = 2114;
        v17 = v10;
        v18 = 2114;
        v19 = objc_opt_class();
        v20 = 2114;
        v21 = v9;
        v13 = v19;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v14, 0x2Au);
      }

      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v5 = [v8 numberWithBool:{objc_msgSend(v11, "BOOLValue") ^ 1}];
  }

LABEL_5:

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)processedContentClasses:(id)classes
{
  v4 = MEMORY[0x1E695DFB8];
  classesCopy = classes;
  v6 = [v4 alloc];
  array = [classesCopy array];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__WFPropertyVariableAggrandizement_processedContentClasses___block_invoke;
  v11[3] = &unk_1E8373450;
  v11[4] = self;
  v8 = [array if_compactMap:v11];
  v9 = [v6 initWithArray:v8];

  return v9;
}

id __60__WFPropertyVariableAggrandizement_processedContentClasses___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) propertyName];
  v4 = [a2 propertyForName:v3];
  v5 = [v4 valueItemClass];

  return v5;
}

- (NSString)negativePropertyName
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"NegativePropertyName"];

  return v3;
}

- (BOOL)negativeProperty
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"NegativeProperty"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (WFPropertyListObject)propertyUserInfo
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"PropertyUserInfo"];

  return v3;
}

- (NSString)propertyName
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"PropertyName"];

  return v3;
}

- (WFPropertyVariableAggrandizement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"PropertyName"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8.receiver = self;
    v8.super_class = WFPropertyVariableAggrandizement;
    self = [(WFVariableAggrandizement *)&v8 initWithDictionary:dictionaryCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFPropertyVariableAggrandizement)initWithPropertyName:(id)name propertyUserInfo:(id)info negativeProperty:(BOOL)property negativePropertyName:(id)propertyName
{
  propertyCopy = property;
  propertyNameCopy = propertyName;
  infoCopy = info;
  nameCopy = name;
  v13 = objc_opt_new();
  [v13 setObject:nameCopy forKey:@"PropertyName"];

  [v13 setValue:infoCopy forKey:@"PropertyUserInfo"];
  if (propertyCopy)
  {
    v14 = MEMORY[0x1E695E118];
  }

  else
  {
    v14 = 0;
  }

  if (propertyCopy)
  {
    v15 = propertyNameCopy;
  }

  else
  {
    v15 = 0;
  }

  [v13 setValue:v14 forKey:@"NegativeProperty"];
  [v13 setValue:v15 forKey:@"NegativePropertyName"];

  v16 = [(WFPropertyVariableAggrandizement *)self initWithDictionary:v13];
  return v16;
}

@end