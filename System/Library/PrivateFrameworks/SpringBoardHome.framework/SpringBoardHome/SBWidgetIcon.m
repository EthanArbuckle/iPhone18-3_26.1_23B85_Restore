@interface SBWidgetIcon
- (BOOL)_hasDataSourceThatIgnoresAllOtherDataSources;
- (BOOL)matchesWidgetIcon:(id)a3;
- (BOOL)supportsConfiguration;
- (NSArray)widgets;
- (SBHWidget)activeWidget;
- (SBWidgetIcon)initWithCHSWidgetDescriptor:(id)a3;
- (SBWidgetIcon)initWithCHSWidgetDescriptor:(id)a3 inDomain:(id)a4;
- (SBWidgetIcon)initWithCHSWidgetDescriptors:(id)a3 suggestionSource:(int64_t)a4;
- (SBWidgetIcon)initWithCHSWidgetDescriptors:(id)a3 suggestionSource:(int64_t)a4 inDomain:(id)a5;
- (SBWidgetIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
- (SBWidgetIcon)initWithWidget:(id)a3;
- (SBWidgetIcon)initWithWidgetExtensionIdentifiers:(id)a3 widgetKinds:(id)a4 widgetContainerBundleIdentifiers:(id)a5 suggestionSource:(int64_t)a6;
- (SBWidgetIcon)initWithWidgets:(id)a3;
- (id)_fallbackBestDataSource;
- (id)copyWithSuggestionSource:(int64_t)a3;
- (id)copyWithUniqueLeafIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)firstWidgetPassingTest:(id)a3;
- (id)supportedGridSizeClasses;
- (unint64_t)iconDataSourcesExcludingSuggestionsCount;
- (void)_setPropertiesFromIcon:(id)a3;
- (void)addDataSourcesFromWidgetIcons:(id)a3;
- (void)addFirstSuggestedWidget;
- (void)didAddIconDataSource:(id)a3;
- (void)didChangeActiveDataSource:(id)a3;
- (void)didRemoveIconDataSource:(id)a3;
- (void)didReplaceIconDataSource:(id)a3 withIconDataSource:(id)a4;
- (void)removeFirstSuggestedIconDataSource;
- (void)setAllowsExternalSuggestions:(BOOL)a3;
- (void)setAllowsSuggestions:(BOOL)a3;
- (void)setLastUserSelectedDataSource:(id)a3;
@end

@implementation SBWidgetIcon

- (SBWidgetIcon)initWithCHSWidgetDescriptor:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(SBWidgetIcon *)self initWithCHSWidgetDescriptors:v6, v9, v10];
  return v7;
}

- (SBWidgetIcon)initWithCHSWidgetDescriptor:(id)a3 inDomain:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [(SBWidgetIcon *)self initWithCHSWidgetDescriptors:v9 inDomain:v7, v12, v13];
  return v10;
}

- (SBWidgetIcon)initWithCHSWidgetDescriptors:(id)a3 suggestionSource:(int64_t)a4
{
  v6 = a3;
  v7 = +[SBHIconGridSizeClassDomain globalDomain];
  v8 = [(SBWidgetIcon *)self initWithCHSWidgetDescriptors:v6 suggestionSource:a4 inDomain:v7];

  return v8;
}

- (SBWidgetIcon)initWithCHSWidgetDescriptors:(id)a3 suggestionSource:(int64_t)a4 inDomain:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(SBLeafIcon *)self initWithUniqueLeafIdentifier];
  if (v10)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v8;
    v11 = v8;
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

          v16 = [*(*(&v22 + 1) + 8 * v15) sbh_iconDataSourceInDomain:v9];
          if (v16)
          {
            v17 = v16;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (a4 && (isKindOfClass & 1) != 0)
            {
              v19 = [v17 copyWithSuggestionSource:a4];

              v17 = v19;
            }

            [(SBLeafIcon *)v10 addIconDataSource:v17];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v8 = v21;
  }

  return v10;
}

- (SBWidgetIcon)initWithWidgetExtensionIdentifiers:(id)a3 widgetKinds:(id)a4 widgetContainerBundleIdentifiers:(id)a5 suggestionSource:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SBLeafIcon *)self initWithUniqueLeafIdentifier];
  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __137__SBWidgetIcon_SBHCHSWidgetDescriptor__initWithWidgetExtensionIdentifiers_widgetKinds_widgetContainerBundleIdentifiers_suggestionSource___block_invoke;
    v15[3] = &unk_1E808A760;
    v16 = v11;
    v17 = v12;
    v19 = a6;
    v18 = v13;
    [v10 enumerateObjectsUsingBlock:v15];
  }

  return v13;
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

