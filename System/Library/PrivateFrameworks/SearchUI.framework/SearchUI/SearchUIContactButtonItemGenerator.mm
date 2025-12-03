@interface SearchUIContactButtonItemGenerator
+ (id)buttonCategoriesForActionTypes:(id)types;
+ (id)buttonTitleForActionType:(id)type contact:(id)contact;
+ (id)cachedEnabledActionsForButtonItems;
+ (id)defaultButtonCategoriesForPerson:(id)person;
- (id)cachedEnabledActionTypes;
- (id)viewForActionType:(id)type;
- (id)visibleButtonForActionType:(id)type;
- (void)cacheEnabledActionType:(id)type;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion;
- (void)updateButtons;
@end

@implementation SearchUIContactButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion
{
  v29[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    command = itemCopy;
    person = [command person];
    contactIdentifier = [command contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [command contactIdentifier];
      [person setContactIdentifier:contactIdentifier2];
    }

    actionTypesToShow = [command actionTypesToShow];
    v13 = [actionTypesToShow count];
    v14 = objc_opt_class();
    if (v13)
    {
      [v14 buttonCategoriesForActionTypes:actionTypesToShow];
    }

    else
    {
      [v14 defaultButtonCategoriesForPerson:person];
    }
    v18 = ;
  }

  else
  {
    command = [itemCopy command];
    person = objc_opt_new();
    phoneNumber = [command phoneNumber];
    if (phoneNumber)
    {
      phoneNumber2 = [command phoneNumber];
      v29[0] = phoneNumber2;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [person setPhoneNumbers:v17];
    }

    else
    {
      [person setPhoneNumbers:0];
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
    [(SearchUIContactButtonItemGenerator *)self setSfButtonItem:itemCopy];
    [(SearchUIContactButtonItemGenerator *)self setCompletionHandler:completionCopy];
    v21 = +[SearchUIContactCache sharedCache];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __93__SearchUIContactButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke;
    v26 = &unk_1E85B2EE8;
    v27 = v20;
    v22 = v20;
    [v21 fetchContactForPerson:person completionHandler:&v23];

    [(SearchUIContactButtonItemGenerator *)self updateButtons:v23];
  }

  else
  {
    completionCopy[2](completionCopy, 0, 1);
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
  cachedEnabledActionsForButtonItems = [objc_opt_class() cachedEnabledActionsForButtonItems];
  sfButtonItem = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
  v5 = [cachedEnabledActionsForButtonItems objectForKey:sfButtonItem];

  return v5;
}

- (void)cacheEnabledActionType:(id)type
{
  typeCopy = type;
  cachedEnabledActionTypes = [(SearchUIContactButtonItemGenerator *)self cachedEnabledActionTypes];
  if (cachedEnabledActionTypes)
  {
    v7 = cachedEnabledActionTypes;
    [cachedEnabledActionTypes addObject:typeCopy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA8] setWithObject:typeCopy];

    typeCopy = [objc_opt_class() cachedEnabledActionsForButtonItems];
    sfButtonItem = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
    [typeCopy setObject:v7 forKey:sfButtonItem];
  }
}

- (void)updateButtons
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = objc_opt_new();
  quickActionsController = [(SearchUIContactButtonItemGenerator *)self quickActionsController];
  cachedEnabledActionTypes = [(SearchUIContactButtonItemGenerator *)self cachedEnabledActionTypes];
  sfButtonItem = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sfButtonItem2 = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
    title = [sfButtonItem2 title];
  }

  else
  {
    title = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [quickActionsController actionTypes];
  v7 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v35 = *v37;
    v32 = *MEMORY[0x1E695C170];
    v33 = title;
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
        quickActionViews = [(SearchUIContactButtonItemGenerator *)self quickActionViews];
        v12 = [quickActionViews objectForKeyedSubscript:v10];

        if (([v12 enabled] & 1) != 0 || objc_msgSend(cachedEnabledActionTypes, "containsObject:", v10))
        {
          v13 = [SearchUIContactButtonItem alloc];
          sfButtonItem3 = [(SearchUIContactButtonItemGenerator *)self sfButtonItem];
          v15 = [(SearchUIButtonItem *)v13 initWithSFButtonItem:sfButtonItem3];

          [(SearchUIContactButtonItem *)v15 setQuickActionsController:quickActionsController];
          [(SearchUIContactButtonItem *)v15 setActionType:v10];
          if (title)
          {
            [(SearchUIContactButtonItem *)v15 setTitle:title];
          }

          else
          {
            v16 = objc_opt_class();
            contact = [quickActionsController contact];
            v18 = [v16 buttonTitleForActionType:v10 contact:contact];
            [(SearchUIContactButtonItem *)v15 setTitle:v18];
          }

          quickActionsController2 = [(SearchUIContactButtonItemGenerator *)self quickActionsController];
          -[SearchUIButtonItem setShowsMenuAsPrimaryAction:](v15, "setShowsMenuAsPrimaryAction:", [quickActionsController2 hasDefaultActionForActionType:v10] ^ 1);

          if (![v10 isEqualToString:v32] || ((objc_msgSend(quickActionsController, "contact"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hasBeenPersisted"), v22 = @"square.and.pencil", (v21 & 1) == 0) ? (v23 = @"square.and.pencil") : (v23 = 0), v24 = v23, v20, (v21 & 1) != 0))
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
          [quickActionsController setModelTrackingDelegate:v15];
          [v34 addObject:v15];
          [(SearchUIContactButtonItemGenerator *)self cacheEnabledActionType:v10];

          title = v33;
        }

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v8);
  }

  actionTypes = [quickActionsController actionTypes];
  v27 = [actionTypes count];
  v28 = v27 == [v34 count];

  completionHandler = [(SearchUIContactButtonItemGenerator *)self completionHandler];
  (completionHandler)[2](completionHandler, v34, v28);
}

+ (id)buttonTitleForActionType:(id)type contact:(id)contact
{
  typeCopy = type;
  contactCopy = contact;
  hasBeenPersisted = [contactCopy hasBeenPersisted];
  v8 = objc_opt_new();
  if ([typeCopy isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    if (hasBeenPersisted)
    {
      faceTimeVideoServiceName = @"VIDEO_CALL_MENU_TITLE";
    }

    else
    {
      faceTimeVideoServiceName = [v8 faceTimeVideoServiceName];
    }
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C178]])
  {
    faceTimeVideoServiceName = @"SEND_MESSAGE";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C150]])
  {
    phoneNumbers = [contactCopy phoneNumbers];
    if ([phoneNumbers count])
    {
      faceTimeVideoServiceName = @"AUDIO_CALL_MENU_TITLE";
    }

    else
    {
      faceTimeVideoServiceName = [v8 faceTimeAudioServiceName];
    }
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C170]])
  {
    faceTimeVideoServiceName = @"SEND_EMAIL";
  }

  else
  {
    faceTimeVideoServiceName = 0;
  }

  v11 = [SearchUIUtilities localizedStringForKey:faceTimeVideoServiceName];

  return v11;
}

