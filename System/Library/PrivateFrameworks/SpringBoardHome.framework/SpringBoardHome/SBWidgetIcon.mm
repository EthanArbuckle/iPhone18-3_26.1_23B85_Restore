@interface SBWidgetIcon
- (BOOL)_hasDataSourceThatIgnoresAllOtherDataSources;
- (BOOL)matchesWidgetIcon:(id)icon;
- (BOOL)supportsConfiguration;
- (NSArray)widgets;
- (SBHWidget)activeWidget;
- (SBWidgetIcon)initWithCHSWidgetDescriptor:(id)descriptor;
- (SBWidgetIcon)initWithCHSWidgetDescriptor:(id)descriptor inDomain:(id)domain;
- (SBWidgetIcon)initWithCHSWidgetDescriptors:(id)descriptors suggestionSource:(int64_t)source;
- (SBWidgetIcon)initWithCHSWidgetDescriptors:(id)descriptors suggestionSource:(int64_t)source inDomain:(id)domain;
- (SBWidgetIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d;
- (SBWidgetIcon)initWithWidget:(id)widget;
- (SBWidgetIcon)initWithWidgetExtensionIdentifiers:(id)identifiers widgetKinds:(id)kinds widgetContainerBundleIdentifiers:(id)bundleIdentifiers suggestionSource:(int64_t)source;
- (SBWidgetIcon)initWithWidgets:(id)widgets;
- (id)_fallbackBestDataSource;
- (id)copyWithSuggestionSource:(int64_t)source;
- (id)copyWithUniqueLeafIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)firstWidgetPassingTest:(id)test;
- (id)supportedGridSizeClasses;
- (unint64_t)iconDataSourcesExcludingSuggestionsCount;
- (void)_setPropertiesFromIcon:(id)icon;
- (void)addDataSourcesFromWidgetIcons:(id)icons;
- (void)addFirstSuggestedWidget;
- (void)didAddIconDataSource:(id)source;
- (void)didChangeActiveDataSource:(id)source;
- (void)didRemoveIconDataSource:(id)source;
- (void)didReplaceIconDataSource:(id)source withIconDataSource:(id)dataSource;
- (void)removeFirstSuggestedIconDataSource;
- (void)setAllowsExternalSuggestions:(BOOL)suggestions;
- (void)setAllowsSuggestions:(BOOL)suggestions;
- (void)setLastUserSelectedDataSource:(id)source;
@end

@implementation SBWidgetIcon

- (SBWidgetIcon)initWithCHSWidgetDescriptor:(id)descriptor
{
  v10 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v4 = MEMORY[0x1E695DEC8];
  descriptorCopy2 = descriptor;
  v6 = [v4 arrayWithObjects:&descriptorCopy count:1];

  v7 = [(SBWidgetIcon *)self initWithCHSWidgetDescriptors:v6, descriptorCopy, v10];
  return v7;
}

- (SBWidgetIcon)initWithCHSWidgetDescriptor:(id)descriptor inDomain:(id)domain
{
  v13 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v6 = MEMORY[0x1E695DEC8];
  domainCopy = domain;
  descriptorCopy2 = descriptor;
  v9 = [v6 arrayWithObjects:&descriptorCopy count:1];

  v10 = [(SBWidgetIcon *)self initWithCHSWidgetDescriptors:v9 inDomain:domainCopy, descriptorCopy, v13];
  return v10;
}

- (SBWidgetIcon)initWithCHSWidgetDescriptors:(id)descriptors suggestionSource:(int64_t)source
{
  descriptorsCopy = descriptors;
  v7 = +[SBHIconGridSizeClassDomain globalDomain];
  v8 = [(SBWidgetIcon *)self initWithCHSWidgetDescriptors:descriptorsCopy suggestionSource:source inDomain:v7];

  return v8;
}

- (SBWidgetIcon)initWithCHSWidgetDescriptors:(id)descriptors suggestionSource:(int64_t)source inDomain:(id)domain
{
  v27 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  domainCopy = domain;
  initWithUniqueLeafIdentifier = [(SBLeafIcon *)self initWithUniqueLeafIdentifier];
  if (initWithUniqueLeafIdentifier)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = descriptorsCopy;
    v11 = descriptorsCopy;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * v15) sbh_iconDataSourceInDomain:domainCopy];
          if (v16)
          {
            v17 = v16;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (source && (isKindOfClass & 1) != 0)
            {
              v19 = [v17 copyWithSuggestionSource:source];

              v17 = v19;
            }

            [(SBLeafIcon *)initWithUniqueLeafIdentifier addIconDataSource:v17];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    descriptorsCopy = v21;
  }

  return initWithUniqueLeafIdentifier;
}

