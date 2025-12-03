@interface UIKeyboardStickerEditorViewController
- (UIKeyboardStickerEditorViewController)initWithStickerIdentifier:(id)identifier sourceRect:(CGRect)rect;
- (void)configureBackdropView;
- (void)configureEditorViewController;
- (void)configureVisualEffectView;
- (void)dismiss;
- (void)dismissAnimated:(BOOL)animated;
- (void)showInKeyboard;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation UIKeyboardStickerEditorViewController

- (UIKeyboardStickerEditorViewController)initWithStickerIdentifier:(id)identifier sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = UIKeyboardStickerEditorViewController;
  v11 = [(UIViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stickerIdentifier, identifier);
    v12->_sourceRect.origin.x = x;
    v12->_sourceRect.origin.y = y;
    v12->_sourceRect.size.width = width;
    v12->_sourceRect.size.height = height;
  }

  return v12;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = UIKeyboardStickerEditorViewController;
  [(UIViewController *)&v4 viewDidLoad];
  view = [(UIViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)configureBackdropView
{
  v31[4] = *MEMORY[0x1E69E9840];
  v3 = [UIKBBackdropView alloc];
  view = [(UIViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [(UIViewController *)self view];
  _inheritedRenderConfig = [view2 _inheritedRenderConfig];
  v15 = -[UIKBBackdropView initWithFrame:style:](v3, "initWithFrame:style:", [_inheritedRenderConfig backdropStyle], v6, v8, v10, v12);
  backdropView = self->_backdropView;
  self->_backdropView = v15;

  [(UIView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(UIViewController *)self view];
  [view3 addSubview:self->_backdropView];
  topAnchor = [(UIView *)self->_backdropView topAnchor];
  topAnchor2 = [view3 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v28;
  bottomAnchor = [(UIView *)self->_backdropView bottomAnchor];
  bottomAnchor2 = [view3 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[1] = v19;
  leftAnchor = [(UIView *)self->_backdropView leftAnchor];
  leftAnchor2 = [view3 leftAnchor];
  v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v31[2] = v22;
  rightAnchor = [(UIView *)self->_backdropView rightAnchor];
  rightAnchor2 = [view3 rightAnchor];
  v25 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v31[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];

  [MEMORY[0x1E69977A0] activateConstraints:v26];
}

- (void)configureVisualEffectView
{
  v22[4] = *MEMORY[0x1E69E9840];
  v3 = [UIVisualEffectView alloc];
  v4 = [UIBlurEffect effectWithStyle:1200];
  v5 = [(UIVisualEffectView *)v3 initWithEffect:v4];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v5;

  [(UIView *)self->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = +[UIKeyboardEmojiPopoverController visualEffectGroupName];
  [(UIVisualEffectView *)self->_visualEffectView _setGroupName:v7];

  [(UIVisualEffectView *)self->_visualEffectView _setCornerRadius:13.0];
  view = [(UIViewController *)self view];
  [view addSubview:self->_visualEffectView];
  topAnchor = [(UIView *)self->_visualEffectView topAnchor];
  topAnchor2 = [view topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[0] = v19;
  bottomAnchor = [(UIView *)self->_visualEffectView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[1] = v10;
  leftAnchor = [(UIView *)self->_visualEffectView leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v22[2] = v13;
  rightAnchor = [(UIView *)self->_visualEffectView rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v22[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];

  [MEMORY[0x1E69977A0] activateConstraints:v17];
}

- (void)showInKeyboard
{
  v63[4] = *MEMORY[0x1E69E9840];
  if (!self->_shown)
  {
    self->_shown = 1;
    v3 = +[UIKeyboardImpl activeInstance];
    _rootInputWindowController = [v3 _rootInputWindowController];
    bottomEdgeView = [_rootInputWindowController bottomEdgeView];

    isEmojiPopoverPresented = [v3 isEmojiPopoverPresented];
    if (isEmojiPopoverPresented)
    {
      emojiPopoverController = [v3 emojiPopoverController];
      view = [emojiPopoverController view];

      [(UIKeyboardStickerEditorViewController *)self configureVisualEffectView];
      bottomEdgeView = view;
    }

    else if (_UISolariumEnabled())
    {
      [(UIKeyboardStickerEditorViewController *)self configureVisualEffectView];
      [(UIVisualEffectView *)self->_visualEffectView _setCornerRadius:27.0];
    }

    else
    {
      [(UIKeyboardStickerEditorViewController *)self configureBackdropView];
    }

    _viewControllerForAncestor = [bottomEdgeView _viewControllerForAncestor];
    _rootInputWindowController2 = [bottomEdgeView _rootInputWindowController];
    view2 = [(UIViewController *)self view];
    if (!_viewControllerForAncestor)
    {
      goto LABEL_30;
    }

    v59 = view2;
    v12 = +[UIKeyboardImpl isFloating];
    if (v12)
    {
      [_rootInputWindowController2 _inputView];
    }

    else
    {
      [_rootInputWindowController2 view];
    }
    v60 = ;
    v58 = v3;
    v56 = _rootInputWindowController2;
    if (isEmojiPopoverPresented)
    {
      emojiPopoverController2 = [v3 emojiPopoverController];
      view3 = [emojiPopoverController2 view];

      emojiPopoverController3 = [v3 emojiPopoverController];
      view4 = [emojiPopoverController3 view];
      topAnchor = [view4 topAnchor];

LABEL_27:
      v57 = _viewControllerForAncestor;
      [_viewControllerForAncestor addChildViewController:self];
      [bottomEdgeView addSubview:v59];
      topAnchor2 = [v59 topAnchor];
      v55 = topAnchor;
      v53 = [topAnchor2 constraintEqualToAnchor:topAnchor];
      v63[0] = v53;
      bottomAnchor = [v59 bottomAnchor];
      bottomAnchor2 = [view3 bottomAnchor];
      v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v63[1] = v29;
      leftAnchor = [v59 leftAnchor];
      leftAnchor2 = [view3 leftAnchor];
      v32 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v63[2] = v32;
      rightAnchor = [v59 rightAnchor];
      v61 = view3;
      [view3 rightAnchor];
      v35 = v34 = bottomEdgeView;
      v36 = [rightAnchor constraintEqualToAnchor:v35];
      v63[3] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];

      v38 = v37;
      bottomEdgeView = v34;

      _viewControllerForAncestor = v57;
      [MEMORY[0x1E69977A0] activateConstraints:v37];
      [(UIViewController *)self didMoveToParentViewController:v57];
      [(UIKeyboardStickerEditorViewController *)self configureEditorViewController];
      view5 = [(UIViewController *)self view];
      [view5 setAlpha:1.0];

      [(UIView *)self->_backdropView setAlpha:0.0];
      [(UIView *)self->_visualEffectView setAlpha:0.0];
      [v34 layoutIfNeeded];
      view6 = [(UIViewController *)self view];
      window = [view6 window];
      view7 = [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController view];
      [window convertRect:view7 toView:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      if (objc_opt_respondsToSelector())
      {
        [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController showStickerEffectViewWithSourceRect:1 showing:v44, v46, v48, v50];
      }

      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __55__UIKeyboardStickerEditorViewController_showInKeyboard__block_invoke;
      v62[3] = &unk_1E70F3590;
      v62[4] = self;
      [UIView animateWithDuration:0 delay:v62 usingSpringWithDamping:&__block_literal_global_546 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];

      v3 = v58;
      view2 = v59;
      _rootInputWindowController2 = v56;
LABEL_30:

      return;
    }

    _inputAccessoryView = [_rootInputWindowController2 _inputAccessoryView];

    if (_inputAccessoryView)
    {
      _inputAccessoryView2 = [_rootInputWindowController2 _inputAccessoryView];
LABEL_24:
      topAnchor = [_inputAccessoryView2 topAnchor];

      if (v12)
      {
        +[UIKeyboardPopoverContainer contentInsets];
        +[UIKeyboardPopoverContainer contentInsets];
        +[UIKeyboardPopoverContainer contentInsets];
        +[UIKeyboardPopoverContainer contentInsets];
      }

      view3 = v60;
      goto LABEL_27;
    }

    v20 = _viewControllerForAncestor;
    _inputAssistantView = [_rootInputWindowController2 _inputAssistantView];
    superview = [_inputAssistantView superview];
    if (superview)
    {
      v23 = superview;
      +[UIKeyboardImpl activeInstance];
      v25 = v24 = _rootInputWindowController2;
      _showsScribbleIconsInAssistantView = [v25 _showsScribbleIconsInAssistantView];

      _rootInputWindowController2 = v24;
      if ((_showsScribbleIconsInAssistantView & 1) == 0)
      {
        _inputAssistantView2 = [v24 _inputAssistantView];
LABEL_23:
        _inputAccessoryView2 = _inputAssistantView2;
        _viewControllerForAncestor = v20;
        goto LABEL_24;
      }
    }

    else
    {
    }

    _inputView = [_rootInputWindowController2 _inputView];

    if (_inputView)
    {
      [_rootInputWindowController2 _inputView];
    }

    else
    {
      [_rootInputWindowController2 view];
    }
    _inputAssistantView2 = ;
    goto LABEL_23;
  }
}

void __55__UIKeyboardStickerEditorViewController_showInKeyboard__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1040) setAlpha:1.0];
  [*(*(a1 + 32) + 1048) setAlpha:1.0];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:0x1EFB79230 object:*(a1 + 32)];
}

- (void)configureEditorViewController
{
  v49[2] = *MEMORY[0x1E69E9840];
  if (!self->_editorViewController)
  {
    gotLoadHelper_x8__OBJC_CLASS___STKRemoteStickerEffectEditorViewController(v2);
    v5 = [objc_alloc(*(v4 + 2568)) initWithStickerIdentifier:self->_stickerIdentifier];
    editorViewController = self->_editorViewController;
    self->_editorViewController = v5;

    v7 = self->_editorViewController;
    if (v7)
    {
      [(STKRemoteStickerEffectEditorViewController *)v7 setDelegate:self];
      [(UIViewController *)self addChildViewController:self->_editorViewController];
      view = [(UIViewController *)self view];
      view2 = [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController view];
      [view addSubview:view2];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = +[UIKeyboardImpl activeInstance];
      isEmojiPopoverPresented = [v10 isEmojiPopoverPresented];

      if (isEmojiPopoverPresented)
      {
        v12 = 10.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (isEmojiPopoverPresented)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = 0.0;
      }

      leftAnchor = [view2 leftAnchor];
      leftAnchor2 = [view leftAnchor];
      v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v12];
      v49[0] = v16;
      v41 = view2;
      rightAnchor = [view2 rightAnchor];
      v42 = view;
      rightAnchor2 = [view rightAnchor];
      v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v12];
      v49[1] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
      v21 = [v20 mutableCopy];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v23)
      {
        v25 = v23;
        v26 = *v44;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v22);
            }

            LODWORD(v24) = 1132068864;
            [*(*(&v43 + 1) + 8 * i) setPriority:v24];
          }

          v25 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v25);
      }

      centerXAnchor = [v41 centerXAnchor];
      centerXAnchor2 = [view centerXAnchor];
      v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v47[0] = v38;
      topAnchor = [v41 topAnchor];
      topAnchor2 = [view topAnchor];
      v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v13];
      v47[1] = v30;
      bottomAnchor = [v41 bottomAnchor];
      bottomAnchor2 = [view bottomAnchor];
      v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v13];
      v47[2] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
      [v22 addObjectsFromArray:v34];

      widthAnchor = [v41 widthAnchor];
      v36 = [widthAnchor constraintLessThanOrEqualToConstant:430.0];

      LODWORD(v37) = 1144750080;
      [v36 setPriority:v37];
      [v22 addObject:v36];
      [MEMORY[0x1E69977A0] activateConstraints:v22];
      [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController didMoveToParentViewController:self];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(UIViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    +[UIKBRenderConfig darkConfig];
  }

  else
  {
    +[UIKBRenderConfig defaultEmojiConfig];
  }
  v5 = ;

  -[UIKBBackdropView transitionToStyle:](self->_backdropView, "transitionToStyle:", [v5 backdropStyle]);
}

