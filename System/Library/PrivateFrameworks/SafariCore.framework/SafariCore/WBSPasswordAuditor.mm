@interface WBSPasswordAuditor
- (BOOL)_passwordIsReused:(id)reused byOtherSavedAccount:(id)account;
- (BOOL)_savedAccountQualifiesForReuseAuditing:(id)auditing;
- (BOOL)accountStoreHasDuplicatedPasswords;
- (BOOL)savedAccount:(id)account reusesPasswordWithAccountInSavedAccounts:(id)accounts;
- (WBSPasswordAuditor)initWithSavedAccountStore:(id)store autoFillQuirksManager:(id)manager;
- (id)duplicatePasswordsInPasswords:(id)passwords;
- (id)savedAccountsWithDuplicatedPassword:(id)password;
@end

@implementation WBSPasswordAuditor

- (WBSPasswordAuditor)initWithSavedAccountStore:(id)store autoFillQuirksManager:(id)manager
{
  storeCopy = store;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = WBSPasswordAuditor;
  v9 = [(WBSPasswordAuditor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_savedAccountStore, store);
    objc_storeStrong(&v10->_autoFillQuirksManager, manager);
    v11 = v10;
  }

  return v10;
}

- (BOOL)_savedAccountQualifiesForReuseAuditing:(id)auditing
{
  auditingCopy = auditing;
  password = [auditingCopy password];
  highLevelDomain = [auditingCopy highLevelDomain];
  userIsNeverSaveMarker = [auditingCopy userIsNeverSaveMarker];

  if ((userIsNeverSaveMarker & 1) == 0 && [highLevelDomain length] && objc_msgSend(password, "length") && !+[WBSPasswordGenerationManager passwordLooksLikePasswordManagerGeneratedPassword:](WBSPasswordGenerationManager, "passwordLooksLikePasswordManagerGeneratedPassword:", password))
  {
    passwordAuditingEligibleDomainsManager = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager passwordAuditingEligibleDomainsManager];
    domainsIneligibleForPasswordAuditing = [passwordAuditingEligibleDomainsManager domainsIneligibleForPasswordAuditing];
    v8 = [domainsIneligibleForPasswordAuditing containsObject:highLevelDomain] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_passwordIsReused:(id)reused byOtherSavedAccount:(id)account
{
  reusedCopy = reused;
  accountCopy = account;
  if (([reusedCopy isEqual:accountCopy] & 1) == 0 && -[WBSPasswordAuditor _savedAccountQualifiesForReuseAuditing:](self, "_savedAccountQualifiesForReuseAuditing:", reusedCopy) && -[WBSPasswordAuditor _savedAccountQualifiesForReuseAuditing:](self, "_savedAccountQualifiesForReuseAuditing:", accountCopy))
  {
    highLevelDomain = [reusedCopy highLevelDomain];
    highLevelDomain2 = [accountCopy highLevelDomain];
    if (([highLevelDomain isEqualToString:highLevelDomain2] & 1) != 0 || (objc_msgSend(reusedCopy, "password"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(accountCopy, "password"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, !v12))
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      associatedDomainsManager = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager associatedDomainsManager];
      v14 = [associatedDomainsManager domainsWithAssociatedCredentialsForDomain:highLevelDomain];

      v15 = [v14 containsObject:highLevelDomain2] ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)accountStoreHasDuplicatedPasswords
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  savedAccountsWithPasswords = [(WBSSavedAccountStore *)self->_savedAccountStore savedAccountsWithPasswords];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WBSPasswordAuditor_accountStoreHasDuplicatedPasswords__block_invoke;
  v7[3] = &unk_1E7CF2F58;
  v7[4] = self;
  v4 = savedAccountsWithPasswords;
  v8 = v4;
  v9 = &v10;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __56__WBSPasswordAuditor_accountStoreHasDuplicatedPasswords__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) _savedAccountQualifiesForReuseAuditing:v7])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__WBSPasswordAuditor_accountStoreHasDuplicatedPasswords__block_invoke_2;
    v12[3] = &unk_1E7CF2F30;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = a3;
    v12[4] = v8;
    v10 = v7;
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 enumerateObjectsUsingBlock:v12];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }
}

uint64_t __56__WBSPasswordAuditor_accountStoreHasDuplicatedPasswords__block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 56) < a3)
  {
    v9 = v7;
    if ([*(a1 + 32) _savedAccountQualifiesForReuseAuditing:?])
    {
      if ([*(a1 + 32) _passwordIsReused:*(a1 + 40) byOtherSavedAccount:v9])
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (BOOL)savedAccount:(id)account reusesPasswordWithAccountInSavedAccounts:(id)accounts
{
  v20 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accountsCopy = accounts;
  v8 = [accountsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(accountsCopy);
        }

        if ([(WBSPasswordAuditor *)self _passwordIsReused:*(*(&v15 + 1) + 8 * i) byOtherSavedAccount:accountCopy, v15])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [accountsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)savedAccountsWithDuplicatedPassword:(id)password
{
  passwordCopy = password;
  if ([(WBSPasswordAuditor *)self _savedAccountQualifiesForReuseAuditing:passwordCopy])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    savedAccountsWithPasswords = [(WBSSavedAccountStore *)self->_savedAccountStore savedAccountsWithPasswords];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__WBSPasswordAuditor_savedAccountsWithDuplicatedPassword___block_invoke;
    v10[3] = &unk_1E7CF2F80;
    v11 = v5;
    selfCopy = self;
    v13 = passwordCopy;
    v7 = v5;
    v8 = [savedAccountsWithPasswords safari_filterObjectsUsingBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __58__WBSPasswordAuditor_savedAccountsWithDuplicatedPassword___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 highLevelDomain];
  if (([*(a1 + 32) containsObject:v4] & 1) != 0 || !objc_msgSend(*(a1 + 40), "_passwordIsReused:byOtherSavedAccount:", v3, *(a1 + 48)))
  {
    v5 = 0;
  }

  else
  {
    [*(a1 + 32) addObject:v4];
    v5 = 1;
  }

  return v5;
}

- (id)duplicatePasswordsInPasswords:(id)passwords
{
  passwordsCopy = passwords;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [passwordsCopy count];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__WBSPasswordAuditor_duplicatePasswordsInPasswords___block_invoke;
  v14 = &unk_1E7CF2FD0;
  selfCopy = self;
  v16 = v5;
  v17 = passwordsCopy;
  v18 = v6;
  v7 = passwordsCopy;
  v8 = v5;
  [v7 enumerateObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

void __52__WBSPasswordAuditor_duplicatePasswordsInPasswords___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) _savedAccountQualifiesForReuseAuditing:v5] && (objc_msgSend(*(a1 + 40), "containsObject:", v5) & 1) == 0)
  {
    v6 = a3 + 1;
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v6, *(a1 + 56) - v6}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__WBSPasswordAuditor_duplicatePasswordsInPasswords___block_invoke_2;
    v11[3] = &unk_1E7CF2FA8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    v14 = v5;
    [v7 enumerateObjectsAtIndexes:v8 options:0 usingBlock:v11];
  }
}

void __52__WBSPasswordAuditor_duplicatePasswordsInPasswords___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0 && objc_msgSend(*(a1 + 40), "_savedAccountQualifiesForReuseAuditing:", v3) && objc_msgSend(*(a1 + 40), "_passwordIsReused:byOtherSavedAccount:", *(a1 + 48), v3))
  {
    [*(a1 + 32) addObject:*(a1 + 48)];
    [*(a1 + 32) addObject:v3];
  }
}

@end