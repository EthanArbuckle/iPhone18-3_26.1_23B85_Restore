@interface PSUINetworkSlicingController
- (PSUINetworkSlicingController)init;
- (PSUINetworkSlicingController)initWithCapabilityCache:(id)a3;
- (id)getNetworkSlicingAppCategory:(id)a3;
- (id)specifiers;
- (void)setNetworkSlicingAppCategory:(id)a3 specifier:(id)a4;
@end

@implementation PSUINetworkSlicingController

- (PSUINetworkSlicingController)init
{
  v3 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v4 = [(PSUINetworkSlicingController *)self initWithCapabilityCache:v3];

  return v4;
}

- (PSUINetworkSlicingController)initWithCapabilityCache:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PSUINetworkSlicingController;
  v6 = [(PSUINetworkSlicingController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_capabilityCache, a3);
    fCategories = v7->_fCategories;
    v7->_fCategories = 0;
  }

  return v7;
}

- (id)specifiers
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v32 = *MEMORY[0x277D3FC48];
    v4 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D40128]];
    v5 = [(PSUINetworkSlicingController *)self getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v43 = v4;
      _os_log_debug_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEBUG, "Slicing: reload, context=%@", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"NetworkSlicingGroupSpecifierKey"];
    v35 = v34 = v6;
    [v6 addObject:v35];
    v7 = [(PSUICoreTelephonyCapabilitiesCache *)self->_capabilityCache networkSlicingCategories:v4];
    [(PSUINetworkSlicingController *)self setFCategories:v7];

    v8 = [(PSUINetworkSlicingController *)self getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v30 = [(PSUINetworkSlicingController *)self fCategories];
      *buf = 138412546;
      v43 = v4;
      v44 = 2112;
      v45 = v30;
      _os_log_debug_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEBUG, "Slicing: reload, context=%@, categories:%@", buf, 0x16u);
    }

    v31 = v4;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = self;
    obj = [(PSUINetworkSlicingController *)self fCategories];
    v9 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      v12 = *MEMORY[0x277CC3B38];
      v13 = *MEMORY[0x277CC3B30];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = MEMORY[0x277D3FAD8];
          v17 = [v15 objectForKey:v12];
          v18 = [v16 preferenceSpecifierNamed:v17 target:v36 set:sel_setNetworkSlicingAppCategory_specifier_ get:sel_getNetworkSlicingAppCategory_ detail:0 cell:6 edit:0];

          v19 = [v15 objectForKey:v13];
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
          [v18 setIdentifier:v20];

          [v18 setUserInfo:v19];
          [v34 ps_addSpecifier:v18 toGroup:v35];
        }

        v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v10);
    }

    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"CONSUMER_SLICING_FOOTER_%@" value:&stru_287733598 table:@"Cellular"];
    v24 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    v25 = [v24 carrierName:v31];
    v26 = [v21 stringWithFormat:v23, v25];

    [v35 setProperty:v26 forKey:*MEMORY[0x277D3FF88]];
    [MEMORY[0x277D4D878] logSpecifiers:v34 origin:@"[PSUINetworkSlicingController specifiers] end"];
    v27 = *(&v36->super.super.super.super.super.isa + v32);
    *(&v36->super.super.super.super.super.isa + v32) = v34;

    v3 = *(&v36->super.super.super.super.super.isa + v32);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)getNetworkSlicingAppCategory:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(PSUINetworkSlicingController *)self fCategories];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = *MEMORY[0x277CC3B30];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectForKey:v9];
        if ([v12 isEqual:v4])
        {
          v14 = [v11 objectForKey:*MEMORY[0x277CC3B40]];
          v13 = [v14 BOOLValue];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v15 = [(PSUINetworkSlicingController *)self getLogger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "[PSUINetworkSlicingController getNetworkSlicingAppCategory:]";
    v25 = 2112;
    v26 = v4;
    v27 = 1024;
    v28 = v13;
    _os_log_debug_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEBUG, "Slicing: %s category=%@ STATE=%d", buf, 0x1Cu);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:v13];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)setNetworkSlicingAppCategory:(id)a3 specifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 BOOLValue];
  v8 = [(PSUINetworkSlicingController *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v6 userInfo];
    v14 = v13;
    v15 = @"disabled";
    v17 = "[PSUINetworkSlicingController setNetworkSlicingAppCategory:specifier:]";
    v16 = 136315650;
    if (v7)
    {
      v15 = @"enabled";
    }

    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v15;
    _os_log_debug_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEBUG, "Slicing: %s category=%@ ->%@", &v16, 0x20u);
  }

  v9 = [(PSUINetworkSlicingController *)self getNetworkSlicingAppCategory:v6];
  v10 = [v9 BOOLValue];

  if (v7 == v10)
  {
    [(PSUINetworkSlicingController *)self reloadSpecifiers];
    v11 = [(PSUINetworkSlicingController *)self getLogger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_debug_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEBUG, "Slicing: skipped", &v16, 2u);
    }
  }

  else
  {
    v11 = [v6 userInfo];
    [(PSUINetworkSlicingController *)self _enableNetworkSlicing:v7 categoryID:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end