- (id)viewForActionType:(id)type
{
  typeCopy = type;
  quickActionViews = [(SearchUIContactButtonItemGenerator *)self quickActionViews];
  v6 = [quickActionViews objectForKeyedSubscript:typeCopy];

  if (!v6)
  {
    v6 = objc_opt_new();
    [v6 setGenerator:self];
    quickActionViews2 = [(SearchUIContactButtonItemGenerator *)self quickActionViews];
    [quickActionViews2 setObject:v6 forKeyedSubscript:typeCopy];
  }

  return v6;
}

+ (id)defaultButtonCategoriesForPerson:(id)person
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C178];
  v10 = *MEMORY[0x1E695C1B8];
  v11 = v3;
  v12 = *MEMORY[0x1E695C150];
  v4 = MEMORY[0x1E695DEC8];
  personCopy = person;
  v6 = [v4 arrayWithObjects:&v10 count:3];
  v7 = [v6 mutableCopy];

  emailAddresses = [personCopy emailAddresses];

  if (emailAddresses)
  {
    [v7 insertObject:*MEMORY[0x1E695C170] atIndex:0];
  }

  else if ([MEMORY[0x1E69D9240] isMacOS])
  {
    [v7 addObject:*MEMORY[0x1E695C170]];
  }

  return v7;
}

+ (id)buttonCategoriesForActionTypes:(id)types
{
  v29 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = typesCopy;
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

        intValue = [*(*(&v24 + 1) + 8 * i) intValue];
        if (intValue <= 4)
        {
          if (intValue > 2)
          {
            v15 = v11;
            if (intValue != 3)
            {
              v15 = v21;
            }
          }

          else
          {
            v15 = v12;
            if (intValue != 1)
            {
              v15 = v20;
              if (intValue != 2)
              {
                continue;
              }
            }
          }
        }

        else if (intValue <= 6)
        {
          v15 = v10;
          if (intValue != 5)
          {
            v15 = v22;
          }
        }

        else
        {
          v15 = v9;
          if (intValue != 7)
          {
            v15 = v23;
            if (intValue != 8)
            {
              if (intValue != 9)
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

- (id)visibleButtonForActionType:(id)type
{
  typeCopy = type;
  quickActionViews = [(SearchUIContactButtonItemGenerator *)self quickActionViews];
  v6 = [quickActionViews objectForKeyedSubscript:typeCopy];

  delegate = [(SearchUIButtonItemGenerator *)self delegate];
  buttonItem = [v6 buttonItem];
  v9 = [delegate viewForButtonItem:buttonItem];

  return v9;
}

@end