@interface SBLeafIcon
+ (id)formattedBadgeNumberOrString:(id)a3;
+ (id)iconImageForDataSource:(id)a3 ofIcon:(id)a4 info:(SBIconImageInfo *)a5;
+ (id)iconLayerForDataSource:(id)a3 ofIcon:(id)a4 info:(SBIconImageInfo *)a5 traitCollection:(id)a6 options:(unint64_t)a7;
- (BOOL)canGenerateIconsInBackground;
- (BOOL)canTightenLabel;
- (BOOL)canTruncateLabel;
- (BOOL)hasIconImage;
- (BOOL)hasObserver:(id)a3;
- (BOOL)isIconImageCachedWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (BOOL)isIconImageHandledInternallyWithIconServices;
- (BOOL)isLaunchDisabledForObscuredReason;
- (BOOL)isLaunchEnabled;
- (BOOL)isProgressPaused;
- (BOOL)isTimedOut;
- (BOOL)isUninstallSupported;
- (BOOL)performLaunchFromLocation:(id)a3 context:(id)a4;
- (BOOL)supportsIconLayers;
- (BOOL)supportsRasterization;
- (NSString)sbh_iconLibraryItemIdentifier;
- (SBLeafIcon)init;
- (SBLeafIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
- (SBLeafIcon)initWithUniqueLeafIdentifier;
- (SBLeafIconDataSource)_bestDataSource;
- (SBLeafIconDataSource)_fallbackBestDataSource;
- (double)progressPercent;
- (id)accessoryTextForLocation:(id)a3;
- (id)applicationBundleIdentifierForImage;
- (id)badgeNumberOrString;
- (id)copyWithLeafIdentifier:(id)a3;
- (id)customLoadingIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)dataSourceIconServicesIconForImage;
- (id)displayNameForLocation:(id)a3;
- (id)displayNameForObscuredDisabledLaunchForLocation:(id)a3;
- (id)firstIconDataSourceOfClass:(Class)a3;
- (id)firstIconDataSourcePassingTest:(id)a3;
- (id)firstIconDataSourceWithUniqueIdentifier:(id)a3;
- (id)folderFallbackTitle;
- (id)folderTitleOptions;
- (id)genericIconImageWithInfo:(SBIconImageInfo *)a3;
- (id)iTunesCategoriesOrderedByRelevancy;
- (id)iconDataSourcesOfClass:(Class)a3;
- (id)iconServicesIconForImage;
- (id)iconTypeIdentifierForImage;
- (id)loadingIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (id)statusDescriptionForLocation:(id)a3;
- (id)supportedGridSizeClasses;
- (id)tags;
- (int64_t)accessoryTypeForLocation:(id)a3;
- (int64_t)labelAccessoryType;
- (int64_t)progressState;
- (unint64_t)indexOfActiveDataSource;
- (void)_noteActiveDataSourceDidChangeAndReloadIcon:(BOOL)a3;
- (void)_noteActiveDataSourceDidChangeNotification:(id)a3;
- (void)_noteActiveDataSourceDidGenerateImageNotification:(id)a3;
- (void)_noteActiveDataSourceProgressDidChangeNotification:(id)a3;
- (void)_noteDataSourceDidInvalidateNotification:(id)a3;
- (void)_setPropertiesFromIcon:(id)a3;
- (void)_updateActiveDataSource;
- (void)addIconDataSource:(id)a3;
- (void)addIconDataSources:(id)a3;
- (void)addObserver:(id)a3;
- (void)completeUninstall;
- (void)dealloc;
- (void)didChangeActiveDataSource:(id)a3;
- (void)didReplaceIconDataSource:(id)a3 withIconDataSource:(id)a4;
- (void)enumerateObserversUsingBlock:(id)a3;
- (void)insertIconDataSource:(id)a3 beforeIconDataSource:(id)a4;
- (void)insertIconDataSources:(id)a3 atIndexes:(id)a4;
- (void)notifyObserversOfAddedIconDataSource:(id)a3;
- (void)notifyObserversOfRemovedIconDataSource:(id)a3;
- (void)performCoalescedDataSourceUpdate:(id)a3;
- (void)prepareImageLoadContext:(id)a3;
- (void)removeAllIconDataSources;
- (void)removeIconDataSource:(id)a3;
- (void)removeIconDataSourcesOfClass:(Class)a3;
- (void)removeIconDataSourcesPassingTest:(id)a3;
- (void)removeObserver:(id)a3;
- (void)replaceIconDataSource:(id)a3 withIconDataSource:(id)a4;
- (void)selectNextActiveDataSource;
- (void)setActiveDataSource:(id)a3;
- (void)setUninstalled;
@end

