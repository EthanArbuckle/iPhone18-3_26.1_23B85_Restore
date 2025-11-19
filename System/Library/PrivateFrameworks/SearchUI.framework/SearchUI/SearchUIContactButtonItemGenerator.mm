@interface SearchUIContactButtonItemGenerator
+ (id)buttonCategoriesForActionTypes:(id)a3;
+ (id)buttonTitleForActionType:(id)a3 contact:(id)a4;
+ (id)cachedEnabledActionsForButtonItems;
+ (id)defaultButtonCategoriesForPerson:(id)a3;
- (id)cachedEnabledActionTypes;
- (id)viewForActionType:(id)a3;
- (id)visibleButtonForActionType:(id)a3;
- (void)cacheEnabledActionType:(id)a3;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4;
- (void)updateButtons;
@end

@implementation SearchUIContactButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 person];
    v10 = [v8 contactIdentifier];

    if (v10)
    {
      v11 = [v8 contactIdentifier];
      [v9 setContactIdentifier:v11];
    }

    v12 = [v8 actionTypesToShow];
    v13 = [v12 count];
    v14 = objc_opt_class();
    if (v13)
    {
      [v14 buttonCategoriesForActionTypes:v12];
    }

    else
    {
      [v14 defaultButtonCategoriesForPerson:v9];
    }
    v18 = ;
  }

  else
  {
    v8 = [v6 command];
    v9 = objc_opt_new();
    v15 = [v8 phoneNumber];
    if (v15)
    {
      v16 = [v8 phoneNumber];
      v29[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [v9 setPhoneNumbers:v17];
    }

    else
    {
      [v9 setPhoneNumbers:0];
    }

    v28 = *MEMORY[0x1E695C150];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  }

  if ([v18 count])
  {
    v19 = objc_opt_new();
    [(SearchUIContactButtonItemGenerator *)self setQuickActionViews:v19];

    v20 = [objc_alloc(MEMORY[0x1E695D130]) initWithActionTypes:v18 contactQuickActionViewContainer:self];
    [(SearchUIContactButtonItemGenerator *)self setQuickActionsController:v20];
    [(SearchUIContactButtonItemGenerator *)self setSfButtonItem:v6];
    [(SearchUIContactButtonItemGenerator *)self setCompletionHandler:v7];
    v21 = +[SearchUIContactCache sharedCache];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __93__SearchUIContactButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke;
    v26 = &unk_1E85B2EE8;
    v27 = v20;
    v22 = v20;
    [v21 fetchContactForPerson:v9 completionHandler:&v23];

    [(SearchUIContactButtonItemGenerator *)self updateButtons:v23];
  }

  else
  {
    v7[2](v7, 0, 1);
  }
}

+ (id)cachedEnabledActionsForButtonItems
{
  if (cachedEnabledActionsForButtonItems_onceToken != -1)
  {
    +[SearchUIContactButtonItemGenerator cachedEnabledActionsForButtonItems];
  }

  v3 = cachedEnabledActionsForButtonItems_cachedEnabledActionsForButtonItems;

  return v3;
}

uint64_t __72__SearchUIContactButtonItemGenerator_cachedEnabledActionsForButtonItems__block_invoke()
{
  cachedEnabledActionsForButtonItems_cachedEnabledActionsForButtonItems = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)cachedEnabledActionTypes
{
  v3 = [objc_opt_class() cachedEnabledActionsForButtonItems];
  v4 = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)cacheEnabledActionType:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIContactButtonItemGenerator *)self cachedEnabledActionTypes];
  if (v5)
  {
    v7 = v5;
    [v5 addObject:v4];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA8] setWithObject:v4];

    v4 = [objc_opt_class() cachedEnabledActionsForButtonItems];
    v6 = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
    [v4 setObject:v7 forKey:v6];
  }
}

