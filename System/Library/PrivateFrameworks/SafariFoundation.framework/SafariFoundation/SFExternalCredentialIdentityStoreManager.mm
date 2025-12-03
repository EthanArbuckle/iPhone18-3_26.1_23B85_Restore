@interface SFExternalCredentialIdentityStoreManager
+ (id)sharedManager;
- (SFExternalCredentialIdentityStoreManager)init;
- (id)_credentialIdentityStoreWithIdentifier:(id)identifier;
- (void)getCredentialIdentityStoreWithIdentifier:(id)identifier completion:(id)completion;
- (void)removeCredentialIdentityStoreWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SFExternalCredentialIdentityStoreManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[SFExternalCredentialIdentityStoreManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __57__SFExternalCredentialIdentityStoreManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(SFExternalCredentialIdentityStoreManager);

  return MEMORY[0x2821F96F8]();
}

- (SFExternalCredentialIdentityStoreManager)init
{
  v11.receiver = self;
  v11.super_class = SFExternalCredentialIdentityStoreManager;
  v2 = [(SFExternalCredentialIdentityStoreManager *)&v11 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.SafariFoundation.%@.%p", v5, v2];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = v2;
  }

  return v2;
}

- (void)getCredentialIdentityStoreWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__SFExternalCredentialIdentityStoreManager_getCredentialIdentityStoreWithIdentifier_completion___block_invoke;
    block[3] = &unk_279B61B50;
    v12 = completionCopy;
    block[4] = self;
    v11 = identifierCopy;
    dispatch_async(queue, block);
  }
}

void __96__SFExternalCredentialIdentityStoreManager_getCredentialIdentityStoreWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _credentialIdentityStoreWithIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)_credentialIdentityStoreWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = containerForCredentialIdentityStoreWithIdentifier(identifier);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 URLByAppendingPathComponent:@"Identities" isDirectory:1];
      if (v5)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v13 = 0;
        v7 = [defaultManager createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v13];
        v8 = v13;

        if (v7)
        {
          v9 = [v5 URLByAppendingPathComponent:@"Identities.db" isDirectory:0];
          v10 = [[SFExternalCredentialIdentityStore alloc] initWithURL:v9];
        }

        else
        {
          v11 = WBS_LOG_CHANNEL_PREFIXCredentials();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(SFExternalCredentialIdentityStoreManager *)v8 _credentialIdentityStoreWithIdentifier:v11];
          }

          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)removeCredentialIdentityStoreWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_7_0;
  }

  v8 = _Block_copy(completionCopy);
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__SFExternalCredentialIdentityStoreManager_removeCredentialIdentityStoreWithIdentifier_completion___block_invoke_2;
  v12[3] = &unk_279B61B98;
  v13 = identifierCopy;
  v14 = v8;
  v10 = v8;
  v11 = identifierCopy;
  dispatch_async(queue, v12);
}

void __99__SFExternalCredentialIdentityStoreManager_removeCredentialIdentityStoreWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = containerForCredentialIdentityStoreWithIdentifier(v2);
    v4 = v3;
    if (!v3)
    {
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFExternalCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
      (*(v13 + 16))(v13, 0, v14);

LABEL_16:
      return;
    }

    v5 = [v3 URLByAppendingPathComponent:@"Identities" isDirectory:1];
    if (v5)
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = 0;
      v7 = [v6 removeItemAtURL:v5 error:&v17];
      v8 = v17;

      if ((v7 & 1) == 0)
      {
        v9 = [v8 domain];
        if ([v9 isEqualToString:*MEMORY[0x277CCA050]])
        {
          v10 = [v8 code];

          if (v10 == 4)
          {
            v11 = *(*(a1 + 40) + 16);
LABEL_15:
            v11();

            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v11 = *(*(a1 + 40) + 16);
      goto LABEL_15;
    }

    v15 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFExternalCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
    v11 = *(v15 + 16);
    goto LABEL_15;
  }

  v12 = *(a1 + 40);
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFExternalCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
  (*(v12 + 16))(v12, 0, v16);
}

- (void)_credentialIdentityStoreWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26450F000, a2, OS_LOG_TYPE_ERROR, "Failed to create directory for identities database with error %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end