- (SBWidgetIcon)initWithWidgetExtensionIdentifiers:(id)identifiers widgetKinds:(id)kinds widgetContainerBundleIdentifiers:(id)bundleIdentifiers suggestionSource:(int64_t)source
{
  identifiersCopy = identifiers;
  kindsCopy = kinds;
  bundleIdentifiersCopy = bundleIdentifiers;
  initWithUniqueLeafIdentifier = [(SBLeafIcon *)self initWithUniqueLeafIdentifier];
  if (initWithUniqueLeafIdentifier)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __137__SBWidgetIcon_SBHCHSWidgetDescriptor__initWithWidgetExtensionIdentifiers_widgetKinds_widgetContainerBundleIdentifiers_suggestionSource___block_invoke;
    v15[3] = &unk_1E808A760;
    v16 = kindsCopy;
    v17 = bundleIdentifiersCopy;
    sourceCopy = source;
    v18 = initWithUniqueLeafIdentifier;
    [identifiersCopy enumerateObjectsUsingBlock:v15];
  }

  return initWithUniqueLeafIdentifier;
}

void __137__SBWidgetIcon_SBHCHSWidgetDescriptor__initWithWidgetExtensionIdentifiers_widgetKinds_widgetContainerBundleIdentifiers_suggestionSource___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = SBHSpecialWidgetDescriptorTypeForKind(v6);
    if (v8)
    {
      v9 = [[SBHSpecialWidgetDescriptor alloc] initWithType:v8];
      v10 = [(CHSWidgetDescriptor *)v9 sbh_iconDataSource];
    }

    else
    {
      v11 = *(a1 + 40);
      if (v11 && [v11 count])
      {
        v12 = [*(a1 + 40) objectAtIndex:a3];
        v13 = [[SBHWidget alloc] initWithKind:v6 extensionBundleIdentifier:v5 containerBundleIdentifier:v12];
        v10 = [(SBHWidget *)v13 copyWithSuggestionSource:*(a1 + 56)];
      }

      else
      {
        v12 = [[SBHWidget alloc] initWithKind:v6 extensionBundleIdentifier:v5];
        v10 = [(SBHWidget *)v12 copyWithSuggestionSource:*(a1 + 56)];
      }

      v9 = SBLogWidgets();
      if (os_log_type_enabled(&v9->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v10 uniqueIdentifier];
        v15 = 138543618;
        v16 = v5;
        v17 = 2114;
        v18 = v14;
        _os_log_impl(&dword_1BEB18000, &v9->super.super.super, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created for icon through extension identifiers.", &v15, 0x16u);
      }
    }
  }

  [*(a1 + 48) addIconDataSource:v10];
}

- (SBWidgetIcon)initWithWidget:(id)widget
{
  widgetCopy = widget;
  initWithUniqueLeafIdentifier = [(SBLeafIcon *)self initWithUniqueLeafIdentifier];
  v6 = initWithUniqueLeafIdentifier;
  if (initWithUniqueLeafIdentifier)
  {
    [(SBLeafIcon *)initWithUniqueLeafIdentifier addIconDataSource:widgetCopy];
  }

  return v6;
}

- (SBWidgetIcon)initWithWidgets:(id)widgets
{
  widgetsCopy = widgets;
  initWithUniqueLeafIdentifier = [(SBLeafIcon *)self initWithUniqueLeafIdentifier];
  v6 = initWithUniqueLeafIdentifier;
  if (initWithUniqueLeafIdentifier)
  {
    [(SBLeafIcon *)initWithUniqueLeafIdentifier addIconDataSources:widgetsCopy];
  }

  return v6;
}

