@interface SBLeafIcon
+ (id)formattedBadgeNumberOrString:(id)string;
+ (id)iconImageForDataSource:(id)source ofIcon:(id)icon info:(SBIconImageInfo *)info;
+ (id)iconLayerForDataSource:(id)source ofIcon:(id)icon info:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (BOOL)canGenerateIconsInBackground;
- (BOOL)canTightenLabel;
- (BOOL)canTruncateLabel;
- (BOOL)hasIconImage;
- (BOOL)hasObserver:(id)observer;
- (BOOL)isIconImageCachedWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (BOOL)isIconImageHandledInternallyWithIconServices;
- (BOOL)isLaunchDisabledForObscuredReason;
- (BOOL)isLaunchEnabled;
- (BOOL)isProgressPaused;
- (BOOL)isTimedOut;
- (BOOL)isUninstallSupported;
- (BOOL)performLaunchFromLocation:(id)location context:(id)context;
- (BOOL)supportsIconLayers;
- (BOOL)supportsRasterization;
- (NSString)sbh_iconLibraryItemIdentifier;
- (SBLeafIcon)init;
- (SBLeafIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d;
- (SBLeafIcon)initWithUniqueLeafIdentifier;
- (SBLeafIconDataSource)_bestDataSource;
- (SBLeafIconDataSource)_fallbackBestDataSource;
- (double)progressPercent;
- (id)accessoryTextForLocation:(id)location;
- (id)applicationBundleIdentifierForImage;
- (id)badgeNumberOrString;
- (id)copyWithLeafIdentifier:(id)identifier;
- (id)customLoadingIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)dataSourceIconServicesIconForImage;
- (id)displayNameForLocation:(id)location;
- (id)displayNameForObscuredDisabledLaunchForLocation:(id)location;
- (id)firstIconDataSourceOfClass:(Class)class;
- (id)firstIconDataSourcePassingTest:(id)test;
- (id)firstIconDataSourceWithUniqueIdentifier:(id)identifier;
- (id)folderFallbackTitle;
- (id)folderTitleOptions;
- (id)genericIconImageWithInfo:(SBIconImageInfo *)info;
- (id)iTunesCategoriesOrderedByRelevancy;
- (id)iconDataSourcesOfClass:(Class)class;
- (id)iconServicesIconForImage;
- (id)iconTypeIdentifierForImage;
- (id)loadingIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)statusDescriptionForLocation:(id)location;
- (id)supportedGridSizeClasses;
- (id)tags;
- (int64_t)accessoryTypeForLocation:(id)location;
- (int64_t)labelAccessoryType;
- (int64_t)progressState;
- (unint64_t)indexOfActiveDataSource;
- (void)_noteActiveDataSourceDidChangeAndReloadIcon:(BOOL)icon;
- (void)_noteActiveDataSourceDidChangeNotification:(id)notification;
- (void)_noteActiveDataSourceDidGenerateImageNotification:(id)notification;
- (void)_noteActiveDataSourceProgressDidChangeNotification:(id)notification;
- (void)_noteDataSourceDidInvalidateNotification:(id)notification;
- (void)_setPropertiesFromIcon:(id)icon;
- (void)_updateActiveDataSource;
- (void)addIconDataSource:(id)source;
- (void)addIconDataSources:(id)sources;
- (void)addObserver:(id)observer;
- (void)completeUninstall;
- (void)dealloc;
- (void)didChangeActiveDataSource:(id)source;
- (void)didReplaceIconDataSource:(id)source withIconDataSource:(id)dataSource;
- (void)enumerateObserversUsingBlock:(id)block;
- (void)insertIconDataSource:(id)source beforeIconDataSource:(id)dataSource;
- (void)insertIconDataSources:(id)sources atIndexes:(id)indexes;
- (void)notifyObserversOfAddedIconDataSource:(id)source;
- (void)notifyObserversOfRemovedIconDataSource:(id)source;
- (void)performCoalescedDataSourceUpdate:(id)update;
- (void)prepareImageLoadContext:(id)context;
- (void)removeAllIconDataSources;
- (void)removeIconDataSource:(id)source;
- (void)removeIconDataSourcesOfClass:(Class)class;
- (void)removeIconDataSourcesPassingTest:(id)test;
- (void)removeObserver:(id)observer;
- (void)replaceIconDataSource:(id)source withIconDataSource:(id)dataSource;
- (void)selectNextActiveDataSource;
- (void)setActiveDataSource:(id)source;
- (void)setUninstalled;
@end

