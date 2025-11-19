@interface UIKeyboardStickerEditorViewController
- (UIKeyboardStickerEditorViewController)initWithStickerIdentifier:(id)a3 sourceRect:(CGRect)a4;
- (void)configureBackdropView;
- (void)configureEditorViewController;
- (void)configureVisualEffectView;
- (void)dismiss;
- (void)dismissAnimated:(BOOL)a3;
- (void)showInKeyboard;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation UIKeyboardStickerEditorViewController

- (UIKeyboardStickerEditorViewController)initWithStickerIdentifier:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = UIKeyboardStickerEditorViewController;
  v11 = [(UIViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stickerIdentifier, a3);
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
  v3 = [(UIViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)configureBackdropView
{
  v31[4] = *MEMORY[0x1E69E9840];
  v3 = [UIKBBackdropView alloc];
  v4 = [(UIViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIViewController *)self view];
  v14 = [v13 _inheritedRenderConfig];
  v15 = -[UIKBBackdropView initWithFrame:style:](v3, "initWithFrame:style:", [v14 backdropStyle], v6, v8, v10, v12);
  backdropView = self->_backdropView;
  self->_backdropView = v15;

  [(UIView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(UIViewController *)self view];
  [v17 addSubview:self->_backdropView];
  v30 = [(UIView *)self->_backdropView topAnchor];
  v29 = [v17 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v31[0] = v28;
  v27 = [(UIView *)self->_backdropView bottomAnchor];
  v18 = [v17 bottomAnchor];
  v19 = [v27 constraintEqualToAnchor:v18];
  v31[1] = v19;
  v20 = [(UIView *)self->_backdropView leftAnchor];
  v21 = [v17 leftAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v31[2] = v22;
  v23 = [(UIView *)self->_backdropView rightAnchor];
  v24 = [v17 rightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
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
  v8 = [(UIViewController *)self view];
  [v8 addSubview:self->_visualEffectView];
  v21 = [(UIView *)self->_visualEffectView topAnchor];
  v20 = [v8 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v18 = [(UIView *)self->_visualEffectView bottomAnchor];
  v9 = [v8 bottomAnchor];
  v10 = [v18 constraintEqualToAnchor:v9];
  v22[1] = v10;
  v11 = [(UIView *)self->_visualEffectView leftAnchor];
  v12 = [v8 leftAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v22[2] = v13;
  v14 = [(UIView *)self->_visualEffectView rightAnchor];
  v15 = [v8 rightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
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
    v4 = [v3 _rootInputWindowController];
    v5 = [v4 bottomEdgeView];

    v6 = [v3 isEmojiPopoverPresented];
    if (v6)
    {
      v7 = [v3 emojiPopoverController];
      v8 = [v7 view];

      [(UIKeyboardStickerEditorViewController *)self configureVisualEffectView];
      v5 = v8;
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

    v9 = [v5 _viewControllerForAncestor];
    v10 = [v5 _rootInputWindowController];
    v11 = [(UIViewController *)self view];
    if (!v9)
    {
      goto LABEL_30;
    }

    v59 = v11;
    v12 = +[UIKeyboardImpl isFloating];
    if (v12)
    {
      [v10 _inputView];
    }

    else
    {
      [v10 view];
    }
    v60 = ;
    v58 = v3;
    v56 = v10;
    if (v6)
    {
      v13 = [v3 emojiPopoverController];
      v14 = [v13 view];

      v15 = [v3 emojiPopoverController];
      v16 = [v15 view];
      v17 = [v16 topAnchor];

LABEL_27:
      v57 = v9;
      [v9 addChildViewController:self];
      [v5 addSubview:v59];
      v54 = [v59 topAnchor];
      v55 = v17;
      v53 = [v54 constraintEqualToAnchor:v17];
      v63[0] = v53;
      v52 = [v59 bottomAnchor];
      v51 = [v14 bottomAnchor];
      v29 = [v52 constraintEqualToAnchor:v51];
      v63[1] = v29;
      v30 = [v59 leftAnchor];
      v31 = [v14 leftAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];
      v63[2] = v32;
      v33 = [v59 rightAnchor];
      v61 = v14;
      [v14 rightAnchor];
      v35 = v34 = v5;
      v36 = [v33 constraintEqualToAnchor:v35];
      v63[3] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];

      v38 = v37;
      v5 = v34;

      v9 = v57;
      [MEMORY[0x1E69977A0] activateConstraints:v37];
      [(UIViewController *)self didMoveToParentViewController:v57];
      [(UIKeyboardStickerEditorViewController *)self configureEditorViewController];
      v39 = [(UIViewController *)self view];
      [v39 setAlpha:1.0];

      [(UIView *)self->_backdropView setAlpha:0.0];
      [(UIView *)self->_visualEffectView setAlpha:0.0];
      [v34 layoutIfNeeded];
      v40 = [(UIViewController *)self view];
      v41 = [v40 window];
      v42 = [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController view];
      [v41 convertRect:v42 toView:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
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
      v11 = v59;
      v10 = v56;
LABEL_30:

      return;
    }

    v18 = [v10 _inputAccessoryView];

    if (v18)
    {
      v19 = [v10 _inputAccessoryView];
LABEL_24:
      v17 = [v19 topAnchor];

      if (v12)
      {
        +[UIKeyboardPopoverContainer contentInsets];
        +[UIKeyboardPopoverContainer contentInsets];
        +[UIKeyboardPopoverContainer contentInsets];
        +[UIKeyboardPopoverContainer contentInsets];
      }

      v14 = v60;
      goto LABEL_27;
    }

    v20 = v9;
    v21 = [v10 _inputAssistantView];
    v22 = [v21 superview];
    if (v22)
    {
      v23 = v22;
      +[UIKeyboardImpl activeInstance];
      v25 = v24 = v10;
      v26 = [v25 _showsScribbleIconsInAssistantView];

      v10 = v24;
      if ((v26 & 1) == 0)
      {
        v27 = [v24 _inputAssistantView];
LABEL_23:
        v19 = v27;
        v9 = v20;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v28 = [v10 _inputView];

    if (v28)
    {
      [v10 _inputView];
    }

    else
    {
      [v10 view];
    }
    v27 = ;
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
      v8 = [(UIViewController *)self view];
      v9 = [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController view];
      [v8 addSubview:v9];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = +[UIKeyboardImpl activeInstance];
      v11 = [v10 isEmojiPopoverPresented];

      if (v11)
      {
        v12 = 10.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (v11)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = 0.0;
      }

      v14 = [v9 leftAnchor];
      v15 = [v8 leftAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:v12];
      v49[0] = v16;
      v41 = v9;
      v17 = [v9 rightAnchor];
      v42 = v8;
      v18 = [v8 rightAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 constant:-v12];
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

      v40 = [v41 centerXAnchor];
      v39 = [v8 centerXAnchor];
      v38 = [v40 constraintEqualToAnchor:v39];
      v47[0] = v38;
      v28 = [v41 topAnchor];
      v29 = [v8 topAnchor];
      v30 = [v28 constraintEqualToAnchor:v29 constant:v13];
      v47[1] = v30;
      v31 = [v41 bottomAnchor];
      v32 = [v8 bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32 constant:-v13];
      v47[2] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
      [v22 addObjectsFromArray:v34];

      v35 = [v41 widthAnchor];
      v36 = [v35 constraintLessThanOrEqualToConstant:430.0];

      LODWORD(v37) = 1144750080;
      [v36 setPriority:v37];
      [v22 addObject:v36];
      [MEMORY[0x1E69977A0] activateConstraints:v22];
      [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController didMoveToParentViewController:self];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(UIViewController *)self traitCollection];
  if ([v4 userInterfaceStyle] == 2)
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
  v3 = [(UIViewController *)self view];
  [v3 removeFromSuperview];

  [(UIViewController *)self removeFromParentViewController];
}

- (void)dismissAnimated:(BOOL)a3
{
  if (self->_shown)
  {
    if (a3)
    {
      v4 = [(UIViewController *)self view];
      v5 = [v4 window];
      v6 = [(STKRemoteStickerEffectEditorViewController *)self->_editorViewController view];
      [v5 convertRect:v6 toView:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
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
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 postNotificationName:0x1EFB79250 object:self];

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