@implementation SBLeafIcon

- (BOOL)supportsIconLayers
{
  if ([(SBLeafIcon *)self isIconImageHandledInternallyWithIconServices])
  {
    return 1;
  }

  v4 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v3 = 1;
  }

  else
  {
    v5 = [(SBLeafIcon *)self methodForSelector:sel_makeIconLayerWithInfo_traitCollection_context_options_];
    v3 = v5 != [SBLeafIcon instanceMethodForSelector:sel_makeIconLayerWithInfo_traitCollection_context_options_];
  }

  return v3;
}

- (BOOL)isTimedOut
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(SBLeafIcon *)self activeDataSource];
  v6 = [v5 isTimedOutForIcon:self];

  return v6;
}

- (id)tags
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 tagsForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 tags];
  }

  v5 = v4;

  return v5;
}

- (id)applicationBundleIdentifierForImage
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 applicationBundleIdentifierForImageForIcon:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canGenerateIconsInBackground
{
  if ([(SBLeafIcon *)self isIconImageHandledInternallyWithIconServices])
  {
    return 1;
  }

  v4 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 canGenerateIconsInBackgroundForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v5 = [(SBIcon *)&v7 canGenerateIconsInBackground];
  }

  v3 = v5;

  return v3;
}

- (int64_t)progressState
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 progressStateForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 progressState];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isProgressPaused
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isProgressPausedForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 isProgressPaused];
  }

  v5 = v4;

  return v5;
}

- (double)progressPercent
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    [v3 progressPercentForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    [(SBIcon *)&v7 progressPercent];
  }

  v5 = v4;

  return v5;
}

- (id)badgeNumberOrString
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  v4 = [(SBIcon *)self overrideBadgeNumberOrString];

  if (v4)
  {
    v5 = [(SBIcon *)self overrideBadgeNumberOrString];
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [v3 badgeNumberOrStringForIcon:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBLeafIcon;
    v5 = [(SBIcon *)&v8 badgeNumberOrString];
  }

  v6 = v5;
  if ([(SBLeafIcon *)self isTimedOut])
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![v6 integerValue])
    {
LABEL_7:

      v6 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 isEqualToString:&stru_1F3D472A8])
    {
      goto LABEL_7;
    }
  }

  return v6;
}

- (BOOL)isLaunchEnabled
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconAllowsLaunch:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isLaunchDisabledForObscuredReason
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconDisallowsLaunchForObscuredReason:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)labelAccessoryType
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 labelAccessoryTypeForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 labelAccessoryType];
  }

  v5 = v4;

  return v5;
}

- (BOOL)canTruncateLabel
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconCanTruncateLabel:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 canTruncateLabel];
  }

  v5 = v4;

  return v5;
}

- (BOOL)canTightenLabel
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconCanTightenLabel:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 canTightenLabel];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isUninstallSupported
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconSupportsUninstall:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (SBLeafIconDataSource)_fallbackBestDataSource
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NSMutableOrderedSet *)self->_dataSources count]> 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = self->_dataSources;
    v4 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v3 = 0;
      v6 = *v16;
      v7 = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = self;
          if (objc_opt_respondsToSelector())
          {
            v11 = [v9 priorityForIcon:v10];
          }

          else
          {
            v11 = 1;
          }

          if (!v3 || v11 > v7)
          {
            v12 = v9;

            v7 = v11;
            v3 = v12;
          }
        }

        v5 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [(NSMutableOrderedSet *)self->_dataSources firstObject];
  }

  return v3;
}

