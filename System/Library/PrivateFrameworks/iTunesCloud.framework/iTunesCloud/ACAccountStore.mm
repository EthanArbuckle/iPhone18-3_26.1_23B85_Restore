@interface ACAccountStore
@end

@implementation ACAccountStore

void __67__ACAccountStore_ICAccountStoreAdditions__ic_canAccessAccountStore__block_invoke()
{
  if ([MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.private.accounts.allaccounts" shouldLogForMissingEntitlement:0] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69B1418], "hasBoolEntitlement:shouldLogForMissingEntitlement:", @"com.apple.itunesstored.private", 0))
  {
    ic_canAccessAccountStore___hasAccountAccess = 1;
  }

  else
  {
    ic_canAccessAccountStore___hasAccountAccess = [MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.private.applemediaservices" shouldLogForMissingEntitlement:0];
    if ((ic_canAccessAccountStore___hasAccountAccess & 1) == 0)
    {
      v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        *v1 = 0;
        _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "[ACAccountStore] Current process does not have account store access.", v1, 2u);
      }
    }
  }
}

void __68__ACAccountStore_ICAccountStoreAdditions__ic_canAccessAppleAccounts__block_invoke()
{
  ic_canAccessAppleAccounts___hasAppleAccountAccess = [MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.accounts.appleaccount.fullaccess" shouldLogForMissingEntitlement:0];
  if ((ic_canAccessAppleAccounts___hasAppleAccountAccess & 1) == 0)
  {
    v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "[ACAccountStore] Current process does not have apple account access.", v1, 2u);
    }
  }
}

void __76__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForStoreAccountID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __65__ACAccountStore_ICAccountStoreAdditions__ic_primaryAppleAccount__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __65__ACAccountStore_ICAccountStoreAdditions__ic_activeLockerAccount__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __64__ACAccountStore_ICAccountStoreAdditions__ic_activeStoreAccount__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __62__ACAccountStore_ICAccountStoreAdditions__ic_allStoreAccounts__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __73__ACAccountStore_ICAccountStoreAdditions__ic_localStoreAccountWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 ic_isLocalAccount])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __78__ACAccountStore_ICAccountStoreAdditions__ic_localStoreAccountWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 ic_isLocalAccount])
          {
            v8 = v11;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    (*(*(a1 + 32) + 16))();
  }
}

void __86__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForHomeUserIdentifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 ic_homeUserIdentifiers];
  v8 = v7;
  if (v7 && [v7 containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __91__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForHomeUserIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v26;
      obj = v5;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 ic_homeUserIdentifiers];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v22;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v22 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                if ([*(*(&v21 + 1) + 8 * j) isEqual:*(a1 + 32)])
                {
                  v19 = v12;

                  v9 = v19;
                  goto LABEL_18;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:
        }

        v5 = obj;
        v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    (*(*(a1 + 40) + 16))();

    v6 = 0;
  }
}

void __82__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForStoreAccountID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 ic_DSID];
  v8 = [v7 isEqualToNumber:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __87__ACAccountStore_ICAccountStoreAdditions__ic_storeAccountForStoreAccountID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 ic_DSID];
          v13 = [v12 isEqualToNumber:*(a1 + 32)];

          if (v13)
          {
            v8 = v11;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    (*(*(a1 + 40) + 16))();
  }
}