@implementation SBLeafIcon

- (BOOL)supportsIconLayers
{
  if ([(SBLeafIcon *)self isIconImageHandledInternallyWithIconServices])
  {
    return 1;
  }

  activeDataSource = [(SBLeafIcon *)self activeDataSource];
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
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  activeDataSource2 = [(SBLeafIcon *)self activeDataSource];
  v6 = [activeDataSource2 isTimedOutForIcon:self];

  return v6;
}

- (id)tags
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    tags = [activeDataSource tagsForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    tags = [(SBIcon *)&v7 tags];
  }

  v5 = tags;

  return v5;
}

- (id)applicationBundleIdentifierForImage
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [activeDataSource applicationBundleIdentifierForImageForIcon:self];
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

  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    canGenerateIconsInBackground = [activeDataSource canGenerateIconsInBackgroundForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    canGenerateIconsInBackground = [(SBIcon *)&v7 canGenerateIconsInBackground];
  }

  v3 = canGenerateIconsInBackground;

  return v3;
}

- (int64_t)progressState
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    progressState = [activeDataSource progressStateForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    progressState = [(SBIcon *)&v7 progressState];
  }

  v5 = progressState;

  return v5;
}

- (BOOL)isProgressPaused
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    isProgressPaused = [activeDataSource isProgressPausedForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    isProgressPaused = [(SBIcon *)&v7 isProgressPaused];
  }

  v5 = isProgressPaused;

  return v5;
}

- (double)progressPercent
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    [activeDataSource progressPercentForIcon:self];
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
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  overrideBadgeNumberOrString = [(SBIcon *)self overrideBadgeNumberOrString];

  if (overrideBadgeNumberOrString)
  {
    overrideBadgeNumberOrString2 = [(SBIcon *)self overrideBadgeNumberOrString];
  }

  else if (objc_opt_respondsToSelector())
  {
    overrideBadgeNumberOrString2 = [activeDataSource badgeNumberOrStringForIcon:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBLeafIcon;
    overrideBadgeNumberOrString2 = [(SBIcon *)&v8 badgeNumberOrString];
  }

  v6 = overrideBadgeNumberOrString2;
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
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [activeDataSource iconAllowsLaunch:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isLaunchDisabledForObscuredReason
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [activeDataSource iconDisallowsLaunchForObscuredReason:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)labelAccessoryType
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    labelAccessoryType = [activeDataSource labelAccessoryTypeForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    labelAccessoryType = [(SBIcon *)&v7 labelAccessoryType];
  }

  v5 = labelAccessoryType;

  return v5;
}

- (BOOL)canTruncateLabel
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    canTruncateLabel = [activeDataSource iconCanTruncateLabel:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    canTruncateLabel = [(SBIcon *)&v7 canTruncateLabel];
  }

  v5 = canTruncateLabel;

  return v5;
}

- (BOOL)canTightenLabel
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    canTightenLabel = [activeDataSource iconCanTightenLabel:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    canTightenLabel = [(SBIcon *)&v7 canTightenLabel];
  }

  v5 = canTightenLabel;

  return v5;
}

- (BOOL)isUninstallSupported
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [activeDataSource iconSupportsUninstall:self];
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
      firstObject = 0;
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
          selfCopy = self;
          if (objc_opt_respondsToSelector())
          {
            v11 = [v9 priorityForIcon:selfCopy];
          }

          else
          {
            v11 = 1;
          }

          if (!firstObject || v11 > v7)
          {
            v12 = v9;

            v7 = v11;
            firstObject = v12;
          }
        }

        v5 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = [(NSMutableOrderedSet *)self->_dataSources firstObject];
  }

  return firstObject;
}

