@interface BFFNavBarSpinnerManager
+ (id)sharedSpinnerManager;
- (BFFNavBarSpinnerManager)init;
- (BOOL)isAnimatingForIdentifier:(id)identifier;
- (void)startAnimatingInNavigationItemOfViewController:(id)controller forIdentifier:(id)identifier;
- (void)stopAnimatingForIdentifier:(id)identifier;
@end

@implementation BFFNavBarSpinnerManager

- (BFFNavBarSpinnerManager)init
{
  v10.receiver = self;
  v10.super_class = BFFNavBarSpinnerManager;
  v2 = [(BFFNavBarSpinnerManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    savedRightItems = v2->_savedRightItems;
    v2->_savedRightItems = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    savedLeftItems = v2->_savedLeftItems;
    v2->_savedLeftItems = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    navigationItems = v2->_navigationItems;
    v2->_navigationItems = v7;
  }

  return v2;
}

+ (id)sharedSpinnerManager
{
  v2 = sharedSpinnerManager___sharedManager;
  if (!sharedSpinnerManager___sharedManager)
  {
    v3 = objc_alloc_init(BFFNavBarSpinnerManager);
    v4 = sharedSpinnerManager___sharedManager;
    sharedSpinnerManager___sharedManager = v3;

    v2 = sharedSpinnerManager___sharedManager;
  }

  return v2;
}

- (void)startAnimatingInNavigationItemOfViewController:(id)controller forIdentifier:(id)identifier
{
  v17[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  navigationItem = [controllerCopy navigationItem];
  v9 = _BYLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BFFNavBarSpinnerManager *)identifierCopy startAnimatingInNavigationItemOfViewController:navigationItem forIdentifier:v9];
  }

  v10 = [(NSMutableDictionary *)self->_navigationItems objectForKey:identifierCopy];

  if (!v10 && navigationItem)
  {
    [(NSMutableDictionary *)self->_navigationItems setObject:navigationItem forKey:identifierCopy];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    if (rightBarButtonItems)
    {
      [(NSMutableDictionary *)self->_savedRightItems setObject:rightBarButtonItems forKey:identifierCopy];
    }

    leftBarButtonItems = [navigationItem leftBarButtonItems];
    if (leftBarButtonItems)
    {
      [(NSMutableDictionary *)self->_savedLeftItems setObject:leftBarButtonItems forKey:identifierCopy];
    }

    v13 = objc_alloc_init(BFFBarButtonSpinnerView);
    v17[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [navigationItem setRightBarButtonItems:v14 animated:1];
    [navigationItem setLeftBarButtonItems:0 animated:1];
    [MEMORY[0x277CD9FF0] begin];
    [(BFFBarButtonSpinnerView *)v13 startAnimating];
    [MEMORY[0x277CD9FF0] commit];
    traitCollection = [controllerCopy traitCollection];
    if ([traitCollection userInterfaceStyle] == 1)
    {
      v16 = [controllerCopy conformsToProtocol:&unk_287795D60];

      if (!v16 || ![controllerCopy hasBlackBackground])
      {
        goto LABEL_14;
      }

      traitCollection = [(BFFBarButtonSpinnerView *)v13 customView];
      [traitCollection setOverrideUserInterfaceStyle:2];
    }

LABEL_14:
  }
}

- (void)stopAnimatingForIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_navigationItems objectForKey:identifierCopy];

  v6 = _BYLoggingFacility();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(BFFNavBarSpinnerManager *)identifierCopy stopAnimatingForIdentifier:v7];
    }

    v7 = [(NSMutableDictionary *)self->_navigationItems objectForKey:identifierCopy];
    rightBarButtonItems = [v7 rightBarButtonItems];
    lastObject = [rightBarButtonItems lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [lastObject stopAnimating];
    }

    v10 = [(NSMutableDictionary *)self->_savedRightItems objectForKey:identifierCopy];
    v11 = [(NSMutableDictionary *)self->_savedLeftItems objectForKey:identifierCopy];
    [v7 setLeftBarButtonItems:v11 animated:1];
    [v7 setRightBarButtonItems:v10 animated:1];
    [(NSMutableDictionary *)self->_savedRightItems removeObjectForKey:identifierCopy];
    [(NSMutableDictionary *)self->_savedLeftItems removeObjectForKey:identifierCopy];
    [(NSMutableDictionary *)self->_navigationItems removeObjectForKey:identifierCopy];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&dword_265AC5000, v7, OS_LOG_TYPE_DEFAULT, "Unbalanced nav bar spinner animation for %@!", &v12, 0xCu);
  }
}

- (BOOL)isAnimatingForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_navigationItems objectForKeyedSubscript:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)startAnimatingInNavigationItemOfViewController:(NSObject *)a3 forIdentifier:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [a2 title];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = a2;
  }

  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v8;
  _os_log_debug_impl(&dword_265AC5000, a3, OS_LOG_TYPE_DEBUG, "Starting spinner for %@ on nav item %@", &v9, 0x16u);
}

- (void)stopAnimatingForIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_265AC5000, a2, OS_LOG_TYPE_DEBUG, "Stopping spinner for %@", &v2, 0xCu);
}

@end