- (SBWidgetIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d
{
  v7.receiver = self;
  v7.super_class = SBWidgetIcon;
  v4 = [(SBLeafIcon *)&v7 initWithLeafIdentifier:identifier applicationBundleID:d];
  v5 = v4;
  if (v4)
  {
    [(SBIcon *)v4 setGridSizeClass:@"SBHIconGridSizeClassSmall"];
    v5->_allowsSuggestions = 1;
    v5->_allowsExternalSuggestions = 1;
  }

  return v5;
}

- (id)firstWidgetPassingTest:(id)test
{
  testCopy = test;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SBWidgetIcon_firstWidgetPassingTest___block_invoke;
  v8[3] = &unk_1E8091200;
  v9 = testCopy;
  v5 = testCopy;
  v6 = [(SBLeafIcon *)self firstIconDataSourcePassingTest:v8];

  return v6;
}

uint64_t __39__SBWidgetIcon_firstWidgetPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBHWidget)activeWidget
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = activeDataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSArray)widgets
{
  v3 = objc_opt_self();
  v4 = [(SBLeafIcon *)self iconDataSourcesOfClass:v3];

  return v4;
}

- (id)_fallbackBestDataSource
{
  lastUserSelectedDataSource = [(SBWidgetIcon *)self lastUserSelectedDataSource];
  v4 = lastUserSelectedDataSource;
  if (lastUserSelectedDataSource)
  {
    _fallbackBestDataSource = lastUserSelectedDataSource;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBWidgetIcon;
    _fallbackBestDataSource = [(SBLeafIcon *)&v8 _fallbackBestDataSource];
  }

  v6 = _fallbackBestDataSource;

  return v6;
}

- (void)didChangeActiveDataSource:(id)source
{
  v14.receiver = self;
  v14.super_class = SBWidgetIcon;
  [(SBLeafIcon *)&v14 didChangeActiveDataSource:source];
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x1E696AEC0];
  iconDataSources = [(SBLeafIcon *)self iconDataSources];
  v8 = [iconDataSources count];
  v9 = v8;
  if (isKindOfClass)
  {
    logIdentifier = [activeDataSource logIdentifier];
    v11 = [v6 stringWithFormat:@"<SBHWidgetStack:%p count=%ld, activeWidget=%@>", self, v9, logIdentifier];
    logIdentifier = self->super.super._logIdentifier;
    self->super.super._logIdentifier = v11;
  }

  else
  {
    v13 = [v6 stringWithFormat:@"<SBHWidgetStack:%p count=%ld>", self, v8];
    logIdentifier = self->super.super._logIdentifier;
    self->super.super._logIdentifier = v13;
  }
}

- (void)didAddIconDataSource:(id)source
{
  v4.receiver = self;
  v4.super_class = SBWidgetIcon;
  [(SBLeafIcon *)&v4 didAddIconDataSource:source];
  [(SBIcon *)self archivableStateDidChange];
  [(SBWidgetIcon *)self setStackChangeReason:4];
}

- (void)didRemoveIconDataSource:(id)source
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SBWidgetIcon;
  sourceCopy = source;
  [(SBLeafIcon *)&v9 didRemoveIconDataSource:sourceCopy];
  lastUserSelectedDataSource = self->_lastUserSelectedDataSource;

  if (lastUserSelectedDataSource == sourceCopy)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SBIcon *)self uniqueIdentifier:v9.receiver];
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Clearing out last user selected data source for: %@", buf, 0xCu);
    }

    v8 = self->_lastUserSelectedDataSource;
    self->_lastUserSelectedDataSource = 0;
  }

  [(SBIcon *)self archivableStateDidChange:v9.receiver];
  [(SBWidgetIcon *)self setStackChangeReason:6];
}

- (void)didReplaceIconDataSource:(id)source withIconDataSource:(id)dataSource
{
  v15 = *MEMORY[0x1E69E9840];
  dataSourceCopy = dataSource;
  v12.receiver = self;
  v12.super_class = SBWidgetIcon;
  sourceCopy = source;
  [(SBLeafIcon *)&v12 didReplaceIconDataSource:sourceCopy withIconDataSource:dataSourceCopy];
  lastUserSelectedDataSource = self->_lastUserSelectedDataSource;

  if (lastUserSelectedDataSource == sourceCopy)
  {
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SBIcon *)self uniqueIdentifier:v12.receiver];
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Replacing last user selected data source for: %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_lastUserSelectedDataSource, dataSource);
  }

  [(SBIcon *)self archivableStateDidChange:v12.receiver];
  [(SBWidgetIcon *)self setStackChangeReason:6];
}

- (void)setLastUserSelectedDataSource:(id)source
{
  sourceCopy = source;
  if (self->_lastUserSelectedDataSource != sourceCopy)
  {
    v6 = sourceCopy;
    objc_storeStrong(&self->_lastUserSelectedDataSource, source);
    [(SBIcon *)self archivableStateDidChange];
    sourceCopy = v6;
  }
}

