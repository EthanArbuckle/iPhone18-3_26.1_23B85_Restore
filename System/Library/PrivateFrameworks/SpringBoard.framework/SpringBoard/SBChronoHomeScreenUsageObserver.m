@interface SBChronoHomeScreenUsageObserver
- (SBChronoHomeScreenUsageObserver)init;
- (SBChronoHomeScreenUsageObserver)initWithIconManager:(id)a3;
- (UIViewController)appearanceChangeObservedViewController;
- (id)_containerDescriptorForWidgetIcon:(id)a3 atLocation:(int64_t)a4 page:(unint64_t)a5;
- (id)_descriptionForArray:(id)a3 name:(id)a4;
- (unint64_t)_supportedFamilies;
- (void)_rebuildAndTransmitConfiguredWidgetData;
- (void)_rebuildAndTransmitConfiguredWidgetData:(id)a3;
- (void)_startObservingAppearanceChanges;
- (void)homeScreenUsageAggregator:(id)a3 didNoteCurrentPageIndexChanged:(unint64_t)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserAddedWidgetIconStackSuggestion:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserDislikedWidgetIconStackSuggestion:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserTappedWidgetIcon:(id)a4 withURL:(id)a5;
- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconAdded:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconRemoved:(id)a4;
- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconStackChangedActiveWidget:(id)a4;
- (void)homeScreenUsageAggregatorAddWidgetSheetWillPresent:(id)a3;
- (void)homeScreenUsageAggregatorDidNoteEditingModeEnded:(id)a3;
- (void)homeScreenUsageAggregatorDidNoteEditingModeEntered:(id)a3;
- (void)homeScreenUsageAggregatorDidNoteIconStylePickerDidDismiss:(id)a3;
- (void)homeScreenUsageAggregatorDidNoteListLayoutProviderChanged:(id)a3;
@end

@implementation SBChronoHomeScreenUsageObserver

- (SBChronoHomeScreenUsageObserver)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBChronoHomeScreenUsageObserver.m" lineNumber:49 description:@"use -initWithSBHIconManager:"];

  return 0;
}

- (SBChronoHomeScreenUsageObserver)initWithIconManager:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBChronoHomeScreenUsageObserver *)a2 initWithIconManager:?];
  }

  v14.receiver = self;
  v14.super_class = SBChronoHomeScreenUsageObserver;
  v7 = [(SBChronoHomeScreenUsageObserver *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_iconManager, a3);
    [(SBHIconManager *)v8->_iconManager setUsageMonitoringEnabled:1];
    v9 = [(SBHIconManager *)v8->_iconManager usageMonitor];
    [v9 addObserver:v8];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v8 selector:sel_rootViewControllerDidChange_ name:*MEMORY[0x277D66578] object:v8->_iconManager];

    [(SBChronoHomeScreenUsageObserver *)v8 _startObservingAppearanceChanges];
    v11 = [objc_alloc(MEMORY[0x277CFA3D0]) initWithIdentifier:@"SpringBoard-Homescreen"];
    widgetHost = v8->_widgetHost;
    v8->_widgetHost = v11;

    [(SBChronoHomeScreenUsageObserver *)v8 _rebuildAndTransmitConfiguredWidgetData:v8->_iconManager];
  }

  return v8;
}

- (void)homeScreenUsageAggregatorDidNoteEditingModeEntered:(id)a3
{
  v4 = a3;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Editing mode entered", v7, 2u);
  }

  v6 = [v4 iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:v6];
}

- (void)homeScreenUsageAggregatorDidNoteEditingModeEnded:(id)a3
{
  v4 = a3;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Editing mode exited", v7, 2u);
  }

  v6 = [v4 iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:v6];
}

- (void)homeScreenUsageAggregatorDidNoteIconStylePickerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Icon style picker did dismiss", v7, 2u);
  }

  v6 = [v4 iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:v6];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteCurrentPageIndexChanged:(unint64_t)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Current home screen page changed to: %lu", &v6, 0xCu);
  }
}

- (void)homeScreenUsageAggregatorDidNoteListLayoutProviderChanged:(id)a3
{
  v4 = a3;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "List layout provider changed", v7, 2u);
  }

  v6 = [v4 iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:v6];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconAdded:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = SBLogChrono();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 widgets];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon added: %@", &v11, 0xCu);
  }

  v10 = [v7 iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:v10];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconRemoved:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = SBLogChrono();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 widgets];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon removed: %@", &v11, 0xCu);
  }

  v10 = [v7 iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:v10];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconStackChangedActiveWidget:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = SBLogChrono();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 activeDataSource];
    v10 = [v6 widgets];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon stack changed active widget: %@ all widgets: %@", &v12, 0x16u);
  }

  v11 = [v7 iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:v11];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserAddedWidgetIconStackSuggestion:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 widgets];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted user added suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserDislikedWidgetIconStackSuggestion:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 widgets];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted user dislike of suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 widgets];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted dislike of Siri Suggestion on suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserTappedWidgetIcon:(id)a4 withURL:(id)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogChrono();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 widgets];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Widget icon tapped: %@", &v8, 0xCu);
  }
}