- (void)_updateActiveDataSource
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self->_coalescedDataSourceUpdates)
  {
    v3 = [(SBLeafIcon *)self _bestDataSource];
    if (v3 != self->_activeDataSource)
    {
      v4 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
      v5 = self->_activeDataSource;
      if (self->_activeDataSource)
      {
        [v4 removeObserver:self name:@"SBLeafIconDataSourceDidChangeNotification" object:?];
        [v4 removeObserver:self name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self->_activeDataSource];
        [v4 removeObserver:self name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self->_activeDataSource];
        activeDataSource = self->_activeDataSource;
        self->_activeDataSource = 0;
      }

      if (v3)
      {
        v7 = SBLogIcon();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

        v9 = SBLogIcon();
        v10 = v9;
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            logIdentifier = self->super._logIdentifier;
            v12 = self->_activeDataSource;
            v17 = 138544130;
            v18 = logIdentifier;
            v19 = 2112;
            v20 = v12;
            v21 = 2112;
            v22 = v3;
            v23 = 2112;
            v24 = self;
            _os_log_debug_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEBUG, "<%{public}@> Changing active data source from %@ to %@: %@", &v17, 0x2Au);
          }
        }

        else
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = self->super._logIdentifier;
            v17 = 138543618;
            v18 = v13;
            v19 = 2112;
            v20 = self;
            _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> Changing active data source: %@", &v17, 0x16u);
          }

          v10 = SBLogIcon();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v14 = self->super._logIdentifier;
            v15 = SBHUniqueIdentifierOfDataSource(v5);
            v16 = SBHUniqueIdentifierOfDataSource(v3);
            v17 = 138543874;
            v18 = v14;
            v19 = 2114;
            v20 = v15;
            v21 = 2114;
            v22 = v16;
            _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> Changing from data souce: %{public}@ to data source:%{public}@.", &v17, 0x20u);
          }
        }

        objc_storeStrong(&self->_activeDataSource, v3);
        [v4 addObserver:self selector:sel__noteActiveDataSourceDidChangeNotification_ name:@"SBLeafIconDataSourceDidChangeNotification" object:self->_activeDataSource];
        [v4 addObserver:self selector:sel__noteActiveDataSourceProgressDidChangeNotification_ name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self->_activeDataSource];
        [v4 addObserver:self selector:sel__noteActiveDataSourceDidGenerateImageNotification_ name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self->_activeDataSource];
      }

      [(SBLeafIcon *)self didChangeActiveDataSource:v5];
      [(SBLeafIcon *)self _noteActiveDataSourceDidChangeAndReloadIcon:1];
    }
  }
}

- (SBLeafIconDataSource)_bestDataSource
{
  manuallySetDataSource = self->_manuallySetDataSource;
  if (manuallySetDataSource)
  {
    v3 = manuallySetDataSource;
  }

  else
  {
    v3 = [(SBLeafIcon *)self _fallbackBestDataSource];
  }

  return v3;
}

- (SBLeafIcon)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(SBLeafIcon *)self initWithLeafIdentifier:v4 applicationBundleID:0];

  return v5;
}

- (SBLeafIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SBLeafIcon;
  v8 = [(SBIcon *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    leafIdentifier = v8->_leafIdentifier;
    v8->_leafIdentifier = v9;

    v11 = [v7 copy];
    applicationBundleID = v8->_applicationBundleID;
    v8->_applicationBundleID = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    dataSources = v8->_dataSources;
    v8->_dataSources = v13;

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SBLeafIcon:%p [%@]>", v8, v7];
    logIdentifier = v8->super._logIdentifier;
    v8->super._logIdentifier = v15;
  }

  return v8;
}

- (SBLeafIcon)initWithUniqueLeafIdentifier
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(SBLeafIcon *)self initWithLeafIdentifier:v4 applicationBundleID:0];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [v3 removeObserver:self name:@"SBLeafIconDataSourceDidChangeNotification" object:0];
  [v3 removeObserver:self name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:0];
  [v3 removeObserver:self name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:0];
  [v3 removeObserver:self name:@"SBLeafIconDataSourceDidInvalidateNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBLeafIcon;
  [(SBLeafIcon *)&v4 dealloc];
}

- (id)copyWithLeafIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLeafIdentifier:v4 applicationBundleID:self->_applicationBundleID];
  [v5 _setPropertiesFromIcon:self];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_dataSources;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addIconDataSource:{*(*(&v12 + 1) + 8 * v10++), v12}];
      }

      while (v8 != v10);
      v8 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_setPropertiesFromIcon:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBLeafIcon;
  [(SBIcon *)&v7 _setPropertiesFromIcon:v4];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_storeStrong(&self->_dataSourceAtUninstallation, v4[16]);
  }
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBLeafIcon;
  [(SBIcon *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBLeafIcon;
  [(SBIcon *)&v3 removeObserver:a3];
}

- (BOOL)hasObserver:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBLeafIcon;
  return [(SBIcon *)&v4 hasObserver:a3];
}

