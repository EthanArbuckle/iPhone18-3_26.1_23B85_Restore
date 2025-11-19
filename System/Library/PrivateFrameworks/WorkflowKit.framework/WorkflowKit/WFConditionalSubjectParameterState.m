@interface WFConditionalSubjectParameterState
+ (id)subjectClasses;
- (BOOL)isEqual:(id)a3;
- (WFConditionalSubjectParameterState)initWithHomeIdentifier:(id)a3;
- (WFConditionalSubjectParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFConditionalSubjectParameterState)initWithVariable:(id)a3;
- (WFPropertyListObject)serializedRepresentation;
- (id)supportedComparisonOperators;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFConditionalSubjectParameterState

- (id)supportedComparisonOperators
{
  v3 = [(WFConditionalSubjectParameterState *)self contentType];
  v4 = [(WFConditionalSubjectParameterState *)self isEnumeration];
  v5 = [(WFConditionalSubjectParameterState *)self isIrrational];
  v6 = [(WFConditionalSubjectParameterState *)self tense];

  return WFSupportedContentOperatorsForContentType(v3, v4, v5, v6);
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__WFConditionalSubjectParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v9[3] = &unk_1E837DAB0;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(WFConditionalSubjectParameterState *)self getContentWithContext:a3 completionHandler:v9];
}

void __95__WFConditionalSubjectParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = v9;
    if (!v9)
    {
      v6 = objc_opt_new();
    }

    v9 = v6;
    v7 = *(a1 + 40);
    v8 = -[WFConditionalSubjectValue initWithContent:contentType:caseInsensitive:comparableTimeUnits:]([WFConditionalSubjectValue alloc], "initWithContent:contentType:caseInsensitive:comparableTimeUnits:", v6, [*(a1 + 32) contentType], objc_msgSend(*(a1 + 32), "isCaseInsensitive"), objc_msgSend(*(a1 + 32), "comparableTimeUnits"));
    (*(v7 + 16))(v7, v8, 0);
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (WFPropertyListObject)serializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [objc_opt_class() subjectType];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"Type"];
  }

  v5 = [(WFConditionalSubjectParameterState *)self homeIdentifier];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"HomeIdentifier"];
  }

  return v3;
}

- (WFConditionalSubjectParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = v8;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKey:@"Type"];
      v14 = [v12 objectForKey:@"HomeIdentifier"];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = [objc_opt_class() subjectClasses];
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v26 = v14;
        v27 = v9;
        v28 = self;
        v17 = *v30;
        while (2)
        {
          for (i = 0; i != v16; i = (i + 1))
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            v20 = [v19 subjectType];
            v21 = [v20 isEqualToString:v13];

            if (v21)
            {
              v9 = v27;
              v16 = [[v19 alloc] initWithSerializedRepresentation:v12 variableProvider:v27 parameter:v10];
              self = v28;
              goto LABEL_17;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v9 = v27;
        self = v28;
LABEL_17:
        v14 = v26;
      }

      if (v16)
      {
        v23 = 1;
      }

      else
      {
        v23 = v14 == 0;
      }

      if (!v23)
      {
        v16 = [[WFConditionalSubjectParameterState alloc] initWithHomeIdentifier:v14];
      }
    }

    else
    {
      v13 = getWFGeneralLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v35 = "WFEnforceClass";
        v36 = 2114;
        v37 = v12;
        v38 = 2114;
        v39 = objc_opt_class();
        v40 = 2114;
        v41 = v11;
        v22 = v39;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

- (WFConditionalSubjectParameterState)initWithHomeIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFConditionalSubjectParameterState.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"homeIdentifier"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    objc_storeStrong(&self->_homeIdentifier, a3);
    v7 = self;
  }

LABEL_4:

  return self;
}

- (WFConditionalSubjectParameterState)initWithVariable:(id)a3
{
  v4 = a3;
  v5 = [[WFVariableConditionalSubjectState alloc] initWithVariable:v4];

  return &v5->super;
}

+ (id)subjectClasses
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end