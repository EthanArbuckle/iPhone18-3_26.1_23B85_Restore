@interface UIDictationPopoverController
- (BOOL)canPresentTip;
- (CGRect)clipBounds;
- (CGRect)rectInWindow:(CGRect)a3;
- (CGRect)sourceRect;
- (UIDictationPopoverController)initWithContentView:(id)a3 contentSize:(CGSize)a4 inputDelegate:(id)a5;
- (int64_t)overrideUserInterfaceStyle;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)dealloc;
- (void)dismissTip;
- (void)forwardRemoteDictationPopover:(BOOL)a3;
- (void)keyboardDidChange:(id)a3;
- (void)movePopoverView:(CGRect)a3 editMenuFrame:(id)a4;
- (void)movePopoverViewForEditMenuFrame:(CGRect)a3;
- (void)movePopoverViewToCurrentCareLocation;
- (void)presentTip:(id)a3 tipDescription:(id)a4;
- (void)setRemoteDictationPopover:(id)a3;
- (void)textDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation UIDictationPopoverController

- (UIDictationPopoverController)initWithContentView:(id)a3 contentSize:(CGSize)a4 inputDelegate:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v49.receiver = self;
  v49.super_class = UIDictationPopoverController;
  v12 = [(UIKeyboardPopoverController *)&v49 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dictationView, a3);
    [(UIViewController *)v13 setPreferredContentSize:width, height];
    objc_storeStrong(&v13->_inputDelegate, a5);
    v14 = [v11 selectedTextRange];
    v15 = [v14 start];
    [v11 caretRectForPosition:v15];
    v13->_initCaretRectInView.origin.x = v16;
    v13->_initCaretRectInView.origin.y = v17;
    v13->_initCaretRectInView.size.width = v18;
    v13->_initCaretRectInView.size.height = v19;

    if (!+[UIKeyboard isKeyboardProcess])
    {
      v20 = [(UITextInput *)v13->_inputDelegate textInputView];
      v21 = [v20 keyboardSceneDelegate];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      }

      v24 = v23;

      v25 = [MEMORY[0x1E695DF70] array];
      scrollViews = v13->_scrollViews;
      v13->_scrollViews = v25;

      v27 = [v11 textInputView];
      if (v27)
      {
        v28 = v27;
        do
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v13->_scrollViews;
            v30 = v28;
            [(NSMutableArray *)v29 addObject:v30];
            [v30 _addScrollViewScrollObserver:v13];
          }

          v31 = [v28 superview];

          v28 = v31;
        }

        while (v31);
      }

      v32 = [v24 containerRootController];
      v33 = [v32 bottomEdgeView];
      bottomEdgeView = v13->_bottomEdgeView;
      v13->_bottomEdgeView = v33;

      v35 = [v24 containerRootController];
      v36 = [v35 inputViewSet];

      [(UIView *)&v13->_bottomEdgeView->super.super.isa _addGeometryChangeObserver:v13];
      [(UIView *)v13->_bottomEdgeView frame];
      v13->_bottomMargin = CGRectGetMinY(v50);
      v37 = [v11 textInputView];
      v38 = [v36 inputAccessoryView];
      v39 = [v37 isDescendantOfView:v38];

      if (v39)
      {
        v40 = [v36 inputAccessoryView];
        inputAccessoryView = v13->_inputAccessoryView;
        v13->_inputAccessoryView = v40;
      }

      v42 = [v11 selectedTextRange];
      v43 = [v11 selectionRectsForRange:v42];
      v44 = [v43 firstObject];
      v13->_isVerticalText = [v44 isVertical];

      v45 = [MEMORY[0x1E696AD88] defaultCenter];
      [v45 addObserver:v13 selector:sel_keyboardDidChange_ name:@"UIKeyboardDidShowNotification" object:0];

      v46 = [MEMORY[0x1E696AD88] defaultCenter];
      [v46 addObserver:v13 selector:sel_keyboardDidChange_ name:@"UIKeyboardDidHideNotification" object:0];

      v47 = [MEMORY[0x1E696AD88] defaultCenter];
      [v47 addObserver:v13 selector:sel_textDidChange_ name:*off_1E70ECAC0 object:0];
    }
  }

  return v13;
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_scrollViews;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v13 + 1) + 8 * v7++) _removeScrollViewScrollObserver:self];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v5);
    }

    scrollViews = self->_scrollViews;
    self->_scrollViews = 0;

    [(UIView *)&self->_bottomEdgeView->super.super.isa _removeGeometryChangeObserver:?];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v17[0] = @"UIKeyboardDidShowNotification";
    v17[1] = @"UIKeyboardDidHideNotification";
    v17[2] = *off_1E70ECAC0;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    [(NSNotificationCenter *)v9 _uiRemoveObserver:v10 names:?];
  }

  inputDelegate = self->_inputDelegate;
  self->_inputDelegate = 0;

  v12.receiver = self;
  v12.super_class = UIDictationPopoverController;
  [(UIViewController *)&v12 dealloc];
}