- (unint64_t)iconDataSourcesExcludingSuggestionsCount
{
  iconDataSources = [(SBLeafIcon *)self iconDataSources];
  v3 = [iconDataSources bs_filter:&__block_literal_global_73];

  v4 = [v3 count];
  return v4;
}

BOOL __56__SBWidgetIcon_iconDataSourcesExcludingSuggestionsCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) == 0 || [v2 suggestionSource] != 1;

  return v3;
}

- (id)supportedGridSizeClasses
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  iconDataSources = [(SBLeafIcon *)self iconDataSources];
  v4 = [iconDataSources countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {

LABEL_17:
    v6 = +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(iconDataSources);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        [v9 supportedGridSizeClassesForIcon:self];
      }

      else
      {
        +[SBHIconGridSizeClassSet gridSizeClassSetForAllNonDefaultGridSizeClasses];
      }
      v10 = ;
      v11 = v10;
      if (v6)
      {
        [v6 intersectGridSizeClassSet:v10];
      }

      else
      {
        v6 = [v10 mutableCopy];
      }
    }

    v5 = [iconDataSources countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v5);

  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v6;
}

- (BOOL)supportsConfiguration
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [activeDataSource iconSupportsConfiguration:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __44__SBWidgetIcon_firstSuggestedIconDataSource__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [v2 suggestionSource] == 1;

  return v3;
}

- (void)removeFirstSuggestedIconDataSource
{
  firstSuggestedIconDataSource = [(SBWidgetIcon *)self firstSuggestedIconDataSource];
  v4 = firstSuggestedIconDataSource;
  if (firstSuggestedIconDataSource)
  {
    v5 = firstSuggestedIconDataSource;
    firstSuggestedIconDataSource = [(SBLeafIcon *)self removeIconDataSource:firstSuggestedIconDataSource];
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](firstSuggestedIconDataSource, v4);
}

- (void)addFirstSuggestedWidget
{
  firstSuggestedWidget = [(SBWidgetIcon *)self firstSuggestedWidget];
  v3 = [firstSuggestedWidget copyWithSuggestionSource:0];
  [(SBLeafIcon *)self replaceIconDataSource:firstSuggestedWidget withIconDataSource:v3];
}

- (void)addDataSourcesFromWidgetIcons:(id)icons
{
  v26 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (activeDataSource)
  {
    iconDataSources = [(SBLeafIcon *)self iconDataSources];
    v7 = [iconDataSources indexOfObject:activeDataSource];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = iconsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        iconDataSources2 = [*(*(&v21 + 1) + 8 * i) iconDataSources];
        [array addObjectsFromArray:iconDataSources2];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    iconDataSourceCount = [(SBLeafIcon *)self iconDataSourceCount];
  }

  else
  {
    iconDataSourceCount = v7 + 1;
  }

  v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{iconDataSourceCount, objc_msgSend(array, "count")}];
  [(SBLeafIcon *)self insertIconDataSources:array atIndexes:v16];

  v17 = SBLogIcon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Activating data source due to icon insertion", v20, 2u);
  }

  firstObject = [v9 firstObject];
  activeDataSource2 = [firstObject activeDataSource];

  [(SBWidgetIcon *)self setStackChangeReason:4];
  [(SBLeafIcon *)self setActiveDataSource:activeDataSource2];
}

- (void)setAllowsSuggestions:(BOOL)suggestions
{
  if (self->_allowsSuggestions != suggestions)
  {
    self->_allowsSuggestions = suggestions;
    [(SBIcon *)self archivableStateDidChange];
  }
}

- (void)setAllowsExternalSuggestions:(BOOL)suggestions
{
  if (self->_allowsExternalSuggestions != suggestions)
  {
    self->_allowsExternalSuggestions = suggestions;
    [(SBIcon *)self archivableStateDidChange];
  }
}

- (void)_setPropertiesFromIcon:(id)icon
{
  iconCopy = icon;
  v9.receiver = self;
  v9.super_class = SBWidgetIcon;
  [(SBLeafIcon *)&v9 _setPropertiesFromIcon:iconCopy];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = iconCopy;
    -[SBWidgetIcon setAllowsSuggestions:](self, "setAllowsSuggestions:", [v7 allowsSuggestions]);
    allowsExternalSuggestions = [v7 allowsExternalSuggestions];

    [(SBWidgetIcon *)self setAllowsExternalSuggestions:allowsExternalSuggestions];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = SBWidgetIcon;
  result = [(SBLeafIcon *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 152) = self->_allowsSuggestions;
    *(result + 153) = self->_allowsExternalSuggestions;
  }

  return result;
}

