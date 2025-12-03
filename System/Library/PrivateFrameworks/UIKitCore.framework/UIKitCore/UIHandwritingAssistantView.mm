@interface UIHandwritingAssistantView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)assistantFrameForKeyplane:(id)keyplane key:(id)key;
- (UIHandwritingAssistantView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (id)candidateList;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dimKeys:(id)keys;
- (void)updateForKeyplane:(id)keyplane key:(id)key;
@end

@implementation UIHandwritingAssistantView

- (UIHandwritingAssistantView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  keyCopy = key;
  v61.receiver = self;
  v61.super_class = UIHandwritingAssistantView;
  height = [(UIKBKeyView *)&v61 initWithFrame:keyplaneCopy keyplane:keyCopy key:x, y, width, height];
  v14 = height;
  if (height)
  {
    [(UIView *)height setOpaque:0];
    [(UIView *)v14 setUserInteractionEnabled:1];
    v15 = 0;
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v15 = +[UIKeyboardImpl isFloating]^ 1;
    }

    [(UIHandwritingAssistantView *)v14 assistantFrameForKeyplane:keyplaneCopy key:keyCopy];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2050000000;
    v24 = _MergedGlobals_3_24;
    v66 = _MergedGlobals_3_24;
    if (!_MergedGlobals_3_24)
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __getTUISystemInputAssistantViewClass_block_invoke_0;
      v62[3] = &unk_1E70F2F20;
      v62[4] = &v63;
      __getTUISystemInputAssistantViewClass_block_invoke_0(v62);
      v24 = v64[3];
    }

    v25 = v24;
    _Block_object_dispose(&v63, 8);
    v26 = [[v24 alloc] initWithFrame:{v17, v19, v21, v23}];
    [(UIHandwritingAssistantView *)v14 setSystemInputAssistantView:v26];

    [keyCopy paddedFrame];
    v28 = v27;
    systemInputAssistantView = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [systemInputAssistantView setCenterViewWidth:v28];

    _inheritedRenderConfig = [(UIView *)v14 _inheritedRenderConfig];
    systemInputAssistantView2 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [systemInputAssistantView2 setRenderConfig:_inheritedRenderConfig];

    systemInputAssistantView3 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [systemInputAssistantView3 setBackgroundVisible:0];

    systemInputAssistantView4 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [systemInputAssistantView4 setShowsButtonBarItemsInline:v15];

    systemInputAssistantView5 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [systemInputAssistantView5 setAutoresizingMask:18];

    v35 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    systemInputAssistantViewController = [v35 systemInputAssistantViewController];
    systemInputAssistantView6 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [systemInputAssistantView6 setDelegate:systemInputAssistantViewController];

    v38 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v38 inputDelegateManager];
    keyInputDelegate = [inputDelegateManager keyInputDelegate];

    if (([keyInputDelegate __isKindOfUIResponder] & 1) == 0)
    {
      v41 = +[UIKeyboardImpl activeInstance];
      delegateAsResponder = [v41 delegateAsResponder];

      keyInputDelegate = delegateAsResponder;
    }

    v43 = _UIResponderFindInputAssistantItem(keyInputDelegate);
    if (v15)
    {
      v44 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      systemInputAssistantViewController2 = [v44 systemInputAssistantViewController];
      [systemInputAssistantViewController2 setInputAssistantButtonItemsForResponder:0];

      systemInputAssistantView7 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
      [systemInputAssistantView7 setInputAssistantItem:v43];
    }

    systemInputAssistantView8 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [(UIView *)v14 addSubview:systemInputAssistantView8];

    v48 = [UIKBHandwritingCandidateView alloc];
    [(UIView *)v14 bounds];
    v49 = [(UIKBHandwritingCandidateView *)v48 initWithFrame:keyplaneCopy keyplane:keyCopy key:?];
    [(UIHandwritingAssistantView *)v14 setCandidateView:v49];

    candidateView = [(UIHandwritingAssistantView *)v14 candidateView];
    systemInputAssistantView9 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [systemInputAssistantView9 setCenterView:candidateView];

    [(UIView *)v14 setClipsToBounds:0];
    if (v15)
    {
      [UIKeyboardCandidatePocketShadow widthWithShadow:0];
      v53 = v52;
      [(UIView *)v14 bounds];
      [UIKBHandwritingCandidateView shadowYForBounds:"shadowYForBounds:shadowHeight:" shadowHeight:?];
      v55 = v54;
      v56 = [UIKeyboardCandidatePocketShadow alloc];
      v67.origin.x = v17;
      v67.origin.y = v19;
      v67.size.width = v21;
      v67.size.height = v23;
      v57 = [(UIKeyboardCandidatePocketShadow *)v56 initWithFrame:CGRectGetMaxX(v67) - v53, v55, v53, 36.0];
      [(UIHandwritingAssistantView *)v14 setRightBorder:v57];

      rightBorder = [(UIHandwritingAssistantView *)v14 rightBorder];
      [rightBorder setDrawsShadow:0];

      rightBorder2 = [(UIHandwritingAssistantView *)v14 rightBorder];
      [(UIView *)v14 addSubview:rightBorder2];
    }
  }

  return v14;
}

