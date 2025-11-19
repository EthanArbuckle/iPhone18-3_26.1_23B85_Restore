@interface WBSPasswordAuditor
- (BOOL)_passwordIsReused:(id)a3 byOtherSavedAccount:(id)a4;
- (BOOL)_savedAccountQualifiesForReuseAuditing:(id)a3;
- (BOOL)accountStoreHasDuplicatedPasswords;
- (BOOL)savedAccount:(id)a3 reusesPasswordWithAccountInSavedAccounts:(id)a4;
- (WBSPasswordAuditor)initWithSavedAccountStore:(id)a3 autoFillQuirksManager:(id)a4;
- (id)duplicatePasswordsInPasswords:(id)a3;
- (id)savedAccountsWithDuplicatedPassword:(id)a3;
@end

@implementation WBSPasswordAuditor

- (WBSPasswordAuditor)initWithSavedAccountStore:(id)a3 autoFillQuirksManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSPasswordAuditor;
  v9 = [(WBSPasswordAuditor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_savedAccountStore, a3);
    objc_storeStrong(&v10->_autoFillQuirksManager, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)_savedAccountQualifiesForReuseAuditing:(id)a3
{
  v4 = a3;
  v5 = [v4 password];
  v6 = [v4 highLevelDomain];
  v7 = [v4 userIsNeverSaveMarker];

  if ((v7 & 1) == 0 && [v6 length] && objc_msgSend(v5, "length") && !+[WBSPasswordGenerationManager passwordLooksLikePasswordManagerGeneratedPassword:](WBSPasswordGenerationManager, "passwordLooksLikePasswordManagerGeneratedPassword:", v5))
  {
    v10 = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager passwordAuditingEligibleDomainsManager];
    v11 = [v10 domainsIneligibleForPasswordAuditing];
    v8 = [v11 containsObject:v6] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_passwordIsReused:(id)a3 byOtherSavedAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqual:v7] & 1) == 0 && -[WBSPasswordAuditor _savedAccountQualifiesForReuseAuditing:](self, "_savedAccountQualifiesForReuseAuditing:", v6) && -[WBSPasswordAuditor _savedAccountQualifiesForReuseAuditing:](self, "_savedAccountQualifiesForReuseAuditing:", v7))
  {
    v8 = [v6 highLevelDomain];
    v9 = [v7 highLevelDomain];
    if (([v8 isEqualToString:v9] & 1) != 0 || (objc_msgSend(v6, "password"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "password"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, !v12))
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      v13 = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager associatedDomainsManager];
      v14 = [v13 domainsWithAssociatedCredentialsForDomain:v8];

      v15 = [v14 containsObject:v9] ^ 1;
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
  v3 = [(WBSSavedAccountStore *)self->_savedAccountStore savedAccountsWithPasswords];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WBSPasswordAuditor_accountStoreHasDuplicatedPasswords__block_invoke;
  v7[3] = &unk_1E7CF2F58;
  v7[4] = self;
  v4 = v3;
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

- (BOOL)savedAccount:(id)a3 reusesPasswordWithAccountInSavedAccounts:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([(WBSPasswordAuditor *)self _passwordIsReused:*(*(&v15 + 1) + 8 * i) byOtherSavedAccount:v6, v15])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)savedAccountsWithDuplicatedPassword:(id)a3
{
  v4 = a3;
  if ([(WBSPasswordAuditor *)self _savedAccountQualifiesForReuseAuditing:v4])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = [(WBSSavedAccountStore *)self->_savedAccountStore savedAccountsWithPasswords];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__WBSPasswordAuditor_savedAccountsWithDuplicatedPassword___block_invoke;
    v10[3] = &unk_1E7CF2F80;
    v11 = v5;
    v12 = self;
    v13 = v4;
    v7 = v5;
    v8 = [v6 safari_filterObjectsUsingBlock:v10];
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

- (id)duplicatePasswordsInPasswords:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [v4 count];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__WBSPasswordAuditor_duplicatePasswordsInPasswords___block_invoke;
  v14 = &unk_1E7CF2FD0;
  v15 = self;
  v16 = v5;
  v17 = v4;
  v18 = v6;
  v7 = v4;
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