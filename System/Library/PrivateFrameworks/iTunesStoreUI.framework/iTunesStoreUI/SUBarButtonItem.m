@interface SUBarButtonItem
- (BOOL)isLoading;
- (UIEdgeInsets)accessoryViewInsets;
- (id)_navigationButton;
- (id)createViewForNavigationItem:(id)a3;
- (void)_addTouchCaptureViewForNavigationButton:(id)a3;
- (void)_removeTouchCaptureView;
- (void)_setTitle:(id)a3 isConfirmation:(BOOL)a4 appearance:(id)a5 animated:(BOOL)a6;
- (void)_touchCaptureAction:(id)a3;
- (void)_updateViewForAccessoryChange;
- (void)configureFromScriptButton:(id)a3;
- (void)dealloc;
- (void)hideConfirmationWithAppearance:(id)a3 animated:(BOOL)a4;
- (void)setAccessoryView:(id)a3;
- (void)setAccessoryViewInsets:(UIEdgeInsets)a3;
- (void)setLoading:(BOOL)a3;
- (void)showConfirmationWithTitle:(id)a3 appearance:(id)a4 animated:(BOOL)a5;
@end

@implementation SUBarButtonItem

- (void)dealloc
{
  [(SUBarButtonItem *)self _removeTouchCaptureView];

  v3.receiver = self;
  v3.super_class = SUBarButtonItem;
  [(SUBarButtonItem *)&v3 dealloc];
}

- (void)hideConfirmationWithAppearance:(id)a3 animated:(BOOL)a4
{
  preConfirmationTitle = self->_preConfirmationTitle;
  if (preConfirmationTitle)
  {
    [(SUBarButtonItem *)self _setTitle:preConfirmationTitle isConfirmation:0 appearance:a3 animated:a4];

    self->_confirmationAppearance = 0;
    self->_preConfirmationTitle = 0;
  }
}

- (BOOL)isLoading
{
  [(SUBarButtonItem *)self accessoryView];
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (void)setAccessoryView:(id)a3
{
  accessoryView = self->_accessoryView;
  if (accessoryView != a3)
  {

    self->_accessoryView = a3;
  }

  [-[SUBarButtonItem _navigationButton](self "_navigationButton")];

  [(SUBarButtonItem *)self _updateViewForAccessoryChange];
}

- (void)setAccessoryViewInsets:(UIEdgeInsets)a3
{
  self->_accessoryViewInsets = a3;
  [-[SUBarButtonItem _navigationButton](self "_navigationButton")];

  [(SUBarButtonItem *)self _updateViewForAccessoryChange];
}

- (void)setLoading:(BOOL)a3
{
  if (a3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:1];
    [v4 sizeToFit];
    [v4 startAnimating];
    [(SUBarButtonItem *)self setAccessoryView:v4];
    [(SUBarButtonItem *)self setAccessoryViewInsets:0.0, 0.0, 0.0, 10.0];
  }

  else
  {

    [(SUBarButtonItem *)self setAccessoryView:0];
  }
}

- (void)showConfirmationWithTitle:(id)a3 appearance:(id)a4 animated:(BOOL)a5
{
  if (!self->_preConfirmationTitle)
  {
    v5 = a5;

    self->_confirmationAppearance = [a4 copy];
    self->_preConfirmationTitle = [(SUBarButtonItem *)self title];

    [(SUBarButtonItem *)self _setTitle:a3 isConfirmation:1 appearance:a4 animated:v5];
  }
}

- (void)configureFromScriptButton:(id)a3
{
  -[SUBarButtonItem setLoading:](self, "setLoading:", [a3 loading]);
  v5.receiver = self;
  v5.super_class = SUBarButtonItem;
  [(UIBarButtonItem *)&v5 configureFromScriptButton:a3];
}

- (id)createViewForNavigationItem:(id)a3
{
  self->_lastNavigationItem = a3;
  v7.receiver = self;
  v7.super_class = SUBarButtonItem;
  v5 = [(SUBarButtonItem *)&v7 createViewForNavigationItem:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAccessoryView:self->_accessoryView];
    [v5 setAccessoryViewInsets:{self->_accessoryViewInsets.top, self->_accessoryViewInsets.left, self->_accessoryViewInsets.bottom, self->_accessoryViewInsets.right}];
    [v5 sizeToFit];
  }

  return v5;
}

