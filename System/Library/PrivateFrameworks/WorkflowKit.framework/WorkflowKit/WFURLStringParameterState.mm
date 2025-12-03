@interface WFURLStringParameterState
+ (id)forceStringToURL:(id)l error:(id *)error;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFURLStringParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variableString = [(WFVariableStringParameterState *)self variableString];
  v12 = [variableString variablesOfType:@"Ask"];
  v13 = [v12 count];

  if (v13)
  {
    v18.receiver = self;
    v18.super_class = WFURLStringParameterState;
    [(WFVariableStringParameterState *)&v18 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }

  else
  {
    variableString2 = [(WFVariableStringParameterState *)self variableString];

    if (variableString2)
    {
      variableString3 = [(WFVariableStringParameterState *)self variableString];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __86__WFURLStringParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v16[3] = &unk_1E8376DD8;
      v17 = valueHandlerCopy;
      [variableString3 processWithContext:contextCopy completionHandler:v16];
    }

    else
    {
      (*(valueHandlerCopy + 2))(valueHandlerCopy, 0, 0);
    }
  }
}

void __86__WFURLStringParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  if ([v7 length])
  {
    v11 = v8;
    v9 = [WFURLStringParameterState forceStringToURL:v7 error:&v11];
    v10 = v11;

    (*(*(a1 + 32) + 16))();
    v8 = v10;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)forceStringToURL:(id)l error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v7 = [lCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  scheme = [v8 scheme];
  if (!scheme)
  {
    if (![MEMORY[0x1E6996F98] stringMatchesExactly:v7])
    {
      goto LABEL_5;
    }

    v10 = [MEMORY[0x1E6996F98] URLsInString:v7 error:0];
    firstObject = [v10 firstObject];

    absoluteString = [firstObject absoluteString];
    scheme = v7;
    v8 = firstObject;
    v7 = absoluteString;
  }

LABEL_5:
  if (!v8)
  {
    if ([lCopy rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v17 = [v7 stringByAddingPercentEscapesUsingEncoding:4];

    v8 = [MEMORY[0x1E695DFF8] URLWithString:v17];
    v7 = v17;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (([MEMORY[0x1E6996F98] stringMatchesExactly:v7] & 1) != 0 || (objc_msgSend(v8, "scheme"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, v15 = objc_msgSend(lCopy, "rangeOfString:", @":"), v14, v15 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = v8;
    v16 = v8;
    goto LABEL_14;
  }

LABEL_13:
  v18 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A978];
  v26 = *MEMORY[0x1E696A578];
  v20 = MEMORY[0x1E696AEC0];
  v21 = WFLocalizedString(@"Invalid URL: %@");
  v22 = [v20 localizedStringWithFormat:v21, lCopy, v26];
  v27[0] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  *error = [v18 errorWithDomain:v19 code:-1000 userInfo:v23];

  v16 = 0;
LABEL_14:

  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

@end