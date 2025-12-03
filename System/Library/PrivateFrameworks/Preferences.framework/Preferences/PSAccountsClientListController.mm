@interface PSAccountsClientListController
- (BOOL)_isAccountModificationDisabledByRestrictions;
- (PSAccountsClientListController)init;
- (id)_visibleAccountTypeIDs;
- (id)specifierForID:(id)d;
- (void)dealloc;
- (void)setSpecifiers:(id)specifiers;
- (void)updateAccountSpecifier;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PSAccountsClientListController

- (PSAccountsClientListController)init
{
  v14.receiver = self;
  v14.super_class = PSAccountsClientListController;
  v2 = [(PSListController *)&v14 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v5 = *MEMORY[0x1E69597D8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__PSAccountsClientListController_init__block_invoke;
    v10[3] = &unk_1E71DC710;
    objc_copyWeak(&v12, &location);
    v6 = v2;
    v11 = v6;
    v7 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:v10];
    acObserver = v6->_acObserver;
    v6->_acObserver = v7;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__PSAccountsClientListController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateAccountSpecifier];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 reloadSpecifier:*(*(a1 + 32) + 1464)];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_acObserver];

  v4.receiver = self;
  v4.super_class = PSAccountsClientListController;
  [(PSListController *)&v4 dealloc];
}

- (id)_visibleAccountTypeIDs
{
  v11[14] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6959818];
  v11[0] = *MEMORY[0x1E69598F8];
  v11[1] = v2;
  v3 = *MEMORY[0x1E6959890];
  v11[2] = *MEMORY[0x1E6959820];
  v11[3] = v3;
  v4 = *MEMORY[0x1E6959840];
  v11[4] = *MEMORY[0x1E69598D8];
  v11[5] = v4;
  v5 = *MEMORY[0x1E69598C0];
  v11[6] = *MEMORY[0x1E6959878];
  v11[7] = v5;
  v6 = *MEMORY[0x1E6959918];
  v11[8] = *MEMORY[0x1E6959868];
  v11[9] = v6;
  v7 = *MEMORY[0x1E6959898];
  v11[10] = *MEMORY[0x1E69598A0];
  v11[11] = v7;
  v8 = *MEMORY[0x1E69598C8];
  v11[12] = *MEMORY[0x1E69597F8];
  v11[13] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:14];

  return v9;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = PSAccountsClientListController;
  [(PSListController *)&v5 viewWillAppear:?];
  [(PSAccountsClientListController *)self updateAccountSpecifier];
  [(PSListController *)self reloadSpecifier:self->_accountSpecifier animated:appearCopy];
}

- (void)updateAccountSpecifier
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_18B008000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "visibleTopLevelAccountsWithAccountTypeIdentifiers spin", buf, 2u);
}

void __56__PSAccountsClientListController_updateAccountSpecifier__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v41 = a3;
  v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    __56__PSAccountsClientListController_updateAccountSpecifier__block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v45;
    do
    {
      v18 = 0;
      do
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v44 + 1) + 8 * v18);
        v20 = *(*(a1 + 48) + 8);
        if ((*(v20 + 24) & 1) != 0 || !*(a1 + 32))
        {
          *(v20 + 24) = 1;
        }

        else
        {
          v21 = [*(*(&v44 + 1) + 8 * v18) provisionedDataclasses];
          *(*(*(a1 + 48) + 8) + 24) = [v21 containsObject:*(a1 + 32)];
        }

        if (!*(a1 + 32) || ([v19 enabledDataclasses], v22 = objc_claimAutoreleasedReturnValue(), v42[0] = MEMORY[0x1E69E9820], v42[1] = 3221225472, v42[2] = __56__PSAccountsClientListController_updateAccountSpecifier__block_invoke_31, v42[3] = &unk_1E71DC738, v43 = *(a1 + 32), objc_msgSend(v22, "objectsPassingTest:", v42), v23 = objc_claimAutoreleasedReturnValue(), v22, v24 = objc_msgSend(v23, "count"), v23, v43, v24))
        {
          v25 = [v19 accountPropertyForKey:{@"ACUIAccountSimpleDisplayName", v41}];
          if (v25 || ([v19 accountDescription], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v26 = v25;
            if ([*(*(*(a1 + 56) + 8) + 40) length])
            {
              v27 = [*(*(*(a1 + 56) + 8) + 40) stringByAppendingString:{@", "}];
              v28 = *(*(a1 + 56) + 8);
              v29 = *(v28 + 40);
              *(v28 + 40) = v27;
            }

            v30 = [*(*(*(a1 + 56) + 8) + 40) stringByAppendingString:v26];
            v31 = *(*(a1 + 56) + 8);
            v32 = *(v31 + 40);
            *(v31 + 40) = v30;
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v16);
  }

  v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v33)
  {
    __56__PSAccountsClientListController_updateAccountSpecifier__block_invoke_cold_2(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __56__PSAccountsClientListController_updateAccountSpecifier__block_invoke_31(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 hasPrefix:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;

  return v6;
}

- (void)setSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  [(PSAccountsClientListController *)self updateAccountSpecifier];
  if (self->_accountSpecifier)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = [PSSpecifier groupSpecifierWithName:0];
    v7 = [v5 arrayWithObjects:{v6, self->_accountSpecifier, 0}];

    firstObject = [specifiersCopy firstObject];
    if ([firstObject cellType])
    {
      v9 = [PSSpecifier groupSpecifierWithName:0];
      [v7 addObject:v9];
    }

    [v7 addObjectsFromArray:specifiersCopy];
  }

  else
  {
    v7 = [specifiersCopy mutableCopy];
  }

  v10.receiver = self;
  v10.super_class = PSAccountsClientListController;
  [(PSListController *)&v10 setSpecifiers:v7];
}

- (id)specifierForID:(id)d
{
  dCopy = d;
  if (!self->_accountSpecifier || ![(NSArray *)self->super._specifiers count]|| ![(NSArray *)self->super._specifiers containsObject:self->_accountSpecifier])
  {
    [(PSAccountsClientListController *)self setSpecifiers:MEMORY[0x1E695E0F0]];
  }

  v7.receiver = self;
  v7.super_class = PSAccountsClientListController;
  v5 = [(PSListController *)&v7 specifierForID:dCopy];

  return v5;
}

- (BOOL)_isAccountModificationDisabledByRestrictions
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] == 2;

  return v3;
}

@end