- (void)_touchCaptureAction:(id)a3
{
  if ([(SUBarButtonItem *)self isShowingConfirmation])
  {
    confirmationAppearance = self->_confirmationAppearance;

    [(SUBarButtonItem *)self hideConfirmationWithAppearance:confirmationAppearance animated:1];
  }

  else
  {

    [(SUBarButtonItem *)self _removeTouchCaptureView];
  }
}

- (void)_addTouchCaptureViewForNavigationButton:(id)a3
{
  if (!self->_touchCaptureView)
  {
    v5 = [objc_msgSend(a3 "window")];
    self->_touchCaptureView = v5;
    [(SUTouchCaptureView *)v5 addTarget:self action:sel__touchCaptureAction_ forControlEvents:64];
    touchCaptureView = self->_touchCaptureView;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}];

    [(SUTouchCaptureView *)touchCaptureView setPassThroughViews:v7];
  }
}

- (id)_navigationButton
{
  v3 = [(UINavigationItem *)self->_lastNavigationItem leftBarButtonItem];
  lastNavigationItem = self->_lastNavigationItem;
  if (v3 == self)
  {
    v6 = [(UINavigationItem *)lastNavigationItem customLeftView];
  }

  else
  {
    if ([(UINavigationItem *)lastNavigationItem rightBarButtonItem]!= self)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v6 = [(UINavigationItem *)self->_lastNavigationItem customRightView];
  }

  v5 = v6;
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)_removeTouchCaptureView
{
  touchCaptureView = self->_touchCaptureView;
  if (touchCaptureView)
  {
    [-[SUTouchCaptureView window](touchCaptureView "window")];
    [(SUTouchCaptureView *)self->_touchCaptureView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

    self->_touchCaptureView = 0;
  }
}

- (void)_setTitle:(id)a3 isConfirmation:(BOOL)a4 appearance:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v11 = [(SUBarButtonItem *)self _navigationButton];
  v12 = [v11 superviewOfClass:objc_opt_class()];
  if (v12)
  {
    v13 = v12;
    [v11 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(SUBarButtonItem *)self title];
    [(SUBarButtonItem *)self setTitle:a3];
    [v13 layoutIfNeeded];
    [v11 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(SUBarButtonItem *)self setTitle:v22];
    [v13 layoutIfNeeded];
    if (a5)
    {
      if (v8)
      {
        [a5 styleConfirmationButtonItem:self];
      }

      else
      {
        [a5 styleBarButtonItem:self];
      }
    }

    [(SUBarButtonItem *)self setTitle:&stru_1F41B3660];
    [v11 setFrame:{v15, v17, v19, v21}];
    v31 = 0.35;
    if (!v6)
    {
      v31 = 0.0;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __64__SUBarButtonItem__setTitle_isConfirmation_appearance_animated___block_invoke;
    v34[3] = &unk_1E81664A8;
    v34[6] = v24;
    v34[7] = v26;
    v34[8] = v28;
    v34[9] = v30;
    v34[4] = v11;
    v34[5] = v13;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __64__SUBarButtonItem__setTitle_isConfirmation_appearance_animated___block_invoke_2;
    v32[3] = &unk_1E81664D0;
    v33 = v8;
    v32[4] = self;
    v32[5] = v11;
    v32[6] = a3;
    [MEMORY[0x1E69DD250] animateWithDuration:v34 animations:v32 completion:v31];
  }
}

uint64_t __64__SUBarButtonItem__setTitle_isConfirmation_appearance_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

uint64_t __64__SUBarButtonItem__setTitle_isConfirmation_appearance_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 _addTouchCaptureViewForNavigationButton:*(a1 + 40)];
  }

  else
  {
    [v3 _removeTouchCaptureView];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 setTitle:v5];
}

- (void)_updateViewForAccessoryChange
{
  [-[SUBarButtonItem _navigationButton](self "_navigationButton")];
  v3 = [(UINavigationItem *)self->_lastNavigationItem navigationBar];

  [v3 setNeedsLayout];
}

- (UIEdgeInsets)accessoryViewInsets
{
  top = self->_accessoryViewInsets.top;
  left = self->_accessoryViewInsets.left;
  bottom = self->_accessoryViewInsets.bottom;
  right = self->_accessoryViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end