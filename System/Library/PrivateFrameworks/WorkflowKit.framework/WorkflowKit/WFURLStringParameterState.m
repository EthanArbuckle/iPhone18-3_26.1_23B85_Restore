@interface WFURLStringParameterState
+ (id)forceStringToURL:(id)a3 error:(id *)a4;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFURLStringParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableStringParameterState *)self variableString];
  v12 = [v11 variablesOfType:@"Ask"];
  v13 = [v12 count];

  if (v13)
  {
    v18.receiver = self;
    v18.super_class = WFURLStringParameterState;
    [(WFVariableStringParameterState *)&v18 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
  }

  else
  {
    v14 = [(WFVariableStringParameterState *)self variableString];

    if (v14)
    {
      v15 = [(WFVariableStringParameterState *)self variableString];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __86__WFURLStringParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v16[3] = &unk_1E8376DD8;
      v17 = v10;
      [v15 processWithContext:v8 completionHandler:v16];
    }

    else
    {
      (*(v10 + 2))(v10, 0, 0);
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

+ (id)forceStringToURL:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  v9 = [v8 scheme];
  if (!v9)
  {
    if (![MEMORY[0x1E6996F98] stringMatchesExactly:v7])
    {
      goto LABEL_5;
    }

    v10 = [MEMORY[0x1E6996F98] URLsInString:v7 error:0];
    v11 = [v10 firstObject];

    v12 = [v11 absoluteString];
    v9 = v7;
    v8 = v11;
    v7 = v12;
  }

LABEL_5:
  if (!v8)
  {
    if ([v5 rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL)
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

  if (([MEMORY[0x1E6996F98] stringMatchesExactly:v7] & 1) != 0 || (objc_msgSend(v8, "scheme"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, v15 = objc_msgSend(v5, "rangeOfString:", @":"), v14, v15 != 0x7FFFFFFFFFFFFFFFLL))
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
  v22 = [v20 localizedStringWithFormat:v21, v5, v26];
  v27[0] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  *a4 = [v18 errorWithDomain:v19 code:-1000 userInfo:v23];

  v16 = 0;
LABEL_14:

  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

@end