- (void)enumerateObserversUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__SBLeafIcon_enumerateObserversUsingBlock___block_invoke;
    v7[3] = &unk_1E808E758;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = SBLeafIcon;
    [(SBIcon *)&v6 enumerateObserversUsingBlock:v7];
  }
}

- (void)performCoalescedDataSourceUpdate:(id)a3
{
  ++self->_coalescedDataSourceUpdates;
  (*(a3 + 2))(a3, a2);
  v4 = self->_coalescedDataSourceUpdates - 1;
  self->_coalescedDataSourceUpdates = v4;
  if (!v4)
  {

    [(SBLeafIcon *)self _updateActiveDataSource];
  }
}

- (void)didChangeActiveDataSource:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SBLeafIcon_didChangeActiveDataSource___block_invoke;
  v6[3] = &unk_1E808E780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBLeafIcon *)self enumerateObserversUsingBlock:v6];
}

void __40__SBLeafIcon_didChangeActiveDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 leafIcon:*(a1 + 32) didChangeActiveDataSource:*(a1 + 40)];
  }
}

- (void)setActiveDataSource:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableOrderedSet *)self->_dataSources containsObject:v4]& 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't set an active data source with a data source that isn't in the list" userInfo:0];
    objc_exception_throw(v6);
  }

  manuallySetDataSource = self->_manuallySetDataSource;
  self->_manuallySetDataSource = v4;

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)selectNextActiveDataSource
{
  v6 = [(SBLeafIcon *)self iconDataSources];
  v3 = [(SBLeafIcon *)self activeDataSource];
  v4 = [v6 indexOfObject:v3] + 1;
  if (v4 >= [v6 count])
  {
    [v6 firstObject];
  }

  else
  {
    [v6 objectAtIndex:v4];
  }
  v5 = ;
  [(SBLeafIcon *)self setActiveDataSource:v5];
}

