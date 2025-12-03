@interface SBSStateDumpService
- (void)disableRemoteStateDumpWithCompletion:(id)completion;
- (void)enableRemoteStateDumpWithTimeout:(int64_t)timeout completion:(id)completion;
- (void)requestStateDump:(unint64_t)dump withCompletion:(id)completion;
- (void)writeStateDump:(unint64_t)dump toTextFileAtPath:(id)path;
@end

@implementation SBSStateDumpService

- (void)requestStateDump:(unint64_t)dump withCompletion:(id)completion
{
  completionCopy = completion;
  client = [(SBSAbstractSystemService *)self client];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SBSStateDumpService_requestStateDump_withCompletion___block_invoke;
  v9[3] = &unk_1E7360768;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [client requestStateDump:dump withCompletion:v9];
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

- (void)writeStateDump:(unint64_t)dump toTextFileAtPath:(id)path
{
  pathCopy = path;
  client = [(SBSAbstractSystemService *)self client];
  [client writeStateDump:dump toTextFileAtPath:pathCopy];
}

- (void)enableRemoteStateDumpWithTimeout:(int64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  client = [(SBSAbstractSystemService *)self client];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SBSStateDumpService_enableRemoteStateDumpWithTimeout_completion___block_invoke;
  v9[3] = &unk_1E73607B8;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [client enableRemoteStateDumpWithTimeout:timeout completion:v9];
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

- (void)disableRemoteStateDumpWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(SBSAbstractSystemService *)self client];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SBSStateDumpService_disableRemoteStateDumpWithCompletion___block_invoke;
  v7[3] = &unk_1E73607B8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [client disableRemoteStateDumpWithCompletion:v7];
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