- (void)_updateActiveDataSource
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self->_coalescedDataSourceUpdates)
  {
    _bestDataSource = [(SBLeafIcon *)self _bestDataSource];
    if (_bestDataSource != self->_activeDataSource)
    {
      sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
      v5 = self->_activeDataSource;
      if (self->_activeDataSource)
      {
        [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidChangeNotification" object:?];
        [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self->_activeDataSource];
        [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self->_activeDataSource];
        activeDataSource = self->_activeDataSource;
        self->_activeDataSource = 0;
      }

      if (_bestDataSource)
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
            selfCopy2 = v12;
            v21 = 2112;
            v22 = _bestDataSource;
            v23 = 2112;
            selfCopy = self;
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
            selfCopy2 = self;
            _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> Changing active data source: %@", &v17, 0x16u);
          }

          v10 = SBLogIcon();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v14 = self->super._logIdentifier;
            v15 = SBHUniqueIdentifierOfDataSource(v5);
            v16 = SBHUniqueIdentifierOfDataSource(_bestDataSource);
            v17 = 138543874;
            v18 = v14;
            v19 = 2114;
            selfCopy2 = v15;
            v21 = 2114;
            v22 = v16;
            _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> Changing from data souce: %{public}@ to data source:%{public}@.", &v17, 0x20u);
          }
        }

        objc_storeStrong(&self->_activeDataSource, _bestDataSource);
        [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel__noteActiveDataSourceDidChangeNotification_ name:@"SBLeafIconDataSourceDidChangeNotification" object:self->_activeDataSource];
        [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel__noteActiveDataSourceProgressDidChangeNotification_ name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self->_activeDataSource];
        [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel__noteActiveDataSourceDidGenerateImageNotification_ name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self->_activeDataSource];
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
    _fallbackBestDataSource = manuallySetDataSource;
  }

  else
  {
    _fallbackBestDataSource = [(SBLeafIcon *)self _fallbackBestDataSource];
  }

  return _fallbackBestDataSource;
}

- (SBLeafIcon)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(SBLeafIcon *)self initWithLeafIdentifier:uUIDString applicationBundleID:0];

  return v5;
}

- (SBLeafIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = SBLeafIcon;
  v8 = [(SBIcon *)&v18 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    leafIdentifier = v8->_leafIdentifier;
    v8->_leafIdentifier = v9;

    v11 = [dCopy copy];
    applicationBundleID = v8->_applicationBundleID;
    v8->_applicationBundleID = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    dataSources = v8->_dataSources;
    v8->_dataSources = v13;

    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SBLeafIcon:%p [%@]>", v8, dCopy];
    logIdentifier = v8->super._logIdentifier;
    v8->super._logIdentifier = dCopy;
  }

  return v8;
}

- (SBLeafIcon)initWithUniqueLeafIdentifier
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(SBLeafIcon *)self initWithLeafIdentifier:uUIDString applicationBundleID:0];

  return v5;
}

- (void)dealloc
{
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidChangeNotification" object:0];
  [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:0];
  [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:0];
  [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidInvalidateNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBLeafIcon;
  [(SBLeafIcon *)&v4 dealloc];
}

- (id)copyWithLeafIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithLeafIdentifier:identifierCopy applicationBundleID:self->_applicationBundleID];
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

- (void)_setPropertiesFromIcon:(id)icon
{
  iconCopy = icon;
  v7.receiver = self;
  v7.super_class = SBLeafIcon;
  [(SBIcon *)&v7 _setPropertiesFromIcon:iconCopy];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_storeStrong(&self->_dataSourceAtUninstallation, iconCopy[16]);
  }
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = SBLeafIcon;
  [(SBIcon *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = SBLeafIcon;
  [(SBIcon *)&v3 removeObserver:observer];
}

- (BOOL)hasObserver:(id)observer
{
  v4.receiver = self;
  v4.super_class = SBLeafIcon;
  return [(SBIcon *)&v4 hasObserver:observer];
}

- (void)enumerateObserversUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__SBLeafIcon_enumerateObserversUsingBlock___block_invoke;
    v7[3] = &unk_1E808E758;
    v8 = blockCopy;
    v6.receiver = self;
    v6.super_class = SBLeafIcon;
    [(SBIcon *)&v6 enumerateObserversUsingBlock:v7];
  }
}

- (void)performCoalescedDataSourceUpdate:(id)update
{
  ++self->_coalescedDataSourceUpdates;
  (*(update + 2))(update, a2);
  v4 = self->_coalescedDataSourceUpdates - 1;
  self->_coalescedDataSourceUpdates = v4;
  if (!v4)
  {

    [(SBLeafIcon *)self _updateActiveDataSource];
  }
}

