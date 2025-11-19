@interface WFVariableAggrandizement
- (BOOL)isEqual:(id)a3;
- (WFVariableAggrandizement)initWithDictionary:(id)a3;
- (unint64_t)hash;
@end

@implementation WFVariableAggrandizement

- (unint64_t)hash
{
  v2 = [(WFVariableAggrandizement *)self dictionary];
  v3 = [v2 hash];

  return v3 ^ 0x5620140A;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFVariableAggrandizement *)v4 dictionary];
      v6 = [(WFVariableAggrandizement *)self dictionary];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFVariableAggrandizement)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"Type"];
  v6 = objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v23 = "WFEnforceClass";
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = objc_opt_class();
      v28 = 2114;
      v29 = v6;
      v10 = v27;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v12 = NSClassFromString(v8);
    if ([(objc_class *)v12 isSubclassOfClass:objc_opt_class()])
    {
      v13 = [[v12 alloc] initWithDictionary:v4];
      if (v13)
      {
        v14 = v13;
LABEL_15:

        goto LABEL_16;
      }
    }
  }

  v21.receiver = self;
  v21.super_class = WFVariableAggrandizement;
  v14 = [(WFVariableAggrandizement *)&v21 init];
  if (v14)
  {
    if (!v8)
    {
      v15 = [v4 mutableCopy];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v15 setObject:v17 forKey:@"Type"];

      v4 = v15;
    }

    v18 = [v4 copy];
    self = *(v14 + 8);
    *(v14 + 8) = v18;
    goto LABEL_15;
  }

LABEL_16:

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

@end