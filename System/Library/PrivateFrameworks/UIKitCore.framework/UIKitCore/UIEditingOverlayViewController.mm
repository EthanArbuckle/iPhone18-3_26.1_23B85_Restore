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
  presentingViewController = [(UIViewController *)self presentingViewController];
  if (presentingViewController)
  {
    presentingViewController2 = [(UIViewController *)self presentingViewController];
    view = [presentingViewController2 view];
    [view bounds];
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
  traitCollection = [(UIViewController *)self traitCollection];
  if ([(UIUndoGestureInteraction *)traitCollection userInterfaceIdiom]!= 3)
  {
    undoInteraction = [(UIEditingOverlayViewController *)self undoInteraction];

    if (undoInteraction)
    {
      goto LABEL_5;
    }

    traitCollection = objc_alloc_init(UIUndoGestureInteraction);
    [(UIEditingOverlayViewController *)self setUndoInteraction:traitCollection];
  }

LABEL_5:
  undoInteraction2 = [(UIEditingOverlayViewController *)self undoInteraction];

  if (undoInteraction2)
  {
    view = [(UIViewController *)self view];
    undoInteraction3 = [(UIEditingOverlayViewController *)self undoInteraction];
    [view addInteraction:undoInteraction3];
  }

  v8 = +[UIDevice currentDevice];
  _supportsPencil = [v8 _supportsPencil];

  if (_supportsPencil)
  {
    v10 = [_UIActionWhenIdle actionWhenIdleWithTarget:self selector:sel__addPencilTextInputInteraction object:0];
    [(UIEditingOverlayViewController *)self setAddPencilTextInputInteractionAction:v10];
  }
}

- (void)_addPencilTextInputInteraction
{
  addPencilTextInputInteractionAction = [(UIEditingOverlayViewController *)self addPencilTextInputInteractionAction];
  [addPencilTextInputInteractionAction invalidate];

  [(UIEditingOverlayViewController *)self setAddPencilTextInputInteractionAction:0];
  pencilTextInputInteraction = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];

  if (!pencilTextInputInteraction)
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

  pencilTextInputInteraction2 = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];

  if (pencilTextInputInteraction2)
  {
    view = [(UIViewController *)self view];
    pencilTextInputInteraction3 = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];
    [view addInteraction:pencilTextInputInteraction3];
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
  undoInteraction = [(UIEditingOverlayViewController *)self undoInteraction];

  if (undoInteraction)
  {
    view = [(UIViewController *)self view];
    undoInteraction2 = [(UIEditingOverlayViewController *)self undoInteraction];
    [view removeInteraction:undoInteraction2];
  }

  addPencilTextInputInteractionAction = [(UIEditingOverlayViewController *)self addPencilTextInputInteractionAction];
  [addPencilTextInputInteractionAction invalidate];

  [(UIEditingOverlayViewController *)self setAddPencilTextInputInteractionAction:0];
  pencilTextInputInteraction = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];

  if (pencilTextInputInteraction)
  {
    view2 = [(UIViewController *)self view];
    pencilTextInputInteraction2 = [(UIEditingOverlayViewController *)self pencilTextInputInteraction];
    [view2 removeInteraction:pencilTextInputInteraction2];
  }
}

- (void)updateEditingOverlayContainer
{
  v29 = *MEMORY[0x1E69E9840];
  view = [(UIViewController *)self view];
  window = [view window];
  _isTextEffectsWindow = [window _isTextEffectsWindow];

  view2 = [(UIViewController *)self view];
  window2 = [view2 window];
  v8 = window2;
  if (_isTextEffectsWindow)
  {
    [window2 actualSceneBounds];
  }

  else
  {
    [window2 _sceneBounds];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  view3 = [(UIViewController *)self view];
  interactions = [view3 interactions];

  v19 = [interactions countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(interactions);
        }

        v23 = *(*(&v24 + 1) + 8 * i);
        if ([v23 conformsToProtocol:&unk_1F005C418])
        {
          [v23 editingOverlayContainerDidChangeToSceneBounds:{v13, v14, v15, v16}];
        }
      }

      v20 = [interactions countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

@end