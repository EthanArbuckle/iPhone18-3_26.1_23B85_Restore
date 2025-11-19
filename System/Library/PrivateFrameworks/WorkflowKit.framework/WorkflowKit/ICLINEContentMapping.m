@interface ICLINEContentMapping
- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
@end

@implementation ICLINEContentMapping

- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__ICLINEContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v10[3] = &unk_1E837DBF8;
  v11 = v8;
  v9 = v8;
  [(WFInterchangeContentMapping *)self getContentCollection:v10 withInput:a4 parameters:a5];
}

void __69__ICLINEContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 items];
  v8 = [v7 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 string];
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"text/%@", v9];
    (*(v10 + 16))(v10, v11, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__ICLINEContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
      block[3] = &unk_1E837F4E8;
      v13 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __69__ICLINEContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1)
{
  v5 = [(objc_class *)getUIPasteboardClass() generalPasteboard];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [v5 name];
  v4 = [v2 stringWithFormat:@"image/%@", v3];

  (*(*(a1 + 32) + 16))();
}

@end