@interface VUITVAppExtensionViewController
- (VUITVAppExtensionViewController)initWithURL:(id)l;
- (VUITVAppExtensionViewControllerDelegate)delegate;
@end

@implementation VUITVAppExtensionViewController

- (VUITVAppExtensionViewController)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = VUITVAppExtensionViewController;
  return [(VUITVAppExtensionViewController *)&v4 init];
}

- (VUITVAppExtensionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end