- (id)candidateList
{
  candidateView = [(UIHandwritingAssistantView *)self candidateView];
  candidateList = [candidateView candidateList];

  return candidateList;
}

- (CGRect)assistantFrameForKeyplane:(id)keyplane key:(id)key
{
  keyplaneCopy = keyplane;
  [key paddedFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIKeyboardImpl isFloating])
  {
    v14 = -v8;
    v19 = [keyplaneCopy firstCachedKeyWithName:@"Delete-Key"];
    [v19 frame];
    v17 = v20;
  }

  else
  {
    [(UIView *)self bounds];
    v14 = v13;
    v10 = v15;
    v17 = v16;
    v12 = v18;
  }

  v21 = v14;
  v22 = v10;
  v23 = v17;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)updateForKeyplane:(id)keyplane key:(id)key
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  candidateView = [(UIHandwritingAssistantView *)self candidateView];
  [candidateView updateForKeyplane:keyplaneCopy key:keyCopy];

  [keyCopy paddedFrame];
  v10 = v9;

  systemInputAssistantView = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  [systemInputAssistantView setCenterViewWidth:v10];

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  systemInputAssistantView2 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  [systemInputAssistantView2 setRenderConfig:_inheritedRenderConfig];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  systemInputAssistantView = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  [systemInputAssistantView convertPoint:self fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  systemInputAssistantView2 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  v15 = [(UIHandwritingAssistantView *)systemInputAssistantView2 hitTest:eventCopy withEvent:v11, v13];

  if (!v15)
  {
    v21.receiver = self;
    v21.super_class = UIHandwritingAssistantView;
    v15 = [(UIView *)&v21 hitTest:eventCopy withEvent:x, y];
  }

  if (v15 == self)
  {
    v16 = 0;
  }

  else
  {
    systemInputAssistantView2 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
    if (v15 == systemInputAssistantView2)
    {
      v16 = 0;
    }

    else
    {
      candidateView = [(UIHandwritingAssistantView *)self candidateView];
      if (![(UIView *)v15 isDescendantOfView:candidateView])
      {

        goto LABEL_16;
      }

      v16 = 1;
    }
  }

  v17 = +[UIKeyboardCandidateController sharedInstance];
  candidateResultSet = [v17 candidateResultSet];
  hasCandidates = [candidateResultSet hasCandidates];

  if (v16)
  {
  }

  if (v15 != self)
  {
  }

  if ((hasCandidates & 1) == 0)
  {
    systemInputAssistantView2 = v15;
    v15 = 0;
LABEL_16:
  }

  return v15;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  systemInputAssistantView = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  [systemInputAssistantView convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  systemInputAssistantView2 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  if ([systemInputAssistantView2 pointInside:eventCopy withEvent:{v10, v12}])
  {
    v14 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UIHandwritingAssistantView;
    v14 = [(UIView *)&v16 pointInside:eventCopy withEvent:x, y];
  }

  return v14;
}

- (void)dimKeys:(id)keys
{
  v17 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [keysCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [keysCopy objectForKeyedSubscript:v10];
        if (([v10 integerValue] & 4) != 0)
        {
          [v11 doubleValue];
          [(UIView *)self setAlpha:?];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end