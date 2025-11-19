@interface UIGestureKeyboardIntroduction
- (BOOL)showGestureKeyboardIntroduction;
- (UIGestureKeyboardIntroduction)initWithLayoutStar:(id)a3 completion:(id)a4;
- (void)dismissGestureKeyboardIntroduction:(id)a3;
- (void)insertText:(id)a3 forKey:(id)a4;
- (void)playGestureKeyboardIntroduction:(id)a3;
- (void)tryGestureKeyboardFromView:(id)a3 withEvent:(id)a4;
@end

@implementation UIGestureKeyboardIntroduction

- (UIGestureKeyboardIntroduction)initWithLayoutStar:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UIGestureKeyboardIntroduction;
  v9 = [(UIGestureKeyboardIntroduction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->m_layout, a3);
    v11 = [v8 copy];
    m_completionBlock = v10->m_completionBlock;
    v10->m_completionBlock = v11;
  }

  return v10;
}

- (BOOL)showGestureKeyboardIntroduction
{
  v2 = self;
  v88[2] = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardLayoutStar *)self->m_layout currentKeyplane];
  v4 = [(UIKeyboardLayoutStar *)v2->m_layout currentKeyplaneView];
  v5 = [v3 subtrees];
  v6 = [v5 firstObject];

  v7 = [v6 keySet];
  v8 = [v7 subtrees];
  v9 = [v8 count];

  if (v9 > 1)
  {
    v13 = [v6 keySet];
    v14 = [v13 subtrees];
    if ([v14 count] < 2)
    {
      v17 = 0;
    }

    else
    {
      v15 = [v6 keySet];
      v16 = [v15 subtrees];
      v17 = [v16 objectAtIndexedSubscript:1];
    }

    v18 = [v17 subtrees];
    if ([v18 count] < 4)
    {
      v20 = 0;
    }

    else
    {
      v19 = [v17 subtrees];
      v20 = [v19 objectAtIndexedSubscript:3];
    }

    v21 = [v6 keySet];
    v22 = [v21 subtrees];
    if ([v22 count])
    {
      [v6 keySet];
      v79 = v2;
      v23 = v6;
      v24 = v3;
      v25 = v4;
      v27 = v26 = v20;
      v28 = [v27 subtrees];
      v29 = [v28 objectAtIndexedSubscript:0];

      v17 = v27;
      v20 = v26;
      v4 = v25;
      v3 = v24;
      v6 = v23;
      v2 = v79;
    }

    else
    {
      v29 = 0;
    }

    v30 = [v29 subtrees];
    if ([v30 count] <= 4)
    {

      v32 = 0;
    }

    else
    {
      v31 = [v29 subtrees];
      v32 = [v31 objectAtIndexedSubscript:4];

      if (v20 && v32 && [v20 displayTypeHint] == 10 && objc_msgSend(v32, "displayTypeHint") == 10)
      {
        v33 = +[UIKeyboardImpl activeInstance];
        [v33 setHidden:1];
        v34 = [UIView alloc];
        [v33 frame];
        v35 = [(UIView *)v34 initWithFrame:?];
        m_view = v2->m_view;
        v2->m_view = v35;

        v37 = [v33 superview];
        [v37 addSubview:v2->m_view];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __64__UIGestureKeyboardIntroduction_showGestureKeyboardIntroduction__block_invoke;
        aBlock[3] = &unk_1E71100A8;
        aBlock[4] = v2;
        v82 = v4;
        v83 = v3;
        v76 = v33;
        v84 = v76;
        v38 = _Block_copy(aBlock);
        v77 = v20;
        v39 = v38[2](v38, v20, 1);
        m_firstKeyView = v2->m_firstKeyView;
        v2->m_firstKeyView = v39;

        v75 = v38;
        v41 = v38[2](v38, v32, 0);
        m_secondKeyView = v2->m_secondKeyView;
        v2->m_secondKeyView = v41;

        [(UIView *)v2->m_view frame];
        v44 = v43;
        v45 = [UILabel alloc];
        v46 = [(UILabel *)v45 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v44, 60.0];
        [(UIView *)v2->m_view center];
        v48 = v47;
        [(UIView *)v2->m_view frame];
        [(UIView *)v46 setCenter:v48, v49 * 0.25];
        [(UILabel *)v46 setUserInteractionEnabled:0];
        [(UILabel *)v46 setNumberOfLines:0];
        v80 = v46;
        [(UILabel *)v46 setTextAlignment:1];
        v78 = _UINSLocalizedStringWithDefaultValue(@"To access the alternate letters on the keyboard,\npull down on the key and release.", @"To access the alternate letters on the keyboard,\npull down on the key and release.");
        v72 = *off_1E70EC920;
        v87[0] = *off_1E70EC920;
        v50 = [(UIKeyboardLayoutStar *)v2->m_layout renderConfig];
        if ([v50 whiteText])
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

        [(UIView *)v2->m_view addSubview:v80];
        v73 = [UIButton buttonWithType:1];
        v85[0] = v72;
        v58 = [(UIKeyboardLayoutStar *)v2->m_layout renderConfig];
        if ([v58 whiteText])
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
        [v73 addTarget:v2 action:sel_dismissGestureKeyboardIntroduction_ forControlEvents:64];
        [(UIView *)v2->m_view frame];
        [v73 setSize:{v65 * 0.25, 20.0}];
        [(UIView *)v2->m_view center];
        v67 = v66;
        [(UIView *)v2->m_view frame];
        [v73 setCenter:{v67, v68 * 7.0 * 0.125}];
        [(UIView *)v2->m_view addSubview:v73];
        v2->m_start = CFAbsoluteTimeGetCurrent();
        [(NSTimer *)v2->m_gestureKeyboardInfoTimer invalidate];
        v12 = 1;
        v69 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v2 target:sel_playGestureKeyboardIntroduction_ selector:0 userInfo:1 repeats:0.02];
        m_gestureKeyboardInfoTimer = v2->m_gestureKeyboardInfoTimer;
        v2->m_gestureKeyboardInfoTimer = v69;

        v20 = v77;
        goto LABEL_21;
      }
    }

    v51 = [v2->m_completionBlock copy];
    m_completionBlock = v2->m_completionBlock;
    v2->m_completionBlock = 0;

    v51[2](v51, 0);
    v12 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v10 = [v2->m_completionBlock copy];
  v11 = v2->m_completionBlock;
  v2->m_completionBlock = 0;

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