- (void)viewDidLoad
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = UIDictationPopoverController;
  [(UIKeyboardPopoverController *)&v31 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(UIViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(UIViewController *)self view];
  [v5 addSubview:self->_dictationView];

  [(UIView *)self->_dictationView setNeedsLayout];
  v6 = [(UIView *)self->_dictationView topAnchor];
  v7 = [(UIViewController *)self view];
  v8 = [v7 safeAreaLayoutGuide];
  v9 = [v8 topAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];
  dictationViewTopConstraint = self->_dictationViewTopConstraint;
  self->_dictationViewTopConstraint = v10;

  v12 = [(UIView *)self->_dictationView bottomAnchor];
  v13 = [(UIViewController *)self view];
  v14 = [v13 safeAreaLayoutGuide];
  v15 = [v14 bottomAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
  dictationViewBottomConstraint = self->_dictationViewBottomConstraint;
  self->_dictationViewBottomConstraint = v16;

  v29 = MEMORY[0x1E69977A0];
  v18 = self->_dictationViewBottomConstraint;
  v32[0] = self->_dictationViewTopConstraint;
  v32[1] = v18;
  v30 = [(UIView *)self->_dictationView leadingAnchor];
  v19 = [(UIViewController *)self view];
  v20 = [v19 safeAreaLayoutGuide];
  v21 = [v20 leadingAnchor];
  v22 = [v30 constraintEqualToAnchor:v21];
  v32[2] = v22;
  v23 = [(UIView *)self->_dictationView trailingAnchor];
  v24 = [(UIViewController *)self view];
  v25 = [v24 safeAreaLayoutGuide];
  v26 = [v25 trailingAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  v32[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [v29 activateConstraints:v28];
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = UIDictationPopoverController;
  [(UIViewController *)&v12 viewDidAppear:a3];
  [(UIDictationPopoverController *)self forwardRemoteDictationPopover:1];
  [(UIDictationPopoverController *)self rectInWindow:self->_initCaretRectInView.origin.x, self->_initCaretRectInView.origin.y, self->_initCaretRectInView.size.width, self->_initCaretRectInView.size.height];
  self->_sourceRect.origin.x = v4;
  self->_sourceRect.origin.y = v5;
  self->_sourceRect.size.width = v6;
  self->_sourceRect.size.height = v7;
  [(UIDictationPopoverController *)self clipBounds];
  self->_clipBounds.origin.x = v8;
  self->_clipBounds.origin.y = v9;
  self->_clipBounds.size.width = v10;
  self->_clipBounds.size.height = v11;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIDictationPopoverController;
  [(UIViewController *)&v4 viewDidDisappear:a3];
  [(UIDictationPopoverController *)self forwardRemoteDictationPopover:0];
}

- (void)forwardRemoteDictationPopover:(BOOL)a3
{
  v3 = a3;
  v23[4] = *MEMORY[0x1E69E9840];
  p_popoverFrame = &self->_popoverFrame;
  v6 = [(UIViewController *)self popoverPresentationController];
  v7 = [v6 popoverView];
  [v7 frame];
  p_popoverFrame->origin.x = v8;
  p_popoverFrame->origin.y = v9;
  p_popoverFrame->size.width = v10;
  p_popoverFrame->size.height = v11;

  v12 = [(UIViewController *)self popoverPresentationController];
  self->_arrowDirection = [v12 arrowDirection];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [v13 inputDelegateManager];
    v15 = [v14 inputSystemSourceSession];

    if (v15)
    {
      v16 = [v15 textOperations];
      [v16 setCustomInfoType:0x1EFB7C8F0];
      v22[0] = @"selector";
      v17 = NSStringFromSelector(sel_setRemoteDictationPopover_);
      v23[0] = v17;
      v22[1] = @"appear";
      v18 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v23[1] = v18;
      v22[2] = @"arrowDirection";
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_arrowDirection];
      v23[2] = v19;
      v22[3] = @"popoverFrame";
      v20 = [MEMORY[0x1E696B098] valueWithRect:{p_popoverFrame->origin.x, p_popoverFrame->origin.y, p_popoverFrame->size.width, p_popoverFrame->size.height}];
      v23[3] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
      [v16 setCustomInfo:v21];

      [v15 flushOperations];
    }
  }
}

- (void)setRemoteDictationPopover:(id)a3
{
  p_popoverFrame = &self->_popoverFrame;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"popoverFrame"];
  [v6 CGRectValue];
  p_popoverFrame->origin.x = v7;
  p_popoverFrame->origin.y = v8;
  p_popoverFrame->size.width = v9;
  p_popoverFrame->size.height = v10;

  v11 = [v5 objectForKeyedSubscript:@"arrowDirection"];

  v12 = [v11 intValue];
  if (self->_arrowDirection != v12)
  {
    self->_arrowDirection = v12;
    [(UIDictationPopoverController *)self clipBounds];
    self->_clipBounds.origin.x = v13;
    self->_clipBounds.origin.y = v14;
    self->_clipBounds.size.width = v15;
    self->_clipBounds.size.height = v16;
    [(UIDictationPopoverController *)self rectInWindow:self->_initCaretRectInView.origin.x, self->_initCaretRectInView.origin.y, self->_initCaretRectInView.size.width, self->_initCaretRectInView.size.height];
    self->_sourceRect.origin.x = v17;
    self->_sourceRect.origin.y = v18;
    self->_sourceRect.size.width = v19;
    self->_sourceRect.size.height = v20;
  }
}

