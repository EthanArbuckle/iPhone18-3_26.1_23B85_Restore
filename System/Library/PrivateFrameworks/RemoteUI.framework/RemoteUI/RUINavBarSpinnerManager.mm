@interface RUINavBarSpinnerManager
+ (id)sharedSpinnerManager;
- (RUINavBarSpinnerManager)init;
- (void)startAnimatingInNavItem:(id)item title:(id)title forIdentifier:(id)identifier hideBackButton:(BOOL)button hideLeftItems:(BOOL)items;
- (void)stopAnimatingForIdentifier:(id)identifier;
@end

@implementation RUINavBarSpinnerManager

- (RUINavBarSpinnerManager)init
{
  v6.receiver = self;
  v6.super_class = RUINavBarSpinnerManager;
  v2 = [(RUINavBarSpinnerManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
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
    v3 = objc_alloc_init(RUINavBarSpinnerManager);
    v4 = sharedSpinnerManager___sharedManager;
    sharedSpinnerManager___sharedManager = v3;

    if (+[RUIPlatform isAppleTV])
    {
      v5 = 19;
    }

    else
    {
      v5 = 100;
    }

    [sharedSpinnerManager___sharedManager setActivityIndicatorViewStyle:v5];
    v2 = sharedSpinnerManager___sharedManager;
  }

  return v2;
}

- (void)startAnimatingInNavItem:(id)item title:(id)title forIdentifier:(id)identifier hideBackButton:(BOOL)button hideLeftItems:(BOOL)items
{
  itemsCopy = items;
  buttonCopy = button;
  v41 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  titleCopy = title;
  identifierCopy = identifier;
  v15 = [(NSMutableDictionary *)self->_savedRecords objectForKey:identifierCopy];

  if (!v15)
  {
    v29 = buttonCopy;
    v30 = itemsCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = self->_savedRecords;
    v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(NSMutableDictionary *)self->_savedRecords objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
          navigationItem = [v21 navigationItem];

          if (navigationItem == itemCopy)
          {
            if (_isInternalInstall())
            {
              v28 = _RUILoggingFacility();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v37 = itemCopy;
                v38 = 2112;
                v39 = identifierCopy;
                _os_log_impl(&dword_21B93D000, v28, OS_LOG_TYPE_DEFAULT, "Adding a second spinner to navigation item %@, identifer %@", buf, 0x16u);
              }
            }

            goto LABEL_25;
          }
        }

        v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v16 = objc_opt_new();
    [(NSMutableDictionary *)v16 setNavigationItem:itemCopy];
    [(NSMutableDictionary *)self->_savedRecords setObject:v16 forKey:identifierCopy];
    rightBarButtonItems = [itemCopy rightBarButtonItems];
    [(NSMutableDictionary *)v16 setRightItems:rightBarButtonItems];

    leftBarButtonItems = [itemCopy leftBarButtonItems];
    [(NSMutableDictionary *)v16 setLeftItems:leftBarButtonItems];

    -[NSMutableDictionary setHidesBackButton:](v16, "setHidesBackButton:", [itemCopy hidesBackButton]);
    v25 = [[RUIBarButtonSpinnerView alloc] initWithActivityIndicatorStyle:[(RUINavBarSpinnerManager *)self activityIndicatorViewStyle]];
    [(UIBarButtonItem *)v25 noPlatter];
    if (v29)
    {
      [itemCopy setHidesBackButton:1 animated:1];
    }

    if (v30)
    {
      [itemCopy setLeftBarButtonItems:0 animated:1];
    }

    v35 = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [itemCopy setRightBarButtonItems:v26 animated:1];

    if (titleCopy)
    {
      title = [itemCopy title];
      [(NSMutableDictionary *)v16 setTitle:title];

      [(NSMutableDictionary *)v16 setSpinningTitle:titleCopy];
      [itemCopy setTitle:titleCopy];
    }

    [MEMORY[0x277CD9FF0] begin];
    [(RUIBarButtonSpinnerView *)v25 startAnimating];
    [MEMORY[0x277CD9FF0] commit];
    [MEMORY[0x277CD9FF0] flush];

    goto LABEL_25;
  }

  if (_isInternalInstall())
  {
    v16 = _RUILoggingFacility();
    if (os_log_type_enabled(&v16->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = identifierCopy;
      _os_log_impl(&dword_21B93D000, &v16->super.super, OS_LOG_TYPE_DEFAULT, "Duplicate spinner for identifier %@", buf, 0xCu);
    }

LABEL_25:
  }
}

- (void)stopAnimatingForIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_savedRecords objectForKey:identifierCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_savedRecords objectForKeyedSubscript:identifierCopy];
    navigationItem = [v6 navigationItem];
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
      spinningTitle = [v6 spinningTitle];

      if (spinningTitle)
      {
        title = [v6 title];
        [navigationItem setTitle:title];
LABEL_8:
      }
    }

    else if (_isInternalInstall())
    {
      title = _RUILoggingFacility();
      if (os_log_type_enabled(title, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_21B93D000, title, OS_LOG_TYPE_DEFAULT, "Error: Tried to remove a spinner for identifier %@but it wasn't there.", &v14, 0xCu);
      }

      goto LABEL_8;
    }

    [(NSMutableDictionary *)self->_savedRecords removeObjectForKey:identifierCopy];
  }
}

@end