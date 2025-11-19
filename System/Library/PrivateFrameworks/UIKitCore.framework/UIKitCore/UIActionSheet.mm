@interface UIActionSheet
- (BOOL)_prepareToDismissForTappedIndex:(int64_t)a3;
- (BOOL)isVisible;
- (NSInteger)addButtonWithTitle:(NSString *)title;
- (UIActionSheet)initWithFrame:(CGRect)a3;
- (UIActionSheet)initWithTitle:(NSString *)title delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles;
- (id)_preparedAlertActionAtIndex:(unint64_t)a3;
- (id)delegate;
- (void)_didPresent;
- (void)_performPresentationDismissalWithClickedButtonIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)_prepareAlertActions;
- (void)_setAttributedTitleString:(id)a3;
- (void)_setIsPresented:(BOOL)a3;
- (void)_showFromRect:(CGRect)a3 inView:(id)a4 direction:(unint64_t)a5 animated:(BOOL)a6;
- (void)dealloc;
- (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)showFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
- (void)showInView:(UIView *)view;
@end

@implementation UIActionSheet

- (UIActionSheet)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = UIActionSheet;
  v3 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIAlertController);
    alertController = v3->_alertController;
    v3->_alertController = v4;

    [(UIAlertController *)v3->_alertController setPreferredStyle:0];
    [(UIAlertController *)v3->_alertController _setShouldAllowNilParameters:1];
    v6 = objc_alloc_init(_UIAlertControllerShimPresenter);
    presenter = v3->_presenter;
    v3->_presenter = v6;

    [(_UIAlertControllerShimPresenter *)v3->_presenter setAlertController:v3->_alertController];
    [(_UIAlertControllerShimPresenter *)v3->_presenter setPopoverDelegate:v3];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v3->_actions;
    v3->_actions = v8;

    v3->_cancelIndex = -1;
    v3->_firstOtherButtonIndex = -1;
    v3->_destructiveButtonIndex = -1;
  }

  return v3;
}

- (UIActionSheet)initWithTitle:(NSString *)title delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles
{
  va_start(va, otherButtonTitles);
  v12 = title;
  v13 = delegate;
  v14 = cancelButtonTitle;
  v15 = destructiveButtonTitle;
  v16 = otherButtonTitles;
  v17 = [(UIActionSheet *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v18 = v17;
  if (v17)
  {
    [(UIActionSheet *)v17 setTitle:v12];
    [(UIActionSheet *)v18 setDelegate:v13];
    if (v15)
    {
      [(UIActionSheet *)v18 setDestructiveButtonIndex:[(UIActionSheet *)v18 addButtonWithTitle:v15]];
    }

    if (v16)
    {
      va_copy(v23, va);
      do
      {
        v19 = [(UIActionSheet *)v18 addButtonWithTitle:v16];
        if ([(UIActionSheet *)v18 firstOtherButtonIndex]== -1)
        {
          [(UIActionSheet *)v18 _setFirstOtherButtonIndex:v19];
        }

        v20 = va_arg(v23, void *);
        v21 = v20;

        v16 = v21;
      }

      while (v21);
    }

    if (v14)
    {
      [(UIActionSheet *)v18 setCancelButtonIndex:[(UIActionSheet *)v18 addButtonWithTitle:v14]];
    }

    v16 = 0;
  }

  return v18;
}

- (void)dealloc
{
  [(_UIAlertControllerShimPresenter *)self->_presenter setAlertController:0];
  [(_UIAlertControllerShimPresenter *)self->_presenter setPopoverDelegate:0];
  presenter = self->_presenter;
  self->_presenter = 0;

  v4.receiver = self;
  v4.super_class = UIActionSheet;
  [(UIView *)&v4 dealloc];
}

- (NSInteger)addButtonWithTitle:(NSString *)title
{
  v5 = title;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIActionSheet.m" lineNumber:125 description:@"UIActionSheet: Buttons added must have a title."];
  }

  v6 = [(NSMutableArray *)self->_actions count];
  [(NSMutableArray *)self->_actions addObject:v5];

  return v6;
}

- (BOOL)isVisible
{
  if (self->_isPresented)
  {
    v2 = [(UIView *)self window];
    v3 = [v2 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)showFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
  v4 = animated;
  v6 = item;
  [(UIActionSheet *)self _setIsPresented:1];
  presenter = self->_presenter;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__UIActionSheet_showFromBarButtonItem_animated___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  [(_UIAlertControllerShimPresenter *)presenter _presentAlertControllerFromBarButtonItem:v6 animated:v4 completion:v8];
}

- (void)_showFromRect:(CGRect)a3 inView:(id)a4 direction:(unint64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  [(UIActionSheet *)self _setIsPresented:1];
  presenter = self->_presenter;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__UIActionSheet__showFromRect_inView_direction_animated___block_invoke;
  v15[3] = &unk_1E70F3590;
  v15[4] = self;
  [(_UIAlertControllerShimPresenter *)presenter _presentAlertControllerFromRect:v13 inView:a5 direction:v6 animated:v15 completion:x, y, width, height];
}

- (void)showInView:(UIView *)view
{
  v4 = view;
  [(UIActionSheet *)self _setIsPresented:1];
  [(UIView *)v4 bounds];
  presenter = self->_presenter;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__UIActionSheet_showInView___block_invoke;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  [(_UIAlertControllerShimPresenter *)presenter _presentAlertControllerFromRect:v4 inView:0 direction:1 animated:v10 completion:v6 + floor(v5 * 0.5), v8 + floor(v7 * 0.5), 1.0, 1.0];
}

- (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated
{
  if (!self->_dismissingAlertController)
  {
    v4 = animated;
    v7 = [(UIActionSheet *)self delegate];
    self->_alertControllerShouldDismiss = 1;
    self->_dismissingAlertController = 1;
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      [v8 actionSheet:self willDismissWithButtonIndex:buttonIndex];
    }

    if (!self->_handlingAlertActionShouldDismiss)
    {
      [(UIActionSheet *)self _performPresentationDismissalWithClickedButtonIndex:buttonIndex animated:v4];
    }
  }
}

- (void)_performPresentationDismissalWithClickedButtonIndex:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_alertControllerShouldDismiss)
  {
    v15 = v4;
    v16 = v5;
    v8 = [(UIActionSheet *)self delegate:a3];
    presenter = self->_presenter;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__UIActionSheet__performPresentationDismissalWithClickedButtonIndex_animated___block_invoke;
    v11[3] = &unk_1E70F36D0;
    v12 = v8;
    v13 = self;
    v14 = a3;
    v10 = v8;
    [(_UIAlertControllerShimPresenter *)presenter _dismissAlertControllerAnimated:1 completion:v11];
    self->_dismissingAlertController = 0;
  }
}

