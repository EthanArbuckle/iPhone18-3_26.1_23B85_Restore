@interface SBSStateDumpService
- (void)disableRemoteStateDumpWithCompletion:(id)a3;
- (void)enableRemoteStateDumpWithTimeout:(int64_t)a3 completion:(id)a4;
- (void)requestStateDump:(unint64_t)a3 withCompletion:(id)a4;
- (void)writeStateDump:(unint64_t)a3 toTextFileAtPath:(id)a4;
@end

@implementation SBSStateDumpService

- (void)requestStateDump:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(SBSAbstractSystemService *)self client];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SBSStateDumpService_requestStateDump_withCompletion___block_invoke;
  v9[3] = &unk_1E7360768;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 requestStateDump:a3 withCompletion:v9];
}

void __55__SBSStateDumpService_requestStateDump_withCompletion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a1 + 40))
  {
    v9 = [*(a1 + 32) callbackQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__SBSStateDumpService_requestStateDump_withCompletion___block_invoke_2;
    v10[3] = &unk_1E7360740;
    v13 = *(a1 + 40);
    v14 = a2;
    v11 = v7;
    v12 = v8;
    dispatch_async(v9, v10);
  }
}

- (void)writeStateDump:(unint64_t)a3 toTextFileAtPath:(id)a4
{
  v6 = a4;
  v7 = [(SBSAbstractSystemService *)self client];
  [v7 writeStateDump:a3 toTextFileAtPath:v6];
}

- (void)enableRemoteStateDumpWithTimeout:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(SBSAbstractSystemService *)self client];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SBSStateDumpService_enableRemoteStateDumpWithTimeout_completion___block_invoke;
  v9[3] = &unk_1E73607B8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 enableRemoteStateDumpWithTimeout:a3 completion:v9];
}

void __67__SBSStateDumpService_enableRemoteStateDumpWithTimeout_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SBSStateDumpService_enableRemoteStateDumpWithTimeout_completion___block_invoke_2;
    block[3] = &unk_1E7360790;
    v9 = *(a1 + 40);
    v10 = a2;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

- (void)disableRemoteStateDumpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBSAbstractSystemService *)self client];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SBSStateDumpService_disableRemoteStateDumpWithCompletion___block_invoke;
  v7[3] = &unk_1E73607B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 disableRemoteStateDumpWithCompletion:v7];
}

void __60__SBSStateDumpService_disableRemoteStateDumpWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SBSStateDumpService_disableRemoteStateDumpWithCompletion___block_invoke_2;
    block[3] = &unk_1E7360790;
    v9 = *(a1 + 40);
    v10 = a2;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

@end