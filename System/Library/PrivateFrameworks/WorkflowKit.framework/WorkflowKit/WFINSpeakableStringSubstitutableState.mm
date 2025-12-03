@interface WFINSpeakableStringSubstitutableState
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (BOOL)stateIsEquivalent:(id)equivalent;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFINSpeakableStringSubstitutableState

- (BOOL)stateIsEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  value = [(WFVariableSubstitutableParameterState *)self value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = value;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  value2 = [equivalentCopy value];

  if (value2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = value2;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = 0;
  if (v7 && v10)
  {
    vocabularyIdentifier = [v7 vocabularyIdentifier];
    vocabularyIdentifier2 = [v10 vocabularyIdentifier];
    if ([vocabularyIdentifier isEqualToString:vocabularyIdentifier2])
    {
      v11 = 1;
    }

    else
    {
      spokenPhrase = [v7 spokenPhrase];
      spokenPhrase2 = [v10 spokenPhrase];
      v11 = [spokenPhrase isEqualToString:spokenPhrase2];
    }
  }

  return v11;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    if (variable2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      prompt = [variable2 prompt];
      handlerCopy[2](handlerCopy, prompt, 0);
    }

    else
    {

      variable3 = [(WFVariableSubstitutableParameterState *)self variable];
      v15 = objc_opt_class();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __98__WFINSpeakableStringSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_1E8376F30;
      v17[4] = self;
      v18 = valueHandlerCopy;
      [variable3 getObjectRepresentationForClass:v15 context:contextCopy completionHandler:v17];

      variable2 = v18;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFINSpeakableStringSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v16 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }
}

void __98__WFINSpeakableStringSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v14 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = a5;
    v11 = objc_alloc([objc_opt_class() processingValueClass]);
    v12 = [v11 wf_initWithIdentifier:0 displayString:v14];
    (*(v8 + 16))(v8, v12, v10);
  }

  else
  {
    v13 = *(v8 + 16);
    v11 = a5;
    v13(v8, 0, v11);
  }
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v7 = WFINObjectFromSerializedRepresentation(representationCopy, [self processingValueClass]);

  return v7;
}

@end