uint64_t __78__UIActionSheet__performPresentationDismissalWithClickedButtonIndex_animated___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) actionSheet:*(a1 + 40) didDismissWithButtonIndex:*(a1 + 48)];
  }

  v2 = *(a1 + 40);

  return [v2 _setIsPresented:0];
}

- (id)_preparedAlertActionAtIndex:(unint64_t)a3
{
  v4 = [(UIAlertController *)self->_alertController _actions];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)_prepareAlertActions
{
  if (!self->_hasPreparedAlertActions)
  {
    objc_initWeak(&location, self);
    for (i = 0; i < [(NSMutableArray *)self->_actions count]; ++i)
    {
      v4 = [(NSMutableArray *)self->_actions objectAtIndex:i];
      if (i == self->_destructiveButtonIndex)
      {
        v5 = 2;
      }

      else
      {
        v5 = i == self->_cancelIndex;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__UIActionSheet__prepareAlertActions__block_invoke;
      v9[3] = &unk_1E70F36F8;
      objc_copyWeak(v10, &location);
      v10[1] = i;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __37__UIActionSheet__prepareAlertActions__block_invoke_2;
      v7[3] = &unk_1E70F3720;
      objc_copyWeak(v8, &location);
      v8[1] = i;
      v6 = [UIAlertAction _actionWithTitle:v4 image:0 style:v5 handler:v9 shouldDismissHandler:v7];
      [(UIAlertController *)self->_alertController addAction:v6];

      objc_destroyWeak(v8);
      objc_destroyWeak(v10);
    }

    self->_hasPreparedAlertActions = 1;
    objc_destroyWeak(&location);
  }
}

void __37__UIActionSheet__prepareAlertActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _dismissForTappedIndex:*(a1 + 40)];
    WeakRetained = v3;
  }
}

uint64_t __37__UIActionSheet__prepareAlertActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _prepareToDismissForTappedIndex:*(a1 + 40)];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_prepareToDismissForTappedIndex:(int64_t)a3
{
  self->_handlingAlertActionShouldDismiss = 1;
  v5 = [(UIActionSheet *)self delegate];
  v6 = v5;
  v7 = self;
  self->_alertControllerShouldDismiss = 0;
  if (objc_opt_respondsToSelector())
  {
    [v5 actionSheet:self clickedButtonAtIndex:a3];
  }

  [(UIActionSheet *)self dismissWithClickedButtonIndex:a3 animated:1];
  self->_handlingAlertActionShouldDismiss = 0;
  return self->_alertControllerShouldDismiss;
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  [(UIActionSheet *)self _prepareToDismissForTappedIndex:[(UIActionSheet *)self cancelButtonIndex]];
  v4 = [(UIActionSheet *)self cancelButtonIndex];

  [(UIActionSheet *)self _dismissForTappedIndex:v4];
}

- (void)_setIsPresented:(BOOL)a3
{
  if (self->_isPresented != a3)
  {
    self->_isPresented = a3;
    if (a3)
    {
      v6 = [(UIActionSheet *)self delegate];
      objc_storeStrong(&self->_retainedSelf, self);
      [(UIActionSheet *)self _prepareAlertActions];
      if (objc_opt_respondsToSelector())
      {
        [(UIActionSheet *)v6 willPresentActionSheet:self];
      }

      retainedSelf = v6;
    }

    else
    {
      retainedSelf = self->_retainedSelf;
      self->_retainedSelf = 0;
    }
  }
}

- (void)_didPresent
{
  v3 = [(UIActionSheet *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 didPresentActionSheet:self];
  }
}

- (void)_setAttributedTitleString:(id)a3
{
  v4 = a3;
  v5 = [(UIActionSheet *)self _alertController];
  [v5 _setAttributedTitle:v4];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end