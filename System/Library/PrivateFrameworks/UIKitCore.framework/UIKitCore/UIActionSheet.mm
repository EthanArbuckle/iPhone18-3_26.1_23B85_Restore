@interface UIActionSheet
- (BOOL)_prepareToDismissForTappedIndex:(int64_t)index;
- (BOOL)isVisible;
- (NSInteger)addButtonWithTitle:(NSString *)title;
- (UIActionSheet)initWithFrame:(CGRect)frame;
- (UIActionSheet)initWithTitle:(NSString *)title delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles;
- (id)_preparedAlertActionAtIndex:(unint64_t)index;
- (id)delegate;
- (void)_didPresent;
- (void)_performPresentationDismissalWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated;
- (void)_prepareAlertActions;
- (void)_setAttributedTitleString:(id)string;
- (void)_setIsPresented:(BOOL)presented;
- (void)_showFromRect:(CGRect)rect inView:(id)view direction:(unint64_t)direction animated:(BOOL)animated;
- (void)dealloc;
- (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)showFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
- (void)showInView:(UIView *)view;
@end

@implementation UIActionSheet

- (UIActionSheet)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = UIActionSheet;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIActionSheet.m" lineNumber:125 description:@"UIActionSheet: Buttons added must have a title."];
  }

  v6 = [(NSMutableArray *)self->_actions count];
  [(NSMutableArray *)self->_actions addObject:v5];

  return v6;
}

- (BOOL)isVisible
{
  if (self->_isPresented)
  {
    window = [(UIView *)self window];
    v3 = [window isHidden] ^ 1;
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

- (void)_showFromRect:(CGRect)rect inView:(id)view direction:(unint64_t)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  [(UIActionSheet *)self _setIsPresented:1];
  presenter = self->_presenter;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__UIActionSheet__showFromRect_inView_direction_animated___block_invoke;
  v15[3] = &unk_1E70F3590;
  v15[4] = self;
  [(_UIAlertControllerShimPresenter *)presenter _presentAlertControllerFromRect:viewCopy inView:direction direction:animatedCopy animated:v15 completion:x, y, width, height];
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
    delegate = [(UIActionSheet *)self delegate];
    self->_alertControllerShouldDismiss = 1;
    self->_dismissingAlertController = 1;
    v8 = delegate;
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

- (void)_performPresentationDismissalWithClickedButtonIndex:(int64_t)index animated:(BOOL)animated
{
  if (self->_alertControllerShouldDismiss)
  {
    v15 = v4;
    v16 = v5;
    v8 = [(UIActionSheet *)self delegate:index];
    presenter = self->_presenter;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__UIActionSheet__performPresentationDismissalWithClickedButtonIndex_animated___block_invoke;
    v11[3] = &unk_1E70F36D0;
    v12 = v8;
    selfCopy = self;
    indexCopy = index;
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

- (id)_preparedAlertActionAtIndex:(unint64_t)index
{
  _actions = [(UIAlertController *)self->_alertController _actions];
  if ([_actions count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_actions objectAtIndexedSubscript:index];
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

- (BOOL)_prepareToDismissForTappedIndex:(int64_t)index
{
  self->_handlingAlertActionShouldDismiss = 1;
  delegate = [(UIActionSheet *)self delegate];
  v6 = delegate;
  selfCopy = self;
  self->_alertControllerShouldDismiss = 0;
  if (objc_opt_respondsToSelector())
  {
    [delegate actionSheet:self clickedButtonAtIndex:index];
  }

  [(UIActionSheet *)self dismissWithClickedButtonIndex:index animated:1];
  self->_handlingAlertActionShouldDismiss = 0;
  return self->_alertControllerShouldDismiss;
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  [(UIActionSheet *)self _prepareToDismissForTappedIndex:[(UIActionSheet *)self cancelButtonIndex]];
  cancelButtonIndex = [(UIActionSheet *)self cancelButtonIndex];

  [(UIActionSheet *)self _dismissForTappedIndex:cancelButtonIndex];
}

- (void)_setIsPresented:(BOOL)presented
{
  if (self->_isPresented != presented)
  {
    self->_isPresented = presented;
    if (presented)
    {
      delegate = [(UIActionSheet *)self delegate];
      objc_storeStrong(&self->_retainedSelf, self);
      [(UIActionSheet *)self _prepareAlertActions];
      if (objc_opt_respondsToSelector())
      {
        [(UIActionSheet *)delegate willPresentActionSheet:self];
      }

      retainedSelf = delegate;
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
  delegate = [(UIActionSheet *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didPresentActionSheet:self];
  }
}

- (void)_setAttributedTitleString:(id)string
{
  stringCopy = string;
  _alertController = [(UIActionSheet *)self _alertController];
  [_alertController _setAttributedTitle:stringCopy];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end