@interface UIAutocorrectInlinePrompt
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isAcceptableTextEffectsFrame:(CGRect)frame afterScrollBy:(double)by;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)prepareForAnimation:(CGRect)animation;
- (CGRect)correctionFrameFromDesiredFrame:(CGRect)frame textHeight:(int)height withExtraGap:(double)gap;
- (CGRect)horizontallySquishedCorrectionFrame:(CGRect)frame;
- (UIAutocorrectInlinePrompt)initWithFrame:(CGRect)frame;
- (id)typedTextView;
- (int)textEffectsVisibilityLevel;
- (void)addTypedTextRect:(CGRect)rect;
- (void)dealloc;
- (void)dismiss;
- (void)removePromptSubviews;
- (void)setCorrection:(id)correction typedText:(id)text inRect:(CGRect)rect maxX:(double)x;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation UIAutocorrectInlinePrompt

- (UIAutocorrectInlinePrompt)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIAutocorrectInlinePrompt;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    m_typedTextViews = v3->m_typedTextViews;
    v3->m_typedTextViews = v4;

    [(UIView *)v3 setOpaque:0];
    [(UIView *)v3 setUserInteractionEnabled:1];
    [(UIView *)v3 setClipsToBounds:0];
  }

  return v3;
}

- (int)textEffectsVisibilityLevel
{
  superview = [(UIView *)self superview];
  textEffectsVisibilityLevel = [superview textEffectsVisibilityLevel];

  if (textEffectsVisibilityLevel <= 8)
  {
    return 8;
  }

  else
  {
    return textEffectsVisibilityLevel;
  }
}

- (void)dealloc
{
  [(UIAutocorrectInlinePrompt *)self removePromptSubviews];
  v3.receiver = self;
  v3.super_class = UIAutocorrectInlinePrompt;
  [(UIView *)&v3 dealloc];
}

- (void)removePromptSubviews
{
  [(NSMutableArray *)self->m_typedTextViews makeObjectsPerformSelector:sel_removeFromSuperview];
  [(NSMutableArray *)self->m_typedTextViews removeAllObjects];
  [(UIView *)self->m_correctionView removeFromSuperview];
  m_correctionView = self->m_correctionView;
  self->m_correctionView = 0;

  [(UIView *)self->m_correctionAnimationView removeFromSuperview];
  m_correctionAnimationView = self->m_correctionAnimationView;
  self->m_correctionAnimationView = 0;

  [(UIView *)self->m_typedTextAnimationView removeFromSuperview];
  m_typedTextAnimationView = self->m_typedTextAnimationView;
  self->m_typedTextAnimationView = 0;

  [(UIView *)self->m_correctionShadowView removeFromSuperview];
  m_correctionShadowView = self->m_correctionShadowView;
  self->m_correctionShadowView = 0;
}

