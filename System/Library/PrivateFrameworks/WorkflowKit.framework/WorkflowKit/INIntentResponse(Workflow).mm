@interface INIntentResponse(Workflow)
- (void)wf_getOutputValueWithCompletionHandler:()Workflow;
@end

@implementation INIntentResponse(Workflow)

- (void)wf_getOutputValueWithCompletionHandler:()Workflow
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"INIntentResponse+Workflow.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  _codableDescription = [self _codableDescription];
  v7 = objc_opt_class();
  v8 = _codableDescription;
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v22 = "WFEnforceClass";
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v7;
      v11 = v26;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  outputAttribute = [v9 outputAttribute];
  v13 = outputAttribute;
  if (outputAttribute)
  {
    propertyName = [outputAttribute propertyName];
    v15 = [self valueForKey:propertyName];

    if (v15)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__INIntentResponse_Workflow__wf_getOutputValueWithCompletionHandler___block_invoke;
      v18[3] = &unk_1E837D7E8;
      v20 = v5;
      v19 = v13;
      [v15 wf_transformValueForCodableAttribute:v19 completionHandler:v18];
    }

    else
    {
      (*(v5 + 2))(v5, 0, 0);
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end