- (void)didChangeActiveDataSource:(id)source
{
  sourceCopy = source;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SBLeafIcon_didChangeActiveDataSource___block_invoke;
  v6[3] = &unk_1E808E780;
  v6[4] = self;
  v7 = sourceCopy;
  v5 = sourceCopy;
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

- (void)setActiveDataSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy && ([(NSMutableOrderedSet *)self->_dataSources containsObject:sourceCopy]& 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't set an active data source with a data source that isn't in the list" userInfo:0];
    objc_exception_throw(v6);
  }

  manuallySetDataSource = self->_manuallySetDataSource;
  self->_manuallySetDataSource = sourceCopy;

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)selectNextActiveDataSource
{
  iconDataSources = [(SBLeafIcon *)self iconDataSources];
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  v4 = [iconDataSources indexOfObject:activeDataSource] + 1;
  if (v4 >= [iconDataSources count])
  {
    [iconDataSources firstObject];
  }

  else
  {
    [iconDataSources objectAtIndex:v4];
  }
  v5 = ;
  [(SBLeafIcon *)self setActiveDataSource:v5];
}

- (unint64_t)indexOfActiveDataSource
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (activeDataSource)
  {
    v4 = [(NSMutableOrderedSet *)self->_dataSources indexOfObject:activeDataSource];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)addIconDataSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy && ([(NSMutableOrderedSet *)self->_dataSources containsObject:sourceCopy]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_dataSources addObject:sourceCopy];
    [(SBLeafIcon *)self didAddIconDataSource:sourceCopy];
    sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:sourceCopy];
  }

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)addIconDataSources:(id)sources
{
  v16 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [sourcesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(sourcesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v9 && ([(NSMutableOrderedSet *)self->_dataSources containsObject:*(*(&v11 + 1) + 8 * i)]& 1) == 0)
        {
          [(NSMutableOrderedSet *)self->_dataSources addObject:v9];
          [(SBLeafIcon *)self didAddIconDataSource:v9];
          sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
          [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v9];
        }
      }

      v6 = [sourcesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)insertIconDataSource:(id)source beforeIconDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  if (sourceCopy && ([(NSMutableOrderedSet *)self->_dataSources containsObject:sourceCopy]& 1) == 0)
  {
    if (!dataSourceCopy || (v7 = [(NSMutableOrderedSet *)self->_dataSources indexOfObject:dataSourceCopy], v7 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v7 = 0;
    }

    [(NSMutableOrderedSet *)self->_dataSources insertObject:sourceCopy atIndex:v7];
    [(SBLeafIcon *)self didAddIconDataSource:sourceCopy];
    sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:sourceCopy];
  }

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)insertIconDataSources:(id)sources atIndexes:(id)indexes
{
  v22 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  indexesCopy = indexes;
  v8 = [(NSMutableOrderedSet *)self->_dataSources copy];
  v16 = indexesCopy;
  [(NSMutableOrderedSet *)self->_dataSources insertObjects:sourcesCopy atIndexes:indexesCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = sourcesCopy;
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
          sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
          [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(SBLeafIcon *)self _updateActiveDataSource];
}

- (void)removeIconDataSource:(id)source
{
  sourceCopy = source;
  if (([(NSMutableOrderedSet *)self->_dataSources containsObject:?]& 1) != 0)
  {
    sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidInvalidateNotification" object:sourceCopy];
    [(NSMutableOrderedSet *)self->_dataSources removeObject:sourceCopy];
    v5 = sourceCopy;
    if (self->_activeDataSource == sourceCopy)
    {
      [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidChangeNotification" object:?];
      [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self->_activeDataSource];
      [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self->_activeDataSource];
      activeDataSource = self->_activeDataSource;
      self->_activeDataSource = 0;

      v5 = sourceCopy;
    }

    manuallySetDataSource = self->_manuallySetDataSource;
    if (manuallySetDataSource == v5)
    {
      self->_manuallySetDataSource = 0;

      v5 = sourceCopy;
    }

    [(SBLeafIcon *)self didRemoveIconDataSource:v5];
  }

  if (!self->_activeDataSource)
  {
    [(SBLeafIcon *)self _updateActiveDataSource];
  }
}

- (void)removeIconDataSourcesOfClass:(Class)class
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

- (void)removeIconDataSourcesPassingTest:(id)test
{
  v16 = *MEMORY[0x1E69E9840];
  testCopy = test;
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
        if (testCopy[2](testCopy, v10))
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
    firstIconDataSource = [(SBLeafIcon *)i firstIconDataSource];
    if (!firstIconDataSource)
    {
      break;
    }

    v4 = firstIconDataSource;
    [(SBLeafIcon *)i removeIconDataSource:firstIconDataSource];
  }
}

- (void)replaceIconDataSource:(id)source withIconDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v8 = dataSourceCopy;
  if (sourceCopy && dataSourceCopy && ([(NSMutableOrderedSet *)self->_dataSources containsObject:dataSourceCopy]& 1) == 0 && [(NSMutableOrderedSet *)self->_dataSources containsObject:sourceCopy])
  {
    activeDataSource = [(SBLeafIcon *)self activeDataSource];

    v10 = [(NSMutableOrderedSet *)self->_dataSources indexOfObject:sourceCopy];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    [(NSMutableOrderedSet *)self->_dataSources insertObject:v8 atIndex:v11];
    sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel__noteDataSourceDidInvalidateNotification_ name:@"SBLeafIconDataSourceDidInvalidateNotification" object:v8];
    [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidInvalidateNotification" object:sourceCopy];
    [(NSMutableOrderedSet *)self->_dataSources removeObject:sourceCopy];
    if (self->_activeDataSource == sourceCopy)
    {
      [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidChangeNotification" object:?];
      [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self->_activeDataSource];
      [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:@"SBLeafIconDataSourceDidGenerateImageNotification" object:self->_activeDataSource];
      activeDataSource = self->_activeDataSource;
      self->_activeDataSource = 0;
    }

    manuallySetDataSource = self->_manuallySetDataSource;
    if (manuallySetDataSource == sourceCopy)
    {
      self->_manuallySetDataSource = 0;
    }

    [(SBLeafIcon *)self didReplaceIconDataSource:sourceCopy withIconDataSource:v8];
    if (activeDataSource == sourceCopy)
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

- (void)notifyObserversOfAddedIconDataSource:(id)source
{
  sourceCopy = source;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBLeafIcon_notifyObserversOfAddedIconDataSource___block_invoke;
  v6[3] = &unk_1E808E780;
  v6[4] = self;
  v7 = sourceCopy;
  v5 = sourceCopy;
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

- (void)notifyObserversOfRemovedIconDataSource:(id)source
{
  sourceCopy = source;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SBLeafIcon_notifyObserversOfRemovedIconDataSource___block_invoke;
  v6[3] = &unk_1E808E780;
  v6[4] = self;
  v7 = sourceCopy;
  v5 = sourceCopy;
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

- (void)didReplaceIconDataSource:(id)source withIconDataSource:(id)dataSource
{
  dataSourceCopy = dataSource;
  [(SBLeafIcon *)self notifyObserversOfRemovedIconDataSource:source];
  [(SBLeafIcon *)self notifyObserversOfAddedIconDataSource:dataSourceCopy];
}

- (id)iconDataSourcesOfClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
          [array addObject:{v10, v12}];
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)firstIconDataSourceOfClass:(Class)class
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

- (id)firstIconDataSourceWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SBLeafIcon_firstIconDataSourceWithUniqueIdentifier___block_invoke;
  v8[3] = &unk_1E808E7A8;
  v9 = identifierCopy;
  v5 = identifierCopy;
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

- (id)firstIconDataSourcePassingTest:(id)test
{
  v16 = *MEMORY[0x1E69E9840];
  testCopy = test;
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
        if (testCopy[2](testCopy, v9))
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

- (void)_noteActiveDataSourceDidChangeAndReloadIcon:(BOOL)icon
{
  iconCopy = icon;
  [(SBIcon *)self _notifyAccessoriesDidUpdate];
  [(SBIcon *)self _notifyLaunchEnabledDidChange];
  [(SBIcon *)self _notifyProgressDidChange];
  if (iconCopy)
  {

    [(SBIcon *)self reloadIconImage];
  }
}

- (void)_noteActiveDataSourceDidChangeNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 134218754;
    selfCopy = self;
    v12 = 2114;
    v13 = v7;
    v14 = 2112;
    v15 = object;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@ Data source did change: %@ (%{public}@)", &v10, 0x2Au);
  }

  [(SBLeafIcon *)self _noteActiveDataSourceDidChangeAndReloadIcon:0];
}

- (void)_noteActiveDataSourceProgressDidChangeNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 134218754;
    selfCopy = self;
    v12 = 2114;
    v13 = v7;
    v14 = 2112;
    v15 = object;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "%p-%{public}@ Data source progress did change: %@ (%{public}@)", &v10, 0x2Au);
  }

  [(SBLeafIcon *)self _noteActiveDataSourceProgressDidChange];
}

