@interface ICPythonistaArgumentsContentMapping
- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
@end

@implementation ICPythonistaArgumentsContentMapping

- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__ICPythonistaArgumentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v10[3] = &unk_1E837DBF8;
  v11 = v8;
  v9 = v8;
  [(WFInterchangeContentMapping *)self getContentCollection:v10 withInput:a4 parameters:a5];
}

void __84__ICPythonistaArgumentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__ICPythonistaArgumentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
    v5[3] = &unk_1E837F588;
    v6 = *(a1 + 32);
    [a2 getStringRepresentations:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void __84__ICPythonistaArgumentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v5 = [v4 mutableCopy];

    [v5 removeCharactersInString:@"?&="];
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) stringByAddingPercentEncodingWithAllowedCharacters:v5];
          [v6 appendFormat:@"&argv=%@", v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end