- (void)homeScreenUsageAggregatorAddWidgetSheetWillPresent:(id)a3
{
  v4 = SBLogChrono();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Add Widget sheet will present", v8, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CFA280]);
  v6 = [(SBChronoHomeScreenUsageObserver *)self widgetHost];
  v7 = [v6 identifier];
  [v5 userEnteredAddGalleryForHost:v7];
}

- (unint64_t)_supportedFamilies
{
  SBHScreenTypeForCurrentDevice();
  if (SBHScreenTypeIsPad())
  {
    return 94;
  }

  else
  {
    return 78;
  }
}

- (void)_rebuildAndTransmitConfiguredWidgetData
{
  v3 = [(SBChronoHomeScreenUsageObserver *)self iconManager];
  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:v3];
}

- (void)_rebuildAndTransmitConfiguredWidgetData:(id)a3
{
  v5 = a3;
  v6 = [(SBChronoHomeScreenUsageObserver *)self widgetDataGeneration]+ 1;
  [(SBChronoHomeScreenUsageObserver *)self setWidgetDataGeneration:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SBChronoHomeScreenUsageObserver__rebuildAndTransmitConfiguredWidgetData___block_invoke;
  v8[3] = &unk_2783AB9E0;
  v8[4] = self;
  v9 = v5;
  v10 = v6;
  v11 = a2;
  v7 = v5;
  [v7 performAfterCachingWidgetIntentsUsingBlock:v8];
}

void __75__SBChronoHomeScreenUsageObserver__rebuildAndTransmitConfiguredWidgetData___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 48);
  if (v3 == [*(a1 + 32) widgetDataGeneration])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [*(a1 + 40) rootFolder];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__SBChronoHomeScreenUsageObserver__rebuildAndTransmitConfiguredWidgetData___block_invoke_2;
    v15[3] = &unk_2783B92C0;
    v6 = v5;
    v7 = *(a1 + 32);
    v16 = v6;
    v17 = v7;
    v8 = v4;
    v18 = v8;
    [v6 enumerateAllIconsWithOptions:2 usingBlock:v15];
    v9 = SBLogChrono();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v2 _descriptionForArray:v8 name:@"containers"];
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Configured widgets changed: %@", buf, 0xCu);
    }

    v11 = [*v2 iconManager];
    v12 = [v11 widgetMetricsProvider];

    if (objc_opt_respondsToSelector())
    {
      [v12 systemDefaultMetricsSpecificationForFamilies:{objc_msgSend(*v2, "_supportedFamilies")}];
    }

    else
    {
      [v12 systemDefaultMetricsSpecification];
    }
    v13 = ;
    if (!v13)
    {
      __75__SBChronoHomeScreenUsageObserver__rebuildAndTransmitConfiguredWidgetData___block_invoke_cold_1(a1, v2);
    }

    v14 = [objc_alloc(MEMORY[0x277CFA360]) initWithContainerDescriptors:v8 metricsSpecification:v13];
    [*(*v2 + 1) setConfiguration:v14];
  }
}

void __75__SBChronoHomeScreenUsageObserver__rebuildAndTransmitConfiguredWidgetData___block_invoke_2(id *a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, v5);

  if (v7)
  {
    v8 = [a1[4] visibleIndexForIndex:{objc_msgSend(v11, "indexAtPosition:", 0)}];
    if ([a1[4] isIconAtIndexPathInTodayList:v11])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [a1[5] _containerDescriptorForWidgetIcon:v7 atLocation:v9 page:v8];
    if (v10)
    {
      [a1[6] addObject:v10];
    }
  }
}