- (CGRect)clipBounds
{
  arrowDirection = self->_arrowDirection;
  v4 = [(UITextInput *)self->_inputDelegate textInputView];
  v5 = [v4 keyboardSceneDelegate];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  v8 = v7;

  v9 = [v8 containerRootController];
  v10 = [v9 view];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v8 containerRootController];
  v20 = [v19 view];
  [v20 safeAreaInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (arrowDirection == 2)
  {
    height = self->_popoverFrame.size.height;
  }

  else
  {
    height = 0.0;
  }

  v30 = v12 + v24;
  v31 = v14 + v22;
  v32 = v16 - (v24 + v28);
  v33 = v30 + 0.0;
  v34 = v31 + height;
  v35 = v18 - (v22 + v26) - (self->_popoverFrame.size.height + 0.0);

  v36 = v33;
  v37 = v34;
  v38 = v32;
  v39 = v35;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (int64_t)overrideUserInterfaceStyle
{
  v3 = [(UIViewController *)self view];
  v4 = [v3 window];
  if (v4)
  {
    v5 = [(UIViewController *)self view];
    v6 = [v5 _inheritedRenderConfig];
    if ([v6 lightKeyboard])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)textDidChange:(id)a3
{
  if (self->_arrowDirection == 1)
  {
    v8[3] = v3;
    v8[4] = v4;
    if (CGRectIsEmpty(self->_editMenuFrame))
    {
      objc_initWeak(v8, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__UIDictationPopoverController_textDidChange___block_invoke;
      block[3] = &unk_1E70F2F80;
      objc_copyWeak(&v7, v8);
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v7);
      objc_destroyWeak(v8);
    }
  }
}

void __46__UIDictationPopoverController_textDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(*(a1 + 32) + 1000);
  v3 = [v2 selectedTextRange];
  v4 = [v3 start];
  [v2 caretRectForPosition:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  MinX = CGRectGetMinX(*(*(a1 + 32) + 1016));
  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  MinY = CGRectGetMinY(v27);
  v24 = MinX;
  [*(a1 + 32) rectInWindow:{MinX, MinY, v10, v12}];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  if (!CGRectIsNull(v28))
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MaxY = CGRectGetMaxY(v29);
    if (MaxY > CGRectGetMinY(*(*(a1 + 32) + 1208)))
    {
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v20 = CGRectGetMaxY(v30);
      v21 = CGRectGetHeight(*(*(a1 + 32) + 1208));
      v22 = *(a1 + 32);
      if (v20 + v21 < *(v22 + 1240))
      {
        v23 = (v22 + 1016);
        *v23 = v24;
        v23[1] = MinY;
        v23[2] = v10;
        v23[3] = v12;
        [WeakRetained movePopoverView:{x, y, width, height}];
      }
    }
  }
}

- (void)keyboardDidChange:(id)a3
{
  v4 = [(UITextInput *)self->_inputDelegate textInputView];
  v5 = [v4 keyboardSceneDelegate];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  v11 = v7;

  v8 = [v11 containerRootController];
  v9 = [v8 bottomEdgeView];

  [(UIView *)v9 frame];
  self->_bottomMargin = CGRectGetMinY(v13);
  bottomEdgeView = self->_bottomEdgeView;
  if (v9 != bottomEdgeView)
  {
    [(UIView *)bottomEdgeView _removeGeometryChangeObserver:?];
    objc_storeStrong(&self->_bottomEdgeView, v9);
    [(UIView *)&self->_bottomEdgeView->super.super.isa _addGeometryChangeObserver:?];
  }

  [(UIDictationPopoverController *)self _observeScrollViewDidScroll:0];
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v6 = a4;
  if ((a3->var0 & 2) != 0)
  {
    v16 = v6;
    [v6 frame];
    Width = CGRectGetWidth(v18);
    v8 = [v16 window];
    [v8 frame];
    v9 = vabdd_f64(Width, CGRectGetWidth(v19));

    v6 = v16;
    if (v9 < 1.0)
    {
      [v16 frame];
      self->_bottomMargin = CGRectGetMinY(v20);
      MaxY = CGRectGetMaxY(self->_popoverFrame);
      bottomMargin = self->_bottomMargin;
      [(UIView *)self->_inputAccessoryView frame];
      if (MaxY > bottomMargin + v12)
      {
        MinX = CGRectGetMinX(self->_sourceRect);
        [(UIDictationPopoverController *)self movePopoverView:MinX, self->_bottomMargin - CGRectGetHeight(self->_sourceRect), v14, v15];
      }

      [(UIDictationPopoverController *)self _observeScrollViewDidScroll:0];
      v6 = v16;
    }
  }
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_arrowDirection != 1)
  {
    v37 = v4;
    IsEmpty = CGRectIsEmpty(self->_editMenuFrame);
    v5 = v37;
    if (IsEmpty)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      inputDelegate = self->_inputDelegate;
      if (isKindOfClass)
      {
        v9 = inputDelegate;
      }

      else
      {
        v9 = [(UITextInput *)inputDelegate textInputView];
      }

      v10 = v9;
      if (v9)
      {
        do
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          [v10 frame];
          v12 = v11;
          [v10 contentSize];
          if (v12 < v13)
          {
            break;
          }

          v14 = [v10 superview];

          v10 = v14;
        }

        while (v14);
      }

      [v10 bounds];
      [v10 convertRect:0 toView:?];
      v47.origin.x = v15;
      v47.origin.y = v16;
      v47.size.width = v17;
      v47.size.height = v18;
      v39 = CGRectIntersection(self->_clipBounds, v47);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
      [(UIDictationPopoverController *)self rectInWindow:self->_initCaretRectInView.origin.x, self->_initCaretRectInView.origin.y, self->_initCaretRectInView.size.width, self->_initCaretRectInView.size.height];
      v22 = v40.origin.x;
      v23 = v40.origin.y;
      v24 = v40.size.width;
      v25 = v40.size.height;
      isVerticalText = self->_isVerticalText;
      MinX = CGRectGetMinX(v40);
      if (isVerticalText)
      {
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        v28 = fmax(MinX, CGRectGetMinX(v41));
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        MinX = fmin(v28, CGRectGetMaxX(v42));
        v43.origin.x = v22;
        v43.origin.y = v23;
        v43.size.width = v24;
        v43.size.height = v25;
        MinY = CGRectGetMinY(v43);
      }

      else
      {
        v44.origin.x = v22;
        v44.origin.y = v23;
        v44.size.width = v24;
        v44.size.height = v25;
        v30 = CGRectGetMinY(v44);
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        v31 = fmax(v30, CGRectGetMinY(v45));
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        MaxY = CGRectGetMaxY(v46);
        bottomMargin = self->_bottomMargin;
        [(UIView *)self->_inputAccessoryView frame];
        MinY = fmin(v31, fmin(MaxY, bottomMargin + v34));
      }

      if (MinX != self->_sourceRect.origin.x || MinY != self->_sourceRect.origin.y)
      {
        [(UIDictationPopoverController *)self movePopoverView:MinX, MinY, self->_sourceRect.size.width, self->_sourceRect.size.height];
      }

      v5 = v37;
    }
  }
}