- (void)_noteActiveDataSourceDidGenerateImageNotification:(id)notification
{
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SBLeafIcon *)self _noteActiveDataSourceDidGenerateImageNotification:v4, v5, v6, v7, v8, v9, v10];
  }

  [(SBIcon *)self reloadIconImage];
}

- (void)_noteDataSourceDidInvalidateNotification:(id)notification
{
  object = [notification object];
  [(SBLeafIcon *)self removeIconDataSource:object];
}

- (id)iconTypeIdentifierForImage
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [activeDataSource iconTypeIdentifierForImageForIcon:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataSourceIconServicesIconForImage
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [activeDataSource iconServicesIconForImageForIcon:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)iconServicesIconForImage
{
  applicationBundleIdentifierForImage = [(SBLeafIcon *)self applicationBundleIdentifierForImage];
  if (!applicationBundleIdentifierForImage || (v4 = applicationBundleIdentifierForImage, dataSourceIconServicesIconForImage = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:applicationBundleIdentifierForImage], v4, !dataSourceIconServicesIconForImage))
  {
    iconTypeIdentifierForImage = [(SBLeafIcon *)self iconTypeIdentifierForImage];
    if (!iconTypeIdentifierForImage || (v7 = iconTypeIdentifierForImage, v8 = objc_alloc(MEMORY[0x1E69A8A00]), dataSourceIconServicesIconForImage = [v8 initWithTypeIdentifier:v7 layerGroups:MEMORY[0x1E695E0F0]], v7, !dataSourceIconServicesIconForImage))
    {
      dataSourceIconServicesIconForImage = [(SBLeafIcon *)self dataSourceIconServicesIconForImage];
    }
  }

  return dataSourceIconServicesIconForImage;
}

