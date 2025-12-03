@interface TSWPReferenceLibraryViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation TSWPReferenceLibraryViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = TSWPReferenceLibraryViewController;
  [(TSWPReferenceLibraryViewController *)&v4 viewDidDisappear:disappear];
  [(TSWPReferenceLibraryViewControllerDelegate *)self->_delegate referenceLibrarayViewControllerWasDismissed:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  presentingViewController = [(TSWPReferenceLibraryViewController *)self presentingViewController];

  return [presentingViewController supportedInterfaceOrientations];
}

@end