@interface TSWPReferenceLibraryViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation TSWPReferenceLibraryViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TSWPReferenceLibraryViewController;
  [(TSWPReferenceLibraryViewController *)&v4 viewDidDisappear:a3];
  [(TSWPReferenceLibraryViewControllerDelegate *)self->_delegate referenceLibrarayViewControllerWasDismissed:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(TSWPReferenceLibraryViewController *)self presentingViewController];

  return [v2 supportedInterfaceOrientations];
}

@end