@interface PUStoryUISwiftFactory
+ (id)thumbnailActionPerformerWithModel:(id)a3;
+ (id)viewControllerWithConfiguration:(id)a3 contentViewController:(id *)a4;
@end

@implementation PUStoryUISwiftFactory

+ (id)thumbnailActionPerformerWithModel:(id)a3
{
  v3 = a3;
  v4 = [[PUStoryThumbnailActionPerformer alloc] initWithModel:v3];

  return v4;
}

+ (id)viewControllerWithConfiguration:(id)a3 contentViewController:(id *)a4
{
  v5 = a3;
  v6 = [[PUStoryViewController alloc] initWithConfiguration:v5];

  v7 = [[PUNavigationController alloc] initWithRootViewController:v6];
  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 || ([MEMORY[0x1E69C3B18] sharedInstance], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "allowsFormSheetPresentation"), v10, !v11))
  {
    [(PUNavigationController *)v7 setModalPresentationStyle:0];
  }

  else
  {
    [(PUNavigationController *)v7 setModalPresentationStyle:2];
    v12 = [(PUNavigationController *)v7 presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [(PUNavigationController *)v7 presentationController];
      [v14 _setWantsFullScreen:1];
      [v14 _setShouldScaleDownBehindDescendantSheets:1];
    }
  }

  v15 = v7;
  if (a4)
  {
    v16 = v6;
    *a4 = v6;
  }

  return v15;
}

@end