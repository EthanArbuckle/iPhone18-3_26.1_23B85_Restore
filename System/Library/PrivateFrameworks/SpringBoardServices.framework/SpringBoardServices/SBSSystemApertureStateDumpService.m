@interface SBSSystemApertureStateDumpService
- (void)requestSystemApertureStateDumpWithCompletion:(id)a3;
- (void)writeSystemApertureStateDumpToTextFileAtPath:(id)a3;
@end

@implementation SBSSystemApertureStateDumpService

- (void)requestSystemApertureStateDumpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBSAbstractSystemService *)self client];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__SBSSystemApertureStateDumpService_requestSystemApertureStateDumpWithCompletion___block_invoke;
  v7[3] = &unk_1E735F360;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 requestSystemApertureStateDumpWithCompletion:v7];
}

void __82__SBSSystemApertureStateDumpService_requestSystemApertureStateDumpWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SBSSystemApertureStateDumpService_requestSystemApertureStateDumpWithCompletion___block_invoke_2;
    block[3] = &unk_1E735F338;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

- (void)writeSystemApertureStateDumpToTextFileAtPath:(id)a3
{
  v4 = a3;
  v5 = [(SBSAbstractSystemService *)self client];
  [v5 writeSystemApertureStateDumpToTextFileAtPath:v4];
}

@end