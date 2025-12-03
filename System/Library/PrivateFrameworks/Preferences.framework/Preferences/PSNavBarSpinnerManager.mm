@interface PSNavBarSpinnerManager
+ (id)sharedSpinnerManager;
- (PSNavBarSpinnerManager)init;
- (void)startAnimatingInNavItem:(id)item forIdentifier:(id)identifier hideBackButton:(BOOL)button;
- (void)stopAnimatingForIdentifier:(id)identifier;
@end

@implementation PSNavBarSpinnerManager

- (PSNavBarSpinnerManager)init
{
  v6.receiver = self;
  v6.super_class = PSNavBarSpinnerManager;
  v2 = [(PSNavBarSpinnerManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    savedRecords = v2->_savedRecords;
    v2->_savedRecords = v3;
  }

  return v2;
}

+ (id)sharedSpinnerManager
{
  v2 = sharedSpinnerManager___sharedManager;
  if (!sharedSpinnerManager___sharedManager)
  {
    v3 = objc_alloc_init(PSNavBarSpinnerManager);
    v4 = sharedSpinnerManager___sharedManager;
    sharedSpinnerManager___sharedManager = v3;

    v2 = sharedSpinnerManager___sharedManager;
  }

  return v2;
}

- (void)startAnimatingInNavItem:(id)item forIdentifier:(id)identifier hideBackButton:(BOOL)button
{
  buttonCopy = button;
  v16[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  identifierCopy = identifier;
  v10 = [(NSMutableDictionary *)self->_savedRecords objectForKeyedSubscript:identifierCopy];

  if (!v10)
  {
    v11 = objc_opt_new();
    [v11 setNavigationItem:itemCopy];
    [(NSMutableDictionary *)self->_savedRecords setObject:v11 forKey:identifierCopy];
    rightBarButtonItems = [itemCopy rightBarButtonItems];
    [v11 setRightItems:rightBarButtonItems];

    leftBarButtonItems = [itemCopy leftBarButtonItems];
    [v11 setLeftItems:leftBarButtonItems];

    [v11 setHidesBackButton:{objc_msgSend(itemCopy, "hidesBackButton")}];
    v14 = objc_alloc_init(PSBarButtonSpinnerView);
    if (buttonCopy)
    {
      [itemCopy setHidesBackButton:1 animated:1];
    }

    [itemCopy setLeftBarButtonItems:0 animated:1];
    v16[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [itemCopy setRightBarButtonItems:v15 animated:1];

    [(PSBarButtonSpinnerView *)v14 startAnimating];
  }
}

- (void)stopAnimatingForIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_savedRecords objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    navigationItem = [v5 navigationItem];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    lastObject = [rightBarButtonItems lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [lastObject stopAnimating];
      leftItems = [v6 leftItems];
      [navigationItem setLeftBarButtonItems:leftItems animated:1];

      rightItems = [v6 rightItems];
      [navigationItem setRightBarButtonItems:rightItems animated:1];

      [navigationItem setHidesBackButton:objc_msgSend(v6 animated:{"hidesBackButton"), 1}];
    }

    else
    {
      v12 = _PSLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = identifierCopy;
        _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "Error: Tried to remove a spinner for identifier %@but it wasn't there.", &v13, 0xCu);
      }
    }

    [(NSMutableDictionary *)self->_savedRecords removeObjectForKey:identifierCopy];
  }
}

@end