- (unint64_t)indexOfActiveDataSource
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (v3)
  {
    v4 = [(NSMutableOrderedSet *)self->_dataSources indexOfObject:v3];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)addIconDataSource:(id)a3
{
  v5 = a3;
  if (v5 && ([(NSMutableOrderedSet *)self->_dataSources containsObject:v5]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_dataSources addObject:v5];
    [(SBLeafIcon *)self didAddIconDataSource:v5];
    v4 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [v4 addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v5];
  }

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)addIconDataSources:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v9 && ([(NSMutableOrderedSet *)self->_dataSources containsObject:*(*(&v11 + 1) + 8 * i)]& 1) == 0)
        {
          [(NSMutableOrderedSet *)self->_dataSources addObject:v9];
          [(SBLeafIcon *)self didAddIconDataSource:v9];
          v10 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
          [v10 addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)insertIconDataSource:(id)a3 beforeIconDataSource:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 && ([(NSMutableOrderedSet *)self->_dataSources containsObject:v9]& 1) == 0)
  {
    if (!v6 || (v7 = [(NSMutableOrderedSet *)self->_dataSources indexOfObject:v6], v7 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v7 = 0;
    }

    [(NSMutableOrderedSet *)self->_dataSources insertObject:v9 atIndex:v7];
    [(SBLeafIcon *)self didAddIconDataSource:v9];
    v8 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [v8 addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v9];
  }

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)insertIconDataSources:(id)a3 atIndexes:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableOrderedSet *)self->_dataSources copy];
  v16 = v7;
  [(NSMutableOrderedSet *)self->_dataSources insertObjects:v6 atIndexes:v7];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([v8 containsObject:v14] & 1) == 0)
        {
          [(SBLeafIcon *)self didAddIconDataSource:v14];
          v15 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
          [v15 addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)removeIconDataSource:(id)a3
{
  v8 = a3;
  if (([(NSMutableOrderedSet *)self->_dataSources containsObject:?]& 1) != 0)
  {
    v4 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [v4 removeObserver:self name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v8];
    [(NSMutableOrderedSet *)self->_dataSources removeObject:v8];
    v5 = v8;
    if (self->_activeDataSource == v8)
    {
      [v4 removeObserver:self name:@"SBLeafIconDataSourceDidChangeNotification" object:?];
      [v4 removeObserver:self name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self->_activeDataSource];
      [v4 removeObserver:self name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self->_activeDataSource];
      activeDataSource = self->_activeDataSource;
      self->_activeDataSource = 0;

      v5 = v8;
    }

    manuallySetDataSource = self->_manuallySetDataSource;
    if (manuallySetDataSource == v5)
    {
      self->_manuallySetDataSource = 0;

      v5 = v8;
    }

    [(SBLeafIcon *)self didRemoveIconDataSource:v5];
  }

  if (!self->_activeDataSource)
  {
    [(SBLeafIcon *)self _updateActiveDataSource];
  }
}

- (void)removeIconDataSourcesOfClass:(Class)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableOrderedSet *)self->_dataSources copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_isKindOfClass())
        {
          [(SBLeafIcon *)self removeIconDataSource:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)removeIconDataSourcesPassingTest:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableOrderedSet *)self->_dataSources copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v10))
        {
          [(SBLeafIcon *)self removeIconDataSource:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)removeAllIconDataSources
{
  for (i = self; [(SBLeafIcon *)self iconDataSourceCount]; self = i)
  {
    v3 = [(SBLeafIcon *)i firstIconDataSource];
    if (!v3)
    {
      break;
    }

    v4 = v3;
    [(SBLeafIcon *)i removeIconDataSource:v3];
  }
}

- (void)replaceIconDataSource:(id)a3 withIconDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7 && ([(NSMutableOrderedSet *)self->_dataSources containsObject:v7]& 1) == 0 && [(NSMutableOrderedSet *)self->_dataSources containsObject:v6])
  {
    v9 = [(SBLeafIcon *)self activeDataSource];

    v10 = [(NSMutableOrderedSet *)self->_dataSources indexOfObject:v6];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    [(NSMutableOrderedSet *)self->_dataSources insertObject:v8 atIndex:v11];
    v12 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [v12 addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v8];
    [v12 removeObserver:self name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v6];
    [(NSMutableOrderedSet *)self->_dataSources removeObject:v6];
    if (self->_activeDataSource == v6)
    {
      [v12 removeObserver:self name:@"SBLeafIconDataSourceDidChangeNotification" object:?];
      [v12 removeObserver:self name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self->_activeDataSource];
      [v12 removeObserver:self name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self->_activeDataSource];
      activeDataSource = self->_activeDataSource;
      self->_activeDataSource = 0;
    }

    manuallySetDataSource = self->_manuallySetDataSource;
    if (manuallySetDataSource == v6)
    {
      self->_manuallySetDataSource = 0;
    }

    [(SBLeafIcon *)self didReplaceIconDataSource:v6 withIconDataSource:v8];
    if (v9 == v6)
    {
      v15 = SBLogIcon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "Activating data source due to icon replacement", v16, 2u);
      }

      [(SBLeafIcon *)self setActiveDataSource:v8];
    }
  }

  if (!self->_activeDataSource)
  {
    [(SBLeafIcon *)self _updateActiveDataSource];
  }
}

- (void)notifyObserversOfAddedIconDataSource:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBLeafIcon_notifyObserversOfAddedIconDataSource___block_invoke;
  v6[3] = &unk_1E808E780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBLeafIcon *)self enumerateObserversUsingBlock:v6];
}

void __51__SBLeafIcon_notifyObserversOfAddedIconDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 leafIcon:*(a1 + 32) didAddIconDataSource:*(a1 + 40)];
  }
}

- (void)notifyObserversOfRemovedIconDataSource:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SBLeafIcon_notifyObserversOfRemovedIconDataSource___block_invoke;
  v6[3] = &unk_1E808E780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBLeafIcon *)self enumerateObserversUsingBlock:v6];
}

void __53__SBLeafIcon_notifyObserversOfRemovedIconDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 leafIcon:*(a1 + 32) didRemoveIconDataSource:*(a1 + 40)];
  }
}

- (void)didReplaceIconDataSource:(id)a3 withIconDataSource:(id)a4
{
  v6 = a4;
  [(SBLeafIcon *)self notifyObserversOfRemovedIconDataSource:a3];
  [(SBLeafIcon *)self notifyObserversOfAddedIconDataSource:v6];
}

- (id)iconDataSourcesOfClass:(Class)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_dataSources;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)firstIconDataSourceOfClass:(Class)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_dataSources;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)firstIconDataSourceWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SBLeafIcon_firstIconDataSourceWithUniqueIdentifier___block_invoke;
  v8[3] = &unk_1E808E7A8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBLeafIcon *)self firstIconDataSourcePassingTest:v8];

  return v6;
}

