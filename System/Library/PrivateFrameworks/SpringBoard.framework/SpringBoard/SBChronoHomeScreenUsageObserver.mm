@interface SBChronoHomeScreenUsageObserver
- (SBChronoHomeScreenUsageObserver)init;
- (SBChronoHomeScreenUsageObserver)initWithIconManager:(id)manager;
- (UIViewController)appearanceChangeObservedViewController;
- (id)_containerDescriptorForWidgetIcon:(id)icon atLocation:(int64_t)location page:(unint64_t)page;
- (id)_descriptionForArray:(id)array name:(id)name;
- (unint64_t)_supportedFamilies;
- (void)_rebuildAndTransmitConfiguredWidgetData;
- (void)_rebuildAndTransmitConfiguredWidgetData:(id)data;
- (void)_startObservingAppearanceChanges;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteCurrentPageIndexChanged:(unint64_t)changed;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserAddedWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconAdded:(id)added;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconRemoved:(id)removed;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget;
- (void)homeScreenUsageAggregatorAddWidgetSheetWillPresent:(id)present;
- (void)homeScreenUsageAggregatorDidNoteEditingModeEnded:(id)ended;
- (void)homeScreenUsageAggregatorDidNoteEditingModeEntered:(id)entered;
- (void)homeScreenUsageAggregatorDidNoteIconStylePickerDidDismiss:(id)dismiss;
- (void)homeScreenUsageAggregatorDidNoteListLayoutProviderChanged:(id)changed;
@end

@implementation SBChronoHomeScreenUsageObserver

- (SBChronoHomeScreenUsageObserver)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBChronoHomeScreenUsageObserver.m" lineNumber:49 description:@"use -initWithSBHIconManager:"];

  return 0;
}

- (SBChronoHomeScreenUsageObserver)initWithIconManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    [(SBChronoHomeScreenUsageObserver *)a2 initWithIconManager:?];
  }

  v14.receiver = self;
  v14.super_class = SBChronoHomeScreenUsageObserver;
  v7 = [(SBChronoHomeScreenUsageObserver *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_iconManager, manager);
    [(SBHIconManager *)v8->_iconManager setUsageMonitoringEnabled:1];
    usageMonitor = [(SBHIconManager *)v8->_iconManager usageMonitor];
    [usageMonitor addObserver:v8];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_rootViewControllerDidChange_ name:*MEMORY[0x277D66578] object:v8->_iconManager];

    [(SBChronoHomeScreenUsageObserver *)v8 _startObservingAppearanceChanges];
    v11 = [objc_alloc(MEMORY[0x277CFA3D0]) initWithIdentifier:@"SpringBoard-Homescreen"];
    widgetHost = v8->_widgetHost;
    v8->_widgetHost = v11;

    [(SBChronoHomeScreenUsageObserver *)v8 _rebuildAndTransmitConfiguredWidgetData:v8->_iconManager];
  }

  return v8;
}

- (void)homeScreenUsageAggregatorDidNoteEditingModeEntered:(id)entered
{
  enteredCopy = entered;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Editing mode entered", v7, 2u);
  }

  iconManager = [enteredCopy iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregatorDidNoteEditingModeEnded:(id)ended
{
  endedCopy = ended;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Editing mode exited", v7, 2u);
  }

  iconManager = [endedCopy iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregatorDidNoteIconStylePickerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Icon style picker did dismiss", v7, 2u);
  }

  iconManager = [dismissCopy iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteCurrentPageIndexChanged:(unint64_t)changed
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    changedCopy = changed;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Current home screen page changed to: %lu", &v6, 0xCu);
  }
}