void __75__ACAccountStore_ICAccountStoreAdditions__ic_primaryAppleAccountWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 aa_isAccountClass:*MEMORY[0x1E698B760]])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __80__ACAccountStore_ICAccountStoreAdditions__ic_setActiveLockerAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v5 = 0;
    if ((a2 & 1) == 0)
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:1 userInfo:0];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __80__ACAccountStore_ICAccountStoreAdditions__ic_setActiveLockerAccount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 ic_isActiveLockerAccount])
  {
    [v3 ic_setActiveLockerAccount:0];
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ as the active locker account", buf, 0xCu);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__ACAccountStore_ICAccountStoreAdditions__ic_setActiveLockerAccount_completion___block_invoke_27;
    v6[3] = &unk_1E7BF8450;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 saveAccount:v3 withDataclassActions:0 doVerify:0 completion:v6];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __80__ACAccountStore_ICAccountStoreAdditions__ic_setActiveLockerAccount_completion___block_invoke_27(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v5 = 0;
    if ((a2 & 1) == 0)
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:1 userInfo:0];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __80__ACAccountStore_ICAccountStoreAdditions__ic_activeLockerAccountWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 32) + 16);
LABEL_5:
    v7();
    goto LABEL_6;
  }

  if ([v5 ic_isActiveLockerAccount])
  {
    v7 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "active store account does not have the locker bit set - returning nil", v11, 2u);
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:1 userInfo:0];
  (*(v9 + 16))(v9, 0, v10);

LABEL_6:
}

void __79__ACAccountStore_ICAccountStoreAdditions__ic_setActiveStoreAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v18 = v5;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = dispatch_group_create();
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__15239;
    v34[4] = __Block_byref_object_dispose__15240;
    v35 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 1;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          dispatch_group_enter(v7);
          v12 = [*(a1 + 32) identifier];
          v13 = [v11 identifier];
          v14 = [v12 isEqualToString:v13];
          if (v14 != [v11 ic_isActive])
          {
            [v11 setActive:v14];
            v15 = *(a1 + 40);
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __79__ACAccountStore_ICAccountStoreAdditions__ic_setActiveStoreAccount_completion___block_invoke_2;
            v24[3] = &unk_1E7BF9A28;
            v26 = v32;
            v27 = v34;
            v16 = v7;
            v25 = v16;
            [v15 saveAccount:v11 withDataclassActions:0 doVerify:0 completion:v24];
            v17 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __79__ACAccountStore_ICAccountStoreAdditions__ic_setActiveStoreAccount_completion___block_invoke_3;
            block[3] = &unk_1E7BF8EC0;
            v22 = v32;
            v23 = v34;
            v21 = *(a1 + 48);
            dispatch_group_notify(v16, v17, block);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v8);
    }

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(v34, 8);

    v6 = 0;
  }
}

void __79__ACAccountStore_ICAccountStoreAdditions__ic_setActiveStoreAccount_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v10 = a3;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    *(v6 + 24) = a2;
  }

  v7 = *(*(a1 + 48) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    objc_storeStrong(v8, a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __79__ACAccountStore_ICAccountStoreAdditions__ic_setActiveStoreAccount_completion___block_invoke_3(void *a1)
{
  if ((*(*(a1[5] + 8) + 24) & 1) == 0 && !*(*(a1[6] + 8) + 40))
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:1 userInfo:0];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1[4] + 16);

  return v5();
}

void __74__ACAccountStore_ICAccountStoreAdditions__ic_activeStoreAccountWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 ic_isActive])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __79__ACAccountStore_ICAccountStoreAdditions__ic_activeStoreAccountWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 ic_isActive])
          {
            v8 = v11;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    (*(*(a1 + 32) + 16))();
  }
}

void __77__ACAccountStore_ICAccountStoreAdditions__ic_allStoreAccountsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__ACAccountStore_ICAccountStoreAdditions__ic_allStoreAccountsWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7BF59C0;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v7 accountsWithAccountType:a2 options:1 completion:v8];
  }
}

void __77__ACAccountStore_ICAccountStoreAdditions__ic_allStoreAccountsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = [a2 msv_filter:&__block_literal_global_18];
  v6 = *(a1 + 32);
  v7 = [v8 copy];
  (*(v6 + 16))(v6, v7, v5);
}

uint64_t __64__ACAccountStore_ICAccountStoreAdditions__ic_sharedAccountStore__block_invoke()
{
  v0 = [MEMORY[0x1E6959A48] defaultStore];
  v1 = ic_sharedAccountStore_sSharedAccountStore;
  ic_sharedAccountStore_sSharedAccountStore = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end