- (BOOL)isIconImageHandledInternallyWithIconServices
{
  iconServicesIconForImage = [(SBLeafIcon *)self iconServicesIconForImage];
  v3 = iconServicesIconForImage != 0;

  return v3;
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  infoCopy = info;
  collectionCopy = collection;
  v19 = [collectionCopy objectForKey:@"SBHIconServicesIcon"];
  if (v19)
  {
    v20 = SBHIconServicesOptionsForImageOptions(context);
    v21 = SBHGetIconImageWithTraitCollection(v19, infoCopy, v20, v15, v14, v13);
    goto LABEL_18;
  }

  v22 = [collectionCopy objectForKey:@"SBHActiveDataSource"];
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
    v30 = [v22 icon:self imageWithInfo:infoCopy traitCollection:context options:{v15, v14, v13, v12}];
    goto LABEL_9;
  }

  if ((context & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v30 = [v22 icon:self unmaskedImageWithInfo:{v15, v14, v13, v12}];
      goto LABEL_9;
    }

LABEL_16:
    v32.receiver = self;
    v32.super_class = SBLeafIcon;
    v21 = [(SBIcon *)&v32 makeIconImageWithInfo:infoCopy traitCollection:collectionCopy context:context options:v15, v14, v13, v12];
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

  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    hasIconImage = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBLeafIcon;
    hasIconImage = [(SBIcon *)&v6 hasIconImage];
  }

  return hasIconImage;
}

