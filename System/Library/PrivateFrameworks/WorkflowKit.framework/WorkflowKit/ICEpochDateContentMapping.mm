@interface ICEpochDateContentMapping
- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters;
@end

@implementation ICEpochDateContentMapping

- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters
{
  representationCopy = representation;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__ICEpochDateContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v10[3] = &unk_1E837DBF8;
  v11 = representationCopy;
  v9 = representationCopy;
  [(WFInterchangeContentMapping *)self getContentCollection:v10 withInput:input parameters:parameters];
}

void __74__ICEpochDateContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfItems])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __74__ICEpochDateContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
    v4[3] = &unk_1E8376008;
    v5 = *(a1 + 32);
    [v3 getObjectRepresentation:v4 forClass:objc_opt_class()];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __74__ICEpochDateContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  [a2 timeIntervalSince1970];
  v9 = [v6 stringWithFormat:@"%.0f", v8];
  (*(v5 + 16))(v5, v9, v7);
}

@end