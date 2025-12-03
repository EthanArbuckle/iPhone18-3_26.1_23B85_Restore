@interface ACAccountStore(ICAccountStoreAdditions)
+ (id)ic_sharedAccountStore;
+ (uint64_t)ic_canAccessAccountStore;
+ (uint64_t)ic_canAccessAppleAccounts;
- (BOOL)ic_disableActiveLockerAccount:()ICAccountStoreAdditions error:;
- (BOOL)ic_setActiveStoreAccount:()ICAccountStoreAdditions error:;
- (id)ic_activeLockerAccount;
- (id)ic_activeStoreAccount;
- (id)ic_activeStoreAccountWithError:()ICAccountStoreAdditions;
- (id)ic_allStoreAccounts;
- (id)ic_allStoreAccountsWithError:()ICAccountStoreAdditions;
- (id)ic_localStoreAccountWithError:()ICAccountStoreAdditions;
- (id)ic_primaryAppleAccount;
- (id)ic_primaryAppleAccountWithError:()ICAccountStoreAdditions;
- (id)ic_storeAccountForHomeUserIdentifier:()ICAccountStoreAdditions error:;
- (id)ic_storeAccountForStoreAccountID:()ICAccountStoreAdditions;
- (id)ic_storeAccountForStoreAccountID:()ICAccountStoreAdditions error:;
- (id)ic_storeAccountTypeWithError:()ICAccountStoreAdditions;
- (uint64_t)ic_setActiveLockerAccount:()ICAccountStoreAdditions error:;
- (void)ic_activeLockerAccountWithCompletion:()ICAccountStoreAdditions;
- (void)ic_activeLockerAccountWithError:()ICAccountStoreAdditions;
- (void)ic_activeStoreAccountWithCompletion:()ICAccountStoreAdditions;
- (void)ic_allStoreAccountsWithCompletion:()ICAccountStoreAdditions;
- (void)ic_localStoreAccountWithCompletion:()ICAccountStoreAdditions;
- (void)ic_primaryAppleAccountWithCompletion:()ICAccountStoreAdditions;
- (void)ic_setActiveLockerAccount:()ICAccountStoreAdditions;
- (void)ic_setActiveLockerAccount:()ICAccountStoreAdditions completion:;
- (void)ic_setActiveStoreAccount:()ICAccountStoreAdditions;
- (void)ic_setActiveStoreAccount:()ICAccountStoreAdditions completion:;
- (void)ic_storeAccountForHomeUserIdentifier:()ICAccountStoreAdditions completion:;
- (void)ic_storeAccountForStoreAccountID:()ICAccountStoreAdditions completion:;
- (void)ic_storeAccountTypeWithCompletion:()ICAccountStoreAdditions;
@end

@implementation ACAccountStore(ICAccountStoreAdditions)

+ (uint64_t)ic_canAccessAccountStore
{
  if (ic_canAccessAccountStore_onceToken != -1)
  {
    dispatch_once(&ic_canAccessAccountStore_onceToken, &__block_literal_global_2);
  }

  return ic_canAccessAccountStore___hasAccountAccess;
}

+ (uint64_t)ic_canAccessAppleAccounts
{
  if (ic_canAccessAppleAccounts_onceToken != -1)
  {
    dispatch_once(&ic_canAccessAppleAccounts_onceToken, &__block_literal_global_12_15276);
  }

  return ic_canAccessAppleAccounts___hasAppleAccountAccess;
}

