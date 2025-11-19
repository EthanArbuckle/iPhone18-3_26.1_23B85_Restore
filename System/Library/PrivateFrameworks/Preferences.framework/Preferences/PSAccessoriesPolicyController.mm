@interface PSAccessoriesPolicyController
- (PSAccessoriesPolicyController)initWithAppBundleID:(id)a3;
- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4;
- (id)numberOfAccessories:(id)a3;
- (void)handleSessionEvent:(id)a3;
@end

@implementation PSAccessoriesPolicyController

- (PSAccessoriesPolicyController)initWithAppBundleID:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PSAccessoriesPolicyController;
  v6 = [(PSAccessoriesPolicyController *)&v13 init];
  v7 = objc_alloc_init(getDADaemonSessionClass());
  appSession = v6->_appSession;
  v6->_appSession = v7;

  objc_storeStrong(&v6->_bundleID, a3);
  [(DASession *)v6->_appSession activate];
  objc_initWeak(&location, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PSAccessoriesPolicyController_initWithAppBundleID___block_invoke;
  v10[3] = &unk_1E71DBCA0;
  objc_copyWeak(&v11, &location);
  [(DASession *)v6->_appSession setEventHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

void __53__PSAccessoriesPolicyController_initWithAppBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSessionEvent:v3];
}

- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v27 = v7;
    v28 = v6;
    v8 = [getDADaemonSessionClass() getDevicesWithFlags:8 session:self->_appSession error:0];
    v9 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 appAccessInfoMap];
          v17 = [v16 allKeys];
          v18 = [v17 containsObject:self->_bundleID];

          if (v18)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&self->_devices, v9);
    if ([v9 count])
    {
      v19 = [v10 count];
      v7 = v27;
      v6 = v28;
      if (v19 == 1)
      {
        v20 = NSClassFromString(&cfstr_Asaccessoryinf.isa);
      }

      else
      {
        v20 = objc_opt_class();
      }

      v21 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:sel_numberOfAccessories_ detail:v20 cell:2 edit:0];
      [v21 setProperty:v27 forKey:@"bundleID"];
      if (v19 == 1)
      {
        v22 = [v10 firstObject];
        [v21 setProperty:v22 forKey:@"device"];
      }

      v23 = MEMORY[0x1E69DCAB8];
      v24 = PSPreferencesFrameworkBundle();
      v25 = [v23 imageNamed:@"Accessory" inBundle:v24];

      if (v25)
      {
        [v21 setProperty:v25 forKey:@"iconImage"];
      }
    }

    else
    {
      v21 = 0;
      v7 = v27;
      v6 = v28;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)numberOfAccessories:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_devices;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) appAccessInfoMap];
        v11 = [v10 objectForKeyedSubscript:self->_bundleID];
        v12 = [v11 state];

        if (v12 == 25)
        {
          ++v7;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v7];

  return v13;
}

- (void)handleSessionEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (([a3 eventType] - 41) <= 1)
  {
    v4 = [getDADaemonSessionClass() getDevicesWithFlags:8 session:self->_appSession error:0];
    objc_storeStrong(&self->_devices, v4);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_devices;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) appAccessInfoMap];
          v12 = [v11 objectForKeyedSubscript:self->_bundleID];
          v13 = [v12 state];

          if (v13 == 25)
          {
            ++v8;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    (*(self->_accessChangedHandler + 2))();
  }
}

@end