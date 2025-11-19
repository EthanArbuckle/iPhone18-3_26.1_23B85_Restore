@interface WGWidgetDataSourceManager
+ (id)_widgetExtensionsDiscoveryAttributes;
+ (id)discoverAvailableWidgetsWithError:(id *)a3;
- (BOOL)_shouldPublishWidgetExtension:(id)a3;
- (NSArray)dataSources;
- (WGWidgetDataSourceManager)init;
- (void)_beginContinuousPlugInDiscovery;
- (void)_endContinuousPlugInDiscovery;
- (void)_revokeExtensionWithIdentifier:(id)a3;
- (void)_start:(id)a3;
- (void)_stop:(id)a3;
- (void)_updateDataSourceWithExtension:(id)a3;
- (void)_updatePublishedWidgetExtensions;
- (void)_updatePublishedWidgetExtensions:(id)a3;
@end

@implementation WGWidgetDataSourceManager

+ (id)_widgetExtensionsDiscoveryAttributes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA0F8];
  v5[0] = @"com.apple.widget-extension";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)discoverAvailableWidgetsWithError:(id *)a3
{
  v4 = MEMORY[0x277CCA9C8];
  v5 = [a1 _widgetExtensionsDiscoveryAttributes];
  v6 = [v4 extensionsWithMatchingAttributes:v5 error:a3];
  v7 = [v6 bs_mapNoNulls:&__block_literal_global_1];

  return v7;
}

WGWidgetDatum *__63__WGWidgetDataSourceManager_discoverAvailableWidgetsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WGWidgetDatum alloc] initWithExtension:v2];

  return v3;
}

- (WGWidgetDataSourceManager)init
{
  v8.receiver = self;
  v8.super_class = WGWidgetDataSourceManager;
  v2 = [(WGWidgetDataSourceManager *)&v8 init];
  if (v2)
  {
    v3 = [[WGWidgetDataSource alloc] initWithIdentifier:@"com.apple.notificationcenter.widgetdatasource"];
    widgetDataSource = v2->_widgetDataSource;
    v2->_widgetDataSource = v3;

    v5 = objc_alloc_init(WGWidgetVisibilityManager);
    widgetVisbilityManager = v2->_widgetVisbilityManager;
    v2->_widgetVisbilityManager = v5;

    [(WGWidgetVisibilityManager *)v2->_widgetVisbilityManager setDelegate:v2];
  }

  return v2;
}

- (NSArray)dataSources
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_widgetDataSource;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_start:(id)a3
{
  v4 = [a3 copy];
  didStartBlock = self->_didStartBlock;
  self->_didStartBlock = v4;

  self->_isPublishing = 1;
  [(WGWidgetDataSourceManager *)self _beginContinuousPlugInDiscovery];
  parentDataSourceManager = self->_parentDataSourceManager;

  [(_WGParentDataSourceManager *)parentDataSourceManager childDataSourceManagerDataSourcesDidChange:self];
}

- (void)_stop:(id)a3
{
  v5 = a3;
  self->_isPublishing = 0;
  [(WGWidgetDataSourceManager *)self _endContinuousPlugInDiscovery];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (BOOL)_shouldPublishWidgetExtension:(id)a3
{
  widgetVisbilityManager = self->_widgetVisbilityManager;
  v4 = [a3 identifier];
  LOBYTE(widgetVisbilityManager) = [(WGWidgetVisibilityManager *)widgetVisbilityManager isWidgetWithIdentifierVisible:v4];

  return widgetVisbilityManager;
}

- (void)_updateDataSourceWithExtension:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[WGWidgetDatum alloc] initWithExtension:v4];

    [(WGWidgetDataSource *)self->_widgetDataSource replaceWithDatum:v5];
  }
}

- (void)_revokeExtensionWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(WGWidgetDataSource *)self->_widgetDataSource removeDatumWithIdentifier:v4];
  }
}