- (id)ic_storeAccountForStoreAccountID:()ICAccountStoreAdditions
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15239;
  v16 = __Block_byref_object_dispose__15240;
  v17 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForStoreAccountID___block_invoke;
  v9[3] = &unk_1E7BF5B00;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [self ic_storeAccountForStoreAccountID:v4 completion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)ic_setActiveLockerAccount:()ICAccountStoreAdditions
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__ACAccountStore_ICAccountStoreAdditions__ic_setActiveLockerAccount___block_invoke;
  v7[3] = &unk_1E7BF9308;
  v8 = v5;
  v6 = v5;
  [self ic_setActiveLockerAccount:v4 completion:v7];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)ic_setActiveStoreAccount:()ICAccountStoreAdditions
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ACAccountStore_ICAccountStoreAdditions__ic_setActiveStoreAccount___block_invoke;
  v7[3] = &unk_1E7BF9308;
  v8 = v5;
  v6 = v5;
  [self ic_setActiveStoreAccount:v4 completion:v7];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)ic_primaryAppleAccount
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15239;
  v13 = __Block_byref_object_dispose__15240;
  v14 = 0;
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__ACAccountStore_ICAccountStoreAdditions__ic_primaryAppleAccount__block_invoke;
  v6[3] = &unk_1E7BF5B00;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [self ic_primaryAppleAccountWithCompletion:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)ic_activeLockerAccount
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15239;
  v13 = __Block_byref_object_dispose__15240;
  v14 = 0;
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__ACAccountStore_ICAccountStoreAdditions__ic_activeLockerAccount__block_invoke;
  v6[3] = &unk_1E7BF5B00;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [self ic_activeLockerAccountWithCompletion:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)ic_activeStoreAccount
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15239;
  v13 = __Block_byref_object_dispose__15240;
  v14 = 0;
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__ACAccountStore_ICAccountStoreAdditions__ic_activeStoreAccount__block_invoke;
  v6[3] = &unk_1E7BF5B00;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [self ic_activeStoreAccountWithCompletion:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)ic_allStoreAccounts
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15239;
  v13 = __Block_byref_object_dispose__15240;
  v14 = 0;
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__ACAccountStore_ICAccountStoreAdditions__ic_allStoreAccounts__block_invoke;
  v6[3] = &unk_1E7BF5AD8;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [self ic_allStoreAccountsWithCompletion:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)ic_localStoreAccountWithError:()ICAccountStoreAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__15239;
  v17 = __Block_byref_object_dispose__15240;
  v18 = 0;
  v12 = 0;
  v5 = [self ic_allStoreAccountsWithError:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error retrieving local store account. err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__ACAccountStore_ICAccountStoreAdditions__ic_localStoreAccountWithError___block_invoke;
    v11[3] = &unk_1E7BF5A10;
    v11[4] = &v13;
    [v5 enumerateObjectsUsingBlock:v11];
  }

  if (a3)
  {
    v8 = v6;
    *a3 = v6;
  }

  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (void)ic_localStoreAccountWithCompletion:()ICAccountStoreAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__ACAccountStore_ICAccountStoreAdditions__ic_localStoreAccountWithCompletion___block_invoke;
  v6[3] = &unk_1E7BF59C0;
  v7 = v4;
  v5 = v4;
  [self ic_allStoreAccountsWithCompletion:v6];
}

- (id)ic_storeAccountForHomeUserIdentifier:()ICAccountStoreAdditions error:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ACAccountStore+ICAccountStoreAdditions.m" lineNumber:408 description:{@"Invalid parameter not satisfying: %@", @"homeUserID"}];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__15239;
  v23 = __Block_byref_object_dispose__15240;
  v24 = 0;
  v18 = 0;
  v8 = [self ic_allStoreAccountsWithError:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v27 = 2114;
      v28 = v7;
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error retrieving store account for home ID %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForHomeUserIdentifier_error___block_invoke;
    v15[3] = &unk_1E7BF5A88;
    v16 = v7;
    v17 = &v19;
    [v8 enumerateObjectsUsingBlock:v15];
    v10 = v16;
  }

  if (a4)
  {
    v11 = v9;
    *a4 = v9;
  }

  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (void)ic_storeAccountForHomeUserIdentifier:()ICAccountStoreAdditions completion:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ACAccountStore+ICAccountStoreAdditions.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"homeUserID"}];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForHomeUserIdentifier_completion___block_invoke;
  v12[3] = &unk_1E7BF8FD0;
  v13 = v7;
  v14 = v8;
  v9 = v7;
  v10 = v8;
  [self ic_allStoreAccountsWithCompletion:v12];
}

- (id)ic_storeAccountTypeWithError:()ICAccountStoreAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6959930];
  v11 = 0;
  v6 = [self accountTypeWithAccountTypeIdentifier:v5 error:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error retrieving store account type. err=%{public}@", buf, 0x16u);
    }
  }

  if (a3)
  {
    v9 = v7;
    *a3 = v7;
  }

  return v6;
}

- (void)ic_storeAccountTypeWithCompletion:()ICAccountStoreAdditions
{
  v4 = a3;
  v5 = *MEMORY[0x1E6959930];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountTypeWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF5AB0;
  v8 = v4;
  v6 = v4;
  [self accountTypeWithIdentifier:v5 completion:v7];
}

- (id)ic_storeAccountForStoreAccountID:()ICAccountStoreAdditions error:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ACAccountStore+ICAccountStoreAdditions.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"storeAccountID != nil"}];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__15239;
  v23 = __Block_byref_object_dispose__15240;
  v24 = 0;
  v18 = 0;
  v8 = [self ic_allStoreAccountsWithError:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v27 = 2114;
      v28 = v7;
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error retrieving store account for DSID %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForStoreAccountID_error___block_invoke;
    v15[3] = &unk_1E7BF5A88;
    v16 = v7;
    v17 = &v19;
    [v8 enumerateObjectsUsingBlock:v15];
    v10 = v16;
  }

  if (a4)
  {
    v11 = v9;
    *a4 = v9;
  }

  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (void)ic_storeAccountForStoreAccountID:()ICAccountStoreAdditions completion:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ACAccountStore+ICAccountStoreAdditions.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"storeAccountID != nil"}];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForStoreAccountID_completion___block_invoke;
  v12[3] = &unk_1E7BF8FD0;
  v13 = v7;
  v14 = v8;
  v9 = v7;
  v10 = v8;
  [self ic_allStoreAccountsWithCompletion:v12];
}