- (void)homeScreenUsageAggregatorDidNoteListLayoutProviderChanged:(id)changed
{
  changedCopy = changed;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "List layout provider changed", v7, 2u);
  }

  iconManager = [changedCopy iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconAdded:(id)added
{
  v13 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  aggregatorCopy = aggregator;
  v8 = SBLogChrono();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [addedCopy widgets];
    v11 = 138412290;
    v12 = widgets;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon added: %@", &v11, 0xCu);
  }

  iconManager = [aggregatorCopy iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconRemoved:(id)removed
{
  v13 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  aggregatorCopy = aggregator;
  v8 = SBLogChrono();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [removedCopy widgets];
    v11 = 138412290;
    v12 = widgets;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon removed: %@", &v11, 0xCu);
  }

  iconManager = [aggregatorCopy iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget
{
  v16 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  aggregatorCopy = aggregator;
  v8 = SBLogChrono();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeDataSource = [widgetCopy activeDataSource];
    widgets = [widgetCopy widgets];
    v12 = 138412546;
    v13 = activeDataSource;
    v14 = 2112;
    v15 = widgets;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon stack changed active widget: %@ all widgets: %@", &v12, 0x16u);
  }

  iconManager = [aggregatorCopy iconManager];

  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserAddedWidgetIconStackSuggestion:(id)suggestion
{
  v9 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v7 = 138412290;
    v8 = widgets;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted user added suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedWidgetIconStackSuggestion:(id)suggestion
{
  v9 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v7 = 138412290;
    v8 = widgets;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted user dislike of suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion
{
  v9 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = SBLogChrono();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v7 = 138412290;
    v8 = widgets;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted dislike of Siri Suggestion on suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l
{
  v10 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v6 = SBLogChrono();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [iconCopy widgets];
    v8 = 138412290;
    v9 = widgets;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Widget icon tapped: %@", &v8, 0xCu);
  }
}

- (void)homeScreenUsageAggregatorAddWidgetSheetWillPresent:(id)present
{
  v4 = SBLogChrono();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Add Widget sheet will present", v8, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CFA280]);
  widgetHost = [(SBChronoHomeScreenUsageObserver *)self widgetHost];
  identifier = [widgetHost identifier];
  [v5 userEnteredAddGalleryForHost:identifier];
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
  iconManager = [(SBChronoHomeScreenUsageObserver *)self iconManager];
  [(SBChronoHomeScreenUsageObserver *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)_rebuildAndTransmitConfiguredWidgetData:(id)data
{
  dataCopy = data;
  v6 = [(SBChronoHomeScreenUsageObserver *)self widgetDataGeneration]+ 1;
  [(SBChronoHomeScreenUsageObserver *)self setWidgetDataGeneration:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SBChronoHomeScreenUsageObserver__rebuildAndTransmitConfiguredWidgetData___block_invoke;
  v8[3] = &unk_2783AB9E0;
  v8[4] = self;
  v9 = dataCopy;
  v10 = v6;
  v11 = a2;
  v7 = dataCopy;
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

- (id)_containerDescriptorForWidgetIcon:(id)icon atLocation:(int64_t)location page:(unint64_t)page
{
  v66 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  array = [MEMORY[0x277CBEB18] array];
  gridSizeClass = [iconCopy gridSizeClass];
  v56 = CHSWidgetFamilyForSBHIconGridSizeClass();
  widgets = [iconCopy widgets];
  widgetExtensionProvider = [(SBHIconManager *)self->_iconManager widgetExtensionProvider];
  selfCopy = self;
  iconManager = [(SBChronoHomeScreenUsageObserver *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  traitCollection = [rootFolderController traitCollection];

  v45 = traitCollection;
  v44 = [MEMORY[0x277D75C80] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
  appearanceType = [v44 appearanceType];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = widgets;
  v53 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v53)
  {
    v50 = *v58;
    v51 = iconCopy;
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
        iconManager2 = [(SBChronoHomeScreenUsageObserver *)selfCopy iconManager];
        v13 = [iconManager2 intentForWidget:v11 ofIcon:iconCopy];

        v14 = objc_alloc(MEMORY[0x277CFA258]);
        extensionBundleIdentifier = [v11 extensionBundleIdentifier];
        containerBundleIdentifier = [v11 containerBundleIdentifier];
        v17 = [v14 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];

        v18 = objc_alloc(MEMORY[0x277CFA358]);
        kind = [v11 kind];
        v20 = [v18 initWithExtensionIdentity:v17 kind:kind family:v56 intent:v13 activityIdentifier:0];

        v21 = [widgetExtensionProvider sbh_descriptorForWidgetIdentifiable:v20];
        iconManager3 = [(SBChronoHomeScreenUsageObserver *)selfCopy iconManager];
        widgetMetricsProvider = [iconManager3 widgetMetricsProvider];
        v24 = [widgetMetricsProvider systemMetricsForWidget:v20];

        v25 = objc_alloc(MEMORY[0x277CFA288]);
        uniqueIdentifier = [v11 uniqueIdentifier];
        v27 = [v25 initWithUniqueIdentifier:uniqueIdentifier widget:v20 metrics:v24];

        [v27 setSuggestion:{objc_msgSend(v11, "suggestionSource") == 1}];
        [v27 setSystemConfigured:{objc_msgSend(v11, "suggestionSource") == 2}];
        if (([iconManager isEditing] & 1) != 0 || objc_msgSend(iconManager, "isIconStylePickerVisible"))
        {
          v28 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:0];
          v29 = MEMORY[0x277D66338];
          widgetExtensionProvider2 = [(SBHIconManager *)selfCopy->_iconManager widgetExtensionProvider];
          v31 = [v29 tintedRenderSchemeForWidgetDescriptor:v21 family:v56 widgetExtensionProvider:widgetExtensionProvider2];

          v64[0] = v28;
          v64[1] = v31;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
          [v27 setSupportedRenderSchemes:v32];
        }

        else
        {
          if (appearanceType - 2 >= 5)
          {
            if (appearanceType > 1)
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
            widgetExtensionProvider3 = [(SBHIconManager *)selfCopy->_iconManager widgetExtensionProvider];
            v28 = [v33 tintedRenderSchemeForWidgetDescriptor:v21 family:v56 widgetExtensionProvider:widgetExtensionProvider3];
          }

          v63 = v28;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
          [v27 setSupportedRenderSchemes:v31];
        }

        if (v27)
        {
          [array addObject:v27];
          v35 = SBLogChronoVerbose();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v62 = v27;
            _os_log_debug_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEBUG, "Found configured widget: %@", buf, 0xCu);
          }
        }

        ++v10;
        iconCopy = v51;
      }

      while (v53 != v10);
      v53 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v53);
  }

  if ([array count])
  {
    v36 = objc_alloc(MEMORY[0x277CFA1E0]);
    uniqueIdentifier2 = [iconCopy uniqueIdentifier];
    activeWidget = [iconCopy activeWidget];
    uniqueIdentifier3 = [activeWidget uniqueIdentifier];
    v40 = [v36 initWithUniqueIdentifier:uniqueIdentifier2 location:location canAppearInSecureEnvironment:location == 2 page:page family:v56 widgets:array activeWidget:uniqueIdentifier3];
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)_descriptionForArray:(id)array name:(id)name
{
  v5 = MEMORY[0x277CF0C00];
  nameCopy = name;
  arrayCopy = array;
  v8 = [v5 builderWithObject:0];
  [v8 appendArraySection:arrayCopy withName:nameCopy skipIfEmpty:0];

  build = [v8 build];

  return build;
}

- (void)_startObservingAppearanceChanges
{
  v11[1] = *MEMORY[0x277D85DE8];
  appearanceChangeObservedViewController = [(SBChronoHomeScreenUsageObserver *)self appearanceChangeObservedViewController];
  iconManager = [(SBChronoHomeScreenUsageObserver *)self iconManager];
  rootViewController = [iconManager rootViewController];
  if (appearanceChangeObservedViewController != rootViewController)
  {
    appearanceChangeRegistration = [(SBChronoHomeScreenUsageObserver *)self appearanceChangeRegistration];
    v7 = appearanceChangeRegistration;
    if (appearanceChangeObservedViewController && appearanceChangeRegistration)
    {
      [appearanceChangeObservedViewController unregisterForTraitChanges:appearanceChangeRegistration];
    }

    v8 = objc_opt_self();
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v10 = [rootViewController registerForTraitChanges:v9 withTarget:self action:sel_rootViewControllerAppearanceDidChange];

    [(SBChronoHomeScreenUsageObserver *)self setAppearanceChangeRegistration:v10];
    [(SBChronoHomeScreenUsageObserver *)self setAppearanceChangeObservedViewController:rootViewController];
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