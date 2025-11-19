@interface PSAccessoriesListController
@end

@implementation PSAccessoriesListController

void __44____PSAccessoriesListController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSessionEvent:v3];
}

void __49____PSAccessoriesListController_refreshDADevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49____PSAccessoriesListController_refreshDADevices__block_invoke_2;
  block[3] = &unk_1E71DBCE8;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49____PSAccessoriesListController_refreshDADevices__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _PSLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_18B008000, v2, OS_LOG_TYPE_DEFAULT, "Error while trying to fetch accessories: %@", buf, 0xCu);
    }
  }

  v17 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 appAccessInfoMap];
        v11 = [v10 allKeys];
        v12 = [v11 containsObject:*(*(a1 + 48) + 1456)];

        if (v12)
        {
          v13 = [*(a1 + 48) specifierForDevice:v9];
          [v17 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [v17 sortUsingComparator:&__block_literal_global];
  [*(a1 + 48) removeContiguousSpecifiers:*(*(a1 + 48) + 1472)];
  v14 = [v17 copy];
  v15 = *(a1 + 48);
  v16 = *(v15 + 1472);
  *(v15 + 1472) = v14;

  [*(a1 + 48) insertContiguousSpecifiers:*(*(a1 + 48) + 1472) afterSpecifierID:@"ACCESSORIES_GROUP"];
}

uint64_t __49____PSAccessoriesListController_refreshDADevices__block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

@end