- (id)ic_primaryAppleAccountWithError:()ICAccountStoreAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__15239;
  v17 = __Block_byref_object_dispose__15240;
  v18 = 0;
  v12 = 0;
  v5 = [self aa_appleAccountsWithError:&v12];
  v6 = v12;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__ACAccountStore_ICAccountStoreAdditions__ic_primaryAppleAccountWithError___block_invoke;
  v11[3] = &unk_1E7BF5A10;
  v11[4] = &v13;
  [v5 enumerateObjectsUsingBlock:v11];
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error fetching primary apple account. err=%{public}@", buf, 0x16u);
    }
  }

  if (a3)
  {
    v8 = v6;
    *a3 = v6;
  }

  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (void)ic_primaryAppleAccountWithCompletion:()ICAccountStoreAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__ACAccountStore_ICAccountStoreAdditions__ic_primaryAppleAccountWithCompletion___block_invoke;
  v6[3] = &unk_1E7BF5A38;
  v7 = v4;
  v5 = v4;
  [self aa_primaryAppleAccountWithCompletion:v6];
}

- (BOOL)ic_disableActiveLockerAccount:()ICAccountStoreAdditions error:
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ACAccountStore+ICAccountStoreAdditions.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"account != nil"}];

LABEL_5:
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:1 userInfo:0];
    goto LABEL_6;
  }

  if (![v7 ic_isActiveLockerAccount])
  {
    goto LABEL_5;
  }

  [v8 ic_setActiveLockerAccount:0];
  v16 = 0;
  v9 = [self saveVerifiedAccount:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if ((v9 & 1) == 0 && !v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v11)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error removing active locker account %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  if (a4)
  {
    v13 = v11;
    *a4 = v11;
  }

  return v11 == 0;
}

- (uint64_t)ic_setActiveLockerAccount:()ICAccountStoreAdditions error:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 ic_isActiveLockerAccount])
    {
      v8 = 0;
      goto LABEL_24;
    }

    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = v7;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ as the active locker account", buf, 0xCu);
    }

    [v7 ic_setActiveLockerAccount:1];
    v22 = 0;
    v14 = [self saveVerifiedAccount:v7 error:&v22];
    v15 = v22;
    v8 = v15;
    if ((v14 & 1) == 0 && !v15)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:1 userInfo:0];
    }

    if (v8)
    {
LABEL_18:
      v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy = self;
        v25 = 2114;
        v26 = v7;
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error setting active locker account %{public}@. err=%{public}@", buf, 0x20u);
      }

      v17 = 0;
      if (a4)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v21 = 0;
    v9 = [self ic_activeStoreAccountWithError:&v21];
    v8 = v21;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 == 0;
    }

    if (!v10)
    {
      if ([v9 ic_isActiveLockerAccount])
      {
        [v9 ic_setActiveLockerAccount:0];
        v20 = 0;
        v11 = [self saveVerifiedAccount:v9 error:&v20];
        v12 = v20;
        v8 = v12;
        if ((v11 & 1) == 0 && !v12)
        {
          v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:1 userInfo:0];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    if (v8)
    {
      goto LABEL_18;
    }
  }

LABEL_24:
  v17 = 1;
  if (a4)
  {
LABEL_25:
    v18 = v8;
    *a4 = v8;
  }

LABEL_26:

  return v17;
}

- (void)ic_setActiveLockerAccount:()ICAccountStoreAdditions completion:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__ACAccountStore_ICAccountStoreAdditions__ic_setActiveLockerAccount_completion___block_invoke_2;
    v11[3] = &unk_1E7BF5A60;
    v11[4] = self;
    v12 = v7;
    [self ic_activeStoreAccountWithCompletion:v11];
    v9 = v12;
LABEL_8:

    goto LABEL_9;
  }

  if (([v6 ic_isActiveLockerAccount] & 1) == 0)
  {
    [v6 ic_setActiveLockerAccount:1];
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ as the active locker account", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__ACAccountStore_ICAccountStoreAdditions__ic_setActiveLockerAccount_completion___block_invoke;
    v13[3] = &unk_1E7BF8450;
    v14 = v8;
    [self saveAccount:v6 withDataclassActions:0 doVerify:0 completion:v13];
    v9 = v14;
    goto LABEL_8;
  }

  v8[2](v8, 0);