- (void)updateButtons
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = objc_opt_new();
  v3 = [(SearchUIContactButtonItemGenerator *)self quickActionsController];
  v30 = [(SearchUIContactButtonItemGenerator *)self cachedEnabledActionTypes];
  v4 = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
    v6 = [v5 title];
  }

  else
  {
    v6 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v3 actionTypes];
  v7 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v35 = *v37;
    v32 = *MEMORY[0x1E695C170];
    v33 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v11 = [(SearchUIContactButtonItemGenerator *)self quickActionViews];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (([v12 enabled] & 1) != 0 || objc_msgSend(v30, "containsObject:", v10))
        {
          v13 = [SearchUIContactButtonItem alloc];
          v14 = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
          v15 = [(SearchUIButtonItem *)v13 initWithSFButtonItem:v14];

          [(SearchUIContactButtonItem *)v15 setQuickActionsController:v3];
          [(SearchUIContactButtonItem *)v15 setActionType:v10];
          if (v6)
          {
            [(SearchUIContactButtonItem *)v15 setTitle:v6];
          }

          else
          {
            v16 = objc_opt_class();
            v17 = [v3 contact];
            v18 = [v16 buttonTitleForActionType:v10 contact:v17];
            [(SearchUIContactButtonItem *)v15 setTitle:v18];
          }

          v19 = [(SearchUIContactButtonItemGenerator *)self quickActionsController];
          -[SearchUIButtonItem setShowsMenuAsPrimaryAction:](v15, "setShowsMenuAsPrimaryAction:", [v19 hasDefaultActionForActionType:v10] ^ 1);

          if (![v10 isEqualToString:v32] || ((objc_msgSend(v3, "contact"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hasBeenPersisted"), v22 = @"square.and.pencil", (v21 & 1) == 0) ? (v23 = @"square.and.pencil") : (v23 = 0), v24 = v23, v20, (v21 & 1) != 0))
          {
            v22 = [MEMORY[0x1E6996C08] symbolOulinedImageNameForActionType:v10];
          }

          if ([(__CFString *)v22 length])
          {
            v25 = objc_opt_new();
            [v25 setSymbolName:v22];
            [v25 setIsTemplate:1];
            [(SearchUIContactButtonItem *)v15 setImage:v25];
          }

          [v12 setButtonItem:v15];
          [v3 setModelTrackingDelegate:v15];
          [v34 addObject:v15];
          [(SearchUIContactButtonItemGenerator *)self cacheEnabledActionType:v10];

          v6 = v33;
        }

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v8);
  }

  v26 = [v3 actionTypes];
  v27 = [v26 count];
  v28 = v27 == [v34 count];

  v29 = [(SearchUIContactButtonItemGenerator *)self completionHandler];
  (v29)[2](v29, v34, v28);
}

+ (id)buttonTitleForActionType:(id)a3 contact:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 hasBeenPersisted];
  v8 = objc_opt_new();
  if ([v5 isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    if (v7)
    {
      v9 = @"VIDEO_CALL_MENU_TITLE";
    }

    else
    {
      v9 = [v8 faceTimeVideoServiceName];
    }
  }

  else if ([v5 isEqualToString:*MEMORY[0x1E695C178]])
  {
    v9 = @"SEND_MESSAGE";
  }

  else if ([v5 isEqualToString:*MEMORY[0x1E695C150]])
  {
    v10 = [v6 phoneNumbers];
    if ([v10 count])
    {
      v9 = @"AUDIO_CALL_MENU_TITLE";
    }

    else
    {
      v9 = [v8 faceTimeAudioServiceName];
    }
  }

  else if ([v5 isEqualToString:*MEMORY[0x1E695C170]])
  {
    v9 = @"SEND_EMAIL";
  }

  else
  {
    v9 = 0;
  }

  v11 = [SearchUIUtilities localizedStringForKey:v9];

  return v11;
}

- (id)viewForActionType:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIContactButtonItemGenerator *)self quickActionViews];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = objc_opt_new();
    [v6 setGenerator:self];
    v7 = [(SearchUIContactButtonItemGenerator *)self quickActionViews];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

+ (id)defaultButtonCategoriesForPerson:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C178];
  v10 = *MEMORY[0x1E695C1B8];
  v11 = v3;
  v12 = *MEMORY[0x1E695C150];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:3];
  v7 = [v6 mutableCopy];

  v8 = [v5 emailAddresses];

  if (v8)
  {
    [v7 insertObject:*MEMORY[0x1E695C170] atIndex:0];
  }

  else if ([MEMORY[0x1E69D9240] isMacOS])
  {
    [v7 addObject:*MEMORY[0x1E695C170]];
  }

  return v7;
}

+ (id)buttonCategoriesForActionTypes:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v19 = *MEMORY[0x1E695C168];
    v23 = *MEMORY[0x1E695C160];
    v9 = *MEMORY[0x1E695C188];
    v22 = *MEMORY[0x1E695C1A8];
    v10 = *MEMORY[0x1E695C190];
    v21 = *MEMORY[0x1E695C150];
    v11 = *MEMORY[0x1E695C1B8];
    v20 = *MEMORY[0x1E695C178];
    v12 = *MEMORY[0x1E695C170];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v14 = [*(*(&v24 + 1) + 8 * i) intValue];
        if (v14 <= 4)
        {
          if (v14 > 2)
          {
            v15 = v11;
            if (v14 != 3)
            {
              v15 = v21;
            }
          }

          else
          {
            v15 = v12;
            if (v14 != 1)
            {
              v15 = v20;
              if (v14 != 2)
              {
                continue;
              }
            }
          }
        }

        else if (v14 <= 6)
        {
          v15 = v10;
          if (v14 != 5)
          {
            v15 = v22;
          }
        }

        else
        {
          v15 = v9;
          if (v14 != 7)
          {
            v15 = v23;
            if (v14 != 8)
            {
              if (v14 != 9)
              {
                continue;
              }

              v15 = v19;
            }
          }
        }

        v16 = v15;
        if (v16)
        {
          v17 = v16;
          [v4 addObject:v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)visibleButtonForActionType:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIContactButtonItemGenerator *)self quickActionViews];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [(SearchUIButtonItemGenerator *)self delegate];
  v8 = [v6 buttonItem];
  v9 = [v7 viewForButtonItem:v8];

  return v9;
}

@end