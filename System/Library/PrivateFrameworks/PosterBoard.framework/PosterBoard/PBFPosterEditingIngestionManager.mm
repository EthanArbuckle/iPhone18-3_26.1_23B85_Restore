@interface PBFPosterEditingIngestionManager
- (id)ingestConfiguration:(id)configuration updatedConfiguredProperties:(id)properties editingViewController:(id)controller galleryViewController:(id)viewController showEditingConfirmation:(BOOL)confirmation;
- (void)dismissViewController;
@end

@implementation PBFPosterEditingIngestionManager

- (id)ingestConfiguration:(id)configuration updatedConfiguredProperties:(id)properties editingViewController:(id)controller galleryViewController:(id)viewController showEditingConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  configurationCopy = configuration;
  propertiesCopy = properties;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  PosterEditingIngestionManager.ingestConfiguration(_:updatedConfiguredProperties:editingViewController:galleryViewController:showEditingConfirmation:)(configurationCopy, propertiesCopy, controllerCopy, viewController, confirmationCopy);
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