uint64_t __54__SBLeafIcon_firstIconDataSourceWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 uniqueIdentifier];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)firstIconDataSourcePassingTest:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_dataSources;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_noteActiveDataSourceDidChangeAndReloadIcon:(BOOL)a3
{
  v3 = a3;
  [(SBIcon *)self _notifyAccessoriesDidUpdate];
  [(SBIcon *)self _notifyLaunchEnabledDidChange];
  [(SBIcon *)self _notifyProgressDidChange];
  if (v3)
  {

    [(SBIcon *)self reloadIconImage];
  }
}

- (void)_noteActiveDataSourceDidChangeNotification:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 134218754;
    v11 = self;
    v12 = 2114;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@ Data source did change: %@ (%{public}@)", &v10, 0x2Au);
  }

  [(SBLeafIcon *)self _noteActiveDataSourceDidChangeAndReloadIcon:0];
}

- (void)_noteActiveDataSourceProgressDidChangeNotification:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 134218754;
    v11 = self;
    v12 = 2114;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "%p-%{public}@ Data source progress did change: %@ (%{public}@)", &v10, 0x2Au);
  }

  [(SBLeafIcon *)self _noteActiveDataSourceProgressDidChange];
}

- (void)_noteActiveDataSourceDidGenerateImageNotification:(id)a3
{
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SBLeafIcon *)self _noteActiveDataSourceDidGenerateImageNotification:v4, v5, v6, v7, v8, v9, v10];
  }

  [(SBIcon *)self reloadIconImage];
}

- (void)_noteDataSourceDidInvalidateNotification:(id)a3
{
  v4 = [a3 object];
  [(SBLeafIcon *)self removeIconDataSource:v4];
}

- (id)iconTypeIdentifierForImage
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconTypeIdentifierForImageForIcon:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataSourceIconServicesIconForImage
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconServicesIconForImageForIcon:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)iconServicesIconForImage
{
  v3 = [(SBLeafIcon *)self applicationBundleIdentifierForImage];
  if (!v3 || (v4 = v3, v5 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v3], v4, !v5))
  {
    v6 = [(SBLeafIcon *)self iconTypeIdentifierForImage];
    if (!v6 || (v7 = v6, v8 = objc_alloc(MEMORY[0x1E69A8A00]), v5 = [v8 initWithTypeIdentifier:v7 layerGroups:MEMORY[0x1E695E0F0]], v7, !v5))
    {
      v5 = [(SBLeafIcon *)self dataSourceIconServicesIconForImage];
    }
  }

  return v5;
}

- (BOOL)isIconImageHandledInternallyWithIconServices
{
  v2 = [(SBLeafIcon *)self iconServicesIconForImage];
  v3 = v2 != 0;

  return v3;
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = a4;
  v19 = [v18 objectForKey:@"SBHIconServicesIcon"];
  if (v19)
  {
    v20 = SBHIconServicesOptionsForImageOptions(a5);
    v21 = SBHGetIconImageWithTraitCollection(v19, v17, v20, v15, v14, v13);
    goto LABEL_18;
  }

  v22 = [v18 objectForKey:@"SBHActiveDataSource"];
  if (!v22)
  {
    v23 = SBLogIcon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(SBLeafIcon *)self makeIconImageWithInfo:v23 traitCollection:v24 context:v25 options:v26, v27, v28, v29];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v30 = [v22 icon:self imageWithInfo:v17 traitCollection:a5 options:{v15, v14, v13, v12}];
    goto LABEL_9;
  }

  if ((a5 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v30 = [v22 icon:self unmaskedImageWithInfo:{v15, v14, v13, v12}];
      goto LABEL_9;
    }

LABEL_16:
    v32.receiver = self;
    v32.super_class = SBLeafIcon;
    v21 = [(SBIcon *)&v32 makeIconImageWithInfo:v17 traitCollection:v18 context:a5 options:v15, v14, v13, v12];
    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_16;
  }

  v30 = [v22 icon:self imageWithInfo:{v15, v14, v13, v12}];
LABEL_9:
  v21 = v30;
  if (!v30)
  {
    goto LABEL_16;
  }

LABEL_17:

LABEL_18:

  return v21;
}

- (BOOL)hasIconImage
{
  if ([(SBLeafIcon *)self supportsIconLayers])
  {
    return 1;
  }

  v4 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v3 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBLeafIcon;
    v3 = [(SBIcon *)&v6 hasIconImage];
  }

  return v3;
}

