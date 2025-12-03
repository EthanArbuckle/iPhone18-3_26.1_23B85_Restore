@interface UIDictationPopoverController
- (BOOL)canPresentTip;
- (CGRect)clipBounds;
- (CGRect)rectInWindow:(CGRect)window;
- (CGRect)sourceRect;
- (UIDictationPopoverController)initWithContentView:(id)view contentSize:(CGSize)size inputDelegate:(id)delegate;
- (int64_t)overrideUserInterfaceStyle;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)dealloc;
- (void)dismissTip;
- (void)forwardRemoteDictationPopover:(BOOL)popover;
- (void)keyboardDidChange:(id)change;
- (void)movePopoverView:(CGRect)view editMenuFrame:(id)frame;
- (void)movePopoverViewForEditMenuFrame:(CGRect)frame;
- (void)movePopoverViewToCurrentCareLocation;
- (void)presentTip:(id)tip tipDescription:(id)description;
- (void)setRemoteDictationPopover:(id)popover;
- (void)textDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation UIDictationPopoverController

- (UIDictationPopoverController)initWithContentView:(id)view contentSize:(CGSize)size inputDelegate:(id)delegate
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  delegateCopy = delegate;
  v49.receiver = self;
  v49.super_class = UIDictationPopoverController;
  v12 = [(UIKeyboardPopoverController *)&v49 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dictationView, view);
    [(UIViewController *)v13 setPreferredContentSize:width, height];
    objc_storeStrong(&v13->_inputDelegate, delegate);
    selectedTextRange = [delegateCopy selectedTextRange];
    start = [selectedTextRange start];
    [delegateCopy caretRectForPosition:start];
    v13->_initCaretRectInView.origin.x = v16;
    v13->_initCaretRectInView.origin.y = v17;
    v13->_initCaretRectInView.size.width = v18;
    v13->_initCaretRectInView.size.height = v19;

    if (!+[UIKeyboard isKeyboardProcess])
    {
      textInputView = [(UITextInput *)v13->_inputDelegate textInputView];
      keyboardSceneDelegate = [textInputView keyboardSceneDelegate];
      v22 = keyboardSceneDelegate;
      if (keyboardSceneDelegate)
      {
        v23 = keyboardSceneDelegate;
      }

      else
      {
        v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      }

      v24 = v23;

      array = [MEMORY[0x1E695DF70] array];
      scrollViews = v13->_scrollViews;
      v13->_scrollViews = array;

      textInputView2 = [delegateCopy textInputView];
      if (textInputView2)
      {
        v28 = textInputView2;
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

          superview = [v28 superview];

          v28 = superview;
        }

        while (superview);
      }

      containerRootController = [v24 containerRootController];
      bottomEdgeView = [containerRootController bottomEdgeView];
      bottomEdgeView = v13->_bottomEdgeView;
      v13->_bottomEdgeView = bottomEdgeView;

      containerRootController2 = [v24 containerRootController];
      inputViewSet = [containerRootController2 inputViewSet];

      [(UIView *)&v13->_bottomEdgeView->super.super.isa _addGeometryChangeObserver:v13];
      [(UIView *)v13->_bottomEdgeView frame];
      v13->_bottomMargin = CGRectGetMinY(v50);
      textInputView3 = [delegateCopy textInputView];
      inputAccessoryView = [inputViewSet inputAccessoryView];
      v39 = [textInputView3 isDescendantOfView:inputAccessoryView];

      if (v39)
      {
        inputAccessoryView2 = [inputViewSet inputAccessoryView];
        inputAccessoryView = v13->_inputAccessoryView;
        v13->_inputAccessoryView = inputAccessoryView2;
      }

      selectedTextRange2 = [delegateCopy selectedTextRange];
      v43 = [delegateCopy selectionRectsForRange:selectedTextRange2];
      firstObject = [v43 firstObject];
      v13->_isVerticalText = [firstObject isVertical];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v13 selector:sel_keyboardDidChange_ name:@"UIKeyboardDidShowNotification" object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v13 selector:sel_keyboardDidChange_ name:@"UIKeyboardDidHideNotification" object:0];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 addObserver:v13 selector:sel_textDidChange_ name:*off_1E70ECAC0 object:0];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17[0] = @"UIKeyboardDidShowNotification";
    v17[1] = @"UIKeyboardDidHideNotification";
    v17[2] = *off_1E70ECAC0;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v10 names:?];
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
  view = [(UIViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(UIViewController *)self view];
  [view2 addSubview:self->_dictationView];

  [(UIView *)self->_dictationView setNeedsLayout];
  topAnchor = [(UIView *)self->_dictationView topAnchor];
  view3 = [(UIViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  dictationViewTopConstraint = self->_dictationViewTopConstraint;
  self->_dictationViewTopConstraint = v10;

  bottomAnchor = [(UIView *)self->_dictationView bottomAnchor];
  view4 = [(UIViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  dictationViewBottomConstraint = self->_dictationViewBottomConstraint;
  self->_dictationViewBottomConstraint = v16;

  v29 = MEMORY[0x1E69977A0];
  v18 = self->_dictationViewBottomConstraint;
  v32[0] = self->_dictationViewTopConstraint;
  v32[1] = v18;
  leadingAnchor = [(UIView *)self->_dictationView leadingAnchor];
  view5 = [(UIViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[2] = v22;
  trailingAnchor = [(UIView *)self->_dictationView trailingAnchor];
  view6 = [(UIViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [v29 activateConstraints:v28];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = UIDictationPopoverController;
  [(UIViewController *)&v12 viewDidAppear:appear];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = UIDictationPopoverController;
  [(UIViewController *)&v4 viewDidDisappear:disappear];
  [(UIDictationPopoverController *)self forwardRemoteDictationPopover:0];
}

- (void)forwardRemoteDictationPopover:(BOOL)popover
{
  popoverCopy = popover;
  v23[4] = *MEMORY[0x1E69E9840];
  p_popoverFrame = &self->_popoverFrame;
  popoverPresentationController = [(UIViewController *)self popoverPresentationController];
  popoverView = [popoverPresentationController popoverView];
  [popoverView frame];
  p_popoverFrame->origin.x = v8;
  p_popoverFrame->origin.y = v9;
  p_popoverFrame->size.width = v10;
  p_popoverFrame->size.height = v11;

  popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
  self->_arrowDirection = [popoverPresentationController2 arrowDirection];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v13 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v13 inputDelegateManager];
    inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

    if (inputSystemSourceSession)
    {
      textOperations = [inputSystemSourceSession textOperations];
      [textOperations setCustomInfoType:0x1EFB7C8F0];
      v22[0] = @"selector";
      v17 = NSStringFromSelector(sel_setRemoteDictationPopover_);
      v23[0] = v17;
      v22[1] = @"appear";
      v18 = [MEMORY[0x1E696AD98] numberWithBool:popoverCopy];
      v23[1] = v18;
      v22[2] = @"arrowDirection";
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_arrowDirection];
      v23[2] = v19;
      v22[3] = @"popoverFrame";
      v20 = [MEMORY[0x1E696B098] valueWithRect:{p_popoverFrame->origin.x, p_popoverFrame->origin.y, p_popoverFrame->size.width, p_popoverFrame->size.height}];
      v23[3] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
      [textOperations setCustomInfo:v21];

      [inputSystemSourceSession flushOperations];
    }
  }
}

- (void)setRemoteDictationPopover:(id)popover
{
  p_popoverFrame = &self->_popoverFrame;
  popoverCopy = popover;
  v6 = [popoverCopy objectForKeyedSubscript:@"popoverFrame"];
  [v6 CGRectValue];
  p_popoverFrame->origin.x = v7;
  p_popoverFrame->origin.y = v8;
  p_popoverFrame->size.width = v9;
  p_popoverFrame->size.height = v10;

  v11 = [popoverCopy objectForKeyedSubscript:@"arrowDirection"];

  intValue = [v11 intValue];
  if (self->_arrowDirection != intValue)
  {
    self->_arrowDirection = intValue;
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
  textInputView = [(UITextInput *)self->_inputDelegate textInputView];
  keyboardSceneDelegate = [textInputView keyboardSceneDelegate];
  v6 = keyboardSceneDelegate;
  if (keyboardSceneDelegate)
  {
    v7 = keyboardSceneDelegate;
  }

  else
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  v8 = v7;

  containerRootController = [v8 containerRootController];
  view = [containerRootController view];
  [view frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  containerRootController2 = [v8 containerRootController];
  view2 = [containerRootController2 view];
  [view2 safeAreaInsets];
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
  view = [(UIViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(UIViewController *)self view];
    _inheritedRenderConfig = [view2 _inheritedRenderConfig];
    if ([_inheritedRenderConfig lightKeyboard])
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

- (void)textDidChange:(id)change
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

- (void)keyboardDidChange:(id)change
{
  textInputView = [(UITextInput *)self->_inputDelegate textInputView];
  keyboardSceneDelegate = [textInputView keyboardSceneDelegate];
  v6 = keyboardSceneDelegate;
  if (keyboardSceneDelegate)
  {
    v7 = keyboardSceneDelegate;
  }

  else
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  v11 = v7;

  containerRootController = [v11 containerRootController];
  bottomEdgeView = [containerRootController bottomEdgeView];

  [(UIView *)bottomEdgeView frame];
  self->_bottomMargin = CGRectGetMinY(v13);
  bottomEdgeView = self->_bottomEdgeView;
  if (bottomEdgeView != bottomEdgeView)
  {
    [(UIView *)bottomEdgeView _removeGeometryChangeObserver:?];
    objc_storeStrong(&self->_bottomEdgeView, bottomEdgeView);
    [(UIView *)&self->_bottomEdgeView->super.super.isa _addGeometryChangeObserver:?];
  }

  [(UIDictationPopoverController *)self _observeScrollViewDidScroll:0];
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  ancestorCopy = ancestor;
  if ((changed->var0 & 2) != 0)
  {
    v16 = ancestorCopy;
    [ancestorCopy frame];
    Width = CGRectGetWidth(v18);
    window = [v16 window];
    [window frame];
    v9 = vabdd_f64(Width, CGRectGetWidth(v19));

    ancestorCopy = v16;
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
      ancestorCopy = v16;
    }
  }
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v5 = scrollCopy;
  if (self->_arrowDirection != 1)
  {
    v37 = scrollCopy;
    IsEmpty = CGRectIsEmpty(self->_editMenuFrame);
    v5 = v37;
    if (IsEmpty)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      inputDelegate = self->_inputDelegate;
      if (isKindOfClass)
      {
        textInputView = inputDelegate;
      }

      else
      {
        textInputView = [(UITextInput *)inputDelegate textInputView];
      }

      v10 = textInputView;
      if (textInputView)
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

          superview = [v10 superview];

          v10 = superview;
        }

        while (superview);
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

- (void)movePopoverView:(CGRect)view editMenuFrame:(id)frame
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  v22[2] = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  self->_sourceRect.origin.x = x;
  self->_sourceRect.origin.y = y;
  self->_sourceRect.size.width = width;
  self->_sourceRect.size.height = height;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v10 = +[UIKeyboardImpl activeInstance];
    if (frameCopy)
    {
      v21[0] = @"sourceRect";
      v11 = [MEMORY[0x1E696B098] valueWithRect:{x, y, width, height}];
      v21[1] = @"editMenuFrame";
      v22[0] = v11;
      v22[1] = frameCopy;
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
    popoverPresentationController = [(UIViewController *)self popoverPresentationController];
    [popoverPresentationController _sendDelegateWillRepositionToRect];

    popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
    [(UIViewController *)self preferredContentSize];
    [popoverPresentationController2 setPopoverContentSize:?];

    [(UIDictationPopoverController *)self forwardRemoteDictationPopover:1];
  }
}

- (void)movePopoverViewToCurrentCareLocation
{
  p_initCaretRectInView = &self->_initCaretRectInView;
  inputDelegate = self->_inputDelegate;
  selectedTextRange = [(UITextInput *)inputDelegate selectedTextRange];
  start = [selectedTextRange start];
  [(UITextInput *)inputDelegate caretRectForPosition:start];
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

- (void)movePopoverViewForEditMenuFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  popoverPresentationController = [(UIViewController *)self popoverPresentationController];
  popoverView = [popoverPresentationController popoverView];
  arrowDirection = [popoverView arrowDirection];

  view = [(UIViewController *)self view];
  window = [view window];

  if (window)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    if (CGRectIsEmpty(v37) || self->_needsRestoreArrowDirction || ((p_popoverFrame = &self->_popoverFrame, p_editMenuFrame = &self->_editMenuFrame, arrowDirection != 1) ? (v15 = self->_editMenuFrame.size.height) : (v15 = -self->_editMenuFrame.size.height), v38.origin.x = p_popoverFrame->origin.x, v38.origin.y = self->_popoverFrame.origin.y, v38.size.width = self->_popoverFrame.size.width, v38.size.height = self->_popoverFrame.size.height, v42 = CGRectOffset(v38, 0.0, v15), v39.origin.x = x, v39.origin.y = y, v39.size.width = width, v39.size.height = height, !CGRectIntersectsRect(v39, v42)))
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
            popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
            popoverView2 = [popoverPresentationController2 popoverView];
            [popoverView2 setArrowDirection:2];

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
      if (arrowDirection == 1)
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
        popoverPresentationController3 = [(UIViewController *)self popoverPresentationController];
        popoverView3 = [popoverPresentationController3 popoverView];
        [popoverView3 setArrowDirection:1];

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
        popoverPresentationController4 = [(UIViewController *)self popoverPresentationController];
        [popoverPresentationController4 setPopoverFrame:1 animated:{v30, v31, v32, v33}];
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

- (CGRect)rectInWindow:(CGRect)window
{
  height = window.size.height;
  width = window.size.width;
  y = window.origin.y;
  x = window.origin.x;
  textInputView = [(UITextInput *)self->_inputDelegate textInputView];
  keyboardSceneDelegate = [textInputView keyboardSceneDelegate];
  if (keyboardSceneDelegate)
  {
    textInputView2 = [(UITextInput *)self->_inputDelegate textInputView];
    keyboardSceneDelegate2 = [textInputView2 keyboardSceneDelegate];
    containerWindow = [keyboardSceneDelegate2 containerWindow];
  }

  else
  {
    textInputView2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerWindow = [textInputView2 containerWindow];
  }

  textInputView3 = [(UITextInput *)self->_inputDelegate textInputView];
  [containerWindow convertRect:textInputView3 fromView:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  view = [(UIViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(UIViewController *)self view];
    window2 = [view2 window];
    [containerWindow convertRect:window2 toView:{v15, v17, v19, v21}];
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
    popoverPresentationController = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerWindow = [popoverPresentationController containerWindow];
  }

  else
  {
    popoverPresentationController = [(UIViewController *)self popoverPresentationController];
    popoverView = [popoverPresentationController popoverView];
    containerWindow = [popoverView superview];
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

  popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
  popoverView2 = [popoverPresentationController2 popoverView];
  arrowDirection = [popoverView2 arrowDirection];

  if (arrowDirection == 2)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v14 = CGRectGetMinY(v23) + -135.5;
    [containerWindow safeAreaInsets];
    v16 = v14 >= v15;
  }

  else
  {
    popoverPresentationController3 = [(UIViewController *)self popoverPresentationController];
    popoverView3 = [popoverPresentationController3 popoverView];
    arrowDirection2 = [popoverView3 arrowDirection];

    if (arrowDirection2 == 1)
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

- (void)presentTip:(id)tip tipDescription:(id)description
{
  v118[3] = *MEMORY[0x1E69E9840];
  tipCopy = tip;
  descriptionCopy = description;
  if (!+[UIKeyboard usesInputSystemUI])
  {
    title = self->_title;
    if (title)
    {
LABEL_12:
      [(UILabel *)title setText:tipCopy];
      [(UITextView *)self->_textView setText:descriptionCopy];

      popoverPresentationController = [(UIViewController *)self popoverPresentationController];
      [(UIViewController *)self preferredContentSize];
      v85 = v84;
      [(UIViewController *)self preferredContentSize];
      [popoverPresentationController setPopoverContentSize:{v85, v86 + 135.5}];
      goto LABEL_13;
    }

    v106 = descriptionCopy;
    v107 = tipCopy;
    array = [MEMORY[0x1E695DF70] array];
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
    view = [(UIViewController *)self view];
    [view insertSubview:self->_title belowSubview:self->_dictationView];

    heightAnchor = [(UIView *)self->_title heightAnchor];
    v108 = [heightAnchor constraintEqualToConstant:20.0];
    v118[0] = v108;
    leadingAnchor = [(UIView *)self->_title leadingAnchor];
    view2 = [(UIViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v118[1] = v20;
    trailingAnchor = [(UIView *)self->_title trailingAnchor];
    view3 = [(UIViewController *)self view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v118[2] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:3];
    [array addObjectsFromArray:v26];

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
    view4 = [(UIViewController *)self view];
    [view4 insertSubview:self->_textView belowSubview:self->_dictationView];

    topAnchor = [(UIView *)self->_textView topAnchor];
    bottomAnchor = [(UIView *)self->_title bottomAnchor];
    v97 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v117[0] = v97;
    leadingAnchor3 = [(UIView *)self->_textView leadingAnchor];
    view5 = [(UIViewController *)self view];
    safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide3 leadingAnchor];
    v34 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
    v117[1] = v34;
    trailingAnchor3 = [(UIView *)self->_textView trailingAnchor];
    view6 = [(UIViewController *)self view];
    safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide4 trailingAnchor];
    v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
    v117[2] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
    [array addObjectsFromArray:v40];

    v41 = [[UIView alloc] initWithFrame:v11, v12, v13, v14];
    v42 = +[UIColor lightGrayColor];
    [(UIView *)v41 setBackgroundColor:v42];

    [(UIView *)v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    view7 = [(UIViewController *)self view];
    [view7 insertSubview:v41 belowSubview:self->_dictationView];

    heightAnchor2 = [(UIView *)v41 heightAnchor];
    v98 = [heightAnchor2 constraintEqualToConstant:0.5];
    v116[0] = v98;
    leadingAnchor5 = [(UIView *)v41 leadingAnchor];
    view8 = [(UIViewController *)self view];
    safeAreaLayoutGuide5 = [view8 safeAreaLayoutGuide];
    leadingAnchor6 = [safeAreaLayoutGuide5 leadingAnchor];
    v46 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v116[1] = v46;
    v110 = v41;
    trailingAnchor5 = [(UIView *)v41 trailingAnchor];
    view9 = [(UIViewController *)self view];
    safeAreaLayoutGuide6 = [view9 safeAreaLayoutGuide];
    trailingAnchor6 = [safeAreaLayoutGuide6 trailingAnchor];
    v51 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v116[2] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:3];
    [array addObjectsFromArray:v52];

    view10 = [(UIViewController *)self view];
    backgroundColor = [view10 backgroundColor];
    [(UIView *)self->_dictationView setBackgroundColor:backgroundColor];

    popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
    popoverView = [popoverPresentationController2 popoverView];
    if ([popoverView arrowDirection] == 2)
    {

      v57 = v110;
LABEL_6:
      [(NSLayoutConstraint *)self->_dictationViewTopConstraint setActive:0];
      topAnchor2 = [(UIView *)self->_dictationView topAnchor];
      bottomAnchor2 = [(UIView *)v57 bottomAnchor];
      v103 = topAnchor2;
      v95 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
      v115[0] = v95;
      topAnchor3 = [(UIView *)self->_dictationView topAnchor];
      view11 = [(UIViewController *)self view];
      safeAreaLayoutGuide7 = [view11 safeAreaLayoutGuide];
      bottomAnchor3 = [safeAreaLayoutGuide7 bottomAnchor];
      [(UIViewController *)self preferredContentSize];
      v112 = topAnchor3;
      v88 = bottomAnchor3;
      v87 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:-v61];
      v115[1] = v87;
      bottomAnchor4 = [(UIView *)self->_textView bottomAnchor];
      bottomAnchor5 = [(UIView *)v57 bottomAnchor];
      v63BottomAnchor = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v115[2] = v63BottomAnchor;
      topAnchor4 = [(UIView *)self->_title topAnchor];
      view12 = [(UIViewController *)self view];
      topAnchor5 = [view12 topAnchor];
      v68 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:15.0];
      v115[3] = v68;
      v69 = v115;
LABEL_11:
      v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];
      [array addObjectsFromArray:v83];

      [MEMORY[0x1E69977A0] activateConstraints:array];
      title = self->_title;
      descriptionCopy = v106;
      tipCopy = v107;
      goto LABEL_12;
    }

    popoverPresentationController3 = [(UIViewController *)self popoverPresentationController];
    popoverView2 = [popoverPresentationController3 popoverView];
    if ([popoverView2 arrowDirection] == 1)
    {

      v57 = v110;
    }

    else
    {
      popoverPresentationController4 = [(UIViewController *)self popoverPresentationController];
      popoverView3 = [popoverPresentationController4 popoverView];
      [popoverView3 frame];
      v73 = CGRectGetMinY(v119) + -135.5;
      popoverPresentationController5 = [(UIViewController *)self popoverPresentationController];
      popoverView4 = [popoverPresentationController5 popoverView];
      superview = [popoverView4 superview];
      [superview safeAreaInsets];
      v78 = v77;

      v57 = v110;
      if (v73 >= v78)
      {
        goto LABEL_6;
      }
    }

    [(NSLayoutConstraint *)self->_dictationViewBottomConstraint setActive:0];
    bottomAnchor6 = [(UIView *)self->_dictationView bottomAnchor];
    bottomAnchor2 = [(UIView *)v57 topAnchor];
    v103 = bottomAnchor6;
    v95 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor2];
    v114[0] = v95;
    bottomAnchor7 = [(UIView *)self->_dictationView bottomAnchor];
    view11 = [(UIViewController *)self view];
    safeAreaLayoutGuide7 = [view11 safeAreaLayoutGuide];
    topAnchor6 = [safeAreaLayoutGuide7 topAnchor];
    [(UIViewController *)self preferredContentSize];
    v112 = bottomAnchor7;
    v88 = topAnchor6;
    v87 = [bottomAnchor7 constraintEqualToAnchor:topAnchor6 constant:v82];
    v114[1] = v87;
    bottomAnchor4 = [(UIView *)self->_textView bottomAnchor];
    bottomAnchor5 = [(UIViewController *)self view];
    v63BottomAnchor = [bottomAnchor5 bottomAnchor];
    topAnchor4 = [bottomAnchor4 constraintEqualToAnchor:v63BottomAnchor];
    v114[2] = topAnchor4;
    view12 = [(UIView *)self->_title topAnchor];
    topAnchor5 = [(UIView *)v57 bottomAnchor];
    v68 = [view12 constraintEqualToAnchor:topAnchor5 constant:15.0];
    v114[3] = v68;
    v69 = v114;
    goto LABEL_11;
  }

  popoverPresentationController = +[UIKeyboardImpl activeInstance];
  [popoverPresentationController forwardDictationEvent_handleTip:tipCopy title:descriptionCopy];

LABEL_13:
}

- (void)dismissTip
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    popoverPresentationController = +[UIKeyboardImpl activeInstance];
    [popoverPresentationController forwardDictationEvent_handleTip:0 title:0];
  }

  else
  {
    popoverPresentationController = [(UIViewController *)self popoverPresentationController];
    [(UIViewController *)self preferredContentSize];
    [popoverPresentationController setPopoverContentSize:?];
  }
}

@end