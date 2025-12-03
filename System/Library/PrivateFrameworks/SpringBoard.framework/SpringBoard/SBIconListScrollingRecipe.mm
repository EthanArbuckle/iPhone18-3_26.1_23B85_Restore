@interface SBIconListScrollingRecipe
- (id)iconController;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBIconListScrollingRecipe

- (id)iconController
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  iconController = [embeddedDisplayWindowScene iconController];

  return iconController;
}

- (void)handleVolumeIncrease
{
  iconController = [(SBIconListScrollingRecipe *)self iconController];
  iconManager = [iconController iconManager];
  rootFolderController = [iconManager rootFolderController];

  [rootFolderController setCurrentPageIndex:objc_msgSend(rootFolderController animated:{"firstIconPageIndex"), 1}];
}

- (void)handleVolumeDecrease
{
  iconController = [(SBIconListScrollingRecipe *)self iconController];
  iconManager = [iconController iconManager];
  rootFolderController = [iconManager rootFolderController];

  [rootFolderController setCurrentPageIndex:objc_msgSend(rootFolderController animated:{"firstIconPageIndex"), 0}];
}

@end