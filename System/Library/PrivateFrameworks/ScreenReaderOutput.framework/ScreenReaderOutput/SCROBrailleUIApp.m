@interface SCROBrailleUIApp
+ (BOOL)isHidingViews;
+ (id)allApps;
+ (id)appForView:(id)a3;
+ (void)closeAllApps;
+ (void)closeAllAppsExceptTheLowerMostView;
+ (void)initialize;
+ (void)showViews;
- (SCROBrailleUIApp)initWithDelegate:(id)a3;
- (SCROBrailleUIAppDelegate)delegate;
- (void)_requestRefreshBraille;
- (void)close;
- (void)handleAction:(id)a3;
- (void)open;
@end

@implementation SCROBrailleUIApp

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[SCROBrailleUIApp initialize];
  }
}

uint64_t __30__SCROBrailleUIApp_initialize__block_invoke()
{
  v0 = objc_opt_new();
  _allApps = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (BOOL)isHidingViews
{
  v2 = +[SCROBrailleUIDisplayManager sharedManager];
  v3 = [v2 isHidingViews];

  return v3;
}

+ (void)showViews
{
  v2 = +[SCROBrailleUIDisplayManager sharedManager];
  [v2 showViews];
}

+ (id)allApps
{
  v2 = [_allApps copy];

  return v2;
}

+ (void)closeAllApps
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a1 allApps];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) close];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)closeAllAppsExceptTheLowerMostView
{
  v11 = [a1 allApps];
  v2 = [v11 count];
  if (v2)
  {
    if ([v11 count] != 1)
    {
      v3 = 0;
      do
      {
        v4 = [v11 objectAtIndexedSubscript:v3];
        [v4 close];

        ++v3;
      }

      while (v3 < [v11 count] - 1);
    }

    v5 = [v11 lastObject];
    v6 = [v5 views];
    if ([v6 count] != 1)
    {
      v7 = 0;
      do
      {
        v8 = [SCROBrailleUIAction alloc];
        v9 = [v6 objectAtIndexedSubscript:v7];
        v10 = [(SCROBrailleUIAction *)v8 initWithType:2 originator:v9];

        [v5 handleAction:v10];
        ++v7;
      }

      while (v7 < [v6 count] - 1);
    }
  }

  MEMORY[0x2821F96F8](v2);
}

+ (id)appForView:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = _allApps;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 views];
        v10 = [v9 containsObject:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (SCROBrailleUIApp)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCROBrailleUIApp;
  v5 = [(SCROBrailleUIApp *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)open
{
  if ([_allApps containsObject:self])
  {
    [_allApps removeObject:self];
  }

  v3 = _allApps;

  [v3 insertObject:self atIndex:0];
}

- (void)close
{
  if ([_allApps containsObject:self])
  {
    [_allApps removeObject:self];
  }

  if (![_allApps count])
  {

    [(SCROBrailleUIApp *)self _requestRefreshBraille];
  }
}

- (void)handleAction:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [a3 type];
  if (v4 != 3)
  {
    if (v4 == 2)
    {
      v5 = *MEMORY[0x277D85DE8];

      [(SCROBrailleUIApp *)self close];
      return;
    }

LABEL_18:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = +[SCROBrailleUISettingsManager sharedInstance];
  v7 = [v6 shouldReopenViewsWhenRestart];

  if (!v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [_allApps copy];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * i) close];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    goto LABEL_18;
  }

  v8 = +[SCROBrailleUIDisplayManager sharedManager];
  [v8 hideViews];

  [(SCROBrailleUIApp *)self _requestRefreshBraille];
  v16 = [(SCROBrailleUIApp *)self delegate];
  [v16 handleDidBrailleUIEnd];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_requestRefreshBraille
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = kSCROBrailleUIRequestTypeKey[0];
  v7[0] = &unk_287651BD8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [(SCROBrailleUIApp *)self delegate];
  [v4 handleBrailleUIRequest:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (SCROBrailleUIAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end