- (void)movePopoverView:(CGRect)a3 editMenuFrame:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22[2] = *MEMORY[0x1E69E9840];
  v9 = a4;
  self->_sourceRect.origin.x = x;
  self->_sourceRect.origin.y = y;
  self->_sourceRect.size.width = width;
  self->_sourceRect.size.height = height;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v10 = +[UIKeyboardImpl activeInstance];
    if (v9)
    {
      v21[0] = @"sourceRect";
      v11 = [MEMORY[0x1E696B098] valueWithRect:{x, y, width, height}];
      v21[1] = @"editMenuFrame";
      v22[0] = v11;
      v22[1] = v9;
      v12 = MEMORY[0x1E695DF20];
      v13 = v22;
      v14 = v21;
      v15 = 2;
    }

    else
    {
      v19 = @"sourceRect";
      v11 = [MEMORY[0x1E696B098] valueWithRect:{x, y, width, height}];
      v20 = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = &v20;
      v14 = &v19;
      v15 = 1;
    }

    v18 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
    [v10 forwardDictationEvent_movePopoverView:v18];
  }

  else
  {
    v16 = [(UIViewController *)self popoverPresentationController];
    [v16 _sendDelegateWillRepositionToRect];

    v17 = [(UIViewController *)self popoverPresentationController];
    [(UIViewController *)self preferredContentSize];
    [v17 setPopoverContentSize:?];

    [(UIDictationPopoverController *)self forwardRemoteDictationPopover:1];
  }
}

