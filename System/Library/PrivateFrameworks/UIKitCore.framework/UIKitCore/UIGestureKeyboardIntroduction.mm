@interface UIGestureKeyboardIntroduction
- (BOOL)showGestureKeyboardIntroduction;
- (UIGestureKeyboardIntroduction)initWithLayoutStar:(id)star completion:(id)completion;
- (void)dismissGestureKeyboardIntroduction:(id)introduction;
- (void)insertText:(id)text forKey:(id)key;
- (void)playGestureKeyboardIntroduction:(id)introduction;
- (void)tryGestureKeyboardFromView:(id)view withEvent:(id)event;
@end

@implementation UIGestureKeyboardIntroduction

- (UIGestureKeyboardIntroduction)initWithLayoutStar:(id)star completion:(id)completion
{
  starCopy = star;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = UIGestureKeyboardIntroduction;
  v9 = [(UIGestureKeyboardIntroduction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->m_layout, star);
    v11 = [completionCopy copy];
    m_completionBlock = v10->m_completionBlock;
    v10->m_completionBlock = v11;
  }

  return v10;
}

- (BOOL)showGestureKeyboardIntroduction
{
  selfCopy = self;
  v88[2] = *MEMORY[0x1E69E9840];
  currentKeyplane = [(UIKeyboardLayoutStar *)self->m_layout currentKeyplane];
  currentKeyplaneView = [(UIKeyboardLayoutStar *)selfCopy->m_layout currentKeyplaneView];
  subtrees = [currentKeyplane subtrees];
  firstObject = [subtrees firstObject];

  keySet = [firstObject keySet];
  subtrees2 = [keySet subtrees];
  v9 = [subtrees2 count];

  if (v9 > 1)
  {
    keySet2 = [firstObject keySet];
    subtrees3 = [keySet2 subtrees];
    if ([subtrees3 count] < 2)
    {
      v17 = 0;
    }

    else
    {
      keySet3 = [firstObject keySet];
      subtrees4 = [keySet3 subtrees];
      v17 = [subtrees4 objectAtIndexedSubscript:1];
    }

    subtrees5 = [v17 subtrees];
    if ([subtrees5 count] < 4)
    {
      v20 = 0;
    }

    else
    {
      subtrees6 = [v17 subtrees];
      v20 = [subtrees6 objectAtIndexedSubscript:3];
    }

    keySet4 = [firstObject keySet];
    subtrees7 = [keySet4 subtrees];
    if ([subtrees7 count])
    {
      [firstObject keySet];
      v79 = selfCopy;
      v23 = firstObject;
      v24 = currentKeyplane;
      v25 = currentKeyplaneView;
      v27 = v26 = v20;
      subtrees8 = [v27 subtrees];
      v29 = [subtrees8 objectAtIndexedSubscript:0];

      v17 = v27;
      v20 = v26;
      currentKeyplaneView = v25;
      currentKeyplane = v24;
      firstObject = v23;
      selfCopy = v79;
    }

    else
    {
      v29 = 0;
    }

    subtrees9 = [v29 subtrees];
    if ([subtrees9 count] <= 4)
    {

      v32 = 0;
    }

    else
    {
      subtrees10 = [v29 subtrees];
      v32 = [subtrees10 objectAtIndexedSubscript:4];

      if (v20 && v32 && [v20 displayTypeHint] == 10 && objc_msgSend(v32, "displayTypeHint") == 10)
      {
        v33 = +[UIKeyboardImpl activeInstance];
        [v33 setHidden:1];
        v34 = [UIView alloc];
        [v33 frame];
        v35 = [(UIView *)v34 initWithFrame:?];
        m_view = selfCopy->m_view;
        selfCopy->m_view = v35;

        superview = [v33 superview];
        [superview addSubview:selfCopy->m_view];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __64__UIGestureKeyboardIntroduction_showGestureKeyboardIntroduction__block_invoke;
        aBlock[3] = &unk_1E71100A8;
        aBlock[4] = selfCopy;
        v82 = currentKeyplaneView;
        v83 = currentKeyplane;
        v76 = v33;
        v84 = v76;
        v38 = _Block_copy(aBlock);
        v77 = v20;
        v39 = v38[2](v38, v20, 1);
        m_firstKeyView = selfCopy->m_firstKeyView;
        selfCopy->m_firstKeyView = v39;

        v75 = v38;
        v41 = v38[2](v38, v32, 0);
        m_secondKeyView = selfCopy->m_secondKeyView;
        selfCopy->m_secondKeyView = v41;

        [(UIView *)selfCopy->m_view frame];
        v44 = v43;
        v45 = [UILabel alloc];
        v46 = [(UILabel *)v45 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v44, 60.0];
        [(UIView *)selfCopy->m_view center];
        v48 = v47;
        [(UIView *)selfCopy->m_view frame];
        [(UIView *)v46 setCenter:v48, v49 * 0.25];
        [(UILabel *)v46 setUserInteractionEnabled:0];
        [(UILabel *)v46 setNumberOfLines:0];
        v80 = v46;
        [(UILabel *)v46 setTextAlignment:1];
        v78 = _UINSLocalizedStringWithDefaultValue(@"To access the alternate letters on the keyboard,\npull down on the key and release.", @"To access the alternate letters on the keyboard,\npull down on the key and release.");
        v72 = *off_1E70EC920;
        v87[0] = *off_1E70EC920;
        renderConfig = [(UIKeyboardLayoutStar *)selfCopy->m_layout renderConfig];
        if ([renderConfig whiteText])
        {
          +[UIColor whiteColor];
        }

        else
        {
          +[UIColor grayColor];
        }
        v54 = ;
        v88[0] = v54;
        v71 = *off_1E70EC918;
        v87[1] = *off_1E70EC918;
        v55 = [off_1E70ECC18 systemFontOfSize:17.0];
        v88[1] = v55;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];

        v74 = v56;
        v57 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v78 attributes:v56];
        [(UILabel *)v80 setAttributedText:v57];

        [(UIView *)selfCopy->m_view addSubview:v80];
        v73 = [UIButton buttonWithType:1];
        v85[0] = v72;
        renderConfig2 = [(UIKeyboardLayoutStar *)selfCopy->m_layout renderConfig];
        if ([renderConfig2 whiteText])
        {
          +[UIColor whiteColor];
        }

        else
        {
          +[UIColor systemBlueColor];
        }
        v59 = ;
        v85[1] = v71;
        v86[0] = v59;
        v60 = [off_1E70ECC18 systemFontOfSize:17.0];
        v86[1] = v60;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];

        v62 = objc_alloc(MEMORY[0x1E696AAB0]);
        v63 = _UINSLocalizedStringWithDefaultValue(@"OK", @"OK");
        v64 = [v62 initWithString:v63 attributes:v61];

        [v73 setAttributedTitle:v64 forState:0];
        [v73 addTarget:selfCopy action:sel_dismissGestureKeyboardIntroduction_ forControlEvents:64];
        [(UIView *)selfCopy->m_view frame];
        [v73 setSize:{v65 * 0.25, 20.0}];
        [(UIView *)selfCopy->m_view center];
        v67 = v66;
        [(UIView *)selfCopy->m_view frame];
        [v73 setCenter:{v67, v68 * 7.0 * 0.125}];
        [(UIView *)selfCopy->m_view addSubview:v73];
        selfCopy->m_start = CFAbsoluteTimeGetCurrent();
        [(NSTimer *)selfCopy->m_gestureKeyboardInfoTimer invalidate];
        v12 = 1;
        v69 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:selfCopy target:sel_playGestureKeyboardIntroduction_ selector:0 userInfo:1 repeats:0.02];
        m_gestureKeyboardInfoTimer = selfCopy->m_gestureKeyboardInfoTimer;
        selfCopy->m_gestureKeyboardInfoTimer = v69;

        v20 = v77;
        goto LABEL_21;
      }
    }

    v51 = [selfCopy->m_completionBlock copy];
    m_completionBlock = selfCopy->m_completionBlock;
    selfCopy->m_completionBlock = 0;

    v51[2](v51, 0);
    v12 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v10 = [selfCopy->m_completionBlock copy];
  v11 = selfCopy->m_completionBlock;
  selfCopy->m_completionBlock = 0;

  v10[2](v10, 0);
  v12 = 0;
