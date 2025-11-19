@interface PXActivity
+ (id)_destructiveActivities;
+ (id)activityWithActionTitle:(id)a3 actionType:(id)a4 activityType:(id)a5 systemImageName:(id)a6;
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)description;
- (PXActivity)initWithActionTitle:(id)a3 actionType:(id)a4 activityType:(id)a5 systemImageName:(id)a6;
- (PXActivityActionDelegate)actionDelegate;
- (PXActivityDataSource)dataSource;
- (PXActivityItemSourceController)itemSourceController;
- (id)px_activityImageNamed:(id)a3;
- (id)px_activitySettingsImageNamed:(id)a3;
- (void)performActivity;
- (void)setDataSource:(id)a3;
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

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6.receiver = self;
  v6.super_class = PXActivity;
  return [(UIActivity *)&v6 _presentActivityOnViewController:a3 animated:a4 completion:a5];
}

- (void)performActivity
{
  v3 = [(PXActivity *)self performActivityActionHandler];

  if (v3)
  {
    v4 = [(PXActivity *)self performActivityActionHandler];
    (v4)[2](v4, self);
  }

  else
  {
    v4 = [(PXActivity *)self actionDelegate];
    [v4 performActivity:self];
  }

  [(UIActivity *)self activityDidFinish:1];
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = a3;
  v5 = [(PXActivity *)self canPerformActivityActionHandler];

  if (v5)
  {
    v6 = [(PXActivity *)self canPerformActivityActionHandler];
    v7 = (v6)[2](v6, v4, self);
  }

  else
  {
    v6 = [(PXActivity *)self actionDelegate];
    v7 = [v6 canPerformWithActivityItems:v4 forActivity:self];
  }

  v8 = v7;

  return v8;
}

- (void)updateActivityViewControllerVisibleShareActions
{
  v3 = [(PXActivity *)self itemSourceController];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 activityViewController];
    [v4 updateVisibleShareActionsIfNeeded];
LABEL_3:

    v3 = v8;
    goto LABEL_7;
  }

  if (self->_dataSourceFlags.respondsToActivityViewControllerForActivity && self->_dataSourceFlags.respondsToActivityItemsForActivity)
  {
    v8 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = [WeakRetained activityViewControllerForActivity:self];

    v6 = objc_loadWeakRetained(&self->_dataSource);
    v7 = [v6 activityItemsForActivity:self];

    [v4 _updateActivityItems:v7];
    goto LABEL_3;
  }

LABEL_7:
}

- (id)px_activitySettingsImageNamed:(id)a3
{
  cachedSmallCustomImage = self->_cachedSmallCustomImage;
  if (!cachedSmallCustomImage)
  {
    v5 = [MEMORY[0x1E69DCAB8] px_imageNamed:a3];
    PLPhysicalScreenScale();
    v6 = [v5 _applicationIconImageForFormat:0 precomposed:0 scale:?];
    v7 = self->_cachedSmallCustomImage;
    self->_cachedSmallCustomImage = v6;

    cachedSmallCustomImage = self->_cachedSmallCustomImage;
  }

  return cachedSmallCustomImage;
}

- (id)px_activityImageNamed:(id)a3
{
  cachedCustomImage = self->_cachedCustomImage;
  if (!cachedCustomImage)
  {
    v5 = [MEMORY[0x1E69DCAB8] px_imageNamed:a3];
    PLPhysicalScreenScale();
    v6 = [v5 _applicationIconImageForFormat:10 precomposed:0 scale:?];
    v7 = self->_cachedCustomImage;
    self->_cachedCustomImage = v6;

    cachedCustomImage = self->_cachedCustomImage;
  }

  return cachedCustomImage;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
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

- (PXActivity)initWithActionTitle:(id)a3 actionType:(id)a4 activityType:(id)a5 systemImageName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXActivity.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"actionType"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PXActivity.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"actionTitle"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_9:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"PXActivity.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"activityType"}];

LABEL_4:
  v28.receiver = self;
  v28.super_class = PXActivity;
  v15 = [(UIActivity *)&v28 init];
  if (v15)
  {
    v16 = [v11 copy];
    actionTitle = v15->_actionTitle;
    v15->_actionTitle = v16;

    v18 = [v12 copy];
    actionType = v15->_actionType;
    v15->_actionType = v18;

    v20 = [v13 copy];
    internalActivityType = v15->_internalActivityType;
    v15->_internalActivityType = v20;

    v22 = [v14 copy];
    systemImageName = v15->_systemImageName;
    v15->_systemImageName = v22;
  }

  return v15;
}

+ (id)activityWithActionTitle:(id)a3 actionType:(id)a4 activityType:(id)a5 systemImageName:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [a1 _destructiveActivities];
  v15 = [v14 containsObject:v10];

  v16 = off_1E7720B70;
  if (!v15)
  {
    v16 = off_1E771CF68;
  }

  v17 = [objc_alloc(*v16) initWithActionTitle:v13 actionType:v12 activityType:v10 systemImageName:v11];

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