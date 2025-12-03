@interface CACElementActionsPresentationViewController
+ (BOOL)canShowElementActionsForElement:(id)element;
+ (id)_elementActionManager;
- (CACElementActionsPresentationViewController)init;
- (CACElementActionsPresentationViewControllerDelegate)elementActionsDelegate;
- (CGRect)sourceRect;
- (id)actionForAXAction:(id)action;
- (void)performHideWithCompletion:(id)completion;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)setElement:(id)element;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CACElementActionsPresentationViewController

- (CACElementActionsPresentationViewController)init
{
  v9.receiver = self;
  v9.super_class = CACElementActionsPresentationViewController;
  v2 = [(CACElementActionsPresentationViewController *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277D75110];
    v4 = [CACLocaleUtilities localizedUIStringForKey:@"ElementActions"];
    v5 = [v3 alertControllerWithTitle:v4 message:0 preferredStyle:0];
    alertController = v2->_alertController;
    v2->_alertController = v5;

    popoverPresentationController = [(UIAlertController *)v2->_alertController popoverPresentationController];
    [popoverPresentationController setDelegate:v2];
  }

  return v2;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CACElementActionsPresentationViewController;
  [(CACElementActionsPresentationViewController *)&v5 viewDidAppear:appear];
  alertController = [(CACElementActionsPresentationViewController *)self alertController];
  [(CACElementActionsPresentationViewController *)self presentViewController:alertController animated:1 completion:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  alertController = [(CACElementActionsPresentationViewController *)self alertController];
  [alertController dismissViewControllerAnimated:1 completion:0];

  v6.receiver = self;
  v6.super_class = CACElementActionsPresentationViewController;
  [(CACElementActionsPresentationViewController *)&v6 viewWillDisappear:disappearCopy];
}

+ (id)_elementActionManager
{
  if (_elementActionManager_onceToken_0 != -1)
  {
    +[CACElementActionsPresentationViewController _elementActionManager];
  }

  v3 = _elementActionManager_sElementActionManager_0;

  return v3;
}

void __68__CACElementActionsPresentationViewController__elementActionManager__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CE7808]);
  v3 = +[CACAXDragManager sharedManager];
  v1 = [v0 initWithDragManager:v3];
  v2 = _elementActionManager_sElementActionManager_0;
  _elementActionManager_sElementActionManager_0 = v1;
}

+ (BOOL)canShowElementActionsForElement:(id)element
{
  elementCopy = element;
  _elementActionManager = [self _elementActionManager];
  v6 = [_elementActionManager canShowActionsForElement:elementCopy];

  return v6;
}

- (void)setElement:(id)element
{
  v25 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  objc_storeStrong(&self->_element, element);
  _elementActionManager = [objc_opt_class() _elementActionManager];
  v7 = [_elementActionManager actionsForElement:elementCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(CACElementActionsPresentationViewController *)self actionForAXAction:*(*(&v20 + 1) + 8 * v12)];
        alertController = [(CACElementActionsPresentationViewController *)self alertController];
        [alertController addAction:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = MEMORY[0x277D750F8];
  v16 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Cancel"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__CACElementActionsPresentationViewController_setElement___block_invoke;
  v19[3] = &unk_279CEB2F8;
  v19[4] = self;
  v17 = [v15 actionWithTitle:v16 style:1 handler:v19];

  alertController2 = [(CACElementActionsPresentationViewController *)self alertController];
  [alertController2 addAction:v17];
}

- (id)actionForAXAction:(id)action
{
  actionCopy = action;
  v5 = MEMORY[0x277D750F8];
  name = [actionCopy name];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CACElementActionsPresentationViewController_actionForAXAction___block_invoke;
  v10[3] = &unk_279CEB320;
  v10[4] = self;
  v11 = actionCopy;
  v7 = actionCopy;
  v8 = [v5 actionWithTitle:name style:0 handler:v10];

  return v8;
}

void __65__CACElementActionsPresentationViewController_actionForAXAction___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__CACElementActionsPresentationViewController_actionForAXAction___block_invoke_2;
  v5[3] = &unk_279CEB4C0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 performHideWithCompletion:v5];
}

void __65__CACElementActionsPresentationViewController_actionForAXAction___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) type] == 2)
  {
    v2 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CACElementActionsPresentationViewController_actionForAXAction___block_invoke_3;
    block[3] = &unk_279CEB4C0;
    *v4 = *(a1 + 32);
    v3 = v4[0];
    v7 = vextq_s8(*v4, *v4, 8uLL);
    dispatch_after(v2, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = [objc_opt_class() _elementActionManager];
    [v5 performAction:*(a1 + 32)];
  }
}

void __65__CACElementActionsPresentationViewController_actionForAXAction___block_invoke_3(uint64_t a1)
{
  v2 = [objc_opt_class() _elementActionManager];
  [v2 performAction:*(a1 + 40)];
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  view = [(CACElementActionsPresentationViewController *)self view];
  [presentationCopy setSourceView:view];

  [presentationCopy setCanOverlapSourceViewRect:1];
  [(CACElementActionsPresentationViewController *)self sourceRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(CACElementActionsPresentationViewController *)self view];
  [presentationCopy setSourceRect:{CACViewRectFromPortraitUpRect(view2, v7, v9, v11, v13)}];
}

- (void)performHideWithCompletion:(id)completion
{
  completionCopy = completion;
  elementActionsDelegate = [(CACElementActionsPresentationViewController *)self elementActionsDelegate];
  [elementActionsDelegate elementActionsPresentationViewController:self hideWithCompletion:completionCopy];
}

- (CACElementActionsPresentationViewControllerDelegate)elementActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_elementActionsDelegate);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end