LABEL_22:

  return v12;
}

id __64__UIGestureKeyboardIntroduction_showGestureKeyboardIntroduction__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  [v5 setState:2 forKey:v6];
  v7 = [*(a1 + 40) factory];
  v8 = [v7 traitsForKey:v6 onKeyplane:*(a1 + 48)];

  v9 = [v8 geometry];
  [v9 displayFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [*(a1 + 40) resizableSnapshotViewFromRect:0 afterScreenUpdates:v11 withCapInsets:{v13, v15, v17, 0.0, 0.0, 0.0, 0.0}];
  v19 = [*(a1 + 56) window];
  v20 = [v19 screen];
  [v20 scale];
  [v18 setContentScaleFactor:?];

  v21 = v15 + 8.0;
  if (a3)
  {
    v21 = -(v15 + 8.0);
  }

  v22 = v21 * 0.5;
  [*(*(a1 + 32) + 16) center];
  v24 = v22 + v23;
  [*(*(a1 + 32) + 16) center];
  [v18 setCenter:v24];
  [*(*(a1 + 32) + 16) addSubview:v18];
  [*(*(a1 + 32) + 8) setState:4 forKey:v6];
  v25 = [*(a1 + 40) viewForKey:v6];

  [v25 removeFromSuperview];
  [v18 center];
  [v25 setCenter:?];
  v26 = [UIButton buttonWithType:1];
  [v26 addTarget:*(a1 + 32) action:sel_tryGestureKeyboardFromView_withEvent_ forControlEvents:4095];
  [v18 frame];
  [v26 setFrame:?];
  [*(*(a1 + 32) + 16) addSubview:v26];

  return v25;
}

