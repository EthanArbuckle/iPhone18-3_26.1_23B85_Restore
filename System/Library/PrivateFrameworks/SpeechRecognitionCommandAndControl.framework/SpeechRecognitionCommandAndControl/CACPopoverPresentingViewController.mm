@interface CACPopoverPresentingViewController
- (CGRect)portraitUpSourceRect;
- (UIPopoverPresentationControllerDelegate)popoverPresentationDelegate;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CACPopoverPresentingViewController

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:clearColor];

  [(CACPopoverPresentingViewController *)self setView:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = CACPopoverPresentingViewController;
  [(CACPopoverPresentingViewController *)&v19 viewDidAppear:appear];
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  viewControllerInPopover = [(CACPopoverPresentingViewController *)self viewControllerInPopover];
  [viewControllerInPopover setModalPresentationStyle:7];

  viewControllerInPopover2 = [(CACPopoverPresentingViewController *)self viewControllerInPopover];
  popoverPresentationController = [viewControllerInPopover2 popoverPresentationController];

  view = [(CACPopoverPresentingViewController *)self view];
  [popoverPresentationController setSourceView:view];

  [(CACPopoverPresentingViewController *)self portraitUpSourceRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view2 = [(CACPopoverPresentingViewController *)self view];
  [popoverPresentationController setSourceRect:{CACViewRectFromPortraitUpRect(view2, v9, v11, v13, v15)}];

  [popoverPresentationController setCanOverlapSourceViewRect:1];
  popoverPresentationDelegate = [(CACPopoverPresentingViewController *)self popoverPresentationDelegate];
  [popoverPresentationController setDelegate:popoverPresentationDelegate];

  [popoverPresentationController setPermittedArrowDirections:{-[CACPopoverPresentingViewController permittedArrowDirections](self, "permittedArrowDirections")}];
  viewControllerInPopover3 = [(CACPopoverPresentingViewController *)self viewControllerInPopover];
  [(CACPopoverPresentingViewController *)self presentViewController:viewControllerInPopover3 animated:1 completion:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:0];
  v5.receiver = self;
  v5.super_class = CACPopoverPresentingViewController;
  [(CACPopoverPresentingViewController *)&v5 viewWillDisappear:disappearCopy];
  [(CACPopoverPresentingViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (UIPopoverPresentationControllerDelegate)popoverPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverPresentationDelegate);

  return WeakRetained;
}

- (CGRect)portraitUpSourceRect
{
  x = self->_portraitUpSourceRect.origin.x;
  y = self->_portraitUpSourceRect.origin.y;
  width = self->_portraitUpSourceRect.size.width;
  height = self->_portraitUpSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end