- (SBWidgetIcon)initWithWidget:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self initWithUniqueLeafIdentifier];
  v6 = v5;
  if (v5)
  {
    [(SBLeafIcon *)v5 addIconDataSource:v4];
  }

  return v6;
}

- (SBWidgetIcon)initWithWidgets:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self initWithUniqueLeafIdentifier];
  v6 = v5;
  if (v5)
  {
    [(SBLeafIcon *)v5 addIconDataSources:v4];
  }

  return v6;
}

- (SBWidgetIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBWidgetIcon;
  v4 = [(SBLeafIcon *)&v7 initWithLeafIdentifier:a3 applicationBundleID:a4];
  v5 = v4;
  if (v4)
  {
    [(SBIcon *)v4 setGridSizeClass:@"SBHIconGridSizeClassSmall"];
    v5->_allowsSuggestions = 1;
    v5->_allowsExternalSuggestions = 1;
  }

  return v5;
}

- (id)firstWidgetPassingTest:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SBWidgetIcon_firstWidgetPassingTest___block_invoke;
  v8[3] = &unk_1E8091200;
  v9 = v4;
  v5 = v4;
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
  v2 = [(SBLeafIcon *)self activeDataSource];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
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
  v3 = [(SBWidgetIcon *)self lastUserSelectedDataSource];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBWidgetIcon;
    v5 = [(SBLeafIcon *)&v8 _fallbackBestDataSource];
  }

  v6 = v5;

  return v6;
}

- (void)didChangeActiveDataSource:(id)a3
{
  v14.receiver = self;
  v14.super_class = SBWidgetIcon;
  [(SBLeafIcon *)&v14 didChangeActiveDataSource:a3];
  v4 = [(SBLeafIcon *)self activeDataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SBLeafIcon *)self iconDataSources];
  v8 = [v7 count];
  v9 = v8;
  if (isKindOfClass)
  {
    v10 = [v4 logIdentifier];
    v11 = [v6 stringWithFormat:@"<SBHWidgetStack:%p count=%ld, activeWidget=%@>", self, v9, v10];
    logIdentifier = self->super.super._logIdentifier;
    self->super.super._logIdentifier = v11;
  }

  else
  {
    v13 = [v6 stringWithFormat:@"<SBHWidgetStack:%p count=%ld>", self, v8];
    v10 = self->super.super._logIdentifier;
    self->super.super._logIdentifier = v13;
  }
}

- (void)didAddIconDataSource:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBWidgetIcon;
  [(SBLeafIcon *)&v4 didAddIconDataSource:a3];
  [(SBIcon *)self archivableStateDidChange];
  [(SBWidgetIcon *)self setStackChangeReason:4];
}

- (void)didRemoveIconDataSource:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SBWidgetIcon;
  v4 = a3;
  [(SBLeafIcon *)&v9 didRemoveIconDataSource:v4];
  lastUserSelectedDataSource = self->_lastUserSelectedDataSource;

  if (lastUserSelectedDataSource == v4)
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

- (void)didReplaceIconDataSource:(id)a3 withIconDataSource:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBWidgetIcon;
  v8 = a3;
  [(SBLeafIcon *)&v12 didReplaceIconDataSource:v8 withIconDataSource:v7];
  lastUserSelectedDataSource = self->_lastUserSelectedDataSource;

  if (lastUserSelectedDataSource == v8)
  {
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SBIcon *)self uniqueIdentifier:v12.receiver];
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Replacing last user selected data source for: %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_lastUserSelectedDataSource, a4);
  }

  [(SBIcon *)self archivableStateDidChange:v12.receiver];
  [(SBWidgetIcon *)self setStackChangeReason:6];
}

- (void)setLastUserSelectedDataSource:(id)a3
{
  v5 = a3;
  if (self->_lastUserSelectedDataSource != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lastUserSelectedDataSource, a3);
    [(SBIcon *)self archivableStateDidChange];
    v5 = v6;
  }
}

- (unint64_t)iconDataSourcesExcludingSuggestionsCount
{
  v2 = [(SBLeafIcon *)self iconDataSources];
  v3 = [v2 bs_filter:&__block_literal_global_73];

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
  v3 = [(SBLeafIcon *)self iconDataSources];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v3);
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

    v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconSupportsConfiguration:self];
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
  v3 = [(SBWidgetIcon *)self firstSuggestedIconDataSource];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v3 = [(SBLeafIcon *)self removeIconDataSource:v3];
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)addFirstSuggestedWidget
{
  v4 = [(SBWidgetIcon *)self firstSuggestedWidget];
  v3 = [v4 copyWithSuggestionSource:0];
  [(SBLeafIcon *)self replaceIconDataSource:v4 withIconDataSource:v3];
}

