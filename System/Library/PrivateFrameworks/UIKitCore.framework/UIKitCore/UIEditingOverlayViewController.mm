@interface UIEditingOverlayViewController
- (void)_addInteractions;
- (void)_addPencilTextInputInteraction;
- (void)_removeInteractions;
- (void)loadView;
- (void)updateEditingOverlayContainer;
- (void)viewDidLoad;
@end

@implementation UIEditingOverlayViewController

- (void)loadView
{
  v3 = [(UIViewController *)self presentingViewController];
  if (v3)
  {
    v4 = [(UIViewController *)self presentingViewController];
    v5 = [v4 view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(UIViewController *)self _defaultInitialViewFrame];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = [(UIView *)[UIEditingOverlayGestureView alloc] initWithFrame:v7, v9, v11, v13];
  [(UIView *)v18 setAutoresizingMask:18];
  [(UIViewController *)self setView:v18];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = UIEditingOverlayViewController;
  [(UIViewController *)&v2 viewDidLoad];
}

- (void)_addInteractions
{
  v3 = [(UIViewController *)self traitCollection];
  if ([(UIUndoGestureInteraction *)v3 userInterfaceIdiom]!= 3)
  {
    v4 = [(UIEditingOverlayViewController *)self undoInteraction];

    if (v4)
    {
      goto LABEL_5;
    }

    v3 = objc_alloc_init(UIUndoGestureInteraction);
    [(UIEditingOverlayViewController *)self setUndoInteraction:v3];
  }

LABEL_5:
  v5 = [(UIEditingOverlayViewController *)self undoInteraction];

  if (v5)
  {
    v6 = [(UIViewController *)self view];
    v7 = [(UIEditingOverlayViewController *)self undoInteraction];
    [v6 addInteraction:v7];
  }

  v8 = +[UIDevice currentDevice];
  v9 = [v8 _supportsPencil];

  if (v9)
  {
    v10 = [_UIActionWhenIdle actionWhenIdleWithTarget:self selector:sel__addPencilTextInputInteraction object:0];
    [(UIEditingOverlayViewController *)self setAddPencilTextInputInteractionAction:v10];
  }
}

- (void)_addPencilTextInputInteraction
{
  v3 = [(UIEditingOverlayViewController *)self addPencilTextInputInteractionAction];
  [v3 invalidate];

  [(UIEditingOverlayViewController *)self setAddPencilTextInputInteractionAction:0];
  v4 = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];

  if (!v4)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v5 = _MergedGlobals_7_9;
    v17 = _MergedGlobals_7_9;
    if (!_MergedGlobals_7_9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getPKTextInputInteractionClass_block_invoke_0;
      v13[3] = &unk_1E70F2F20;
      v13[4] = &v14;
      __getPKTextInputInteractionClass_block_invoke_0(v13);
      v5 = v15[3];
    }

    v6 = v5;
    _Block_object_dispose(&v14, 8);
    v7 = objc_alloc_init(v5);
    [(UIEditingOverlayViewController *)self setPencilTextInputInteraction:v7];
  }

  v8 = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];

  if (v8)
  {
    v9 = [(UIViewController *)self view];
    v10 = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];
    [v9 addInteraction:v10];
  }

  v11 = +[UIKeyboard suppressionPolicyDelegate];

  if (!v11)
  {
    v12 = objc_alloc_init(_UIKeyboardSuppressionPencilPolicyDelegate);
    [UIKeyboard setSuppressionPolicyDelegate:v12];
  }
}

- (void)_removeInteractions
{
  v3 = [(UIEditingOverlayViewController *)self undoInteraction];

  if (v3)
  {
    v4 = [(UIViewController *)self view];
    v5 = [(UIEditingOverlayViewController *)self undoInteraction];
    [v4 removeInteraction:v5];
  }

  v6 = [(UIEditingOverlayViewController *)self addPencilTextInputInteractionAction];
  [v6 invalidate];

  [(UIEditingOverlayViewController *)self setAddPencilTextInputInteractionAction:0];
  v7 = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];

  if (v7)
  {
    v9 = [(UIViewController *)self view];
    v8 = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];
    [v9 removeInteraction:v8];
  }
}

- (void)updateEditingOverlayContainer
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(UIViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 _isTextEffectsWindow];

  v6 = [(UIViewController *)self view];
  v7 = [v6 window];
  v8 = v7;
  if (v5)
  {
    [v7 actualSceneBounds];
  }

  else
  {
    [v7 _sceneBounds];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = [(UIViewController *)self view];
  v18 = [v17 interactions];

  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v24 + 1) + 8 * i);
        if ([v23 conformsToProtocol:&unk_1F005C418])
        {
          [v23 editingOverlayContainerDidChangeToSceneBounds:{v13, v14, v15, v16}];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

@end