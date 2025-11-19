@interface WFCoercionVariableAggrandizement
- (BOOL)isEqual:(id)a3;
- (Class)coercionItemClass;
- (WFCoercionVariableAggrandizement)initWithCoercionItemClass:(Class)a3;
- (WFCoercionVariableAggrandizement)initWithDictionary:(id)a3;
- (id)coercionItemClasses;
- (void)applyToContentCollection:(id)a3 completionHandler:(id)a4;
@end

@implementation WFCoercionVariableAggrandizement

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v7 = [v6 coercionItemClass];

  v8 = v7 == [(WFCoercionVariableAggrandizement *)self coercionItemClass];
  return v8;
}

- (void)applyToContentCollection:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFCoercionVariableAggrandizement *)self coercionItemClasses];
  v9 = [v8 array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__WFCoercionVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke;
  v11[3] = &unk_1E837DBF8;
  v12 = v6;
  v10 = v6;
  [v7 generateCollectionByCoercingToItemClasses:v9 completionHandler:v11];
}

- (id)coercionItemClasses
{
  v2 = [(WFCoercionVariableAggrandizement *)self coercionItemClass];
  if ([(objc_class *)v2 isSubclassOfClass:objc_opt_class()])
  {
    [MEMORY[0x1E695DFB8] orderedSetWithObjects:{objc_opt_class(), v2, 0}];
  }

  else
  {
    [MEMORY[0x1E695DFB8] orderedSetWithObject:v2];
  }
  v3 = ;

  return v3;
}

- (Class)coercionItemClass
{
  v2 = [(WFVariableAggrandizement *)self dictionary];
  v3 = [v2 objectForKey:@"CoercionItemClass"];
  v4 = NSClassFromString(v3);

  return v4;
}

- (WFCoercionVariableAggrandizement)initWithDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"CoercionItemClass"];
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
    self = [(WFVariableAggrandizement *)&v14 initWithDictionary:v4];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (WFCoercionVariableAggrandizement)initWithCoercionItemClass:(Class)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"CoercionItemClass";
  v4 = NSStringFromClass(a3);
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [(WFCoercionVariableAggrandizement *)self initWithDictionary:v5];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end