- (void)addDataSourcesFromWidgetIcons:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBLeafIcon *)self activeDataSource];
  if (v5)
  {
    v6 = [(SBLeafIcon *)self iconDataSources];
    v7 = [v6 indexOfObject:v5];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v4;
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

        v14 = [*(*(&v21 + 1) + 8 * i) iconDataSources];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(SBLeafIcon *)self iconDataSourceCount];
  }

  else
  {
    v15 = v7 + 1;
  }

  v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v15, objc_msgSend(v8, "count")}];
  [(SBLeafIcon *)self insertIconDataSources:v8 atIndexes:v16];

  v17 = SBLogIcon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Activating data source due to icon insertion", v20, 2u);
  }

  v18 = [v9 firstObject];
  v19 = [v18 activeDataSource];

  [(SBWidgetIcon *)self setStackChangeReason:4];
  [(SBLeafIcon *)self setActiveDataSource:v19];
}

- (void)setAllowsSuggestions:(BOOL)a3
{
  if (self->_allowsSuggestions != a3)
  {
    self->_allowsSuggestions = a3;
    [(SBIcon *)self archivableStateDidChange];
  }
}

- (void)setAllowsExternalSuggestions:(BOOL)a3
{
  if (self->_allowsExternalSuggestions != a3)
  {
    self->_allowsExternalSuggestions = a3;
    [(SBIcon *)self archivableStateDidChange];
  }
}

- (void)_setPropertiesFromIcon:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBWidgetIcon;
  [(SBLeafIcon *)&v9 _setPropertiesFromIcon:v4];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = v4;
    -[SBWidgetIcon setAllowsSuggestions:](self, "setAllowsSuggestions:", [v7 allowsSuggestions]);
    v8 = [v7 allowsExternalSuggestions];

    [(SBWidgetIcon *)self setAllowsExternalSuggestions:v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = SBWidgetIcon;
  result = [(SBLeafIcon *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 152) = self->_allowsSuggestions;
    *(result + 153) = self->_allowsExternalSuggestions;
  }

  return result;
}

- (id)copyWithUniqueLeafIdentifier
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v7.receiver = self;
  v7.super_class = SBWidgetIcon;
  v5 = [(SBLeafIcon *)&v7 copyWithLeafIdentifier:v4];

  if (v5)
  {
    objc_storeStrong(v5 + 20, self->_lastUserSelectedDataSource);
    [v5 _updateActiveDataSource];
  }

  return v5;
}

- (id)copyWithSuggestionSource:(int64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [(SBLeafIcon *)self iconDataSources];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(SBWidgetIcon *)self copy];
    v8 = [(SBIcon *)self gridSizeClass];
    [v7 setGridSizeClass:v8];

    if (v7)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v9 = [(SBWidgetIcon *)self widgets];
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = [v14 copyWithSuggestionSource:a3];
            [v7 replaceIconDataSource:v14 withIconDataSource:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            v23 = [v22 copyWithSuggestionSource:a3];
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBWidgetIcon;
  v4 = [(SBIcon *)&v11 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBLeafIcon *)self activeDataSource];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 extensionBundleIdentifier];
    v9 = @"widget";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v8 = [v5 icon:self displayNameForLocation:@"SBIconLocationNone"];
    v9 = @"fakeWidget";
  }

  [v4 appendString:v8 withName:v9];

LABEL_6:

  return v4;
}

- (BOOL)matchesWidgetIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self leafIdentifier];
  v6 = [v4 leafIdentifier];
  v7 = BSEqualObjects();

  if (v7 && (-[SBLeafIcon iconDataSources](self, "iconDataSources"), v8 = objc_claimAutoreleasedReturnValue(), [v4 iconDataSources], v9 = objc_claimAutoreleasedReturnValue(), v10 = BSEqualArrays(), v9, v8, v10) && (-[SBLeafIcon activeDataSource](self, "activeDataSource"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "activeDataSource"), v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, v13) && (v14 = -[SBWidgetIcon allowsSuggestions](self, "allowsSuggestions"), v14 == objc_msgSend(v4, "allowsSuggestions")) && (v15 = -[SBWidgetIcon allowsExternalSuggestions](self, "allowsExternalSuggestions"), v15 == objc_msgSend(v4, "allowsExternalSuggestions")))
  {
    v18 = [(SBIcon *)self gridSizeClass];
    v19 = [v4 gridSizeClass];
    if (v18 == v19)
    {
      v16 = 1;
    }

    else
    {
      v20 = [(SBIcon *)self gridSizeClass];
      v21 = [v4 gridSizeClass];
      v16 = [v20 isEqualToString:v21];
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
  v3 = [(SBLeafIcon *)self iconDataSources];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 iconShouldIgnoreOtherDataSources:self])
        {
          v9 = 1;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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