- (void)insertText:(id)text forKey:(id)key
{
  keyCopy = key;
  textCopy = text;
  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [(UIKeyboardLayoutStar *)self->m_layout createKeyEventForStringAction:textCopy forKey:keyCopy inputFlags:0];

  if (qword_1ED49F010 != -1)
  {
    dispatch_once(&qword_1ED49F010, &__block_literal_global_349);
  }

  taskQueue = [v8 taskQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__UIGestureKeyboardIntroduction_insertText_forKey___block_invoke_3;
  v14[3] = &unk_1E70FD1B8;
  v15 = v8;
  v16 = v9;
  v11 = _MergedGlobals_1171;
  v12 = v9;
  v13 = v8;
  [taskQueue performSingleTask:v14 breadcrumb:v11];

  ++self->m_insertedTextLength;
}

void __51__UIGestureKeyboardIntroduction_insertText_forKey___block_invoke()
{
  v0 = [&__block_literal_global_58_1 copy];
  v1 = _MergedGlobals_1171;
  _MergedGlobals_1171 = v0;
}

- (void)tryGestureKeyboardFromView:(id)view withEvent:(id)event
{
  viewCopy = view;
  v7 = [event touchesForView:viewCopy];
  anyObject = [v7 anyObject];

  [anyObject locationInView:viewCopy];
  v10 = v9;
  v12 = v11;
  v13 = v11 - self->m_initPoint.y;
  [viewCopy frame];
  v15 = v13 / v14;
  [viewCopy center];
  v17 = v16;
  [(UIView *)self->m_view center];
  if (v17 >= v18)
  {
    v19 = 32;
  }

  else
  {
    v19 = 24;
  }

  v20 = *(&self->super.isa + v19);
  [viewCopy center];
  v22 = v21;
  [(UIView *)self->m_view center];
  if (v22 <= v23)
  {
    v24 = 32;
  }

  else
  {
    v24 = 24;
  }

  v25 = *(&self->super.isa + v24);
  phase = [anyObject phase];
  if (phase > 2)
  {
    if (phase == 3)
    {
      if (v15 <= 0.5)
      {
        if (self->m_hasPeeked)
        {
          goto LABEL_24;
        }

        keyViewAnimator = [v20 key];
        representedString = [keyViewAnimator representedString];
        v44 = [v20 key];
        [(UIGestureKeyboardIntroduction *)self insertText:representedString forKey:v44];

        goto LABEL_23;
      }

      v36 = [v20 key];
      secondaryRepresentedStrings = [v36 secondaryRepresentedStrings];
      firstObject = [secondaryRepresentedStrings firstObject];
      v39 = [v20 key];
      gestureKey = [v39 gestureKey];
      [(UIGestureKeyboardIntroduction *)self insertText:firstObject forKey:gestureKey];
    }

    else
    {
      if (phase != 4)
      {
        goto LABEL_25;
      }

      if (v15 <= 0.5)
      {
LABEL_24:
        v42 = dispatch_time(0, 100000000);
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __70__UIGestureKeyboardIntroduction_tryGestureKeyboardFromView_withEvent___block_invoke_2;
        v45[3] = &unk_1E70F3590;
        v46 = v20;
        dispatch_after(v42, MEMORY[0x1E69E96A0], v45);

        goto LABEL_25;
      }
    }

    keyViewAnimator = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
    [keyViewAnimator endTransitionForKeyView:v20];
LABEL_23:

    goto LABEL_24;
  }

  if ((phase - 1) >= 2)
  {
    if (!phase)
    {
      [(NSTimer *)self->m_gestureKeyboardInfoTimer invalidate];
      m_gestureKeyboardInfoTimer = self->m_gestureKeyboardInfoTimer;
      self->m_gestureKeyboardInfoTimer = 0;

      self->m_initPoint.x = v10;
      self->m_initPoint.y = v12;
      self->m_hasPeeked = 0;
      superview = [v25 superview];

      if (superview)
      {
        keyViewAnimator2 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
        [keyViewAnimator2 endTransitionForKeyView:v25];

        v33 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __70__UIGestureKeyboardIntroduction_tryGestureKeyboardFromView_withEvent___block_invoke;
        block[3] = &unk_1E70F3590;
        v48 = v25;
        dispatch_after(v33, MEMORY[0x1E69E96A0], block);
      }

      superview2 = [v20 superview];

      if (superview2)
      {
        keyViewAnimator3 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
        [keyViewAnimator3 endTransitionForKeyView:v20];
      }

      else
      {
        [(UIView *)self->m_view addSubview:v20];
      }
    }
  }

  else
  {
    keyViewAnimator4 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
    v28 = v12 - self->m_initPoint.y;
    [viewCopy frame];
    [keyViewAnimator4 updateTransitionForKeyView:v20 normalizedDragSize:{0.0, v28 / v29}];

    if (v15 > 0.5)
    {
      self->m_hasPeeked = 1;
    }
  }

LABEL_25:
}

- (void)playGestureKeyboardIntroduction:(id)introduction
{
  v4 = CFAbsoluteTimeGetCurrent() - self->m_start;
  if (v4 >= 8.0)
  {
    superview = [(UIView *)self->m_firstKeyView superview];

    if (superview)
    {
      [(UIKBKeyView *)self->m_firstKeyView removeFromSuperview];
    }

    superview2 = [(UIView *)self->m_secondKeyView superview];

    if (superview2)
    {
      [(UIKBKeyView *)self->m_secondKeyView removeFromSuperview];
    }

    [(NSTimer *)self->m_gestureKeyboardInfoTimer invalidate];
    m_gestureKeyboardInfoTimer = self->m_gestureKeyboardInfoTimer;
    self->m_gestureKeyboardInfoTimer = 0;
  }

  else
  {
    v5 = floor(v4 * 0.5);
    v6 = v4 - (v5 + v5);
    if (v6 < 1.3)
    {
      superview3 = [(UIView *)self->m_firstKeyView superview];

      if (superview3)
      {
        [(UIKBKeyView *)self->m_firstKeyView removeFromSuperview];
      }

      superview4 = [(UIView *)self->m_secondKeyView superview];

      if (superview4)
      {
        m_secondKeyView = self->m_secondKeyView;

        [(UIKBKeyView *)m_secondKeyView removeFromSuperview];
      }

      return;
    }

    v13 = v4 & 3;
    if (v4 <= 0)
    {
      v13 = -(-v4 & 3);
    }

    v14 = v13 < 2;
    v15 = 32;
    if (v14)
    {
      v15 = 24;
    }

    v19 = *(&self->super.isa + v15);
    [(UIView *)self->m_view addSubview:?];
    v16 = v6 + -1.3;
    if (v16 >= 0.5)
    {
      if (self->m_isInTransition)
      {
        keyViewAnimator = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
        [keyViewAnimator endTransitionForKeyView:v19];

        self->m_isInTransition = 0;
      }
    }

    else
    {
      keyViewAnimator2 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
      [keyViewAnimator2 updateTransitionForKeyView:v19 normalizedDragSize:{0.0, v16 + v16}];

      self->m_isInTransition = 1;
    }

    m_gestureKeyboardInfoTimer = v19;
  }
}

- (void)dismissGestureKeyboardIntroduction:(id)introduction
{
  [(NSTimer *)self->m_gestureKeyboardInfoTimer invalidate];
  m_gestureKeyboardInfoTimer = self->m_gestureKeyboardInfoTimer;
  self->m_gestureKeyboardInfoTimer = 0;

  [(UIKBKeyView *)self->m_firstKeyView removeFromSuperview];
  m_firstKeyView = self->m_firstKeyView;
  self->m_firstKeyView = 0;

  [(UIKBKeyView *)self->m_secondKeyView removeFromSuperview];
  m_secondKeyView = self->m_secondKeyView;
  self->m_secondKeyView = 0;

  [(UIView *)self->m_view removeFromSuperview];
  v12 = +[UIKeyboardImpl activeInstance];
  [v12 setHidden:0];
  if (self->m_insertedTextLength)
  {
    v8 = 0;
    do
    {
      [v12 deleteFromInput];
      ++v8;
    }

    while (self->m_insertedTextLength > v8);
  }

  m_completionBlock = self->m_completionBlock;
  if (m_completionBlock)
  {
    v10 = [m_completionBlock copy];
    v11 = self->m_completionBlock;
    self->m_completionBlock = 0;

    (v10)[2](v10, introduction != 0);
  }
}

@end