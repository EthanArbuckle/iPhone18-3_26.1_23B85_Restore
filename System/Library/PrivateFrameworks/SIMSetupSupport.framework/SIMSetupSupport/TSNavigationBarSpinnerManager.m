@interface TSNavigationBarSpinnerManager
+ (id)sharedManager;
- (TSNavigationBarSpinnerManager)init;
- (void)startSpinnerInNavigationItem:(id)a3 withIdentifier:(id)a4;
- (void)stopSpinnerForIdentifier:(id)a3;
- (void)stopSpinnerInNavigationItem:(id)a3 withIdentifier:(id)a4;
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

- (void)startSpinnerInNavigationItem:(id)a3 withIdentifier:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    [v10 setObject:v6 forKeyedSubscript:v7];

    v11 = [v6 leftBarButtonItems];

    if (v11)
    {
      v12 = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
      v13 = [v6 leftBarButtonItems];
      [v12 setObject:v13 forKey:v7];
    }

    v14 = [v6 rightBarButtonItems];

    if (v14)
    {
      v15 = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
      v16 = [v6 rightBarButtonItems];
      [v15 setObject:v16 forKey:v7];
    }

    v17 = objc_alloc_init(TSSpinnerNavigationBarItem);
    v20[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [v6 setRightBarButtonItems:v18 animated:1];

    [v6 setLeftBarButtonItems:0 animated:1];
    [(TSSpinnerNavigationBarItem *)v17 startAnimating];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopSpinnerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v6 = [v5 objectForKeyedSubscript:v4];

  [(TSNavigationBarSpinnerManager *)self stopSpinnerInNavigationItem:v6 withIdentifier:v4];
}

- (void)stopSpinnerInNavigationItem:(id)a3 withIdentifier:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TSNavigationBarSpinnerManager *)self navigationItems];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    v11 = [v10 objectForKeyedSubscript:v7];

    if (v11 != v6)
    {
      v12 = _TSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v26 = [(TSNavigationBarSpinnerManager *)self navigationItems];
        v27 = [v26 objectForKeyedSubscript:v7];
        v28 = 138413058;
        v29 = v7;
        v30 = 2112;
        v31 = v6;
        v32 = 2112;
        v33 = v27;
        v34 = 2080;
        v35 = "[TSNavigationBarSpinnerManager stopSpinnerInNavigationItem:withIdentifier:]";
        _os_log_fault_impl(&dword_262AA8000, v12, OS_LOG_TYPE_FAULT, "[F](%@) stop untracked navigation item: %@, expect:%@ @%s", &v28, 0x2Au);
      }
    }

    v13 = [v6 rightBarButtonItems];
    v14 = [v13 lastObject];

    if (objc_opt_respondsToSelector())
    {
      [v14 stopAnimating];
    }

    else
    {
      v15 = _TSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [TSNavigationBarSpinnerManager stopSpinnerInNavigationItem:v14 withIdentifier:v15];
      }
    }

    v16 = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
    v17 = [v16 objectForKeyedSubscript:v7];

    if (v17)
    {
      v18 = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
      v19 = [v18 objectForKeyedSubscript:v7];
      [v6 setLeftBarButtonItems:v19 animated:1];
    }

    v20 = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
    v21 = [v20 objectForKeyedSubscript:v7];
    [v6 setRightBarButtonItems:v21 animated:1];

    v22 = [(TSNavigationBarSpinnerManager *)self navigationItems];
    [v22 removeObjectForKey:v7];

    v23 = [(TSNavigationBarSpinnerManager *)self previousLeftBarButtonItems];
    [v23 removeObjectForKey:v7];

    v24 = [(TSNavigationBarSpinnerManager *)self previousRightBarButtonItems];
    [v24 removeObjectForKey:v7];
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