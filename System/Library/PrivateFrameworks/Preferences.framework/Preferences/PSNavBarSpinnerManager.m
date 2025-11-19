@interface PSNavBarSpinnerManager
+ (id)sharedSpinnerManager;
- (PSNavBarSpinnerManager)init;
- (void)startAnimatingInNavItem:(id)a3 forIdentifier:(id)a4 hideBackButton:(BOOL)a5;
- (void)stopAnimatingForIdentifier:(id)a3;
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

- (void)startAnimatingInNavItem:(id)a3 forIdentifier:(id)a4 hideBackButton:(BOOL)a5
{
  v5 = a5;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_savedRecords objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = objc_opt_new();
    [v11 setNavigationItem:v8];
    [(NSMutableDictionary *)self->_savedRecords setObject:v11 forKey:v9];
    v12 = [v8 rightBarButtonItems];
    [v11 setRightItems:v12];

    v13 = [v8 leftBarButtonItems];
    [v11 setLeftItems:v13];

    [v11 setHidesBackButton:{objc_msgSend(v8, "hidesBackButton")}];
    v14 = objc_alloc_init(PSBarButtonSpinnerView);
    if (v5)
    {
      [v8 setHidesBackButton:1 animated:1];
    }

    [v8 setLeftBarButtonItems:0 animated:1];
    v16[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v8 setRightBarButtonItems:v15 animated:1];

    [(PSBarButtonSpinnerView *)v14 startAnimating];
  }
}

- (void)stopAnimatingForIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_savedRecords objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 navigationItem];
    v8 = [v7 rightBarButtonItems];
    v9 = [v8 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 stopAnimating];
      v10 = [v6 leftItems];
      [v7 setLeftBarButtonItems:v10 animated:1];

      v11 = [v6 rightItems];
      [v7 setRightBarButtonItems:v11 animated:1];

      [v7 setHidesBackButton:objc_msgSend(v6 animated:{"hidesBackButton"), 1}];
    }

    else
    {
      v12 = _PSLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "Error: Tried to remove a spinner for identifier %@but it wasn't there.", &v13, 0xCu);
      }
    }

    [(NSMutableDictionary *)self->_savedRecords removeObjectForKey:v4];
  }
}

@end