- (void)setCorrection:(id)correction typedText:(id)text inRect:(CGRect)rect maxX:(double)x
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = correction == 0;
  textCopy = text;
  v15 = [correction copy];
  m_correction = self->m_correction;
  self->m_correction = v15;

  v17 = [textCopy copy];
  m_typedText = self->m_typedText;
  self->m_typedText = v17;

  [(UIAutocorrectInlinePrompt *)self removePromptSubviews];
  [(UIView *)self setHidden:v13];
  if (correction)
  {
    superview = [(UIView *)self superview];

    if (!superview)
    {
      v20 = +[UIKeyboardImpl activeInstance];
      inputOverlayContainer = [v20 inputOverlayContainer];

      [inputOverlayContainer addSubview:self];
    }
  }

  if (self->m_correction)
  {
    self->m_fits = 1;
    self->m_originalTypedTextRectCorrectionAmount = 0.0;
    v22 = self->m_typedText;
    superview2 = [(UIView *)self superview];
    v24 = AutocorrectAdjustedInlineRect(v22, superview2, x, y, width, height);
    v26 = v25;
    v28 = v27;
    v30 = v29;

    self->m_originalTypedTextRectCorrectionAmount = vabdd_f64(y, v26);
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v33 = v32;

    v34 = floor(v24 * v33) / v33;
    v35 = floor(v26 * v33) / v33;
    v36 = floor(v28 * v33) / v33;
    v37 = floor(v30 * v33) / v33;
    [(UIView *)self setFrame:v34, v35, v36, v37];
    v104 = v34;
    self->m_originalTypedTextRect.origin.x = v34;
    self->m_originalTypedTextRect.origin.y = v35;
    self->m_originalTypedTextRect.size.width = v36;
    self->m_originalTypedTextRect.size.height = v37;
    superview3 = [(UIView *)self superview];
    xCopy = x;
    if (objc_opt_respondsToSelector())
    {
      [superview3 selectionClipRect];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v42 = *MEMORY[0x1E695F050];
        v43 = *(MEMORY[0x1E695F050] + 8);
        v44 = *(MEMORY[0x1E695F050] + 16);
        v45 = *(MEMORY[0x1E695F050] + 24);
LABEL_12:
        v46 = v37 + 2.0;
        v108.origin.x = v42;
        v108.origin.y = v43;
        v108.size.width = v44;
        v108.size.height = v45;
        v47 = 0.0;
        if (CGRectIsNull(v108))
        {
          v48 = 0.0;
        }

        else
        {
          [(UIView *)self convertRect:superview3 fromView:v42, v43, v44, v45];
          v112.origin.x = 0.0;
          v112.origin.y = 0.0;
          v112.size.width = v36;
          v112.size.height = v37 + 2.0;
          v110 = CGRectIntersection(v109, v112);
          v48 = v110.origin.x;
          v47 = v110.origin.y;
          v36 = v110.size.width;
          v46 = v110.size.height;
        }

        v49 = [[UIAutocorrectTextView alloc] initWithFrame:self->m_typedText string:2 type:0 edgeType:v48, v47, v36, v46];
        [(UIView *)self addSubview:v49];
        [(NSMutableArray *)self->m_typedTextViews addObject:v49];
        [(UIView *)v49 frame];
        v51 = v50;
        v52 = self->m_typedText;
        v53 = inlinePromptTextFont();
        v54 = v52;
        v55 = v53;
        if (v54 && [(NSString *)v54 length])
        {
          [(NSString *)v54 _legacy_sizeWithFont:v55 forWidth:2 lineBreakMode:3.40282347e38];
          v57 = v56;
          v59 = ceil(v58);
        }

        else
        {
          [@" " _legacy_sizeWithFont:v55 forWidth:2 lineBreakMode:3.40282347e38];
          v57 = v60;
          v59 = 0.0;
        }

        v61 = [[UIAutocorrectTextView alloc] initWithFrame:self->m_correction string:1 type:1 edgeType:v48, v51, v59, v57 + 2.0];
        m_correctionView = self->m_correctionView;
        self->m_correctionView = &v61->super;

        [(UIView *)self->m_correctionView frame];
        v64 = v63;
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v71 = v104 + v63 + v67;
        if (v71 > xCopy)
        {
          [(UIView *)v49 frame];
          v64 = v72 + v73 - v68;
          v74 = v104 + v64;
          if (v104 + v64 <= 0.0)
          {
            if (v68 <= xCopy)
            {
              v64 = xCopy - v68 - v104;
            }

            else
            {
              [(UIView *)self->m_correctionView setIsLongString:1, v74];
              v64 = -v104;
              v68 = xCopy;
            }
          }

          else
          {
            [(UIView *)self->m_correctionView setEdgeType:2, v74];
          }

          [(UIView *)self->m_correctionView setFrame:v64, v66, v68, v70];
          if (v71 + v70 * -0.68 > xCopy)
          {
            self->m_fits = 0;
          }
        }

        [(UIAutocorrectInlinePrompt *)self horizontallySquishedCorrectionFrame:v64, v66, v68, v70];
        v76 = v75;
        v78 = v77;
        v80 = v79;
        v82 = v81;
        [(UIView *)v49 frame];
        [(UIAutocorrectInlinePrompt *)self correctionFrameFromDesiredFrame:v83 textHeight:v76 withExtraGap:v78, v80, v82, 0.0];
        [(UIView *)self->m_correctionView setFrame:?];
        v84 = +[UIKeyboardImpl activeInstance];
        if ([v84 isPredictionViewControllerVisible])
        {
        }

        else
        {
          v85 = +[UIKeyboardImpl activeInstance];
          accessibilityUsesExtendedKeyboardPredictionsEnabled = [v85 accessibilityUsesExtendedKeyboardPredictionsEnabled];

          if (!accessibilityUsesExtendedKeyboardPredictionsEnabled)
          {
            [(UIView *)self setUserInteractionEnabled:1];
            [(UIView *)self addSubview:self->m_correctionView];
            goto LABEL_32;
          }
        }

        [(UIView *)self->m_correctionView removeFromSuperview];
        [(UIView *)self setUserInteractionEnabled:0];
LABEL_32:
        window = [(UIView *)self window];
        if ([window _isTextEffectsWindow])
        {
          v88 = +[UIPeripheralHost sharedInstance];
          [v88 _inputViewRectToAvoid];
          v90 = v89;
          v92 = v91;
          v94 = v93;
          v96 = v95;
          window2 = [(UIView *)self window];
          superview4 = [(UIView *)self superview];
          [(UIView *)self frame];
          [superview4 convertRect:0 toView:?];
          [window2 convertRect:0 toWindow:?];
          v113.origin.x = v99;
          v113.origin.y = v100;
          v113.size.width = v101;
          v113.size.height = v102;
          v111.origin.x = v90;
          v111.origin.y = v92;
          v111.size.width = v94;
          v111.size.height = v96;
          v103 = CGRectContainsRect(v111, v113);

          if (v103)
          {
            [(UIView *)self setHidden:1];
          }
        }

        else
        {
        }

        return;
      }

      [superview3 _selectionClipRect];
    }

    v42 = v38;
    v43 = v39;
    v44 = v40;
    v45 = v41;
    goto LABEL_12;
  }
}