- (void)dismiss
{
  [(UIViewController *)self willMoveToParentViewController:0];
  view = [(UIViewController *)self view];
  [view removeFromSuperview];

  [(UIViewController *)self removeFromParentViewController];
}

- (void)dismissAnimated:(BOOL)animated
{
  if (self->_shown)
  {
    if (animated)
    {
      view = [(UIViewController *)self view];
      window = [view window];
      view2 = [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController view];
      [window convertRect:view2 toView:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      if (objc_opt_respondsToSelector())
      {
        [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController showStickerEffectViewWithSourceRect:0 showing:v8, v10, v12, v14];
      }

      v16[4] = self;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __57__UIKeyboardStickerEditorViewController_dismissAnimated___block_invoke;
      v17[3] = &unk_1E70F3590;
      v17[4] = self;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__UIKeyboardStickerEditorViewController_dismissAnimated___block_invoke_2;
      v16[3] = &unk_1E70F5AC0;
      [UIView animateWithDuration:0 delay:v17 usingSpringWithDamping:v16 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }

    else
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:0x1EFB79250 object:self];

      [(UIKeyboardStickerEditorViewController *)self dismiss];
    }
  }
}

void __57__UIKeyboardStickerEditorViewController_dismissAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1040) setAlpha:0.0];
  [*(*(a1 + 32) + 1048) setAlpha:0.0];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:0x1EFB79250 object:*(a1 + 32)];
}

@end