@interface UIHandwritingAssistantView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)assistantFrameForKeyplane:(id)a3 key:(id)a4;
- (UIHandwritingAssistantView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (id)candidateList;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)dimKeys:(id)a3;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
@end

@implementation UIHandwritingAssistantView

- (UIHandwritingAssistantView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v61.receiver = self;
  v61.super_class = UIHandwritingAssistantView;
  v13 = [(UIKBKeyView *)&v61 initWithFrame:v11 keyplane:v12 key:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    [(UIView *)v13 setOpaque:0];
    [(UIView *)v14 setUserInteractionEnabled:1];
    v15 = 0;
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v15 = +[UIKeyboardImpl isFloating]^ 1;
    }

    [(UIHandwritingAssistantView *)v14 assistantFrameForKeyplane:v11 key:v12];
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

    [v12 paddedFrame];
    v28 = v27;
    v29 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [v29 setCenterViewWidth:v28];

    v30 = [(UIView *)v14 _inheritedRenderConfig];
    v31 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [v31 setRenderConfig:v30];

    v32 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [v32 setBackgroundVisible:0];

    v33 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [v33 setShowsButtonBarItemsInline:v15];

    v34 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [v34 setAutoresizingMask:18];

    v35 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v36 = [v35 systemInputAssistantViewController];
    v37 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [v37 setDelegate:v36];

    v38 = +[UIKeyboardImpl activeInstance];
    v39 = [v38 inputDelegateManager];
    v40 = [v39 keyInputDelegate];

    if (([v40 __isKindOfUIResponder] & 1) == 0)
    {
      v41 = +[UIKeyboardImpl activeInstance];
      v42 = [v41 delegateAsResponder];

      v40 = v42;
    }

    v43 = _UIResponderFindInputAssistantItem(v40);
    if (v15)
    {
      v44 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v45 = [v44 systemInputAssistantViewController];
      [v45 setInputAssistantButtonItemsForResponder:0];

      v46 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
      [v46 setInputAssistantItem:v43];
    }

    v47 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [(UIView *)v14 addSubview:v47];

    v48 = [UIKBHandwritingCandidateView alloc];
    [(UIView *)v14 bounds];
    v49 = [(UIKBHandwritingCandidateView *)v48 initWithFrame:v11 keyplane:v12 key:?];
    [(UIHandwritingAssistantView *)v14 setCandidateView:v49];

    v50 = [(UIHandwritingAssistantView *)v14 candidateView];
    v51 = [(UIHandwritingAssistantView *)v14 systemInputAssistantView];
    [v51 setCenterView:v50];

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

      v58 = [(UIHandwritingAssistantView *)v14 rightBorder];
      [v58 setDrawsShadow:0];

      v59 = [(UIHandwritingAssistantView *)v14 rightBorder];
      [(UIView *)v14 addSubview:v59];
    }
  }

  return v14;
}

- (id)candidateList
{
  v2 = [(UIHandwritingAssistantView *)self candidateView];
  v3 = [v2 candidateList];

  return v3;
}

- (CGRect)assistantFrameForKeyplane:(id)a3 key:(id)a4
{
  v6 = a3;
  [a4 paddedFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIKeyboardImpl isFloating])
  {
    v14 = -v8;
    v19 = [v6 firstCachedKeyWithName:@"Delete-Key"];
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

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIHandwritingAssistantView *)self candidateView];
  [v8 updateForKeyplane:v7 key:v6];

  [v6 paddedFrame];
  v10 = v9;

  v11 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  [v11 setCenterViewWidth:v10];

  v13 = [(UIView *)self _inheritedRenderConfig];
  v12 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  [v12 setRenderConfig:v13];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  [v9 convertPoint:self fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  v15 = [(UIHandwritingAssistantView *)v14 hitTest:v8 withEvent:v11, v13];

  if (!v15)
  {
    v21.receiver = self;
    v21.super_class = UIHandwritingAssistantView;
    v15 = [(UIView *)&v21 hitTest:v8 withEvent:x, y];
  }

  if (v15 == self)
  {
    v16 = 0;
  }

  else
  {
    v14 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
    if (v15 == v14)
    {
      v16 = 0;
    }

    else
    {
      v4 = [(UIHandwritingAssistantView *)self candidateView];
      if (![(UIView *)v15 isDescendantOfView:v4])
      {

        goto LABEL_16;
      }

      v16 = 1;
    }
  }

  v17 = +[UIKeyboardCandidateController sharedInstance];
  v18 = [v17 candidateResultSet];
  v19 = [v18 hasCandidates];

  if (v16)
  {
  }

  if (v15 != self)
  {
  }

  if ((v19 & 1) == 0)
  {
    v14 = v15;
    v15 = 0;
LABEL_16:
  }

  return v15;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  [v8 convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(UIHandwritingAssistantView *)self systemInputAssistantView];
  if ([v13 pointInside:v7 withEvent:{v10, v12}])
  {
    v14 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UIHandwritingAssistantView;
    v14 = [(UIView *)&v16 pointInside:v7 withEvent:x, y];
  }

  return v14;
}

- (void)dimKeys:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        if (([v10 integerValue] & 4) != 0)
        {
          [v11 doubleValue];
          [(UIView *)self setAlpha:?];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end