- (BOOL)isIconImageCachedWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v13 = a3;
  v14 = [(SBLeafIcon *)self iconServicesIconForImage];
  if (v14)
  {
    v15 = SBHIconServicesOptionsForImageOptions(v8);
    v16 = SBHImageDescriptorWithTraitCollection(v13, v15, v11, v10, v9);
    v17 = SBHIconServicesImageForDescriptor(v14, v16, v15 | 2);
    v18 = [v17 CGImage] != 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)prepareImageLoadContext:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBLeafIcon;
  [(SBIcon *)&v7 prepareImageLoadContext:v4];
  v5 = [(SBLeafIcon *)self iconServicesIconForImage];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"SBHIconServicesIcon"];
  }

  v6 = [(SBLeafIcon *)self activeDataSource];
  if (v6)
  {
    [v4 setObject:v6 forKey:@"SBHActiveDataSource"];
  }
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = a4;
  v19 = [v18 objectForKey:@"SBHIconServicesIcon"];
  if (v19)
  {
    v20 = SBHIconServicesOptionsForImageOptions(a5);
    v21 = SBHGetIconLayerWithTraitCollection(v19, v17, v20, v15, v14, v13);
  }

  else
  {
    v22 = [v18 objectForKey:@"SBHActiveDataSource"];
    if (!v22)
    {
      v23 = SBLogIcon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [(SBLeafIcon *)self makeIconImageWithInfo:v23 traitCollection:v24 context:v25 options:v26, v27, v28, v29];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [v22 icon:self layerWithInfo:v17 traitCollection:a5 options:{v15, v14, v13, v12}];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)genericIconImageWithInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v12 = [(SBLeafIcon *)self activeDataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v12 icon:self defaultImageWithInfo:{v10, v9, v8, v7}], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15.receiver = self;
    v15.super_class = SBLeafIcon;
    v13 = [(SBIcon *)&v15 genericIconImageWithInfo:v10, v9, v8, v7];
  }

  return v13;
}

- (id)loadingIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v15];
  if (([v16 hasGlass] & 1) != 0 || (-[SBLeafIcon customLoadingIconImageWithInfo:traitCollection:options:](self, "customLoadingIconImageWithInfo:traitCollection:options:", v15, a4, v13, v12, v11, v10), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v19.receiver = self;
    v19.super_class = SBLeafIcon;
    v17 = [(SBIcon *)&v19 loadingIconImageWithInfo:v15 traitCollection:a4 options:v13, v12, v11, v10];
  }

  return v17;
}

- (id)customLoadingIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v13 = a3;
  v14 = SBHIconServicesOptionsForImageOptions(v8);
  v15 = [(SBLeafIcon *)self iconServicesIconForImage];
  v16 = v15;
  if (v15)
  {
    v17 = SBHGetIconImageWithTraitCollection(v15, v13, v14 | 0x12, v11, v10, v9);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)displayNameForLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self activeDataSource];
  v6 = [v5 icon:self displayNameForLocation:v4];

  return v6;
}

- (id)statusDescriptionForLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 icon:self statusDescriptionForLocation:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBLeafIcon;
    v6 = [(SBIcon *)&v9 statusDescriptionForLocation:v4];
  }

  v7 = v6;

  return v7;
}

- (id)accessoryTextForLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self badgeNumberOrString];
  if (!v5 || (v6 = objc_opt_class(), -[SBIcon overrideBadgeNumberOrString](self, "overrideBadgeNumberOrString"), v7 = objc_claimAutoreleasedReturnValue(), [v6 formattedBadgeNumberOrString:v7], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = [(SBLeafIcon *)self activeDataSource];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v9 formattedAccessoryStringForIcon:self];

      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v11.receiver = self;
    v11.super_class = SBLeafIcon;
    v8 = [(SBIcon *)&v11 accessoryTextForLocation:v4];
  }

LABEL_8:

  return v8;
}

- (int64_t)accessoryTypeForLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 accessoryTypeForIcon:self];
  }

  else
  {
    if ([(SBLeafIcon *)self isTimedOut])
    {
      v7 = 0;
      goto LABEL_8;
    }

    v8 = [(SBLeafIcon *)self badgeNumberOrString];

    if (v8)
    {
      v7 = 1;
      goto LABEL_8;
    }

    v10.receiver = self;
    v10.super_class = SBLeafIcon;
    v6 = [(SBIcon *)&v10 accessoryTypeForLocation:v4];
  }

  v7 = v6;
LABEL_8:

  return v7;
}