LABEL_9:
}

- (void)ic_activeLockerAccountWithError:()ICAccountStoreAdditions
{
  v11 = 0;
  v4 = [self ic_activeStoreAccountWithError:&v11];
  v5 = v11;
  v6 = v5;
  if (a3)
  {
    v7 = v5;
    *a3 = v6;
  }

  if (v6)
  {
    v8 = 0;
  }

  else if ([v4 ic_isActiveLockerAccount])
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (void)ic_activeLockerAccountWithCompletion:()ICAccountStoreAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__ACAccountStore_ICAccountStoreAdditions__ic_activeLockerAccountWithCompletion___block_invoke;
  v6[3] = &unk_1E7BF5A38;
  v7 = v4;
  v5 = v4;
  [self ic_activeStoreAccountWithCompletion:v6];
}

- (BOOL)ic_setActiveStoreAccount:()ICAccountStoreAdditions error:
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = 0;
  selfCopy = self;
  v6 = [self ic_allStoreAccountsWithError:&v30];
  v7 = v30;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v22 = *MEMORY[0x1E6959978];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        identifier = [v5 identifier];
        identifier2 = [v12 identifier];
        v15 = [identifier isEqualToString:identifier2];
        if (v15 != [v12 ic_isActive])
        {
          [v12 setActive:v15];
          v25 = v7;
          v16 = [selfCopy saveVerifiedAccount:v12 error:&v25];
          v17 = v25;

          if ((v16 & 1) == 0 && !v17)
          {
            v17 = [MEMORY[0x1E696ABC0] errorWithDomain:v22 code:1 userInfo:0];
          }

          if (v17)
          {
            v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218498;
              v32 = selfCopy;
              v33 = 2114;
              v34 = v12;
              v35 = 2114;
              v36 = v17;
              _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error updating active bit for account %{public}@. err=%{public}@", buf, 0x20u);
            }

            v7 = v17;
          }

          else
          {
            v7 = 0;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v9);
  }

  if (a4)
  {
    v19 = v7;
    *a4 = v7;
  }

  return v7 == 0;
}

- (void)ic_setActiveStoreAccount:()ICAccountStoreAdditions completion:
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__ACAccountStore_ICAccountStoreAdditions__ic_setActiveStoreAccount_completion___block_invoke;
  v10[3] = &unk_1E7BF8F58;
  selfCopy = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [self ic_allStoreAccountsWithCompletion:v10];
}

- (id)ic_activeStoreAccountWithError:()ICAccountStoreAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v5 = [self ic_allStoreAccountsWithError:&v18];
  v6 = v18;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15239;
  v16 = __Block_byref_object_dispose__15240;
  v17 = 0;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error retrieving all store accounts, err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__ACAccountStore_ICAccountStoreAdditions__ic_activeStoreAccountWithError___block_invoke;
    v11[3] = &unk_1E7BF5A10;
    v11[4] = &v12;
    [v5 enumerateObjectsUsingBlock:v11];
  }

  if (a3)
  {
    v8 = v6;
    *a3 = v6;
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)ic_activeStoreAccountWithCompletion:()ICAccountStoreAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__ACAccountStore_ICAccountStoreAdditions__ic_activeStoreAccountWithCompletion___block_invoke;
  v6[3] = &unk_1E7BF59C0;
  v7 = v4;
  v5 = v4;
  [self ic_allStoreAccountsWithCompletion:v6];
}

- (id)ic_allStoreAccountsWithError:()ICAccountStoreAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6959930];
  v16 = 0;
  v6 = [self accountTypeWithAccountTypeIdentifier:v5 error:&v16];
  v7 = v16;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v15 = 0;
    v10 = [self accountsWithAccountType:v6 options:1 error:&v15];
    v8 = v15;
    v11 = [v10 msv_filter:&__block_literal_global_22];
    v9 = [v11 copy];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    selfCopy = self;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "ACAccountStore %p - Error retrieving iTunesStore accounts. err=%{public}@", buf, 0x16u);
  }

LABEL_7:
  if (a3)
  {
    v13 = v8;
    *a3 = v8;
  }

  return v9;
}

- (void)ic_allStoreAccountsWithCompletion:()ICAccountStoreAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__ACAccountStore_ICAccountStoreAdditions__ic_allStoreAccountsWithCompletion___block_invoke;
  v6[3] = &unk_1E7BF59E8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [self ic_storeAccountTypeWithCompletion:v6];
}

+ (id)ic_sharedAccountStore
{
  if (ic_sharedAccountStore_onceToken != -1)
  {
    dispatch_once(&ic_sharedAccountStore_onceToken, &__block_literal_global_15292);
  }

  v1 = ic_sharedAccountStore_sSharedAccountStore;

  return v1;
}

@end