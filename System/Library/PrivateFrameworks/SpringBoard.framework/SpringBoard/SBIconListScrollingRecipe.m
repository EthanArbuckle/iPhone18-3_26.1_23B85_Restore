@interface SBIconListScrollingRecipe
- (id)iconController;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBIconListScrollingRecipe

- (id)iconController
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];
  v4 = [v3 iconController];

  return v4;
}

- (void)handleVolumeIncrease
{
  v2 = [(SBIconListScrollingRecipe *)self iconController];
  v3 = [v2 iconManager];
  v4 = [v3 rootFolderController];

  [v4 setCurrentPageIndex:objc_msgSend(v4 animated:{"firstIconPageIndex"), 1}];
}

- (void)handleVolumeDecrease
{
  v2 = [(SBIconListScrollingRecipe *)self iconController];
  v3 = [v2 iconManager];
  v4 = [v3 rootFolderController];

  [v4 setCurrentPageIndex:objc_msgSend(v4 animated:{"firstIconPageIndex"), 0}];
}

@end