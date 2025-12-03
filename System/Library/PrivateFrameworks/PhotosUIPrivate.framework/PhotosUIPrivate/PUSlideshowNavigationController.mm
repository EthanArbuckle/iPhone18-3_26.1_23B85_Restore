@interface PUSlideshowNavigationController
- (CGSize)preferredContentSize;
- (PUSlideshowNavigationController)initWithRootViewController:(id)controller;
@end

@implementation PUSlideshowNavigationController

- (CGSize)preferredContentSize
{
  view = [(PUSlideshowNavigationController *)self view];
  [view frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (PUSlideshowNavigationController)initWithRootViewController:(id)controller
{
  v10.receiver = self;
  v10.super_class = PUSlideshowNavigationController;
  v3 = [(PUSlideshowNavigationController *)&v10 initWithRootViewController:controller];
  if (v3)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    navigationBar = [(PUSlideshowNavigationController *)v3 navigationBar];
    [navigationBar setTintColor:labelColor];
    standardAppearance = [navigationBar standardAppearance];
    [navigationBar setScrollEdgeAppearance:standardAppearance];

    toolbar = [(PUSlideshowNavigationController *)v3 toolbar];
    [toolbar setTintColor:labelColor];
    [(PUSlideshowNavigationController *)v3 setToolbarHidden:0];
    standardAppearance2 = [toolbar standardAppearance];
    [toolbar setScrollEdgeAppearance:standardAppearance2];

    [(PUSlideshowNavigationController *)v3 setModalPresentationStyle:0];
  }

  return v3;
}

@end