- (void)addTypedTextRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  superview = [(UIView *)self superview];
  [superview convertRect:self toView:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v18 = [[UIAutocorrectTextView alloc] initWithFrame:0 string:2 type:0 edgeType:v10, v12, v14, v16 + 2.0];
  typedTextView = [(UIAutocorrectInlinePrompt *)self typedTextView];
  [(UIView *)self _addSubview:v18 positioned:-3 relativeTo:typedTextView];

  [(NSMutableArray *)self->m_typedTextViews addObject:v18];
}

- (BOOL)isAcceptableTextEffectsFrame:(CGRect)frame afterScrollBy:(double)by
{
  height = frame.size.height;
  width = frame.size.width;
  x = frame.origin.x;
  v8 = frame.origin.y - by;
  superview = [(UIView *)self superview];
  v62 = v8;
  v63 = x;
  v64 = width;
  v65 = height;
  [(UIView *)self convertRect:superview toView:x, v8, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  superview2 = [(UIView *)self superview];
  [superview2 bounds];
  IsEmpty = CGRectIsEmpty(v66);
  superview3 = [(UIView *)self superview];
  v21 = superview3;
  if (IsEmpty)
  {
    v20Superview = [superview3 superview];
    [v20Superview bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
  }

  else
  {
    [superview3 bounds];
    v24 = v31;
    v26 = v32;
    v28 = v33;
    v30 = v34;
  }

  if (!_CGRectContainsRectVertically(v24, v26, v28, v30, v11, v13, v15, v17))
  {
    return 0;
  }

  v35 = +[UIKeyboardImpl activeInstance];
  _window = [v35 _window];
  screen = [_window screen];
  _window2 = [(UIView *)self _window];
  screen2 = [_window2 screen];

  v60 = 1;
  if (screen == screen2)
  {
    _window3 = [(UIView *)self _window];
    screen3 = [_window3 screen];
    coordinateSpace = [screen3 coordinateSpace];

    [(UIView *)self convertRect:coordinateSpace toCoordinateSpace:v63, v62, v64, v65];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    _rootInputWindowController = [v35 _rootInputWindowController];
    [_rootInputWindowController visibleInputViewFrame];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v67.origin.x = v44;
    v67.origin.y = v46;
    v67.size.width = v48;
    v67.size.height = v50;
    v68.origin.x = v53;
    v68.origin.y = v55;
    v68.size.width = v57;
    v68.size.height = v59;
    LOBYTE(_rootInputWindowController) = CGRectIntersectsRect(v67, v68);

    if (_rootInputWindowController)
    {
      v60 = 0;
    }
  }

  return v60;
}

- (CGRect)horizontallySquishedCorrectionFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v8 inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];

  v11 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v11 textInputTraits];
  isSingleLineDocument = [textInputTraits isSingleLineDocument];

  if (isSingleLineDocument && (objc_opt_respondsToSelector() & 1) != 0)
  {
    window = [(UIView *)self window];
    [(UIView *)self convertRect:window toView:x, y, width, height];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    window2 = [(UIView *)self window];
    [window2 convertRect:0 toWindow:{v16, v18, v20, v22}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    window3 = [keyInputDelegate window];
    [window3 convertRect:0 fromWindow:{v25, v27, v29, v31}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    window4 = [keyInputDelegate window];
    [keyInputDelegate convertRect:window4 fromView:{v34, v36, v38, v40}];
    v113 = v43;
    v114 = v42;
    v111 = v45;
    v112 = v44;

    [keyInputDelegate bounds];
    v47 = v46;
    v49 = v48;
    v110 = v50;
    v52 = v51 + 6.0;
    v53 = UIRectGetMaxX;
    if (objc_opt_respondsToSelector())
    {
      effectiveUserInterfaceLayoutDirection = [keyInputDelegate effectiveUserInterfaceLayoutDirection];
      v55 = effectiveUserInterfaceLayoutDirection == 1;
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v56 = UIRectGetMaxX;
      }

      else
      {
        v56 = UIRectGetMinX;
      }

      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v53 = UIRectGetMinX;
      }

      else
      {
        v53 = UIRectGetMaxX;
      }
    }

    else
    {
      v56 = UIRectGetMinX;
      v55 = 0;
    }

    v57 = v47 + -3.0;
    v58 = v49 + 0.0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__UIAutocorrectInlinePrompt_horizontallySquishedCorrectionFrame___block_invoke;
    aBlock[3] = &__block_descriptor_33_e42_v48__0_CGRect__CGPoint_dd__CGSize_dd__8d40l;
    v120 = v55;
    v59 = _Block_copy(aBlock);
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __65__UIAutocorrectInlinePrompt_horizontallySquishedCorrectionFrame___block_invoke_2;
    v117[3] = &__block_descriptor_33_e42_v48__0_CGRect__CGPoint_dd__CGSize_dd__8d40l;
    v118 = v55;
    v60 = _Block_copy(v117);
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __65__UIAutocorrectInlinePrompt_horizontallySquishedCorrectionFrame___block_invoke_3;
    v115[3] = &__block_descriptor_33_e11_B24__0d8d16l;
    v116 = v55;
    v61 = _Block_copy(v115);
    v62 = v112;
    if (v112 <= v52)
    {
      v70 = (v56)(v114, v113, v112, v111);
      v71 = (v56)(v57, v58, v52, v110);
      if (v61[2](v61, v70, v71))
      {
        v63.n128_u64[0] = (v56)(v57, v58, v52, v110);
        v64 = v59[2];
        v65 = v59;
      }

      else
      {
        v72 = (v53)(v57, v58, v52, v110);
        v73 = (v53)(v114, v113, v112, v111);
        if (!v61[2](v61, v72, v73))
        {
LABEL_19:

          goto LABEL_20;
        }

        v63.n128_u64[0] = (v53)(v57, v58, v52, v110);
        v64 = v60[2];
        v65 = v60;
      }

      v67 = v113;
      v66 = v114;
      v68.n128_f64[0] = v114;
      v69.n128_f64[0] = v113;
      v62 = v112;
    }

    else
    {
      v63.n128_u64[0] = (v56)(v57, v58, v52, v110);
      v64 = v59[2];
      v65 = v59;
      v67 = v113;
      v66 = v114;
      v68.n128_f64[0] = v114;
      v69.n128_f64[0] = v113;
    }

    v64(v65, v68, v69, v62, v111, v63);
    window5 = [keyInputDelegate window];
    [keyInputDelegate convertRect:window5 toView:{v66, v67, v62, v111}];
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;

    window6 = [keyInputDelegate window];
    [window6 convertRect:0 toWindow:{v76, v78, v80, v82}];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;

    window7 = [(UIView *)self window];
    [window7 convertRect:0 fromWindow:{v85, v87, v89, v91}];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;

    window8 = [(UIView *)self window];
    [(UIView *)self convertRect:window8 fromView:v94, v96, v98, v100];
    x = v102;
    y = v103;
    width = v104;
    height = v105;

    goto LABEL_19;
  }