- (void)movePopoverViewToCurrentCareLocation
{
  p_initCaretRectInView = &self->_initCaretRectInView;
  inputDelegate = self->_inputDelegate;
  v5 = [(UITextInput *)inputDelegate selectedTextRange];
  v6 = [v5 start];
  [(UITextInput *)inputDelegate caretRectForPosition:v6];
  p_initCaretRectInView->origin.x = v7;
  p_initCaretRectInView->origin.y = v8;
  p_initCaretRectInView->size.width = v9;
  p_initCaretRectInView->size.height = v10;

  [(UIDictationPopoverController *)self rectInWindow:p_initCaretRectInView->origin.x, p_initCaretRectInView->origin.y, p_initCaretRectInView->size.width, p_initCaretRectInView->size.height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [MEMORY[0x1E696B098] valueWithRect:{self->_editMenuFrame.origin.x, self->_editMenuFrame.origin.y, self->_editMenuFrame.size.width, self->_editMenuFrame.size.height}];
  [(UIDictationPopoverController *)self movePopoverView:v19 editMenuFrame:v12, v14, v16, v18];
}

- (void)movePopoverViewForEditMenuFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIViewController *)self popoverPresentationController];
  v9 = [v8 popoverView];
  v10 = [v9 arrowDirection];

  v11 = [(UIViewController *)self view];
  v12 = [v11 window];

  if (v12)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    if (CGRectIsEmpty(v37) || self->_needsRestoreArrowDirction || ((p_popoverFrame = &self->_popoverFrame, p_editMenuFrame = &self->_editMenuFrame, v10 != 1) ? (v15 = self->_editMenuFrame.size.height) : (v15 = -self->_editMenuFrame.size.height), v38.origin.x = p_popoverFrame->origin.x, v38.origin.y = self->_popoverFrame.origin.y, v38.size.width = self->_popoverFrame.size.width, v38.size.height = self->_popoverFrame.size.height, v42 = CGRectOffset(v38, 0.0, v15), v39.origin.x = x, v39.origin.y = y, v39.size.width = width, v39.size.height = height, !CGRectIntersectsRect(v39, v42)))
    {
      if (!CGRectIsEmpty(self->_editMenuFrame))
      {
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        if (CGRectIsEmpty(v40))
        {
          if (self->_needsRestoreArrowDirction)
          {
            v22 = [(UIViewController *)self popoverPresentationController];
            v23 = [v22 popoverView];
            [v23 setArrowDirection:2];

            [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
            self->_needsRestoreArrowDirction = 0;
          }

          v24 = *(MEMORY[0x1E695F050] + 16);
          self->_editMenuFrame.origin = *MEMORY[0x1E695F050];
          self->_editMenuFrame.size = v24;
          [(UIDictationPopoverController *)self rectInWindow:self->_initCaretRectInView.origin.x, self->_initCaretRectInView.origin.y, self->_initCaretRectInView.size.width, self->_initCaretRectInView.size.height];

          [(UIDictationPopoverController *)self movePopoverView:?];
        }
      }
    }

    else
    {
      v16 = x;
      v17 = y;
      v18 = width;
      v19 = height;
      if (v10 == 1)
      {
        MaxY = CGRectGetMaxY(*&v16);
        MinY = MaxY + CGRectGetHeight(self->_sourceRect);
      }

      else
      {
        MinY = CGRectGetMinY(*&v16);
      }

      MinX = CGRectGetMinX(self->_sourceRect);
      v26 = CGRectGetWidth(self->_sourceRect);
      v27 = CGRectGetHeight(self->_sourceRect);
      v36.x = MinX;
      v36.y = MinY;
      if (CGRectContainsPoint(self->_clipBounds, v36))
      {
        [(UIDictationPopoverController *)self movePopoverView:MinX, MinY, v26, v27];
      }

      else
      {
        v28 = [(UIViewController *)self popoverPresentationController];
        v29 = [v28 popoverView];
        [v29 setArrowDirection:1];

        [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
        self->_needsRestoreArrowDirction = 1;
        v41.origin.x = p_popoverFrame->origin.x;
        v41.origin.y = self->_popoverFrame.origin.y;
        v41.size.width = self->_popoverFrame.size.width;
        v41.size.height = self->_popoverFrame.size.height;
        v30 = CGRectGetMinX(v41);
        v31 = CGRectGetMaxY(self->_sourceRect);
        v32 = self->_popoverFrame.size.width;
        v33 = self->_popoverFrame.size.height;
        v34 = [(UIViewController *)self popoverPresentationController];
        [v34 setPopoverFrame:1 animated:{v30, v31, v32, v33}];
      }

      p_editMenuFrame->origin.x = x;
      p_editMenuFrame->origin.y = y;
      p_editMenuFrame->size.width = width;
      p_editMenuFrame->size.height = height;
    }
  }

  else
  {
    self->_editMenuFrame.origin.x = x;
    self->_editMenuFrame.origin.y = y;
    self->_editMenuFrame.size.width = width;
    self->_editMenuFrame.size.height = height;
  }
}

