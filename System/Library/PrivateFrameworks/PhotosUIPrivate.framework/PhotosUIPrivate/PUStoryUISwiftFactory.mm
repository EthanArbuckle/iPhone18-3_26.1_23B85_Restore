@interface PUStoryUISwiftFactory
+ (id)thumbnailActionPerformerWithModel:(id)model;
+ (id)viewControllerWithConfiguration:(id)configuration contentViewController:(id *)controller;
@end

@implementation PUStoryUISwiftFactory

+ (id)thumbnailActionPerformerWithModel:(id)model
{
  modelCopy = model;
  v4 = [[PUStoryThumbnailActionPerformer alloc] initWithModel:modelCopy];

  return v4;
}

+ (id)viewControllerWithConfiguration:(id)configuration contentViewController:(id *)controller
{
  configurationCopy = configuration;
  v6 = [[PUStoryViewController alloc] initWithConfiguration:configurationCopy];

  v7 = [[PUNavigationController alloc] initWithRootViewController:v6];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom || ([MEMORY[0x1E69C3B18] sharedInstance], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "allowsFormSheetPresentation"), v10, !v11))
  {
    [(PUNavigationController *)v7 setModalPresentationStyle:0];
  }

  else
  {
    [(PUNavigationController *)v7 setModalPresentationStyle:2];
    presentationController = [(PUNavigationController *)v7 presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentationController2 = [(PUNavigationController *)v7 presentationController];
      [presentationController2 _setWantsFullScreen:1];
      [presentationController2 _setShouldScaleDownBehindDescendantSheets:1];
    }
  }

  v15 = v7;
  if (controller)
  {
    v16 = v6;
    *controller = v6;
  }

  return v15;
}

@end