- (id)supportedGridSizeClasses
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 supportedGridSizeClassesForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 supportedGridSizeClasses];
  }

  v5 = v4;

  return v5;
}

- (id)folderTitleOptions
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 folderTitleOptionsForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 folderTitleOptions];
  }

  v5 = v4;

  return v5;
}

- (id)folderFallbackTitle
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 folderFallbackTitleForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 folderFallbackTitle];
  }

  v5 = v4;

  return v5;
}

- (id)iTunesCategoriesOrderedByRelevancy
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iTunesCategoriesOrderedByRelevancyForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 iTunesCategoriesOrderedByRelevancy];
  }

  v5 = v4;

  return v5;
}

- (void)setUninstalled
{
  v5.receiver = self;
  v5.super_class = SBLeafIcon;
  [(SBIcon *)&v5 setUninstalled];
  v3 = [(SBLeafIcon *)self activeDataSource];
  dataSourceAtUninstallation = self->_dataSourceAtUninstallation;
  self->_dataSourceAtUninstallation = v3;
}

- (void)completeUninstall
{
  v4.receiver = self;
  v4.super_class = SBLeafIcon;
  [(SBIcon *)&v4 completeUninstall];
  if (objc_opt_respondsToSelector())
  {
    [(SBLeafIconDataSource *)self->_dataSourceAtUninstallation iconCompleteUninstall:self];
  }

  dataSourceAtUninstallation = self->_dataSourceAtUninstallation;
  self->_dataSourceAtUninstallation = 0;
}

- (id)displayNameForObscuredDisabledLaunchForLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 icon:self displayNameForObscuredDisabledLaunchForLocation:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBLeafIcon;
    v6 = [(SBIcon *)&v9 displayNameForObscuredDisabledLaunchForLocation:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)performLaunchFromLocation:(id)a3 context:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBLeafIcon *)self activeDataSource];
  v9 = SBLogIcon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "SBLeafIcon launchFromLocation:%@ context:%@ activeDataSource:%@", &v12, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v8 icon:self launchFromLocation:v6 context:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)supportsRasterization
{
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconSupportsRasterization:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    v4 = [(SBIcon *)&v7 supportsRasterization];
  }

  v5 = v4;

  return v5;
}

+ (id)iconImageForDataSource:(id)a3 ofIcon:(id)a4 info:(SBIconImageInfo *)a5
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v15 = a3;
  v16 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v15 icon:v16 imageWithInfo:{v12, v11, v10, v9}], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [v15 icon:v16 unmaskedImageWithInfo:{v12, v11, v10, v9}];
      if (v18)
      {
        v17 = [a1 iconImageFromUnmaskedImage:v18 info:{v12, v11, v10, v9}];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (id)iconLayerForDataSource:(id)a3 ofIcon:(id)a4 info:(SBIconImageInfo *)a5 traitCollection:(id)a6 options:(unint64_t)a7
{
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  if (objc_opt_respondsToSelector())
  {
    v21 = [v18 icon:v19 layerWithInfo:v20 traitCollection:a6 options:{v16, v15, v14, v13}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)formattedBadgeNumberOrString:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 integerValue] >= 1)
  {
    if (formattedBadgeNumberOrString__onceToken != -1)
    {
      +[SBLeafIcon formattedBadgeNumberOrString:];
    }

    v4 = [formattedBadgeNumberOrString__decimalFormatter stringFromNumber:v3];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;

    v4 = v5;
  }

  if (![v4 length] || objc_msgSend(v4, "isEqualToString:", @"*"))
  {

    v4 = 0;
  }

  return v4;
}

uint64_t __43__SBLeafIcon_formattedBadgeNumberOrString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = formattedBadgeNumberOrString__decimalFormatter;
  formattedBadgeNumberOrString__decimalFormatter = v0;

  v2 = formattedBadgeNumberOrString__decimalFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = formattedBadgeNumberOrString__decimalFormatter;

  return [v4 setNumberStyle:1];
}

- (NSString)sbh_iconLibraryItemIdentifier
{
  v2 = [(SBLeafIcon *)self leafIdentifier];
  v3 = [v2 length];
  v4 = *MEMORY[0x1E69DE790];
  if (v3 > [*MEMORY[0x1E69DE790] length] && objc_msgSend(v2, "hasPrefix:", v4))
  {
    v5 = [v2 substringFromIndex:{objc_msgSend(v4, "length")}];

    v2 = v5;
  }

  return v2;
}

@end