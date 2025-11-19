@interface PBFPosterEditingIngestionManager
- (id)ingestConfiguration:(id)a3 updatedConfiguredProperties:(id)a4 editingViewController:(id)a5 galleryViewController:(id)a6 showEditingConfirmation:(BOOL)a7;
- (void)dismissViewController;
@end

@implementation PBFPosterEditingIngestionManager

- (id)ingestConfiguration:(id)a3 updatedConfiguredProperties:(id)a4 editingViewController:(id)a5 galleryViewController:(id)a6 showEditingConfirmation:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = self;
  PosterEditingIngestionManager.ingestConfiguration(_:updatedConfiguredProperties:editingViewController:galleryViewController:showEditingConfirmation:)(v12, v13, v14, a6, v7);
  v18 = v17;

  return v18;
}

- (void)dismissViewController
{
  v2 = *(self + OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

@end