@interface SCLSpecifierDataSource
- (NSArray)allSpecifiers;
- (SCLListViewController)listController;
- (SCLSpecifierDataSource)initWithListController:(id)a3 viewModel:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setChildDataSources:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 specifier:(id)a5;
@end

@implementation SCLSpecifierDataSource

- (SCLSpecifierDataSource)initWithListController:(id)a3 viewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SCLSpecifierDataSource;
  v8 = [(SCLSpecifierDataSource *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listController, v6);
    specifiers = v9->_specifiers;
    v9->_specifiers = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v9->_viewModel, a4);
  }

  return v9;
}

- (void)dealloc
{
  [(SCLSpecifierDataSource *)self setChildDataSources:MEMORY[0x277CBEBF8]];
  v3.receiver = self;
  v3.super_class = SCLSpecifierDataSource;
  [(SCLSpecifierDataSource *)&v3 dealloc];
}

- (void)setChildDataSources:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_childDataSources;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v22 + 1) + 8 * v9++) removeObserver:self forKeyPath:@"allSpecifiers" context:@"active"];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];
  childDataSources = self->_childDataSources;
  self->_childDataSources = v10;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * v16++) addObserver:self forKeyPath:@"allSpecifiers" options:9 context:{@"active", v18}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (NSArray)allSpecifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(SCLSpecifierDataSource *)self isActive])
  {
    v4 = [(SCLSpecifierDataSource *)self specifiers];
    [v3 addObjectsFromArray:v4];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(SCLSpecifierDataSource *)self childDataSources];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 isActive])
          {
            v11 = [v10 allSpecifiers];
            [v3 addObjectsFromArray:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"active")
  {
    v7 = [a5 objectForKeyedSubscript:{*MEMORY[0x277CCA2F8], a4}];
    v8 = [v7 BOOLValue];

    if (v8)
    {

      [(SCLSpecifierDataSource *)self willChangeValueForKey:@"allSpecifiers"];
    }

    else
    {

      [(SCLSpecifierDataSource *)self didChangeValueForKey:@"allSpecifiers"];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCLSpecifierDataSource;
    [(SCLSpecifierDataSource *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 specifier:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCLSpecifierDataSource *)self childDataSources];
  v12 = [v11 copy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if ([v18 isActive])
        {
          [v18 tableView:v8 didSelectRowAtIndexPath:v9 specifier:v10];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (SCLListViewController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end