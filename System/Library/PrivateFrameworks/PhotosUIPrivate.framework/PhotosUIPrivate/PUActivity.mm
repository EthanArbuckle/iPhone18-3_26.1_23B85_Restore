@interface PUActivity
- (PUActivityDataSource)dataSource;
- (PUActivityItemSourceController)itemSourceController;
- (id)pu_activityImageNamed:(id)a3;
- (id)pu_activitySettingsImageNamed:(id)a3;
- (void)setDataSource:(id)a3;
- (void)updateActivityViewControllerVisibleShareActions;
@end

@implementation PUActivity

- (PUActivityDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (PUActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (void)updateActivityViewControllerVisibleShareActions
{
  v3 = [(PUActivity *)self itemSourceController];
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

- (id)pu_activitySettingsImageNamed:(id)a3
{
  cachedSmallCustomImage = self->_cachedSmallCustomImage;
  if (!cachedSmallCustomImage)
  {
    v5 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:a3];
    PLPhysicalScreenScale();
    v6 = [v5 _applicationIconImageForFormat:0 precomposed:0 scale:?];
    v7 = self->_cachedSmallCustomImage;
    self->_cachedSmallCustomImage = v6;

    cachedSmallCustomImage = self->_cachedSmallCustomImage;
  }

  return cachedSmallCustomImage;
}

- (id)pu_activityImageNamed:(id)a3
{
  cachedCustomImage = self->_cachedCustomImage;
  if (!cachedCustomImage)
  {
    v5 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:a3];
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

@end