- (BOOL)isIconImageCachedWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  infoCopy = info;
  iconServicesIconForImage = [(SBLeafIcon *)self iconServicesIconForImage];
  if (iconServicesIconForImage)
  {
    v15 = SBHIconServicesOptionsForImageOptions(collectionCopy);
    v16 = SBHImageDescriptorWithTraitCollection(infoCopy, v15, v11, v10, v9);
    v17 = SBHIconServicesImageForDescriptor(iconServicesIconForImage, v16, v15 | 2);
    v18 = [v17 CGImage] != 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)prepareImageLoadContext:(id)context
{
  contextCopy = context;
  v7.receiver = self;
  v7.super_class = SBLeafIcon;
  [(SBIcon *)&v7 prepareImageLoadContext:contextCopy];
  iconServicesIconForImage = [(SBLeafIcon *)self iconServicesIconForImage];
  if (iconServicesIconForImage)
  {
    [contextCopy setObject:iconServicesIconForImage forKey:@"SBHIconServicesIcon"];
  }

  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (activeDataSource)
  {
    [contextCopy setObject:activeDataSource forKey:@"SBHActiveDataSource"];
  }
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  infoCopy = info;
  collectionCopy = collection;
  v19 = [collectionCopy objectForKey:@"SBHIconServicesIcon"];
  if (v19)
  {
    v20 = SBHIconServicesOptionsForImageOptions(context);
    v21 = SBHGetIconLayerWithTraitCollection(v19, infoCopy, v20, v15, v14, v13);
  }

  else
  {
    v22 = [collectionCopy objectForKey:@"SBHActiveDataSource"];
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
      v21 = [v22 icon:self layerWithInfo:infoCopy traitCollection:context options:{v15, v14, v13, v12}];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)genericIconImageWithInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([activeDataSource icon:self defaultImageWithInfo:{v10, v9, v8, v7}], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15.receiver = self;
    v15.super_class = SBLeafIcon;
    v13 = [(SBIcon *)&v15 genericIconImageWithInfo:v10, v9, v8, v7];
  }

  return v13;
}

- (id)loadingIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  v16 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:infoCopy];
  if (([v16 hasGlass] & 1) != 0 || (-[SBLeafIcon customLoadingIconImageWithInfo:traitCollection:options:](self, "customLoadingIconImageWithInfo:traitCollection:options:", infoCopy, collection, v13, v12, v11, v10), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v19.receiver = self;
    v19.super_class = SBLeafIcon;
    v17 = [(SBIcon *)&v19 loadingIconImageWithInfo:infoCopy traitCollection:collection options:v13, v12, v11, v10];
  }

  return v17;
}

- (id)customLoadingIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  infoCopy = info;
  v14 = SBHIconServicesOptionsForImageOptions(collectionCopy);
  iconServicesIconForImage = [(SBLeafIcon *)self iconServicesIconForImage];
  v16 = iconServicesIconForImage;
  if (iconServicesIconForImage)
  {
    v17 = SBHGetIconImageWithTraitCollection(iconServicesIconForImage, infoCopy, v14 | 0x12, v11, v10, v9);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)displayNameForLocation:(id)location
{
  locationCopy = location;
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  v6 = [activeDataSource icon:self displayNameForLocation:locationCopy];

  return v6;
}

- (id)statusDescriptionForLocation:(id)location
{
  locationCopy = location;
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [activeDataSource icon:self statusDescriptionForLocation:locationCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBLeafIcon;
    v6 = [(SBIcon *)&v9 statusDescriptionForLocation:locationCopy];
  }

  v7 = v6;

  return v7;
}

- (id)accessoryTextForLocation:(id)location
{
  locationCopy = location;
  badgeNumberOrString = [(SBLeafIcon *)self badgeNumberOrString];
  if (!badgeNumberOrString || (v6 = objc_opt_class(), -[SBIcon overrideBadgeNumberOrString](self, "overrideBadgeNumberOrString"), v7 = objc_claimAutoreleasedReturnValue(), [v6 formattedBadgeNumberOrString:v7], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    activeDataSource = [(SBLeafIcon *)self activeDataSource];
    if (objc_opt_respondsToSelector())
    {
      v8 = [activeDataSource formattedAccessoryStringForIcon:self];

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
    v8 = [(SBIcon *)&v11 accessoryTextForLocation:locationCopy];
  }

LABEL_8:

  return v8;
}

- (int64_t)accessoryTypeForLocation:(id)location
{
  locationCopy = location;
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [activeDataSource accessoryTypeForIcon:self];
  }

  else
  {
    if ([(SBLeafIcon *)self isTimedOut])
    {
      v7 = 0;
      goto LABEL_8;
    }

    badgeNumberOrString = [(SBLeafIcon *)self badgeNumberOrString];

    if (badgeNumberOrString)
    {
      v7 = 1;
      goto LABEL_8;
    }

    v10.receiver = self;
    v10.super_class = SBLeafIcon;
    v6 = [(SBIcon *)&v10 accessoryTypeForLocation:locationCopy];
  }

  v7 = v6;
LABEL_8:

  return v7;
}

- (id)supportedGridSizeClasses
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    supportedGridSizeClasses = [activeDataSource supportedGridSizeClassesForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    supportedGridSizeClasses = [(SBIcon *)&v7 supportedGridSizeClasses];
  }

  v5 = supportedGridSizeClasses;

  return v5;
}

