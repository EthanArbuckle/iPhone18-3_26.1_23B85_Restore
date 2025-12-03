@interface WBSCloudKitContainerManateeObserver
- (WBSCloudKitContainerManateeObserver)initWithContainerIdentifier:(id)identifier appleAccountInformationProvider:(id)provider;
- (id)stateChangeObserver;
- (void)_accountChanged:(id)changed;
- (void)_determineAccountStateWithCompletion:(id)completion;
- (void)determineAccountStateWithCompletion:(id)completion;
- (void)setStateChangeObserver:(id)observer;
@end

@implementation WBSCloudKitContainerManateeObserver

- (WBSCloudKitContainerManateeObserver)initWithContainerIdentifier:(id)identifier appleAccountInformationProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = WBSCloudKitContainerManateeObserver;
  v8 = [(WBSCloudKitContainerManateeObserver *)&v24 init];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"com.apple.SafariCore.%@.%p", v11, v8];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    queue = v8->_queue;
    v8->_queue = v13;

    v15 = [identifierCopy copy];
    containerIdentifier = v8->_containerIdentifier;
    v8->_containerIdentifier = v15;

    array = [MEMORY[0x1E695DF70] array];
    stateDeterminationCompletionBlocks = v8->_stateDeterminationCompletionBlocks;
    v8->_stateDeterminationCompletionBlocks = array;

    objc_storeStrong(&v8->_appleAccountInformationProvider, provider);
    if (NSClassFromString(&cfstr_Ckcontainer.isa))
    {
      v19 = [MEMORY[0x1E695B888] containerWithIdentifier:v8->_containerIdentifier];
      container = v8->_container;
      v8->_container = v19;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v8 selector:sel__accountChanged_ name:*MEMORY[0x1E695B710] object:0];
    }

    v22 = v8;
  }

  return v8;
}

- (void)setStateChangeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__WBSCloudKitContainerManateeObserver_setStateChangeObserver___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __62__WBSCloudKitContainerManateeObserver_setStateChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (id)stateChangeObserver
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__WBSCloudKitContainerManateeObserver_stateChangeObserver__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__WBSCloudKitContainerManateeObserver_stateChangeObserver__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_accountChanged:(id)changed
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WBSCloudKitContainerManateeObserver__accountChanged___block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __55__WBSCloudKitContainerManateeObserver__accountChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__WBSCloudKitContainerManateeObserver__accountChanged___block_invoke_2;
  v4[3] = &unk_1E7CF19D8;
  v2 = v1[2];
  v4[4] = v1;
  v5 = v2;
  return [v1 _determineAccountStateWithCompletion:v4];
}

uint64_t __55__WBSCloudKitContainerManateeObserver__accountChanged___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) != v1[4] || *(result + 48) != v1[5])
  {
    result = v1[6];
    if (result)
    {
      v2 = v1[5];
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_determineAccountStateWithCompletion:(id)completion
{
  stateDeterminationCompletionBlocks = self->_stateDeterminationCompletionBlocks;
  v5 = _Block_copy(completion);
  [(NSMutableArray *)stateDeterminationCompletionBlocks addObject:v5];

  if (!self->_determiningManateeState)
  {
    self->_determiningManateeState = 1;
    container = self->_container;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__WBSCloudKitContainerManateeObserver__determineAccountStateWithCompletion___block_invoke;
    v7[3] = &unk_1E7CF1A50;
    v7[4] = self;
    [(CKContainer *)container accountInfoWithCompletionHandler:v7];
  }
}

void __76__WBSCloudKitContainerManateeObserver__determineAccountStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__WBSCloudKitContainerManateeObserver__determineAccountStateWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E7CF1A00;
  aBlock[4] = *(a1 + 32);
  v7 = v6;
  v18 = v7;
  v8 = _Block_copy(aBlock);
  v9 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSCloudKitContainerManateeObserver__determineAccountStateWithCompletion___block_invoke_3;
  block[3] = &unk_1E7CF1A28;
  v15 = v5;
  v16 = v8;
  v14 = v7;
  v10 = v5;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);
}

void __76__WBSCloudKitContainerManateeObserver__determineAccountStateWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 24) = 0;
  *(*(a1 + 32) + 32) = a2;
  *(*(a1 + 32) + 40) = a3;
  v4 = *(*(a1 + 32) + 56);
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        v15 = *(v14 + 32);
        v16 = *(v14 + 40);
        (*(*(*(&v18 + 1) + 8 * v12) + 16))(*(*(&v18 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __76__WBSCloudKitContainerManateeObserver__determineAccountStateWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (![*(a1 + 40) supportsDeviceToDeviceEncryption])
    {
      [*(a1 + 40) deviceToDeviceEncryptionAvailability];
    }

    v3 = *(*(a1 + 48) + 16);
  }

  return v3();
}

- (void)determineAccountStateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSCloudKitContainerManateeObserver_determineAccountStateWithCompletion___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

@end