- (void)_updatePublishedWidgetExtensions:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  isPublishing = self->_isPublishing;
  v6 = WGLogWidgets;
  v7 = os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG);
  if (isPublishing)
  {
    if (v7)
    {
      [(WGWidgetDataSourceManager *)v6 _updatePublishedWidgetExtensions:v4];
    }

    v8 = [(WGWidgetDataSource *)self->_widgetDataSource widgetIdentifiers];
    v9 = [v8 mutableCopy];

    if ([v4 count])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v32 = v4;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v40;
        v33 = v10;
        v34 = v9;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v40 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v39 + 1) + 8 * i);
            if ([(WGWidgetDataSourceManager *)self _shouldPublishWidgetExtension:v15])
            {
              v16 = [v15 identifier];
              if ([v9 containsObject:v16])
              {
                v17 = [(WGWidgetDataSource *)self->_widgetDataSource widgetDatumWithIdentifier:v16];
                v18 = [v17 representedExtension];

                v19 = [v18 _plugIn];
                v20 = [v15 _plugIn];
                v21 = [v19 isEqual:v20];

                if ((v21 & 1) == 0)
                {
                  v22 = WGLogWidgets;
                  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
                  {
                    v23 = v22;
                    v24 = [v18 wg_description];
                    *buf = 138543618;
                    v45 = v16;
                    v46 = 2114;
                    v47 = v24;
                    _os_log_debug_impl(&dword_27425E000, v23, OS_LOG_TYPE_DEBUG, "Widget extension with ID '%{public}@' has changed: %{public}@ ", buf, 0x16u);
                  }

                  [(WGWidgetDataSourceManager *)self _updateDataSourceWithExtension:v15];
                }

                v9 = v34;
                [v34 removeObject:v16];

                v10 = v33;
              }

              else
              {
                [(WGWidgetDataSourceManager *)self _updateDataSourceWithExtension:v15];
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
        }

        while (v12);
      }

      v4 = v32;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = v9;
    v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(WGWidgetDataSourceManager *)self _revokeExtensionWithIdentifier:*(*(&v35 + 1) + 8 * j)];
        }

        v27 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v27);
    }

    didStartBlock = self->_didStartBlock;
    if (didStartBlock)
    {
      didStartBlock[2]();
      v31 = self->_didStartBlock;
      self->_didStartBlock = 0;
    }
  }

  else if (v7)
  {
    [WGWidgetDataSourceManager _updatePublishedWidgetExtensions:v6];
  }
}

- (void)_updatePublishedWidgetExtensions
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277CCA9C8];
  v3 = [objc_opt_class() _widgetExtensionsDiscoveryAttributes];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__WGWidgetDataSourceManager__updatePublishedWidgetExtensions__block_invoke;
  v4[3] = &unk_279ED0A18;
  objc_copyWeak(&v5, &location);
  [v2 extensionsWithMatchingAttributes:v3 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __61__WGWidgetDataSourceManager__updatePublishedWidgetExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      __61__WGWidgetDataSourceManager__updatePublishedWidgetExtensions__block_invoke_cold_1();
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__WGWidgetDataSourceManager__updatePublishedWidgetExtensions__block_invoke_2;
    v7[3] = &unk_279ED09F0;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v7);

    objc_destroyWeak(&v9);
  }
}

void __61__WGWidgetDataSourceManager__updatePublishedWidgetExtensions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePublishedWidgetExtensions:*(a1 + 32)];
}

- (void)_beginContinuousPlugInDiscovery
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_27425E000, a2, OS_LOG_TYPE_DEBUG, "New discovery token: %{public}@", &v3, 0xCu);
}

void __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WGLogWidgets;
  if (v6)
  {
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_ERROR))
    {
      __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke_16;
    block[3] = &unk_279ED0948;
    v9 = &v13;
    v13 = WeakRetained;
    v10 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke_cold_2(v7, v5);
    }

    v11 = objc_loadWeakRetained((a1 + 32));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke_15;
    v14[3] = &unk_279ED0A40;
    v9 = &v15;
    v15 = v11;
    v16 = v5;
    v10 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

uint64_t __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) _widgetVisbilityManager];
  [v2 updateVisibilityForExtensions:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _updatePublishedWidgetExtensions:v4];
}

uint64_t __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke_16(uint64_t a1)
{
  [*(a1 + 32) _setPlugInDiscoveryToken:0];
  v2 = *(a1 + 32);

  return [v2 _beginContinuousPlugInDiscovery];
}

- (void)_endContinuousPlugInDiscovery
{
  if (self->_plugInDiscoveryToken)
  {
    [MEMORY[0x277CCA9C8] endMatchingExtensions:?];
    plugInDiscoveryToken = self->_plugInDiscoveryToken;
    self->_plugInDiscoveryToken = 0;
  }
}

- (void)_updatePublishedWidgetExtensions:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 valueForKey:@"wg_description"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_27425E000, v5, v6, "Extensions to update: %{public}@", v7, v8, v9, v10, v11);
}

void __61__WGWidgetDataSourceManager__updatePublishedWidgetExtensions__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_27425E000, v0, OS_LOG_TYPE_ERROR, "Encountered error requestion widget extensions: %{public}@", v1, 0xCu);
}

void __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_27425E000, v0, OS_LOG_TYPE_ERROR, "Encountered errors discovering widget plug-ins: %{public}@", v1, 0xCu);
}

void __60__WGWidgetDataSourceManager__beginContinuousPlugInDiscovery__block_invoke_cold_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 valueForKey:@"wg_description"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_27425E000, v5, v6, "Discovered widget plug-ins: %{public}@", v7, v8, v9, v10, v11);
}

@end