- (CGRect)rectInWindow:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UITextInput *)self->_inputDelegate textInputView];
  v9 = [v8 keyboardSceneDelegate];
  if (v9)
  {
    v10 = [(UITextInput *)self->_inputDelegate textInputView];
    v11 = [v10 keyboardSceneDelegate];
    v12 = [v11 containerWindow];
  }

  else
  {
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v12 = [v10 containerWindow];
  }

  v13 = [(UITextInput *)self->_inputDelegate textInputView];
  [v12 convertRect:v13 fromView:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(UIViewController *)self view];
  v23 = [v22 window];
  if (v23)
  {
    v24 = [(UIViewController *)self view];
    v25 = [v24 window];
    [v12 convertRect:v25 toView:{v15, v17, v19, v21}];
    v15 = v26;
    v17 = v27;
    v19 = v28;
    v21 = v29;
  }

  v30 = v15;
  v31 = v17;
  v32 = v19;
  v33 = v21;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
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

- (BOOL)canPresentTip
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [v3 containerWindow];
  }

  else
  {
    v3 = [(UIViewController *)self popoverPresentationController];
    v5 = [v3 popoverView];
    v4 = [v5 superview];
  }

  p_popoverFrame = &self->_popoverFrame;
  if (self->_isVerticalText)
  {
    x = p_popoverFrame->origin.x;
    y = self->_popoverFrame.origin.y;
    width = self->_popoverFrame.size.width;
    height = self->_popoverFrame.size.height;
  }

  else
  {
    v21.origin.x = p_popoverFrame->origin.x;
    v21.origin.y = self->_popoverFrame.origin.y;
    v21.size.width = self->_popoverFrame.size.width;
    v21.size.height = self->_popoverFrame.size.height;
    v22 = CGRectOffset(v21, 0.0, self->_sourceRect.origin.y);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v11 = [(UIViewController *)self popoverPresentationController];
  v12 = [v11 popoverView];
  v13 = [v12 arrowDirection];

  if (v13 == 2)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v14 = CGRectGetMinY(v23) + -135.5;
    [v4 safeAreaInsets];
    v16 = v14 >= v15;
  }

  else
  {
    v17 = [(UIViewController *)self popoverPresentationController];
    v18 = [v17 popoverView];
    v19 = [v18 arrowDirection];

    if (v19 == 1)
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v16 = CGRectGetMaxY(v24) + 135.5 < self->_bottomMargin;
    }

    else
    {
      v16 = 1;
    }
  }

  return v16;
}

