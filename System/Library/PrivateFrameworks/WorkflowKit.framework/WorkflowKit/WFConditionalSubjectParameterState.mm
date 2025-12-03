@interface WFConditionalSubjectParameterState
+ (id)subjectClasses;
- (BOOL)isEqual:(id)equal;
- (WFConditionalSubjectParameterState)initWithHomeIdentifier:(id)identifier;
- (WFConditionalSubjectParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFConditionalSubjectParameterState)initWithVariable:(id)variable;
- (WFPropertyListObject)serializedRepresentation;
- (id)supportedComparisonOperators;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFConditionalSubjectParameterState

- (id)supportedComparisonOperators
{
  contentType = [(WFConditionalSubjectParameterState *)self contentType];
  isEnumeration = [(WFConditionalSubjectParameterState *)self isEnumeration];
  isIrrational = [(WFConditionalSubjectParameterState *)self isIrrational];
  tense = [(WFConditionalSubjectParameterState *)self tense];

  return WFSupportedContentOperatorsForContentType(contentType, isEnumeration, isIrrational, tense);
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  valueHandlerCopy = valueHandler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__WFConditionalSubjectParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v9[3] = &unk_1E837DAB0;
  v9[4] = self;
  v10 = valueHandlerCopy;
  v8 = valueHandlerCopy;
  [(WFConditionalSubjectParameterState *)self getContentWithContext:context completionHandler:v9];
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (WFPropertyListObject)serializedRepresentation
{
  v3 = objc_opt_new();
  subjectType = [objc_opt_class() subjectType];
  if (subjectType)
  {
    [v3 setObject:subjectType forKeyedSubscript:@"Type"];
  }

  homeIdentifier = [(WFConditionalSubjectParameterState *)self homeIdentifier];
  if (homeIdentifier)
  {
    [v3 setObject:homeIdentifier forKeyedSubscript:@"HomeIdentifier"];
  }

  return v3;
}

- (WFConditionalSubjectParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v42 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  v11 = objc_opt_class();
  v12 = representationCopy;
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
      subjectClasses = [objc_opt_class() subjectClasses];
      v16 = [subjectClasses countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v26 = v14;
        v27 = providerCopy;
        selfCopy = self;
        v17 = *v30;
        while (2)
        {
          for (i = 0; i != v16; i = (i + 1))
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(subjectClasses);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            subjectType = [v19 subjectType];
            v21 = [subjectType isEqualToString:v13];

            if (v21)
            {
              providerCopy = v27;
              v16 = [[v19 alloc] initWithSerializedRepresentation:v12 variableProvider:v27 parameter:parameterCopy];
              self = selfCopy;
              goto LABEL_17;
            }
          }

          v16 = [subjectClasses countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        providerCopy = v27;
        self = selfCopy;
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

- (WFConditionalSubjectParameterState)initWithHomeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConditionalSubjectParameterState.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"homeIdentifier"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    objc_storeStrong(&self->_homeIdentifier, identifier);
    selfCopy = self;
  }

LABEL_4:

  return self;
}

- (WFConditionalSubjectParameterState)initWithVariable:(id)variable
{
  variableCopy = variable;
  v5 = [[WFVariableConditionalSubjectState alloc] initWithVariable:variableCopy];

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