@interface WBSRecentCloudTabsProvider
+ (id)deviceIconForIdentifier:(id)a3;
- (NSSet)recentItems;
- (WBSRecentCloudTabsProvider)initWithCloudTabDeviceProvider:(id)a3;
- (WBSRecentsStore)recentsStore;
- (void)cloudTabDeviceProvider:(id)a3 didUpdateCloudTabsInProfileWithIdentifier:(id)a4;
- (void)setActiveProfileIdentifier:(id)a3;
- (void)setCloudTabDeviceProvider:(id)a3;
@end

@implementation WBSRecentCloudTabsProvider

- (NSSet)recentItems
{
  v41 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_activeProfileIdentifier length])
  {
    v3 = [(WBSCloudTabDeviceProvider *)self->_cloudTabDeviceProvider syncedRemoteCloudTabDevicesForProfileWithIdentifier:self->_activeProfileIdentifier];
    v29 = [MEMORY[0x1E695DFA8] set];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v3;
    v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v26)
    {
      v25 = *v36;
      do
      {
        v4 = 0;
        do
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = v4;
          v5 = *(*(&v35 + 1) + 8 * v4);
          v6 = objc_opt_class();
          v7 = [v5 deviceTypeIdentifier];
          v30 = [v6 deviceIconForIdentifier:v7];

          v8 = v5;
          v9 = [v5 tabs];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v28 = v9;
          v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v32;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v32 != v12)
                {
                  objc_enumerationMutation(v28);
                }

                v14 = *(*(&v31 + 1) + 8 * i);
                v15 = [WBSRecentItem alloc];
                v16 = [v14 uuidString];
                v17 = [v14 url];
                v18 = [MEMORY[0x1E695DF00] date];
                v19 = [(WBSRecentItem *)v15 initWithIdentifier:v16 url:v17 date:v18];

                [(WBSRecentItem *)v19 setDevice:v8];
                [(WBSRecentItem *)v19 setCloudTab:v14];
                v20 = [v14 title];
                [(WBSRecentItem *)v19 setTitle:v20];

                [(WBSRecentItem *)v19 setIcon:v30];
                v21 = MEMORY[0x1E695DF00];
                [v14 lastViewedTime];
                v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
                [(WBSRecentItem *)v19 setDate:v22];

                [v29 addObject:v19];
              }

              v11 = [v28 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v11);
          }

          v4 = v27 + 1;
        }

        while (v27 + 1 != v26);
        v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v29 = [MEMORY[0x1E695DFD8] set];
  }

  return v29;
}

- (WBSRecentCloudTabsProvider)initWithCloudTabDeviceProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSRecentCloudTabsProvider;
  v6 = [(WBSRecentCloudTabsProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudTabDeviceProvider, a3);
    [(WBSCloudTabDeviceProvider *)v7->_cloudTabDeviceProvider addCloudTabsObserver:v7];
    v8 = v7;
  }

  return v7;
}

+ (id)deviceIconForIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:v3 error:0];
    v5 = v4;
    if (v4)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = [v4 name];
      v8 = [v6 _systemImageNamed:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setCloudTabDeviceProvider:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_cloudTabDeviceProvider, a3);
    WeakRetained = objc_loadWeakRetained(&self->_recentsStore);
    [WeakRetained ingestRecentItemsFromProvider:self];
  }
}

- (void)setActiveProfileIdentifier:(id)a3
{
  v7 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v7 copy];
    activeProfileIdentifier = self->_activeProfileIdentifier;
    self->_activeProfileIdentifier = v4;

    WeakRetained = objc_loadWeakRetained(&self->_recentsStore);
    [WeakRetained ingestRecentItemsFromProvider:self];
  }
}

- (void)cloudTabDeviceProvider:(id)a3 didUpdateCloudTabsInProfileWithIdentifier:(id)a4
{
  if (WBSIsEqual())
  {
    WeakRetained = objc_loadWeakRetained(&self->_recentsStore);
    [WeakRetained ingestRecentItemsFromProvider:self];
  }
}

- (WBSRecentsStore)recentsStore
{
  WeakRetained = objc_loadWeakRetained(&self->_recentsStore);

  return WeakRetained;
}

@end