- (id)copyWithUniqueLeafIdentifier
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v7.receiver = self;
  v7.super_class = SBWidgetIcon;
  v5 = [(SBLeafIcon *)&v7 copyWithLeafIdentifier:uUIDString];

  if (v5)
  {
    objc_storeStrong(v5 + 20, self->_lastUserSelectedDataSource);
    [v5 _updateActiveDataSource];
  }

  return v5;
}

- (id)copyWithSuggestionSource:(int64_t)source
{
  v35 = *MEMORY[0x1E69E9840];
  iconDataSources = [(SBLeafIcon *)self iconDataSources];
  v6 = [iconDataSources count];

  if (v6)
  {
    v7 = [(SBWidgetIcon *)self copy];
    gridSizeClass = [(SBIcon *)self gridSizeClass];
    [v7 setGridSizeClass:gridSizeClass];

    if (v7)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      widgets = [(SBWidgetIcon *)self widgets];
      v10 = [widgets countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(widgets);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = [v14 copyWithSuggestionSource:source];
            [v7 replaceIconDataSource:v14 withIconDataSource:v15];
          }

          v11 = [widgets countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v11);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = objc_opt_self();
      v17 = [(SBLeafIcon *)self iconDataSourcesOfClass:v16, 0];

      v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v25 + 1) + 8 * j);
            v23 = [v22 copyWithSuggestionSource:source];
            [v7 replaceIconDataSource:v22 withIconDataSource:v23];
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v19);
      }
    }

    return v7;
  }

  else
  {

    return [(SBWidgetIcon *)self copyWithUniqueLeafIdentifier];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBWidgetIcon;
  v4 = [(SBIcon *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    extensionBundleIdentifier = [activeDataSource extensionBundleIdentifier];
    v9 = @"widget";
  }

  else
  {
    if (!activeDataSource)
    {
      goto LABEL_6;
    }

    extensionBundleIdentifier = [activeDataSource icon:self displayNameForLocation:@"SBIconLocationNone"];
    v9 = @"fakeWidget";
  }

  [v4 appendString:extensionBundleIdentifier withName:v9];

LABEL_6:

  return v4;
}

- (BOOL)matchesWidgetIcon:(id)icon
{
  iconCopy = icon;
  leafIdentifier = [(SBLeafIcon *)self leafIdentifier];
  leafIdentifier2 = [iconCopy leafIdentifier];
  v7 = BSEqualObjects();

  if (v7 && (-[SBLeafIcon iconDataSources](self, "iconDataSources"), v8 = objc_claimAutoreleasedReturnValue(), [iconCopy iconDataSources], v9 = objc_claimAutoreleasedReturnValue(), v10 = BSEqualArrays(), v9, v8, v10) && (-[SBLeafIcon activeDataSource](self, "activeDataSource"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(iconCopy, "activeDataSource"), v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, v13) && (v14 = -[SBWidgetIcon allowsSuggestions](self, "allowsSuggestions"), v14 == objc_msgSend(iconCopy, "allowsSuggestions")) && (v15 = -[SBWidgetIcon allowsExternalSuggestions](self, "allowsExternalSuggestions"), v15 == objc_msgSend(iconCopy, "allowsExternalSuggestions")))
  {
    gridSizeClass = [(SBIcon *)self gridSizeClass];
    gridSizeClass2 = [iconCopy gridSizeClass];
    if (gridSizeClass == gridSizeClass2)
    {
      v16 = 1;
    }

    else
    {
      gridSizeClass3 = [(SBIcon *)self gridSizeClass];
      gridSizeClass4 = [iconCopy gridSizeClass];
      v16 = [gridSizeClass3 isEqualToString:gridSizeClass4];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (BOOL)_hasDataSourceThatIgnoresAllOtherDataSources
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  iconDataSources = [(SBLeafIcon *)self iconDataSources];
  v4 = [iconDataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(iconDataSources);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 iconShouldIgnoreOtherDataSources:self])
        {
          v9 = 1;
          goto LABEL_12;
        }
      }

      v5 = [iconDataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end