- (id)folderTitleOptions
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    folderTitleOptions = [activeDataSource folderTitleOptionsForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    folderTitleOptions = [(SBIcon *)&v7 folderTitleOptions];
  }

  v5 = folderTitleOptions;

  return v5;
}

- (id)folderFallbackTitle
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    folderFallbackTitle = [activeDataSource folderFallbackTitleForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    folderFallbackTitle = [(SBIcon *)&v7 folderFallbackTitle];
  }

  v5 = folderFallbackTitle;

  return v5;
}

- (id)iTunesCategoriesOrderedByRelevancy
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    iTunesCategoriesOrderedByRelevancy = [activeDataSource iTunesCategoriesOrderedByRelevancyForIcon:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    iTunesCategoriesOrderedByRelevancy = [(SBIcon *)&v7 iTunesCategoriesOrderedByRelevancy];
  }

  v5 = iTunesCategoriesOrderedByRelevancy;

  return v5;
}

- (void)setUninstalled
{
  v5.receiver = self;
  v5.super_class = SBLeafIcon;
  [(SBIcon *)&v5 setUninstalled];
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  dataSourceAtUninstallation = self->_dataSourceAtUninstallation;
  self->_dataSourceAtUninstallation = activeDataSource;
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

- (id)displayNameForObscuredDisabledLaunchForLocation:(id)location
{
  locationCopy = location;
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [activeDataSource icon:self displayNameForObscuredDisabledLaunchForLocation:locationCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBLeafIcon;
    v6 = [(SBIcon *)&v9 displayNameForObscuredDisabledLaunchForLocation:locationCopy];
  }

  v7 = v6;

  return v7;
}

- (BOOL)performLaunchFromLocation:(id)location context:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  contextCopy = context;
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  v9 = SBLogIcon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = locationCopy;
    v14 = 2112;
    v15 = contextCopy;
    v16 = 2112;
    v17 = activeDataSource;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "SBLeafIcon launchFromLocation:%@ context:%@ activeDataSource:%@", &v12, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [activeDataSource icon:self launchFromLocation:locationCopy context:contextCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)supportsRasterization
{
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (objc_opt_respondsToSelector())
  {
    supportsRasterization = [activeDataSource iconSupportsRasterization:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBLeafIcon;
    supportsRasterization = [(SBIcon *)&v7 supportsRasterization];
  }

  v5 = supportsRasterization;

  return v5;
}

+ (id)iconImageForDataSource:(id)source ofIcon:(id)icon info:(SBIconImageInfo *)info
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  sourceCopy = source;
  iconCopy = icon;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([sourceCopy icon:iconCopy imageWithInfo:{v12, v11, v10, v9}], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [sourceCopy icon:iconCopy unmaskedImageWithInfo:{v12, v11, v10, v9}];
      if (v18)
      {
        v17 = [self iconImageFromUnmaskedImage:v18 info:{v12, v11, v10, v9}];
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

+ (id)iconLayerForDataSource:(id)source ofIcon:(id)icon info:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  sourceCopy = source;
  iconCopy = icon;
  infoCopy = info;
  if (objc_opt_respondsToSelector())
  {
    v21 = [sourceCopy icon:iconCopy layerWithInfo:infoCopy traitCollection:collection options:{v16, v15, v14, v13}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)formattedBadgeNumberOrString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [stringCopy integerValue] >= 1)
  {
    if (formattedBadgeNumberOrString__onceToken != -1)
    {
      +[SBLeafIcon formattedBadgeNumberOrString:];
    }

    v4 = [formattedBadgeNumberOrString__decimalFormatter stringFromNumber:stringCopy];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = stringCopy;

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
  leafIdentifier = [(SBLeafIcon *)self leafIdentifier];
  v3 = [leafIdentifier length];
  v4 = *MEMORY[0x1E69DE790];
  if (v3 > [*MEMORY[0x1E69DE790] length] && objc_msgSend(leafIdentifier, "hasPrefix:", v4))
  {
    v5 = [leafIdentifier substringFromIndex:{objc_msgSend(v4, "length")}];

    leafIdentifier = v5;
  }

  return leafIdentifier;
}

@end