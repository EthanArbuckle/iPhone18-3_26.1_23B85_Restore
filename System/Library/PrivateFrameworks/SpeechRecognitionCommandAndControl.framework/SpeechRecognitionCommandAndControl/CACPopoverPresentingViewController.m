@interface CACPopoverPresentingViewController
- (CGRect)portraitUpSourceRect;
- (UIPopoverPresentationControllerDelegate)popoverPresentationDelegate;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CACPopoverPresentingViewController

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v3];

  [(CACPopoverPresentingViewController *)self setView:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = CACPopoverPresentingViewController;
  [(CACPopoverPresentingViewController *)&v19 viewDidAppear:a3];
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v4 = [(CACPopoverPresentingViewController *)self viewControllerInPopover];
  [v4 setModalPresentationStyle:7];

  v5 = [(CACPopoverPresentingViewController *)self viewControllerInPopover];
  v6 = [v5 popoverPresentationController];

  v7 = [(CACPopoverPresentingViewController *)self view];
  [v6 setSourceView:v7];

  [(CACPopoverPresentingViewController *)self portraitUpSourceRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(CACPopoverPresentingViewController *)self view];
  [v6 setSourceRect:{CACViewRectFromPortraitUpRect(v16, v9, v11, v13, v15)}];

  [v6 setCanOverlapSourceViewRect:1];
  v17 = [(CACPopoverPresentingViewController *)self popoverPresentationDelegate];
  [v6 setDelegate:v17];

  [v6 setPermittedArrowDirections:{-[CACPopoverPresentingViewController permittedArrowDirections](self, "permittedArrowDirections")}];
  v18 = [(CACPopoverPresentingViewController *)self viewControllerInPopover];
  [(CACPopoverPresentingViewController *)self presentViewController:v18 animated:1 completion:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:0];
  v5.receiver = self;
  v5.super_class = CACPopoverPresentingViewController;
  [(CACPopoverPresentingViewController *)&v5 viewWillDisappear:v3];
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