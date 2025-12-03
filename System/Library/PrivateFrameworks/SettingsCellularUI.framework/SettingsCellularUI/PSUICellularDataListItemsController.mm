@interface PSUICellularDataListItemsController
- (BOOL)_isDataSwitchAutomatic:(id)automatic;
- (PSUICellularDataListItemsController)init;
- (id)specifiers;
- (void)airplaneModeChanged;
- (void)dealloc;
- (void)reloadCache;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PSUICellularDataListItemsController

- (PSUICellularDataListItemsController)init
{
  v8.receiver = self;
  v8.super_class = PSUICellularDataListItemsController;
  v2 = [(PSUICellularDataListItemsController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    radioPreferences = v2->_radioPreferences;
    v2->_radioPreferences = v3;

    [(RadiosPreferences *)v2->_radioPreferences setNotifyForExternalChangeOnly:1];
    [(RadiosPreferences *)v2->_radioPreferences setDelegate:v2];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_reloadCache name:@"PSUICellularPlanChanged" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_reloadCache name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUICellularDataListItemsController;
  [(PSListItemsController *)&v4 dealloc];
}

- (void)airplaneModeChanged
{
  v12 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularDataListItemsController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[PSUICellularDataListItemsController airplaneModeChanged]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s Received airplane mode changed", buf, 0xCu);
  }

  v4 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
  if ([v4 isDetailControllerNeeded])
  {
    radioPreferences = [(PSUICellularDataListItemsController *)self radioPreferences];
    airplaneMode = [radioPreferences airplaneMode];

    if (airplaneMode)
    {
      getLogger2 = [(PSUICellularDataListItemsController *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Airplane mode is enabled", buf, 2u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__PSUICellularDataListItemsController_airplaneModeChanged__block_invoke;
      block[3] = &unk_279BA9D58;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58__PSUICellularDataListItemsController_airplaneModeChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x277D3FD10]));
  v1 = [WeakRetained popViewControllerAnimated:1];
}

- (void)reloadCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSUICellularDataListItemsController_reloadCache__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__PSUICellularDataListItemsController_reloadCache__block_invoke(uint64_t a1)
{
  v7 = *(*(a1 + 32) + *MEMORY[0x277D3FD20]);
  [v7 updateCachedState];
  v2 = [v7 isDetailControllerNeeded];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 reloadSpecifiers];
    v4 = v7;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&v3[*MEMORY[0x277D3FD10]]);

    v6 = [WeakRetained popViewControllerAnimated:1];
    v4 = WeakRetained;
  }
}

- (id)specifiers
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v34 = *MEMORY[0x277D3FC48];
    v45.receiver = self;
    v45.super_class = PSUICellularDataListItemsController;
    specifiers = [(PSListItemsController *)&v45 specifiers];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v39 = [v5 localizedStringForKey:@"CELLULAR_DATA_SWITCHING_FOOTER" value:&stru_287733598 table:@"Gemini-Gemini"];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = specifiers;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v42;
      v38 = *MEMORY[0x277D3FE58];
      v37 = *MEMORY[0x277D3FE68];
      v35 = *MEMORY[0x277D40128];
      do
      {
        v12 = 0;
        v40 = v8;
        do
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v41 + 1) + 8 * v12);
          if ([v13 cellType])
          {
            v14 = *MEMORY[0x277D3FD20];
            v15 = [*(&self->super.super.super.super.super.super.isa + v14) planItemForListItem:v13];
            if (v15)
            {
              [v13 setProperty:objc_opt_class() forKey:v38];
              getLogger = [(PSUICellularDataListItemsController *)self getLogger];
              if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v47 = v15;
                _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Setting plan item: %@", buf, 0xCu);
              }

              [v13 setProperty:v15 forKey:v37];
              v17 = [*(&self->super.super.super.super.super.super.isa + v14) subscriptionContextForListItem:v13];
              if (v17)
              {
                [v13 setProperty:v17 forKey:v35];
              }

              isSelected = [v15 isSelected];
              if ([(PSUICellularDataListItemsController *)self _isDataSwitchAutomatic:v15])
              {
                v19 = MEMORY[0x277CCACA8];
                v36 = v10;
                v20 = v6;
                v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v22 = [v21 localizedStringForKey:@"CELLULAR_DATA_SWITCHING_FOOTER_PNW" value:&stru_287733598 table:@"Gemini-Gemini"];
                v23 = [v19 stringWithFormat:v22];

                v6 = v20;
                v10 = v36;
                v9 = 1;
                v39 = v23;
              }

              v10 += isSelected;

              v8 = v40;
            }
          }

          ++v12;
        }

        while (v8 != v12);
        v8 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    getLogger2 = [(PSUICellularDataListItemsController *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v47) = v10;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Lines turned on: %d", buf, 8u);
    }

    v25 = v10;

    v26 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    v27 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_DATA_SWITCHING_GROUP"];
    [v27 setProperty:v39 forKey:*MEMORY[0x277D3FF88]];
    [v26 addObject:v27];
    if ((v9 & 1) == 0)
    {
      v28 = [[PSUICellularDataFallbackSwitchSpecifier alloc] initWithHostController:self];
      v29 = [MEMORY[0x277CCABB0] numberWithInt:v25 > 1];
      [(PSUICellularDataFallbackSwitchSpecifier *)v28 setProperty:v29 forKey:*MEMORY[0x277D3FF38]];

      [v26 addObject:v28];
    }

    [MEMORY[0x277D4D878] logSpecifiers:v26 origin:@"[PSUICellularDataListItemsController specifiers] end"];
    v30 = [v26 copy];
    v31 = *(&self->super.super.super.super.super.super.isa + v34);
    *(&self->super.super.super.super.super.super.isa + v34) = v30;

    v3 = *(&self->super.super.super.super.super.super.isa + v34);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_isDataSwitchAutomatic:(id)automatic
{
  automaticCopy = automatic;
  v4 = [automaticCopy isSelected] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(automaticCopy, "settingsMode") == 1;

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PSUICellularDataListItemsController;
    [(PSListItemsController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5.receiver = self;
  v5.super_class = PSUICellularDataListItemsController;
  [(PSUICellularDataListItemsController *)&v5 setSpecifier:specifierCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [specifierCopy setDetailController:self];
  }
}

@end