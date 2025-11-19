@interface SUICApplicationStateHelper
- (SUICApplicationStateHelper)init;
- (id)_foregroundAppInfosFor:(int64_t)a3;
- (void)_appInfoDictionariesForDisplayLayout:(id)a3 completion:(id)a4;
- (void)_handleApplicationStateUpdate:(id)a3;
- (void)_updateForAppInfoDictionaries:(id)a3 displayType:(id)a4;
- (void)dealloc;
@end

@implementation SUICApplicationStateHelper

void __34__SUICApplicationStateHelper_init__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__SUICApplicationStateHelper_init__block_invoke_2;
  v11[3] = &unk_1E81E7BD8;
  objc_copyWeak(&v12, (a1 + 32));
  [WeakRetained _appInfoDictionariesForDisplayLayout:v8 completion:v11];

  objc_destroyWeak(&v12);
}

void __34__SUICApplicationStateHelper_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleApplicationStateUpdate:v3];
}

void __34__SUICApplicationStateHelper_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForAppInfoDictionaries:v3 displayType:&unk_1F43C7398];
}

void __34__SUICApplicationStateHelper_init__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__SUICApplicationStateHelper_init__block_invoke_2_10;
  v11[3] = &unk_1E81E7BD8;
  objc_copyWeak(&v12, (a1 + 32));
  [WeakRetained _appInfoDictionariesForDisplayLayout:v8 completion:v11];

  objc_destroyWeak(&v12);
}

void __34__SUICApplicationStateHelper_init__block_invoke_2_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForAppInfoDictionaries:v3 displayType:&unk_1F43C73B0];
}

- (SUICApplicationStateHelper)init
{
  v34 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = SUICApplicationStateHelper;
  v2 = [(SUICApplicationStateHelper *)&v31 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    foregroundAppInfos = v2->_foregroundAppInfos;
    v2->_foregroundAppInfos = v3;

    v5 = objc_alloc_init(MEMORY[0x1E698D028]);
    appStateMonitor = v2->_appStateMonitor;
    v2->_appStateMonitor = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.SUICApplicationStateHelper.queue", v7);

    queue = v2->_queue;
    v2->_queue = v8;

    objc_initWeak(&location, v2);
    v10 = v2->_appStateMonitor;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __34__SUICApplicationStateHelper_init__block_invoke;
    v28[3] = &unk_1E81E7BB0;
    objc_copyWeak(&v29, &location);
    [(BKSApplicationStateMonitor *)v10 setHandler:v28];
    v11 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
    v12 = MEMORY[0x1E698D0A0];
    if (v11)
    {
      v13 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[SUICApplicationStateHelper init]";
        _os_log_impl(&dword_1C432B000, v13, OS_LOG_TYPE_INFO, "%s MainDisplayMonitor configuration is not nil. Proceeding to setup DisplayLayoutMonitor", buf, 0xCu);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __34__SUICApplicationStateHelper_init__block_invoke_4;
      v26[3] = &unk_1E81E7C00;
      objc_copyWeak(&v27, &location);
      [v11 setTransitionHandler:v26];
      v14 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v11];
      displayLayoutMonitor = v2->_displayLayoutMonitor;
      v2->_displayLayoutMonitor = v14;

      objc_destroyWeak(&v27);
    }

    v16 = [MEMORY[0x1E699FAF8] configurationForCarDisplayMonitor];
    if (v16)
    {
      v17 = *v12;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[SUICApplicationStateHelper init]";
        _os_log_impl(&dword_1C432B000, v17, OS_LOG_TYPE_INFO, "%s CarDisplayMonitor configuration is not nil. Proceeding to setup carplayDisplayLayoutMonitor", buf, 0xCu);
      }

      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __34__SUICApplicationStateHelper_init__block_invoke_9;
      v24 = &unk_1E81E7C00;
      objc_copyWeak(&v25, &location);
      [v16 setTransitionHandler:&v21];
      v18 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:{v16, v21, v22, v23, v24}];
      carplayDisplayLayoutMonitor = v2->_carplayDisplayLayoutMonitor;
      v2->_carplayDisplayLayoutMonitor = v18;

      objc_destroyWeak(&v25);
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_appStateMonitor invalidate];
  displayLayoutMonitor = self->_displayLayoutMonitor;
  if (displayLayoutMonitor)
  {
    [(FBSDisplayLayoutMonitor *)displayLayoutMonitor invalidate];
  }

  carplayDisplayLayoutMonitor = self->_carplayDisplayLayoutMonitor;
  if (carplayDisplayLayoutMonitor)
  {
    [(FBSDisplayLayoutMonitor *)carplayDisplayLayoutMonitor invalidate];
  }

  v5.receiver = self;
  v5.super_class = SUICApplicationStateHelper;
  [(SUICApplicationStateHelper *)&v5 dealloc];
}