- (void)insertText:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [(UIKeyboardLayoutStar *)self->m_layout createKeyEventForStringAction:v7 forKey:v6 inputFlags:0];

  if (qword_1ED49F010 != -1)
  {
    dispatch_once(&qword_1ED49F010, &__block_literal_global_349);
  }

  v10 = [v8 taskQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__UIGestureKeyboardIntroduction_insertText_forKey___block_invoke_3;
  v14[3] = &unk_1E70FD1B8;
  v15 = v8;
  v16 = v9;
  v11 = _MergedGlobals_1171;
  v12 = v9;
  v13 = v8;
  [v10 performSingleTask:v14 breadcrumb:v11];

  ++self->m_insertedTextLength;
}

void __51__UIGestureKeyboardIntroduction_insertText_forKey___block_invoke()
{
  v0 = [&__block_literal_global_58_1 copy];
  v1 = _MergedGlobals_1171;
  _MergedGlobals_1171 = v0;
}

- (void)tryGestureKeyboardFromView:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = [a4 touchesForView:v6];
  v8 = [v7 anyObject];

  [v8 locationInView:v6];
  v10 = v9;
  v12 = v11;
  v13 = v11 - self->m_initPoint.y;
  [v6 frame];
  v15 = v13 / v14;
  [v6 center];
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
  [v6 center];
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
  v26 = [v8 phase];
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      if (v15 <= 0.5)
      {
        if (self->m_hasPeeked)
        {
          goto LABEL_24;
        }

        v41 = [v20 key];
        v43 = [v41 representedString];
        v44 = [v20 key];
        [(UIGestureKeyboardIntroduction *)self insertText:v43 forKey:v44];

        goto LABEL_23;
      }

      v36 = [v20 key];
      v37 = [v36 secondaryRepresentedStrings];
      v38 = [v37 firstObject];
      v39 = [v20 key];
      v40 = [v39 gestureKey];
      [(UIGestureKeyboardIntroduction *)self insertText:v38 forKey:v40];
    }

    else
    {
      if (v26 != 4)
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

    v41 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
    [v41 endTransitionForKeyView:v20];
LABEL_23:

    goto LABEL_24;
  }

  if ((v26 - 1) >= 2)
  {
    if (!v26)
    {
      [(NSTimer *)self->m_gestureKeyboardInfoTimer invalidate];
      m_gestureKeyboardInfoTimer = self->m_gestureKeyboardInfoTimer;
      self->m_gestureKeyboardInfoTimer = 0;

      self->m_initPoint.x = v10;
      self->m_initPoint.y = v12;
      self->m_hasPeeked = 0;
      v31 = [v25 superview];

      if (v31)
      {
        v32 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
        [v32 endTransitionForKeyView:v25];

        v33 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __70__UIGestureKeyboardIntroduction_tryGestureKeyboardFromView_withEvent___block_invoke;
        block[3] = &unk_1E70F3590;
        v48 = v25;
        dispatch_after(v33, MEMORY[0x1E69E96A0], block);
      }

      v34 = [v20 superview];

      if (v34)
      {
        v35 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
        [v35 endTransitionForKeyView:v20];
      }

      else
      {
        [(UIView *)self->m_view addSubview:v20];
      }
    }
  }

  else
  {
    v27 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
    v28 = v12 - self->m_initPoint.y;
    [v6 frame];
    [v27 updateTransitionForKeyView:v20 normalizedDragSize:{0.0, v28 / v29}];

    if (v15 > 0.5)
    {
      self->m_hasPeeked = 1;
    }
  }

LABEL_25:
}

- (void)playGestureKeyboardIntroduction:(id)a3
{
  v4 = CFAbsoluteTimeGetCurrent() - self->m_start;
  if (v4 >= 8.0)
  {
    v10 = [(UIView *)self->m_firstKeyView superview];

    if (v10)
    {
      [(UIKBKeyView *)self->m_firstKeyView removeFromSuperview];
    }

    v11 = [(UIView *)self->m_secondKeyView superview];

    if (v11)
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
      v7 = [(UIView *)self->m_firstKeyView superview];

      if (v7)
      {
        [(UIKBKeyView *)self->m_firstKeyView removeFromSuperview];
      }

      v8 = [(UIView *)self->m_secondKeyView superview];

      if (v8)
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
        v18 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
        [v18 endTransitionForKeyView:v19];

        self->m_isInTransition = 0;
      }
    }

    else
    {
      v17 = [(UIKeyboardLayoutStar *)self->m_layout keyViewAnimator];
      [v17 updateTransitionForKeyView:v19 normalizedDragSize:{0.0, v16 + v16}];

      self->m_isInTransition = 1;
    }

    m_gestureKeyboardInfoTimer = v19;
  }
}

- (void)dismissGestureKeyboardIntroduction:(id)a3
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

    (v10)[2](v10, a3 != 0);
  }
}

@end