LABEL_20:

  v106 = x;
  v107 = y;
  v108 = width;
  v109 = height;
  result.size.height = v109;
  result.size.width = v108;
  result.origin.y = v107;
  result.origin.x = v106;
  return result;
}

BOOL __65__UIAutocorrectInlinePrompt_horizontallySquishedCorrectionFrame___block_invoke_3(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 32))
  {
    return a2 > a3;
  }

  else
  {
    return a2 < a3;
  }
}

- (CGRect)correctionFrameFromDesiredFrame:(CGRect)frame textHeight:(int)height withExtraGap:(double)gap
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = frame.origin.y + height + gap + -1.0;
  if (![(UIAutocorrectInlinePrompt *)self isAcceptableTextEffectsFrame:frame.origin.x afterScrollBy:v10, frame.size.width, frame.size.height, 0.0])
  {
    v11 = *(MEMORY[0x1E695F058] + 8);
    if (v11 <= 0.0)
    {
      v11 = 1.0;
    }

    v12 = y - height + v11;
    window = [(UIView *)self window];
    [(UIView *)self convertRect:window toView:x, v12, width, height];
    v15 = v14;

    window2 = [(UIView *)self window];
    v17 = __UIStatusBarManagerForWindow(window2);
    [v17 statusBarHeight];
    v19 = v18;

    if (v15 < v19)
    {
      v12 = v12 + v19 - v15;
    }

    if ([(UIAutocorrectInlinePrompt *)self isAcceptableTextEffectsFrame:x afterScrollBy:v12, width, height, 1.0])
    {
      v10 = v12;
    }
  }

  v20 = x;
  v21 = v10;
  v22 = width;
  heightCopy = height;
  result.size.height = heightCopy;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)typedTextView
{
  v3 = [(NSMutableArray *)self->m_typedTextViews count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->m_typedTextViews objectAtIndex:0];
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  m_correctionView = self->m_correctionView;
  eventCopy = event;
  [(UIView *)m_correctionView convertPoint:selfCopy fromView:x, y];
  LOBYTE(selfCopy) = [(UIView *)m_correctionView pointInside:eventCopy withEvent:?];

  return selfCopy;
}

