@interface WFINSpeakableStringSubstitutableState
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (BOOL)stateIsEquivalent:(id)a3;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFINSpeakableStringSubstitutableState

- (BOOL)stateIsEquivalent:(id)a3
{
  v4 = a3;
  v5 = [(WFVariableSubstitutableParameterState *)self value];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v8 = [v4 value];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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
    v12 = [v7 vocabularyIdentifier];
    v13 = [v10 vocabularyIdentifier];
    if ([v12 isEqualToString:v13])
    {
      v11 = 1;
    }

    else
    {
      v14 = [v7 spokenPhrase];
      v15 = [v10 spokenPhrase];
      v11 = [v14 isEqualToString:v15];
    }
  }

  return v11;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v12 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v12 prompt];
      v9[2](v9, v13, 0);
    }

    else
    {

      v14 = [(WFVariableSubstitutableParameterState *)self variable];
      v15 = objc_opt_class();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __98__WFINSpeakableStringSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_1E8376F30;
      v17[4] = self;
      v18 = v10;
      [v14 getObjectRepresentationForClass:v15 context:v8 completionHandler:v17];

      v12 = v18;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFINSpeakableStringSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v16 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
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

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v6 = a3;
  v7 = WFINObjectFromSerializedRepresentation(v6, [a1 processingValueClass]);

  return v7;
}

@end