- (void)presentTip:(id)a3 tipDescription:(id)a4
{
  v118[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!+[UIKeyboard usesInputSystemUI])
  {
    title = self->_title;
    if (title)
    {
LABEL_12:
      [(UILabel *)title setText:v6];
      [(UITextView *)self->_textView setText:v7];

      v8 = [(UIViewController *)self popoverPresentationController];
      [(UIViewController *)self preferredContentSize];
      v85 = v84;
      [(UIViewController *)self preferredContentSize];
      [v8 setPopoverContentSize:{v85, v86 + 135.5}];
      goto LABEL_13;
    }

    v106 = v7;
    v107 = v6;
    v113 = [MEMORY[0x1E695DF70] array];
    v10 = [UILabel alloc];
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [(UILabel *)v10 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
    v16 = self->_title;
    self->_title = v15;

    v17 = [off_1E70ECC18 boldSystemFontOfSize:15.0];
    [(UILabel *)self->_title setFont:v17];

    [(UILabel *)self->_title setTextAlignment:1];
    [(UIView *)self->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(UIViewController *)self view];
    [v18 insertSubview:self->_title belowSubview:self->_dictationView];

    v111 = [(UIView *)self->_title heightAnchor];
    v108 = [v111 constraintEqualToConstant:20.0];
    v118[0] = v108;
    v100 = [(UIView *)self->_title leadingAnchor];
    v105 = [(UIViewController *)self view];
    v96 = [v105 safeAreaLayoutGuide];
    v19 = [v96 leadingAnchor];
    v20 = [v100 constraintEqualToAnchor:v19];
    v118[1] = v20;
    v21 = [(UIView *)self->_title trailingAnchor];
    v22 = [(UIViewController *)self view];
    v23 = [v22 safeAreaLayoutGuide];
    v24 = [v23 trailingAnchor];
    v25 = [v21 constraintEqualToAnchor:v24];
    v118[2] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:3];
    [v113 addObjectsFromArray:v26];

    v27 = [[UITextView alloc] initWithFrame:0 textContainer:v11, v12, v13, v14];
    textView = self->_textView;
    self->_textView = v27;

    [(UITextView *)self->_textView setEditable:0];
    [(UITextView *)self->_textView setSelectable:0];
    v29 = [off_1E70ECC18 systemFontOfSize:14.0];
    [(UITextView *)self->_textView setFont:v29];

    v30 = +[UIColor lightGrayColor];
    [(UITextView *)self->_textView setTextColor:v30];

    [(UITextView *)self->_textView setTextAlignment:1];
    [(UIView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [(UIViewController *)self view];
    [v31 insertSubview:self->_textView belowSubview:self->_dictationView];

    v109 = [(UIView *)self->_textView topAnchor];
    v101 = [(UIView *)self->_title bottomAnchor];
    v97 = [v109 constraintEqualToAnchor:v101];
    v117[0] = v97;
    v90 = [(UIView *)self->_textView leadingAnchor];
    v93 = [(UIViewController *)self view];
    v32 = [v93 safeAreaLayoutGuide];
    v33 = [v32 leadingAnchor];
    v34 = [v90 constraintEqualToAnchor:v33 constant:8.0];
    v117[1] = v34;
    v35 = [(UIView *)self->_textView trailingAnchor];
    v36 = [(UIViewController *)self view];
    v37 = [v36 safeAreaLayoutGuide];
    v38 = [v37 trailingAnchor];
    v39 = [v35 constraintEqualToAnchor:v38 constant:-8.0];
    v117[2] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
    [v113 addObjectsFromArray:v40];

    v41 = [[UIView alloc] initWithFrame:v11, v12, v13, v14];
    v42 = +[UIColor lightGrayColor];
    [(UIView *)v41 setBackgroundColor:v42];

    [(UIView *)v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [(UIViewController *)self view];
    [v43 insertSubview:v41 belowSubview:self->_dictationView];

    v102 = [(UIView *)v41 heightAnchor];
    v98 = [v102 constraintEqualToConstant:0.5];
    v116[0] = v98;
    v91 = [(UIView *)v41 leadingAnchor];
    v94 = [(UIViewController *)self view];
    v44 = [v94 safeAreaLayoutGuide];
    v45 = [v44 leadingAnchor];
    v46 = [v91 constraintEqualToAnchor:v45];
    v116[1] = v46;
    v110 = v41;
    v47 = [(UIView *)v41 trailingAnchor];
    v48 = [(UIViewController *)self view];
    v49 = [v48 safeAreaLayoutGuide];
    v50 = [v49 trailingAnchor];
    v51 = [v47 constraintEqualToAnchor:v50];
    v116[2] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:3];
    [v113 addObjectsFromArray:v52];

    v53 = [(UIViewController *)self view];
    v54 = [v53 backgroundColor];
    [(UIView *)self->_dictationView setBackgroundColor:v54];

    v55 = [(UIViewController *)self popoverPresentationController];
    v56 = [v55 popoverView];
    if ([v56 arrowDirection] == 2)
    {

      v57 = v110;
LABEL_6:
      [(NSLayoutConstraint *)self->_dictationViewTopConstraint setActive:0];
      v58 = [(UIView *)self->_dictationView topAnchor];
      v99 = [(UIView *)v57 bottomAnchor];
      v103 = v58;
      v95 = [v58 constraintEqualToAnchor:v99];
      v115[0] = v95;
      v59 = [(UIView *)self->_dictationView topAnchor];
      v92 = [(UIViewController *)self view];
      v89 = [v92 safeAreaLayoutGuide];
      v60 = [v89 bottomAnchor];
      [(UIViewController *)self preferredContentSize];
      v112 = v59;
      v88 = v60;
      v87 = [v59 constraintEqualToAnchor:v60 constant:-v61];
      v115[1] = v87;
      v62 = [(UIView *)self->_textView bottomAnchor];
      v63 = [(UIView *)v57 bottomAnchor];
      v64 = [v62 constraintEqualToAnchor:v63];
      v115[2] = v64;
      v65 = [(UIView *)self->_title topAnchor];
      v66 = [(UIViewController *)self view];
      v67 = [v66 topAnchor];
      v68 = [v65 constraintEqualToAnchor:v67 constant:15.0];
      v115[3] = v68;
      v69 = v115;
LABEL_11:
      v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];
      [v113 addObjectsFromArray:v83];

      [MEMORY[0x1E69977A0] activateConstraints:v113];
      title = self->_title;
      v7 = v106;
      v6 = v107;
      goto LABEL_12;
    }

    v70 = [(UIViewController *)self popoverPresentationController];
    v71 = [v70 popoverView];
    if ([v71 arrowDirection] == 1)
    {

      v57 = v110;
    }

    else
    {
      v104 = [(UIViewController *)self popoverPresentationController];
      v72 = [v104 popoverView];
      [v72 frame];
      v73 = CGRectGetMinY(v119) + -135.5;
      v74 = [(UIViewController *)self popoverPresentationController];
      v75 = [v74 popoverView];
      v76 = [v75 superview];
      [v76 safeAreaInsets];
      v78 = v77;

      v57 = v110;
      if (v73 >= v78)
      {
        goto LABEL_6;
      }
    }

    [(NSLayoutConstraint *)self->_dictationViewBottomConstraint setActive:0];
    v79 = [(UIView *)self->_dictationView bottomAnchor];
    v99 = [(UIView *)v57 topAnchor];
    v103 = v79;
    v95 = [v79 constraintEqualToAnchor:v99];
    v114[0] = v95;
    v80 = [(UIView *)self->_dictationView bottomAnchor];
    v92 = [(UIViewController *)self view];
    v89 = [v92 safeAreaLayoutGuide];
    v81 = [v89 topAnchor];
    [(UIViewController *)self preferredContentSize];
    v112 = v80;
    v88 = v81;
    v87 = [v80 constraintEqualToAnchor:v81 constant:v82];
    v114[1] = v87;
    v62 = [(UIView *)self->_textView bottomAnchor];
    v63 = [(UIViewController *)self view];
    v64 = [v63 bottomAnchor];
    v65 = [v62 constraintEqualToAnchor:v64];
    v114[2] = v65;
    v66 = [(UIView *)self->_title topAnchor];
    v67 = [(UIView *)v57 bottomAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:15.0];
    v114[3] = v68;
    v69 = v114;
    goto LABEL_11;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 forwardDictationEvent_handleTip:v6 title:v7];

LABEL_13:
}

- (void)dismissTip
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 forwardDictationEvent_handleTip:0 title:0];
  }

  else
  {
    v3 = [(UIViewController *)self popoverPresentationController];
    [(UIViewController *)self preferredContentSize];
    [v3 setPopoverContentSize:?];
  }
}

@end