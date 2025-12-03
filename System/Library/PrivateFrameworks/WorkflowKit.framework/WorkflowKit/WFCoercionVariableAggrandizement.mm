@interface WFCoercionVariableAggrandizement
- (BOOL)isEqual:(id)equal;
- (Class)coercionItemClass;
- (WFCoercionVariableAggrandizement)initWithCoercionItemClass:(Class)class;
- (WFCoercionVariableAggrandizement)initWithDictionary:(id)dictionary;
- (id)coercionItemClasses;
- (void)applyToContentCollection:(id)collection completionHandler:(id)handler;
@end

@implementation WFCoercionVariableAggrandizement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  coercionItemClass = [v6 coercionItemClass];

  v8 = coercionItemClass == [(WFCoercionVariableAggrandizement *)self coercionItemClass];
  return v8;
}

- (void)applyToContentCollection:(id)collection completionHandler:(id)handler
{
  handlerCopy = handler;
  collectionCopy = collection;
  coercionItemClasses = [(WFCoercionVariableAggrandizement *)self coercionItemClasses];
  array = [coercionItemClasses array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__WFCoercionVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke;
  v11[3] = &unk_1E837DBF8;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [collectionCopy generateCollectionByCoercingToItemClasses:array completionHandler:v11];
}

- (id)coercionItemClasses
{
  coercionItemClass = [(WFCoercionVariableAggrandizement *)self coercionItemClass];
  if ([(objc_class *)coercionItemClass isSubclassOfClass:objc_opt_class()])
  {
    [MEMORY[0x1E695DFB8] orderedSetWithObjects:{objc_opt_class(), coercionItemClass, 0}];
  }

  else
  {
    [MEMORY[0x1E695DFB8] orderedSetWithObject:coercionItemClass];
  }
  v3 = ;

  return v3;
}

- (Class)coercionItemClass
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"CoercionItemClass"];
  v4 = NSClassFromString(v3);

  return v4;
}

- (WFCoercionVariableAggrandizement)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"CoercionItemClass"];
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

  if (v8 && NSClassFromString(v8))
  {
    v14.receiver = self;
    v14.super_class = WFCoercionVariableAggrandizement;
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

- (WFCoercionVariableAggrandizement)initWithCoercionItemClass:(Class)class
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"CoercionItemClass";
  v4 = NSStringFromClass(class);
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [(WFCoercionVariableAggrandizement *)self initWithDictionary:v5];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end