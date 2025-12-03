@interface PXActivity
+ (id)_destructiveActivities;
+ (id)activityWithActionTitle:(id)title actionType:(id)type activityType:(id)activityType systemImageName:(id)name;
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)description;
- (PXActivity)initWithActionTitle:(id)title actionType:(id)type activityType:(id)activityType systemImageName:(id)name;
- (PXActivityActionDelegate)actionDelegate;
- (PXActivityDataSource)dataSource;
- (PXActivityItemSourceController)itemSourceController;
- (id)px_activityImageNamed:(id)named;
- (id)px_activitySettingsImageNamed:(id)named;
- (void)performActivity;
- (void)setDataSource:(id)source;
- (void)updateActivityViewControllerVisibleShareActions;
@end

@implementation PXActivity

- (PXActivityDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (PXActivityActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = PXActivity;
  return [(UIActivity *)&v6 _presentActivityOnViewController:controller animated:animated completion:completion];
}

- (void)performActivity
{
  performActivityActionHandler = [(PXActivity *)self performActivityActionHandler];

  if (performActivityActionHandler)
  {
    performActivityActionHandler2 = [(PXActivity *)self performActivityActionHandler];
    (performActivityActionHandler2)[2](performActivityActionHandler2, self);
  }

  else
  {
    performActivityActionHandler2 = [(PXActivity *)self actionDelegate];
    [performActivityActionHandler2 performActivity:self];
  }

  [(UIActivity *)self activityDidFinish:1];
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  canPerformActivityActionHandler = [(PXActivity *)self canPerformActivityActionHandler];

  if (canPerformActivityActionHandler)
  {
    canPerformActivityActionHandler2 = [(PXActivity *)self canPerformActivityActionHandler];
    v7 = (canPerformActivityActionHandler2)[2](canPerformActivityActionHandler2, itemsCopy, self);
  }

  else
  {
    canPerformActivityActionHandler2 = [(PXActivity *)self actionDelegate];
    v7 = [canPerformActivityActionHandler2 canPerformWithActivityItems:itemsCopy forActivity:self];
  }

  v8 = v7;

  return v8;
}

- (void)updateActivityViewControllerVisibleShareActions
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  if (itemSourceController)
  {
    v8 = itemSourceController;
    activityViewController = [itemSourceController activityViewController];
    [activityViewController updateVisibleShareActionsIfNeeded];
LABEL_3:

    itemSourceController = v8;
    goto LABEL_7;
  }

  if (self->_dataSourceFlags.respondsToActivityViewControllerForActivity && self->_dataSourceFlags.respondsToActivityItemsForActivity)
  {
    v8 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    activityViewController = [WeakRetained activityViewControllerForActivity:self];

    v6 = objc_loadWeakRetained(&self->_dataSource);
    v7 = [v6 activityItemsForActivity:self];

    [activityViewController _updateActivityItems:v7];
    goto LABEL_3;
  }

LABEL_7:
}

- (id)px_activitySettingsImageNamed:(id)named
{
  cachedSmallCustomImage = self->_cachedSmallCustomImage;
  if (!cachedSmallCustomImage)
  {
    v5 = [MEMORY[0x1E69DCAB8] px_imageNamed:named];
    PLPhysicalScreenScale();
    v6 = [v5 _applicationIconImageForFormat:0 precomposed:0 scale:?];
    v7 = self->_cachedSmallCustomImage;
    self->_cachedSmallCustomImage = v6;

    cachedSmallCustomImage = self->_cachedSmallCustomImage;
  }

  return cachedSmallCustomImage;
}

- (id)px_activityImageNamed:(id)named
{
  cachedCustomImage = self->_cachedCustomImage;
  if (!cachedCustomImage)
  {
    v5 = [MEMORY[0x1E69DCAB8] px_imageNamed:named];
    PLPhysicalScreenScale();
    v6 = [v5 _applicationIconImageForFormat:10 precomposed:0 scale:?];
    v7 = self->_cachedCustomImage;
    self->_cachedCustomImage = v6;

    cachedCustomImage = self->_cachedCustomImage;
  }

  return cachedCustomImage;
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_dataSource, obj);
    p_dataSourceFlags = &self->_dataSourceFlags;
    self->_dataSourceFlags.respondsToActivityViewControllerForActivity = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_dataSource);
    p_dataSourceFlags->respondsToActivityItemsForActivity = objc_opt_respondsToSelector() & 1;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p actionTitle = %@; actionType = %@; internalActivityType = %@, systemImageName = %@>", v5, self, self->_actionTitle, self->_actionType, self->_internalActivityType, self->_systemImageName];;

  return v6;
}

- (PXActivity)initWithActionTitle:(id)title actionType:(id)type activityType:(id)activityType systemImageName:(id)name
{
  titleCopy = title;
  typeCopy = type;
  activityTypeCopy = activityType;
  nameCopy = name;
  if (titleCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivity.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"actionType"}];

    if (activityTypeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXActivity.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"actionTitle"}];

  if (!typeCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (activityTypeCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXActivity.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"activityType"}];

LABEL_4:
  v28.receiver = self;
  v28.super_class = PXActivity;
  v15 = [(UIActivity *)&v28 init];
  if (v15)
  {
    v16 = [titleCopy copy];
    actionTitle = v15->_actionTitle;
    v15->_actionTitle = v16;

    v18 = [typeCopy copy];
    actionType = v15->_actionType;
    v15->_actionType = v18;

    v20 = [activityTypeCopy copy];
    internalActivityType = v15->_internalActivityType;
    v15->_internalActivityType = v20;

    v22 = [nameCopy copy];
    systemImageName = v15->_systemImageName;
    v15->_systemImageName = v22;
  }

  return v15;
}

+ (id)activityWithActionTitle:(id)title actionType:(id)type activityType:(id)activityType systemImageName:(id)name
{
  activityTypeCopy = activityType;
  nameCopy = name;
  typeCopy = type;
  titleCopy = title;
  _destructiveActivities = [self _destructiveActivities];
  v15 = [_destructiveActivities containsObject:activityTypeCopy];

  v16 = off_1E7720B70;
  if (!v15)
  {
    v16 = off_1E771CF68;
  }

  v17 = [objc_alloc(*v16) initWithActionTitle:titleCopy actionType:typeCopy activityType:activityTypeCopy systemImageName:nameCopy];

  return v17;
}

+ (id)_destructiveActivities
{
  if (_destructiveActivities_onceToken != -1)
  {
    dispatch_once(&_destructiveActivities_onceToken, &__block_literal_global_253882);
  }

  v3 = _destructiveActivities__destructiveTypes;

  return v3;
}

void __36__PXActivity__destructiveActivities__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXActivityTypeDeleteMemory";
  v2[1] = @"PXActivityTypeBlockMemory";
  v2[2] = @"PXActivityTypeTrashMomentShare";
  v2[3] = @"PXActivityTypeSharingSuggestionDecline";
  v2[4] = @"PXActivityTypeRemovePersonFromHome";
  v2[5] = @"PXActivityTypeBlockPerson";
  v2[6] = @"PXActivityTypeDeleteAlbum";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = _destructiveActivities__destructiveTypes;
  _destructiveActivities__destructiveTypes = v0;
}

@end