- (id)_containerDescriptorForWidgetIcon:(id)a3 atLocation:(int64_t)a4 page:(unint64_t)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v49 = [MEMORY[0x277CBEB18] array];
  v46 = [v6 gridSizeClass];
  v56 = CHSWidgetFamilyForSBHIconGridSizeClass();
  v7 = [v6 widgets];
  v52 = [(SBHIconManager *)self->_iconManager widgetExtensionProvider];
  v55 = self;
  v54 = [(SBChronoHomeScreenUsageObserver *)self iconManager];
  v8 = [v54 rootFolderController];
  v9 = [v8 traitCollection];

  v45 = v9;
  v44 = [MEMORY[0x277D75C80] sbh_iconImageAppearanceFromTraitCollection:v9];
  v47 = [v44 appearanceType];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v7;
  v53 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v53)
  {
    v50 = *v58;
    v51 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v57 + 1) + 8 * v10);
        v12 = [(SBChronoHomeScreenUsageObserver *)v55 iconManager];
        v13 = [v12 intentForWidget:v11 ofIcon:v6];

        v14 = objc_alloc(MEMORY[0x277CFA258]);
        v15 = [v11 extensionBundleIdentifier];
        v16 = [v11 containerBundleIdentifier];
        v17 = [v14 initWithExtensionBundleIdentifier:v15 containerBundleIdentifier:v16 deviceIdentifier:0];

        v18 = objc_alloc(MEMORY[0x277CFA358]);
        v19 = [v11 kind];
        v20 = [v18 initWithExtensionIdentity:v17 kind:v19 family:v56 intent:v13 activityIdentifier:0];

        v21 = [v52 sbh_descriptorForWidgetIdentifiable:v20];
        v22 = [(SBChronoHomeScreenUsageObserver *)v55 iconManager];
        v23 = [v22 widgetMetricsProvider];
        v24 = [v23 systemMetricsForWidget:v20];

        v25 = objc_alloc(MEMORY[0x277CFA288]);
        v26 = [v11 uniqueIdentifier];
        v27 = [v25 initWithUniqueIdentifier:v26 widget:v20 metrics:v24];

        [v27 setSuggestion:{objc_msgSend(v11, "suggestionSource") == 1}];
        [v27 setSystemConfigured:{objc_msgSend(v11, "suggestionSource") == 2}];
        if (([v54 isEditing] & 1) != 0 || objc_msgSend(v54, "isIconStylePickerVisible"))
        {
          v28 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:0];
          v29 = MEMORY[0x277D66338];
          v30 = [(SBHIconManager *)v55->_iconManager widgetExtensionProvider];
          v31 = [v29 tintedRenderSchemeForWidgetDescriptor:v21 family:v56 widgetExtensionProvider:v30];

          v64[0] = v28;
          v64[1] = v31;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
          [v27 setSupportedRenderSchemes:v32];
        }

        else
        {
          if (v47 - 2 >= 5)
          {
            if (v47 > 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:0];
            }
          }

          else
          {
            v33 = MEMORY[0x277D66338];
            v34 = [(SBHIconManager *)v55->_iconManager widgetExtensionProvider];
            v28 = [v33 tintedRenderSchemeForWidgetDescriptor:v21 family:v56 widgetExtensionProvider:v34];
          }

          v63 = v28;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
          [v27 setSupportedRenderSchemes:v31];
        }

        if (v27)
        {
          [v49 addObject:v27];
          v35 = SBLogChronoVerbose();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v62 = v27;
            _os_log_debug_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEBUG, "Found configured widget: %@", buf, 0xCu);
          }
        }

        ++v10;
        v6 = v51;
      }

      while (v53 != v10);
      v53 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v53);
  }

  if ([v49 count])
  {
    v36 = objc_alloc(MEMORY[0x277CFA1E0]);
    v37 = [v6 uniqueIdentifier];
    v38 = [v6 activeWidget];
    v39 = [v38 uniqueIdentifier];
    v40 = [v36 initWithUniqueIdentifier:v37 location:a4 canAppearInSecureEnvironment:a4 == 2 page:a5 family:v56 widgets:v49 activeWidget:v39];
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)_descriptionForArray:(id)a3 name:(id)a4
{
  v5 = MEMORY[0x277CF0C00];
  v6 = a4;
  v7 = a3;
  v8 = [v5 builderWithObject:0];
  [v8 appendArraySection:v7 withName:v6 skipIfEmpty:0];

  v9 = [v8 build];

  return v9;
}

- (void)_startObservingAppearanceChanges
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBChronoHomeScreenUsageObserver *)self appearanceChangeObservedViewController];
  v4 = [(SBChronoHomeScreenUsageObserver *)self iconManager];
  v5 = [v4 rootViewController];
  if (v3 != v5)
  {
    v6 = [(SBChronoHomeScreenUsageObserver *)self appearanceChangeRegistration];
    v7 = v6;
    if (v3 && v6)
    {
      [v3 unregisterForTraitChanges:v6];
    }

    v8 = objc_opt_self();
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v10 = [v5 registerForTraitChanges:v9 withTarget:self action:sel_rootViewControllerAppearanceDidChange];

    [(SBChronoHomeScreenUsageObserver *)self setAppearanceChangeRegistration:v10];
    [(SBChronoHomeScreenUsageObserver *)self setAppearanceChangeObservedViewController:v5];
  }
}

- (UIViewController)appearanceChangeObservedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceChangeObservedViewController);

  return WeakRetained;
}

- (void)initWithIconManager:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBChronoHomeScreenUsageObserver.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"iconManager"}];
}

void __75__SBChronoHomeScreenUsageObserver__rebuildAndTransmitConfiguredWidgetData___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"SBChronoHomeScreenUsageObserver.m" lineNumber:183 description:@"A widget metrics specification is required."];
}

@end