- (id)_foregroundAppInfosFor:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SUICApplicationStateHelper__foregroundAppInfosFor___block_invoke;
  block[3] = &unk_1E81E7AE0;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__SUICApplicationStateHelper__foregroundAppInfosFor___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v3 = [v2 objectForKey:v7];
  v4 = [v3 copy];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_handleApplicationStateUpdate:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v9 count:1];
  [(SUICApplicationStateHelper *)self _updateForAppInfoDictionaries:v6 displayType:&unk_1F43C73C8];

  v8 = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];

  [(SUICApplicationStateHelper *)self _updateForAppInfoDictionaries:v7 displayType:&unk_1F43C73E0];
}

- (void)_updateForAppInfoDictionaries:(id)a3 displayType:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SUICApplicationStateHelper__updateForAppInfoDictionaries_displayType___block_invoke;
  block[3] = &unk_1E81E7C50;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __72__SUICApplicationStateHelper__updateForAppInfoDictionaries_displayType___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__SUICApplicationStateHelper__updateForAppInfoDictionaries_displayType___block_invoke_2;
  v3[3] = &unk_1E81E7C28;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 enumerateObjectsUsingBlock:v3];
}

void __72__SUICApplicationStateHelper__updateForAppInfoDictionaries_displayType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E698CFF8];
  v4 = a2;
  v15 = [v4 objectForKey:v3];
  v5 = [v4 objectForKey:*MEMORY[0x1E698D018]];
  v6 = [v5 intValue];

  v7 = [v4 objectForKey:*MEMORY[0x1E698D010]];
  v8 = [v7 unsignedIntValue];

  v9 = [v4 objectForKey:*MEMORY[0x1E698D008]];

  LOBYTE(v4) = [v9 BOOLValue];
  v10 = objc_alloc_init(MEMORY[0x1E698D0D8]);
  [v10 setIdentifier:v15];
  [v10 setPid:v6];
  v11 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  [v11 removeObject:v10];

  if ((v4 & 1) == 0 && (v8 == 32 || v8 == 8))
  {
    v13 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(*(a1 + 32) + 32) setObject:v13 forKey:*(a1 + 40)];
    }

    v14 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
    [v14 addObject:v10];
  }
}

- (void)_appInfoDictionariesForDisplayLayout:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke;
  block[3] = &unk_1E81E7D40;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke(uint64_t a1)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0x7FFFFFFFFFFFFFFFLL;
  v2 = [*(a1 + 32) elements];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_2;
  v24[3] = &unk_1E81E7C78;
  v26 = &v36;
  v27 = &v30;
  v28 = v29;
  v25 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v24];

  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = dispatch_group_create();
  v5 = v4;
  if (v37[5])
  {
    dispatch_group_enter(v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = v37[5];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_3;
    v21[3] = &unk_1E81E7CA0;
    v22 = v3;
    v23 = v5;
    [v6 applicationInfoForApplication:v7 completion:v21];
  }

  v8 = v31[5];
  if (v8)
  {
    v9 = *(*(a1 + 40) + 8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_4;
    v16[3] = &unk_1E81E7CF0;
    v17 = v5;
    v20 = v29;
    v18 = v3;
    v19 = *(a1 + 48);
    [v9 applicationInfoForApplication:v8 completion:v16];
    v10 = &v17;
    v11 = &v18;
    v12 = v19;
  }

  else
  {
    v12 = dispatch_get_global_queue(21, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_6;
    v13[3] = &unk_1E81E7D18;
    v10 = &v15;
    v15 = *(a1 + 48);
    v11 = &v14;
    v14 = v3;
    dispatch_group_notify(v5, v12, v13);
  }

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
}

void __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (![v11 layoutRole])
  {
    v6 = [*(a1 + 32) displayConfiguration];
    v7 = [v6 isCarDisplay];

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([v11 layoutRole] == 1)
  {
LABEL_7:
    v8 = [v11 bundleIdentifier];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    goto LABEL_8;
  }

  if ([v11 layoutRole] == 2)
  {
    v3 = [v11 bundleIdentifier];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(*(*(a1 + 56) + 8) + 24) = [v11 level];
  }

LABEL_8:
}

void __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_5;
  v8[3] = &unk_1E81E7CC8;
  v6 = *(a1 + 56);
  v9 = v3;
  v12 = v6;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_group_notify(v4, v5, v8);
}

uint64_t __78__SUICApplicationStateHelper__appInfoDictionariesForDisplayLayout_completion___block_invoke_5(void *a1)
{
  if (a1[4])
  {
    v2 = *(*(a1[7] + 8) + 24) - 2;
    v3 = a1[5];
    if (v2 > 0x7FFFFFFFFFFFFFFCLL)
    {
      [v3 insertObject:? atIndex:?];
    }

    else
    {
      [v3 addObject:?];
    }
  }

  v4 = *(a1[6] + 16);

  return v4();
}

@end