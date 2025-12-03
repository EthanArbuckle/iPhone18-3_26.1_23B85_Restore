@interface VKVisualSearchActivity
- (UIViewController)presentingViewController;
- (VKVisualSearchActivity)initWithImage:(CGImage *)image presentingViewController:(id)controller;
- (void)performActivity;
@end

@implementation VKVisualSearchActivity

- (VKVisualSearchActivity)initWithImage:(CGImage *)image presentingViewController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = VKVisualSearchActivity;
  v7 = [(UIActivity *)&v16 init];
  if (v7)
  {
    v8 = VKBundle();
    v9 = [v8 localizedStringForKey:@"VK_LOOK_UP_VISUAL_SEARCH_ITEM_TITLE" value:@"VK_LOOK_UP_VISUAL_SEARCH_ITEM_TITLE" table:@"Localizable"];
    title = v7->_title;
    v7->_title = v9;

    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDC0] scale:2];
    v13 = [v11 imageWithSymbolConfiguration:v12];
    image = v7->_image;
    v7->_image = v13;

    objc_storeWeak(&v7->_presentingViewController, controllerCopy);
    v7->_imageToProcess = image;
  }

  return v7;
}

- (void)performActivity
{
  v4 = [[VKVisualSearchViewController alloc] initWithImage:[(VKVisualSearchActivity *)self imageToProcess]];
  [(VKVisualSearchViewController *)v4 setModalPresentationStyle:2];
  presentingViewController = [(VKVisualSearchActivity *)self presentingViewController];
  [presentingViewController presentViewController:v4 animated:1 completion:0];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end