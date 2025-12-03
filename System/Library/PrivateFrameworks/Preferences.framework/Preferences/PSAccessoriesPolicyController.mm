@interface PSAccessoriesPolicyController
- (PSAccessoriesPolicyController)initWithAppBundleID:(id)d;
- (id)appSpecifierWithName:(id)name bundleID:(id)d;
- (id)numberOfAccessories:(id)accessories;
- (void)handleSessionEvent:(id)event;
@end

@implementation PSAccessoriesPolicyController

- (PSAccessoriesPolicyController)initWithAppBundleID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = PSAccessoriesPolicyController;
  v6 = [(PSAccessoriesPolicyController *)&v13 init];
  v7 = objc_alloc_init(getDADaemonSessionClass());
  appSession = v6->_appSession;
  v6->_appSession = v7;

  objc_storeStrong(&v6->_bundleID, d);
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

- (id)appSpecifierWithName:(id)name bundleID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    v27 = dCopy;
    v28 = nameCopy;
    v8 = [getDADaemonSessionClass() getDevicesWithFlags:8 session:self->_appSession error:0];
    array = [MEMORY[0x1E695DF70] array];
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
          appAccessInfoMap = [v15 appAccessInfoMap];
          allKeys = [appAccessInfoMap allKeys];
          v18 = [allKeys containsObject:self->_bundleID];

          if (v18)
          {
            [array addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&self->_devices, array);
    if ([array count])
    {
      v19 = [v10 count];
      dCopy = v27;
      nameCopy = v28;
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
        firstObject = [v10 firstObject];
        [v21 setProperty:firstObject forKey:@"device"];
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
      dCopy = v27;
      nameCopy = v28;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)numberOfAccessories:(id)accessories
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

        appAccessInfoMap = [*(*(&v15 + 1) + 8 * i) appAccessInfoMap];
        v11 = [appAccessInfoMap objectForKeyedSubscript:self->_bundleID];
        state = [v11 state];

        if (state == 25)
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

- (void)handleSessionEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  if (([event eventType] - 41) <= 1)
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

          appAccessInfoMap = [*(*(&v14 + 1) + 8 * i) appAccessInfoMap];
          v12 = [appAccessInfoMap objectForKeyedSubscript:self->_bundleID];
          state = [v12 state];

          if (state == 25)
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