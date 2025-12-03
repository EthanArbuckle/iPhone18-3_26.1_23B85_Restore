@interface TSNavigationBarSpinnerManager
+ (id)sharedManager;
- (TSNavigationBarSpinnerManager)init;
- (void)startSpinnerInNavigationItem:(id)item withIdentifier:(id)identifier;
- (void)stopSpinnerForIdentifier:(id)identifier;
- (void)stopSpinnerInNavigationItem:(id)item withIdentifier:(id)identifier;
@end

@implementation TSNavigationBarSpinnerManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[TSNavigationBarSpinnerManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __46__TSNavigationBarSpinnerManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(TSNavigationBarSpinnerManager);

  return MEMORY[0x2821F96F8]();
}

- (TSNavigationBarSpinnerManager)init
{
  v7.receiver = self;
  v7.super_class = TSNavigationBarSpinnerManager;
  v2 = [(TSNavigationBarSpinnerManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TSNavigationBarSpinnerManager *)v2 setNavigationItems:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TSNavigationBarSpinnerManager *)v2 setPreviousLeftBarButtonItems:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TSNavigationBarSpinnerManager *)v2 setPreviousRightBarButtonItems:v5];
  }

  return v2;
}

- (void)startSpinnerInNavigationItem:(id)item withIdentifier:(id)identifier
{
  v20[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  navigationItems = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v9 = [navigationItems objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    navigationItems2 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    [navigationItems2 setObject:itemCopy forKeyedSubscript:identifierCopy];

    leftBarButtonItems = [itemCopy leftBarButtonItems];

    if (leftBarButtonItems)
    {
      previousLeftBarButtonItems = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
      leftBarButtonItems2 = [itemCopy leftBarButtonItems];
      [previousLeftBarButtonItems setObject:leftBarButtonItems2 forKey:identifierCopy];
    }

    rightBarButtonItems = [itemCopy rightBarButtonItems];

    if (rightBarButtonItems)
    {
      previousRightBarButtonItems = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
      rightBarButtonItems2 = [itemCopy rightBarButtonItems];
      [previousRightBarButtonItems setObject:rightBarButtonItems2 forKey:identifierCopy];
    }

    v17 = objc_alloc_init(TSSpinnerNavigationBarItem);
    v20[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [itemCopy setRightBarButtonItems:v18 animated:1];

    [itemCopy setLeftBarButtonItems:0 animated:1];
    [(TSSpinnerNavigationBarItem *)v17 startAnimating];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopSpinnerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  navigationItems = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v6 = [navigationItems objectForKeyedSubscript:identifierCopy];

  [(TSNavigationBarSpinnerManager *)self stopSpinnerInNavigationItem:v6 withIdentifier:identifierCopy];
}

- (void)stopSpinnerInNavigationItem:(id)item withIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  navigationItems = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v9 = [navigationItems objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    navigationItems2 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    v11 = [navigationItems2 objectForKeyedSubscript:identifierCopy];

    if (v11 != itemCopy)
    {
      v12 = _TSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        navigationItems3 = [(TSNavigationBarSpinnerManager *)self navigationItems];
        v27 = [navigationItems3 objectForKeyedSubscript:identifierCopy];
        v28 = 138413058;
        v29 = identifierCopy;
        v30 = 2112;
        v31 = itemCopy;
        v32 = 2112;
        v33 = v27;
        v34 = 2080;
        v35 = "[TSNavigationBarSpinnerManager stopSpinnerInNavigationItem:withIdentifier:]";
        _os_log_fault_impl(&dword_262AA8000, v12, OS_LOG_TYPE_FAULT, "[F](%@) stop untracked navigation item: %@, expect:%@ @%s", &v28, 0x2Au);
      }
    }

    rightBarButtonItems = [itemCopy rightBarButtonItems];
    lastObject = [rightBarButtonItems lastObject];

    if (objc_opt_respondsToSelector())
    {
      [lastObject stopAnimating];
    }

    else
    {
      v15 = _TSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [TSNavigationBarSpinnerManager stopSpinnerInNavigationItem:lastObject withIdentifier:v15];
      }
    }

    previousLeftBarButtonItems = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
    v17 = [previousLeftBarButtonItems objectForKeyedSubscript:identifierCopy];

    if (v17)
    {
      previousLeftBarButtonItems2 = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
      v19 = [previousLeftBarButtonItems2 objectForKeyedSubscript:identifierCopy];
      [itemCopy setLeftBarButtonItems:v19 animated:1];
    }

    previousRightBarButtonItems = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
    v21 = [previousRightBarButtonItems objectForKeyedSubscript:identifierCopy];
    [itemCopy setRightBarButtonItems:v21 animated:1];

    navigationItems4 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    [navigationItems4 removeObjectForKey:identifierCopy];

    previousLeftBarButtonItems3 = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
    [previousLeftBarButtonItems3 removeObjectForKey:identifierCopy];

    previousRightBarButtonItems2 = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
    [previousRightBarButtonItems2 removeObjectForKey:identifierCopy];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)stopSpinnerInNavigationItem:(uint64_t)a1 withIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSNavigationBarSpinnerManager stopSpinnerInNavigationItem:withIdentifier:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unexpected bar item : %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end