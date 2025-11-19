@interface WFJavaScriptStringRemoteQuarantineRequest
+ (id)JSONKeyPathsByPropertyKey;
- (WFJavaScriptStringRemoteQuarantineRequest)initWithWorkflow:(id)a3 runtimeType:(unint64_t)a4 targetURL:(id)a5 preRuntimeVariableString:(id)a6 runtimeString:(id)a7;
@end

@implementation WFJavaScriptStringRemoteQuarantineRequest

- (WFJavaScriptStringRemoteQuarantineRequest)initWithWorkflow:(id)a3 runtimeType:(unint64_t)a4 targetURL:(id)a5 preRuntimeVariableString:(id)a6 runtimeString:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v34.receiver = self;
  v34.super_class = WFJavaScriptStringRemoteQuarantineRequest;
  v16 = [(WFBaseRemoteQuarantineRequest *)&v34 init];
  if (v16)
  {
    v33 = v13;
    v17 = [v12 actions];
    v18 = [v17 valueForKey:@"identifier"];
    v19 = v18;
    if (!v18)
    {
      v19 = [MEMORY[0x1E695DEC8] array];
    }

    objc_storeStrong(&v16->_actionList, v19);
    if (!v18)
    {
    }

    v16->_runtimeType = a4;
    objc_storeStrong(&v16->_targetURL, a5);
    v20 = [v14 serializedRepresentation];
    v21 = objc_opt_class();
    v22 = v20;
    if (v22 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = getWFGeneralLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        v25 = objc_opt_class();
        *buf = 136315906;
        v36 = "WFEnforceClass";
        v37 = 2114;
        v38 = v22;
        v39 = 2114;
        v40 = v25;
        v41 = 2114;
        v42 = v21;
        v26 = v25;
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    preRuntimeJavaScriptSerializedRepresentation = v16->_preRuntimeJavaScriptSerializedRepresentation;
    v16->_preRuntimeJavaScriptSerializedRepresentation = v23;

    v28 = [v14 stringByReplacingVariablesWithNames];
    preRuntimeJavaScriptString = v16->_preRuntimeJavaScriptString;
    v16->_preRuntimeJavaScriptString = v28;

    objc_storeStrong(&v16->_runtimeJavaScriptString, a7);
    v30 = v16;
    v13 = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v9[6] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___WFJavaScriptStringRemoteQuarantineRequest;
  v2 = objc_msgSendSuper2(&v7, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v8[0] = @"runtimeType";
  v8[1] = @"targetURL";
  v9[0] = @"runtimeType";
  v9[1] = @"targetURL";
  v8[2] = @"preRuntimeJavaScriptSerializedRepresentation";
  v8[3] = @"preRuntimeJavaScriptString";
  v9[2] = @"preRuntimeJavaScriptSerializedRepresentation";
  v9[3] = @"preRuntimeJavaScriptString";
  v8[4] = @"runtimeJavaScriptString";
  v8[5] = @"actionList";
  v9[4] = @"runtimeJavaScriptString";
  v9[5] = @"actionList";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];
  [v3 addEntriesFromDictionary:v4];

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

@end