- (void)dismiss
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 fadeAutocorrectPrompt];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  m_correctionView = self->m_correctionView;
  eventCopy = event;
  [(UIView *)m_correctionView frame];
  v7 = [(UIAutocorrectInlinePrompt *)self pointInside:eventCopy withEvent:?];

  if (self->m_mouseDown && v7)
  {
    [(UIAutocorrectInlinePrompt *)self dismiss];
  }

  self->m_mouseDown = 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([beginCopy _isGestureType:0] && objc_msgSend(beginCopy, "numberOfTouchesRequired") == 1 && objc_msgSend(beginCopy, "numberOfTapsRequired") == 1 || objc_msgSend(beginCopy, "_isGestureType:", 1) && objc_msgSend(beginCopy, "numberOfTouchesRequired") == 1)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIAutocorrectInlinePrompt;
    v5 = [(UIView *)&v7 gestureRecognizerShouldBegin:beginCopy];
  }

  return v5;
}

- (BOOL)prepareForAnimation:(CGRect)animation
{
  if (!self->m_fits)
  {
    return 0;
  }

  v36 = v14;
  v37 = v13;
  v38 = v12;
  v39 = v11;
  v40 = v5;
  v41 = v4;
  v42 = v3;
  if (vabdd_f64(self->m_originalTypedTextRect.origin.y, animation.origin.y) > self->m_originalTypedTextRectCorrectionAmount + 0.00000011920929)
  {
    return 0;
  }

  typedTextView = [(UIAutocorrectInlinePrompt *)self typedTextView];
  [typedTextView reduceWidth:3.0];
  v20 = [UIAutocorrectTextView alloc];
  v21 = *MEMORY[0x1E695F058];
  v22 = *(MEMORY[0x1E695F058] + 8);
  v23 = *(MEMORY[0x1E695F058] + 16);
  v24 = *(MEMORY[0x1E695F058] + 24);
  v25 = [(UIAutocorrectTextView *)v20 initWithFrame:self->m_typedText string:4 type:0 edgeType:*MEMORY[0x1E695F058], v22, v23, v24];
  m_typedTextAnimationView = self->m_typedTextAnimationView;
  self->m_typedTextAnimationView = v25;

  v27 = self->m_typedTextAnimationView;
  [typedTextView frame];
  [(UIView *)v27 setFrame:?];
  [(UIView *)self _addSubview:self->m_typedTextAnimationView positioned:-2 relativeTo:typedTextView];
  [(NSMutableArray *)self->m_typedTextViews makeObjectsPerformSelector:sel_removeFromSuperview];
  if ([(NSMutableArray *)self->m_typedTextViews count]>= 2)
  {
    [(NSMutableArray *)self->m_typedTextViews removeObjectsInRange:1, [(NSMutableArray *)self->m_typedTextViews count]- 1];
  }

  [(UIView *)self->m_correctionShadowView removeFromSuperview:v16];
  [(UIView *)self->m_correctionView setEdgeType:0];
  [(UIView *)self->m_correctionView setAnimating:1];
  [(UIView *)self->m_correctionView reduceWidth:3.0];
  [(UIView *)self->m_correctionView frame];
  v29 = v28;
  v31 = v30;
  [typedTextView frame];
  if (v29 >= v32)
  {
    if (v32 < v29)
    {
      [(UIView *)self->m_typedTextAnimationView setSize:v29, v31];
      [typedTextView setSize:{v29, v31}];
    }
  }

  else
  {
    [(UIView *)self->m_correctionView setSize:v32, v31];
    [(UIView *)self->m_correctionView setNeedsDisplay];
  }

  v33 = [[UIAutocorrectTextView alloc] initWithFrame:self->m_correction string:3 type:0 edgeType:v21, v22, v23, v24];
  m_correctionAnimationView = self->m_correctionAnimationView;
  self->m_correctionAnimationView = &v33->super;

  v35 = self->m_correctionAnimationView;
  [(UIView *)self->m_correctionView frame];
  [(UIView *)v35 setFrame:?];
  [(UIView *)self _addSubview:self->m_correctionAnimationView positioned:-3 relativeTo:self->m_correctionView];

  return 1;
}

@end