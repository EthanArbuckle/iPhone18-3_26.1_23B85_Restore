@interface UIInlineTextCompletionPrompt
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIInlineTextCompletionPrompt)initWithFrame:(CGRect)a3;
- (UITextCompletionAcceptanceDelegate)delegate;
- (int)textEffectsVisibilityLevel;
- (void)accept;
- (void)dealloc;
- (void)removePromptSubviews;
- (void)setTextCompletion:(id)a3 inRect:(CGRect)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation UIInlineTextCompletionPrompt

- (UIInlineTextCompletionPrompt)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UIInlineTextCompletionPrompt;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    typedTextViews = v3->_typedTextViews;
    v3->_typedTextViews = v4;

    [(UIView *)v3 setOpaque:0];
    [(UIView *)v3 setUserInteractionEnabled:1];
    [(UIView *)v3 setClipsToBounds:0];
  }

  return v3;
}

- (int)textEffectsVisibilityLevel
{
  v2 = [(UIView *)self superview];
  v3 = [v2 textEffectsVisibilityLevel];

  if (v3 <= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

- (void)dealloc
{
  [(UIInlineTextCompletionPrompt *)self removePromptSubviews];
  v3.receiver = self;
  v3.super_class = UIInlineTextCompletionPrompt;
  [(UIView *)&v3 dealloc];
}

- (void)removePromptSubviews
{
  [(NSMutableArray *)self->_typedTextViews makeObjectsPerformSelector:sel_removeFromSuperview];
  [(NSMutableArray *)self->_typedTextViews removeAllObjects];
  [(UIView *)self->_textCompletionView removeFromSuperview];
  textCompletionView = self->_textCompletionView;
  self->_textCompletionView = 0;
}

- (void)setTextCompletion:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v129 = *MEMORY[0x1E69E9840];
  v10 = a3 == 0;
  v11 = a3;
  v12 = [v11 copy];
  textCompletionCandidate = self->_textCompletionCandidate;
  self->_textCompletionCandidate = v12;

  v14 = [v11 candidate];
  v15 = [v14 copy];
  textCompletion = self->_textCompletion;
  self->_textCompletion = v15;

  v17 = [v11 input];

  v18 = [v17 copy];
  typedText = self->_typedText;
  self->_typedText = v18;

  [(UIInlineTextCompletionPrompt *)self removePromptSubviews];
  [(UIView *)self setHidden:v10];
  v20 = +[UIKeyboardImpl activeInstance];
  v21 = [v20 inputOverlayContainer];

  if (a3)
  {
    v22 = [(UIView *)self superview];

    if (!v22)
    {
      [v21 addSubview:self];
    }

    v23 = v21;
    v24 = +[UIKeyboard currentDocumentState];
    [v24 clientFrameInWindow];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v23;
    v34 = +[UIKeyboardImpl activeInstance];
    v35 = [v34 inputDelegate];

    v36 = [v35 textInputView];

    if (v33 && v36)
    {
      v37 = +[UIKeyboardImpl activeInstance];
      v38 = [v35 textInputView];
      [v37 convertRectToAutocorrectRect:v38 delegateView:v33 container:{v26, v28, v30, v32}];
      v26 = v39;
      v28 = v40;
      v30 = v41;
      v32 = v42;
    }

    v130.origin.x = v26;
    v130.origin.y = v28;
    v130.size.width = v30;
    v130.size.height = v32;
    if (CGRectIsNull(v130))
    {
      v43 = [v33 window];
      [v43 frame];
      v26 = v44;
      v28 = v45;
      v30 = v46;
      v32 = v47;
    }

    aRect.origin.y = y;
    if (+[UIKeyboard isInputSystemUI])
    {
      v48 = +[UIKeyboard keyboardApplicationIdentifier];
    }

    else
    {
      v48 = 0;
    }

    v49 = width;
    v50 = [v48 isEqualToString:@"com.apple.mobilemail"];
    v51 = 20.0;
    if ((v50 & 1) == 0)
    {
      v52 = [v48 isEqualToString:@"com.apple.MobileSMS"];
      v51 = 6.0;
      if ((v52 & 1) == 0)
      {
        if ([v48 isEqualToString:@"com.apple.mobilenotes"])
        {
          v51 = 54.0;
        }

        else
        {
          v51 = 0.0;
        }
      }
    }

    v53 = height;
    v131.origin.x = v26;
    v131.origin.y = v28;
    v131.size.width = v30;
    v131.size.height = v32;
    v132 = CGRectInset(v131, v51, 0.0);
    v54 = v132.origin.x;
    v55 = v132.origin.y;
    v56 = v132.size.width;
    v57 = v132.size.height;

    v58 = _UIKBInlineTextCompletionLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v141.origin.x = v54;
      v141.origin.y = v55;
      v141.size.width = v56;
      v141.size.height = v57;
      v111 = NSStringFromRect(v141);
      *buf = 138412290;
      v122 = v111;
      _os_log_debug_impl(&dword_188A29000, v58, OS_LOG_TYPE_DEBUG, "Computed inlineTextOverlayFrame=%@", buf, 0xCu);
    }

    aRect.origin.x = v57;
    v59 = v54;

    v60 = [objc_opt_self() mainScreen];
    [v60 scale];
    v62 = v61;

    v63 = floor(x * v62) / v62;
    v64 = floor(aRect.origin.y * v62) / v62;
    v65 = v49 * v62;
    v66 = v63;
    v67 = floor(v65) / v62;
    v68 = floor(v53 * v62) / v62;
    [(UIView *)self setFrame:v63, v64, v67, v68];
    if ([(NSString *)self->_typedText length]&& [(NSString *)self->_textCompletion hasPrefix:self->_typedText])
    {
      v69 = [(NSString *)self->_textCompletion substringFromIndex:[(NSString *)self->_typedText length]];
      v70 = self->_textCompletion;
      self->_textCompletion = v69;
    }

    v71 = self->_textCompletion;
    v72 = _documentTextFont();
    v73 = v71;
    v74 = v72;
    if (v73 && [(NSString *)v73 length])
    {
      v75 = v56;
      [(NSString *)v73 _legacy_sizeWithFont:v74 forWidth:2 lineBreakMode:3.40282347e38];
      v77 = ceil(v76);
    }

    else
    {
      v75 = v56;
      [@" " _legacy_sizeWithFont:v74 forWidth:2 lineBreakMode:3.40282347e38];
      v77 = 0.0;
    }

    v133.origin.x = v66;
    v133.origin.y = v64;
    v133.size.width = v67;
    v133.size.height = v68;
    aRect.origin.y = v77;
    v78 = v77 + CGRectGetMaxX(v133);
    v134.origin.x = v59;
    v134.origin.y = v55;
    v134.size.width = v75;
    v134.size.height = aRect.origin.x;
    if (v78 <= CGRectGetMaxX(v134))
    {
      v91 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        v146.origin.y = 0.0;
        v146.origin.x = v67;
        v146.size.width = aRect.origin.y;
        v146.size.height = v68;
        v115 = NSStringFromRect(v146);
        *buf = 138412290;
        v122 = v115;
        _os_log_debug_impl(&dword_188A29000, v91, OS_LOG_TYPE_DEBUG, "  correctionRect=%@", buf, 0xCu);
      }

      v92 = [[UITextCompletionView alloc] initWithFrame:self->_textCompletion string:8 type:3 edgeType:v67, 0.0, aRect.origin.y, v68];
      textCompletionView = self->_textCompletionView;
      self->_textCompletionView = &v92->super;

      [(UIView *)self setUserInteractionEnabled:1];
      [(UIView *)self addSubview:self->_textCompletionView];
    }

    else
    {
      v79 = [[UITextCompletionView alloc] initWithFrame:0 string:9 type:0 edgeType:0.0, -1.0, v67 + 2.0, v68 + 2.0];
      [(UIView *)self addSubview:v79];
      [(NSMutableArray *)self->_typedTextViews addObject:v79];
      v135.origin.x = v59;
      v135.origin.y = v55;
      v135.size.width = v75;
      v135.size.height = aRect.origin.x;
      MinX = CGRectGetMinX(v135);
      v136.origin.y = v64;
      v136.origin.x = v66;
      v136.size.width = v67;
      v136.size.height = v68;
      v81 = MinX - CGRectGetMinX(v136);
      v82 = [[UITextCompletionView alloc] initWithFrame:self->_typedText string:2 type:0 edgeType:v81, v68, v67, v68];
      [(UIView *)self addSubview:v82];
      [(NSMutableArray *)self->_typedTextViews addObject:v82];
      v137.origin.x = v81;
      v137.origin.y = v68;
      v137.size.width = v67;
      v137.size.height = v68;
      v83 = CGRectGetMaxX(v137) + -1.0;
      v138.origin.x = v81;
      v138.origin.y = v68;
      v138.size.width = v67;
      v138.size.height = v68;
      MinY = CGRectGetMinY(v138);
      v85 = [[UITextCompletionView alloc] initWithFrame:self->_textCompletion string:8 type:3 edgeType:v83, MinY, aRect.origin.y, v68];
      v86 = self->_textCompletionView;
      self->_textCompletionView = &v85->super;

      [(UIView *)self setUserInteractionEnabled:1];
      [(UIView *)self addSubview:self->_textCompletionView];
      v139.origin.x = v81;
      v139.origin.y = v68;
      v139.size.width = v67;
      v139.size.height = v68;
      v87 = CGRectGetMaxX(v139) + -3.0;
      v88 = _UIKBInlineTextCompletionLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        v142.origin.x = 0.0;
        v142.origin.y = -1.0;
        v142.size.height = v68 + 2.0;
        v142.size.width = v67 + 2.0;
        v116 = NSStringFromRect(v142);
        v143.origin.x = v81;
        v143.origin.y = v68;
        v143.size.width = v67;
        v143.size.height = v68;
        v112 = NSStringFromRect(v143);
        v144.origin.x = v83;
        v144.origin.y = MinY;
        v144.size.width = aRect.origin.y;
        v144.size.height = v68;
        v113 = NSStringFromRect(v144);
        v145.size.width = 3.5;
        v145.origin.x = v87;
        v145.origin.y = v68;
        v145.size.height = v68 + 3.5;
        v114 = NSStringFromRect(v145);
        *buf = 138413058;
        v122 = v116;
        v123 = 2112;
        v124 = v112;
        v125 = 2112;
        v126 = v113;
        v127 = 2112;
        v128 = v114;
        _os_log_debug_impl(&dword_188A29000, v88, OS_LOG_TYPE_DEBUG, "  Will overflow trailing marging!\n    typedTextConcealingRect=%@\n    typedTextOnNextLineRect=%@\n    correctionOnNextLineRect=%@\n    fakeCaretRect=%@", buf, 0x2Au);
      }

      v89 = [[UITextCompletionView alloc] initWithFrame:0 string:10 type:0 edgeType:v87, v68, 3.5, v68 + 3.5];
      [(UIView *)self addSubview:v89];
      [(NSMutableArray *)self->_typedTextViews addObject:v89];
      *&aRect.size.width = MEMORY[0x1E69E9820];
      *&aRect.size.height = 3221225472;
      v118 = __57__UIInlineTextCompletionPrompt_setTextCompletion_inRect___block_invoke;
      v119 = &unk_1E70F3590;
      v120 = v89;
      v90 = v89;
      [UIView animateWithDuration:24 delay:&aRect.size options:0 animations:0.5 completion:0.5];
    }

    v94 = [(UIView *)self window];
    if ([v94 _isTextEffectsWindow])
    {
      v95 = +[UIPeripheralHost sharedInstance];
      [v95 _inputViewRectToAvoid];
      v97 = v96;
      v99 = v98;
      v101 = v100;
      v103 = v102;
      v104 = [(UIView *)self window];
      v105 = [(UIView *)self superview];
      [(UIView *)self frame];
      [v105 convertRect:0 toView:?];
      [v104 convertRect:0 toWindow:?];
      v147.origin.x = v106;
      v147.origin.y = v107;
      v147.size.width = v108;
      v147.size.height = v109;
      v140.origin.x = v97;
      v140.origin.y = v99;
      v140.size.width = v101;
      v140.size.height = v103;
      v110 = CGRectContainsRect(v140, v147);

      if (v110)
      {
        [(UIView *)self setHidden:1];
      }
    }

    else
    {
    }
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  textCompletionView = self->_textCompletionView;
  v8 = a4;
  [(UIView *)textCompletionView convertPoint:v6 fromView:x, y];
  LOBYTE(v6) = [(UIView *)textCompletionView pointInside:v8 withEvent:?];

  return v6;
}

- (void)accept
{
  v3 = [(UIInlineTextCompletionPrompt *)self textCompletionCandidate];

  if (v3)
  {
    v5 = [(UIInlineTextCompletionPrompt *)self delegate];
    v4 = [(UIInlineTextCompletionPrompt *)self textCompletionCandidate];
    [v5 acceptTextCompletion:v4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  textCompletionView = self->_textCompletionView;
  v6 = a4;
  [(UIView *)textCompletionView frame];
  v7 = [(UIInlineTextCompletionPrompt *)self pointInside:v6 withEvent:?];

  if (self->_touchDown && v7)
  {
    [(UIInlineTextCompletionPrompt *)self accept];
  }

  self->_touchDown = 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([v4 _isGestureType:0] && objc_msgSend(v4, "numberOfTouchesRequired") == 1 && objc_msgSend(v4, "numberOfTapsRequired") == 1 || objc_msgSend(v4, "_isGestureType:", 1) && objc_msgSend(v4, "numberOfTouchesRequired") == 1)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIInlineTextCompletionPrompt;
    v5 = [(UIView *)&v7 gestureRecognizerShouldBegin:v4];
  }

  return v5;
}

- (UITextCompletionAcceptanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end