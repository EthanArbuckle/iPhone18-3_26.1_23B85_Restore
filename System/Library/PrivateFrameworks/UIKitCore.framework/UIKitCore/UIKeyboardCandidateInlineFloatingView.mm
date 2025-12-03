@interface UIKeyboardCandidateInlineFloatingView
- (BOOL)isAcceptableFrame:(CGRect)frame afterScrollBy:(double)by;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldExtendUpwards;
- (CGRect)adjustedFrameFromDesiredFrame:(CGRect)frame textHeight:(double)height;
- (CGRect)adjustedFrameFromDesiredFrame:(CGRect)frame textWidth:(double)width;
- (CGRect)adjustedInlineRectFromInlineText:(id)text inlineRect:(CGRect)rect;
- (CGRect)inlineRect;
- (CGRect)previousCollapsedFrame;
- (CGSize)preferredSize;
- (UIEdgeInsets)cellPadding;
- (UIEdgeInsets)extraInsets;
- (UIKeyboardCandidateInlineFloatingView)initWithFrame:(CGRect)frame;
- (id)traitCollection;
- (void)adjustFrameForInlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setInlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout;
@end

@implementation UIKeyboardCandidateInlineFloatingView

- (UIKeyboardCandidateInlineFloatingView)initWithFrame:(CGRect)frame
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIView *)self frame:frame.origin.x];
  v10.receiver = self;
  v10.super_class = UIKeyboardCandidateInlineFloatingView;
  v6 = [(UIView *)&v10 initWithFrame:v4, v5];
  v7 = v6;
  if (v6)
  {
    [(UIView *)v6 setOpaque:0];
    layer = [(UIView *)v7 layer];
    [layer setMasksToBounds:0];

    v7->_tewObserverIsSet = 0;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_tewObserverIsSet)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    window = [(UIView *)self window];
    [defaultCenter removeObserver:self name:0x1EFBA8F70 object:window];
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateInlineFloatingView;
  [(UIView *)&v5 dealloc];
}

- (CGRect)adjustedInlineRectFromInlineText:(id)text inlineRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textCopy = text;
  superview = [(UIView *)self superview];
  v11 = AutocorrectAdjustedInlineRect(textCopy, superview, x, y, width, height);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)isAcceptableFrame:(CGRect)frame afterScrollBy:(double)by
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  superview = [(UIView *)self superview];
  v10 = y - by;
  [superview bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  superview2 = [(UIView *)self superview];
  [superview2 safeAreaInsets];
  v21 = v12 + v20;
  v23 = v14 + v22;
  v25 = v16 - (v20 + v24);
  v27 = v18 - (v22 + v26);

  [(UIKeyboardCandidateInlineFloatingView *)self extraInsets];
  v29 = v21 + v28;
  v31 = v23 + v30;
  v33 = v25 - (v28 + v32);
  v35 = v27 - (v30 + v34);
  inlineRectIsVertical = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
  v37 = v29;
  v38 = v31;
  v39 = v33;
  v40 = v35;
  v41 = x;
  v42 = v10;
  v43 = width;
  if (inlineRectIsVertical)
  {
    v44 = height;
    v45 = height;
    if (!CGRectContainsRect(*&v37, *&v41))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v44 = height;
    if (!_CGRectContainsRectVertically(v29, v31, v33, v35, x, v10, width, height))
    {
LABEL_7:
      v66 = 0;
      goto LABEL_18;
    }
  }

  window = [(UIView *)self window];
  [superview convertRect:window toView:{x, v10, width, v44}];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  inlineRectIsVertical2 = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
  window2 = [(UIView *)self window];
  [window2 bounds];
  v61 = v48;
  v62 = v50;
  v63 = v52;
  v64 = v54;
  if (inlineRectIsVertical2)
  {
    v65 = CGRectContainsRect(*&v57, *&v61);

    if (!v65)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v67 = _CGRectContainsRectVertically(v57, v58, v59, v60, v48, v50, v52, v54);

    if (!v67)
    {
      goto LABEL_7;
    }
  }

  v68 = +[UIKeyboardImpl activeInstance];
  _window = [v68 _window];
  screen = [_window screen];
  _window2 = [(UIView *)self _window];
  screen2 = [_window2 screen];

  if (screen != screen2)
  {
    goto LABEL_16;
  }

  [superview _convertViewPointToSceneSpaceForKeyboard:{x, v10, width, v44}];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  superview3 = [v68 superview];
  [v68 frame];
  [superview3 _convertViewPointToSceneSpaceForKeyboard:?];
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;

  v90 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputViews = [v90 inputViews];
  inputAccessoryView = [inputViews inputAccessoryView];

  [inputAccessoryView frame];
  if (v93 > 0.0)
  {
    v107 = v76;
    v109 = v74;
    window3 = [inputAccessoryView window];
    [window3 windowLevel];
    v96 = v95;
    window4 = [(UIView *)self window];
    [window4 windowLevel];
    v99 = v98;

    if (v96 > v99)
    {
      superview4 = [inputAccessoryView superview];
      [inputAccessoryView frame];
      [superview4 _convertViewPointToSceneSpaceForKeyboard:?];
      v113.origin.x = v101;
      v113.origin.y = v102;
      v113.size.width = v103;
      v113.size.height = v104;
      v110.origin.x = v83;
      v110.origin.y = v85;
      v110.size.width = v87;
      v110.size.height = v89;
      v111 = CGRectUnion(v110, v113);
      v83 = v111.origin.x;
      v85 = v111.origin.y;
      v87 = v111.size.width;
      v89 = v111.size.height;
    }

    v76 = v107;
    v74 = v109;
  }

  v112.origin.x = v74;
  v112.origin.y = v76;
  v112.size.width = v78;
  v112.size.height = v80;
  v114.origin.x = v83;
  v114.origin.y = v85;
  v114.size.width = v87;
  v114.size.height = v89;
  v105 = CGRectIntersectsRect(v112, v114);

  if (v105)
  {
    v66 = 0;
  }

  else
  {
LABEL_16:
    v66 = 1;
  }

LABEL_18:
  return v66;
}

- (CGRect)adjustedFrameFromDesiredFrame:(CGRect)frame textHeight:(double)height
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = frame.origin.y + height;
  [(UIKeyboardCandidateInlineFloatingView *)self extendedStateAdditionalHeight];
  if ([(UIKeyboardCandidateInlineFloatingView *)self isAcceptableFrame:x afterScrollBy:v9, width, height + v10, 0.0])
  {
    v11 = 0;
  }

  else
  {
    v12 = y - height + -9.0;
    if ([(UIKeyboardCandidateInlineFloatingView *)self isAcceptableFrame:x afterScrollBy:v12, width, height, 0.0])
    {
      goto LABEL_14;
    }

    v13 = *(MEMORY[0x1E695F058] + 8);
    v39 = *(MEMORY[0x1E695F058] + 16);
    v41 = *MEMORY[0x1E695F058];
    rect = *(MEMORY[0x1E695F058] + 24);
    v14 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v14 inputDelegateManager];
    keyInputDelegate = [inputDelegateManager keyInputDelegate];

    if (keyInputDelegate)
    {
      while (1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (objc_opt_respondsToSelector())
        {
          [keyInputDelegate visibleTextRect];
          v19 = v18;
          v40 = v21;
          v42 = v20;
          recta = v22;
          superview = [(UIView *)self superview];
          [keyInputDelegate convertRect:superview toCoordinateSpace:{v19, v42, v40, recta}];
          v39 = v25;
          v41 = v24;
          v13 = v26;
          rect = v27;

          break;
        }

        superview2 = [keyInputDelegate superview];

        keyInputDelegate = superview2;
        if (!superview2)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_11:
    if (v13 > 0.0)
    {
      v43.size.width = v39;
      v43.origin.x = v41;
      v43.origin.y = v13;
      v43.size.height = rect;
      MinY = CGRectGetMinY(v43);
      v44.origin.x = x;
      v44.origin.y = y - height;
      v44.size.width = width;
      v44.size.height = height;
      v12 = MinY - CGRectGetHeight(v44) + -9.0;
    }

    if ([(UIKeyboardCandidateInlineFloatingView *)self isAcceptableFrame:x afterScrollBy:v12, width, height, 0.0])
    {
LABEL_14:
      v11 = 1;
      v9 = v12;
    }

    else
    {
      superview3 = [(UIView *)self superview];
      [superview3 frame];
      v32 = (v30 + v31) * 0.5;

      v11 = y >= v32;
      if (y >= v32)
      {
        v9 = v12;
      }
    }
  }

  [(UIKeyboardCandidateInlineFloatingView *)self setPosition:v11];
  v33 = x;
  v34 = v9;
  v35 = width;
  heightCopy = height;
  result.size.height = heightCopy;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)adjustedFrameFromDesiredFrame:(CGRect)frame textWidth:(double)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIKeyboardCandidateInlineFloatingView *)self extendedStateAdditionalHeight:frame.origin.x];
  v10 = height + v9;
  if ([(UIKeyboardCandidateInlineFloatingView *)self isAcceptableFrame:x afterScrollBy:y, width, height + v9, 0.0]&& ([(UIKeyboardCandidateInlineFloatingView *)self inlineRect], v31.origin.x = x, v31.origin.y = y, v31.size.width = width, v31.size.height = v10, !CGRectIntersectsRect(v29, v31)))
  {
    v14 = 2;
  }

  else
  {
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    v13 = v11 + v12 - height;
    if ([(UIKeyboardCandidateInlineFloatingView *)self isAcceptableFrame:x afterScrollBy:v13, width, height, 0.0])
    {
      v14 = 1;
      y = v13;
    }

    else
    {
      [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
      v17 = v15 + v16;
      if ([(UIKeyboardCandidateInlineFloatingView *)self isAcceptableFrame:v15 + v16 afterScrollBy:y, width, height, 0.0])
      {
        v14 = 3;
        x = v17;
      }

      else
      {
        [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
        v20 = v18 + v19;
        [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
        v23 = v21 + v22 - height;
        v24 = [(UIKeyboardCandidateInlineFloatingView *)self isAcceptableFrame:v20 afterScrollBy:v23, width, height, 0.0];
        if (v24)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (v24)
        {
          x = v20;
          y = v23;
        }
      }
    }
  }

  [(UIKeyboardCandidateInlineFloatingView *)self setPosition:v14];
  v25 = x;
  v26 = y;
  widthCopy = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = widthCopy;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)adjustFrameForInlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x
{
  v127 = *MEMORY[0x1E69E9840];
  self->_reducedWidth = 0;
  [(UIKeyboardCandidateInlineFloatingView *)self adjustedInlineRectFromInlineText:text inlineRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v107 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIView *)self frame];
  v105 = v15;
  v106 = v14;
  [(UIKeyboardCandidateInlineFloatingView *)self preferredSize];
  v17 = v16;
  v19 = v18;
  v108 = v11;
  if ([(UIKeyboardCandidateInlineFloatingView *)self adjustMode]== 1)
  {
    inlineRectIsVertical = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
    [(UIKeyboardCandidateInlineFloatingView *)self cellPadding];
    v22 = v21;
    v23 = v17;
    v25 = v24;
    [(UIKeyboardCandidateInlineFloatingView *)self cellPadding];
    if (v23 >= v11)
    {
      v28 = v23;
    }

    else
    {
      v28 = v11;
    }

    v29 = v28 + v25 + v27;
    if (v19 >= v13)
    {
      v30 = v19;
    }

    else
    {
      v30 = v13;
    }

    v31 = v30 + v22 + v26;
    if (inlineRectIsVertical)
    {
      v19 = v31;
    }

    else
    {
      v23 = v29;
    }

    v110 = v23;
    v111 = v19;
  }

  else
  {
    v110 = v17;
    v111 = v19;
  }

  superview = [(UIView *)self superview];
  [superview bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  superview2 = [(UIView *)self superview];
  [superview2 safeAreaInsets];
  x = v34 + v42;
  y = v36 + v44;
  width = v38 - (v42 + v46);
  height = v40 - (v44 + v48);

  window = [(UIView *)self window];
  _isTextEffectsWindow = [window _isTextEffectsWindow];

  rect = v13;
  if (_isTextEffectsWindow)
  {
    superview3 = [(UIView *)self superview];
    window2 = [(UIView *)self window];
    [window2 actualSceneBounds];
    v55 = v54;
    v57 = v56;
    v103 = v9;
    xCopy = x;
    v59 = v58;
    v61 = v60;
    window3 = [(UIView *)self window];
    [superview3 convertRect:window3 fromView:{v55, v57, v59, v61}];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v129.origin.x = v64;
    v129.origin.y = v66;
    v129.size.width = v68;
    v9 = v103;
    x = xCopy;
    v129.size.height = v70;
    v142.origin.x = x;
    v142.origin.y = y;
    v142.size.width = width;
    v142.size.height = height;
    v130 = CGRectIntersection(v129, v142);
    x = v130.origin.x;
    y = v130.origin.y;
    width = v130.size.width;
    height = v130.size.height;
  }

  v131.origin.y = v105;
  v131.origin.x = v106;
  v131.size.width = v110;
  v71 = v111;
  v131.size.height = v111;
  v72 = CGRectGetWidth(v131);
  v132.origin.x = x;
  v132.origin.y = y;
  v132.size.width = width;
  v132.size.height = height;
  if (v72 <= CGRectGetWidth(v132))
  {
    v76 = v108;
    v75 = v110;
  }

  else
  {
    self->_reducedWidth = 1;
    [(UIKeyboardCandidateInlineFloatingView *)self preferredSize];
    v71 = v73;
    v133.origin.x = x;
    v133.origin.y = y;
    v133.size.width = width;
    v133.size.height = height;
    v74 = CGRectGetWidth(v133);
    if (v74 <= x)
    {
      x = v74;
    }

    v75 = 312.0;
    v76 = v108;
  }

  v134.origin.x = v107;
  v134.origin.y = v9;
  v134.size.width = v75;
  v134.size.height = v71;
  MaxX = CGRectGetMaxX(v134);
  if (MaxX >= x)
  {
    v80 = v107 - (MaxX - x);
    if (v75 >= x)
    {
      goto LABEL_28;
    }

    if (x - v75 > 1.0)
    {
      v80 = v80 + -1.0;
    }

    if (x - v75 <= 2.0)
    {
LABEL_28:
      v78 = v75;
    }

    else
    {
      v78 = v75;
      v80 = v80 + -1.0;
    }

    inlineRectIsVertical2 = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
    if (v80 >= 0.0 || inlineRectIsVertical2)
    {
      v79 = v80;
    }

    else
    {
      v79 = 0.0;
    }
  }

  else
  {
    v135.origin.x = v107;
    v135.origin.y = v9;
    v78 = v75;
    v135.size.width = v75;
    v135.size.height = v71;
    v79 = v107;
    if (CGRectGetMinX(v135) < 3.0)
    {
      v79 = 3.0;
    }
  }

  inlineRectIsVertical3 = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
  v112 = v71;
  v84 = v107;
  v85 = v9;
  v86 = v76;
  rectCopy = rect;
  if (inlineRectIsVertical3)
  {
    [(UIKeyboardCandidateInlineFloatingView *)self adjustedFrameFromDesiredFrame:v79 textWidth:v9, v78, v71, CGRectGetWidth(*&v84)];
  }

  else
  {
    [(UIKeyboardCandidateInlineFloatingView *)self adjustedFrameFromDesiredFrame:v79 textHeight:v9, v78, v71, CGRectGetHeight(*&v84)];
  }

  v92 = v88;
  v93 = v89;
  v94 = v90;
  v95 = v91;
  if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v89 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v90 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v91 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v97 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_49;
      }

      v139.origin.x = v107;
      v139.size.width = v108;
      v139.origin.y = v9;
      v139.size.height = rect;
      v98 = NSStringFromCGRect(v139);
      v140.origin.x = v79;
      v140.origin.y = v9;
      v140.size.width = v78;
      v140.size.height = v112;
      v99 = NSStringFromCGRect(v140);
      v141.origin.x = v92;
      v141.origin.y = v93;
      v141.size.width = v94;
      v141.size.height = v95;
      v100 = NSStringFromCGRect(v141);
      superview4 = [(UIView *)self superview];
      window4 = [(UIView *)self window];
      *buf = 136316674;
      v114 = "[UIKeyboardCandidateInlineFloatingView adjustFrameForInlineText:inlineRect:maxX:]";
      v115 = 2112;
      v116 = v98;
      v117 = 2048;
      xCopy3 = x;
      v119 = 2112;
      v120 = v99;
      v121 = 2112;
      v122 = v100;
      v123 = 2112;
      v124 = superview4;
      v125 = 2112;
      v126 = window4;
      _os_log_fault_impl(&dword_188A29000, v97, OS_LOG_TYPE_FAULT, "%s: invalid adjust frame, inlineRect %@, maxX %f, adjustedFrame %@, finalAdjustedFrame %@, superview %@, window %@", buf, 0x48u);
    }

    else
    {
      v96 = *(__UILogGetCategoryCachedImpl("Assert", &adjustFrameForInlineText_inlineRect_maxX____s_category) + 8);
      if (!os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v97 = v96;
      v136.origin.x = v107;
      v136.size.width = v108;
      v136.origin.y = v9;
      v136.size.height = rect;
      v98 = NSStringFromCGRect(v136);
      v137.origin.x = v79;
      v137.origin.y = v9;
      v137.size.width = v78;
      v137.size.height = v112;
      v99 = NSStringFromCGRect(v137);
      v138.origin.x = v92;
      v138.origin.y = v93;
      v138.size.width = v94;
      v138.size.height = v95;
      v100 = NSStringFromCGRect(v138);
      superview4 = [(UIView *)self superview];
      window4 = [(UIView *)self window];
      *buf = 136316674;
      v114 = "[UIKeyboardCandidateInlineFloatingView adjustFrameForInlineText:inlineRect:maxX:]";
      v115 = 2112;
      v116 = v98;
      v117 = 2048;
      xCopy3 = x;
      v119 = 2112;
      v120 = v99;
      v121 = 2112;
      v122 = v100;
      v123 = 2112;
      v124 = superview4;
      v125 = 2112;
      v126 = window4;
      _os_log_impl(&dword_188A29000, v97, OS_LOG_TYPE_ERROR, "%s: invalid adjust frame, inlineRect %@, maxX %f, adjustedFrame %@, finalAdjustedFrame %@, superview %@, window %@", buf, 0x48u);
    }

LABEL_49:
    return;
  }

  [(UIView *)self setFrame:?];
}

- (BOOL)shouldExtendUpwards
{
  superview = [(UIView *)self superview];

  if (superview)
  {
    position = [(UIKeyboardCandidateInlineFloatingView *)self position];
    if (position != 1)
    {
      [(UIView *)self frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(UIKeyboardCandidateInlineFloatingView *)self extendedStateAdditionalHeight];
      v14 = v13 + v12;
      superview2 = [(UIView *)self superview];
      [superview2 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      superview3 = [(UIView *)self superview];
      [superview3 safeAreaInsets];
      v26 = v17 + v25;
      v28 = v19 + v27;
      v30 = v21 - (v25 + v29);
      v32 = v23 - (v27 + v31);

      LOBYTE(position) = !_CGRectContainsRectVertically(v26, v28, v30, v32, v6, v8, v10, v14);
    }
  }

  else
  {
    LOBYTE(position) = 0;
  }

  return position;
}

- (void)setInlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UIKeyboardCandidateInlineFloatingView *)self setInlineText:text, layout];
  [(UIKeyboardCandidateInlineFloatingView *)self setInlineRect:x, y, width, height];
  [(UIKeyboardCandidateInlineFloatingView *)self setMaxX:x];
  v12 = +[UIKeyboardImpl activeInstance];
  inputOverlayContainer = [v12 inputOverlayContainer];

  superview = [(UIView *)self superview];

  if (superview)
  {
    [inputOverlayContainer bringSubviewToFront:self];
  }

  else
  {
    [inputOverlayContainer addSubview:self];
    v14 = +[UIKeyboardImpl activeInstance];
    inputDelegate = [v14 inputDelegate];
    textInputView = [inputDelegate textInputView];
    [textInputView _convertVisualAltitude:self toView:0.0];
    [(UIView *)self _setVisualAltitude:?];
  }

  if ([(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical])
  {
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    [(UIKeyboardCandidateInlineFloatingView *)self setMaxX:CGRectGetMinX(v93)];
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    if (v17 > 100.0)
    {
      superview2 = [(UIView *)self superview];
      [superview2 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      superview3 = [(UIView *)self superview];
      [superview3 safeAreaInsets];
      v29 = v20 + v28;
      v31 = v22 + v30;
      v33 = v24 - (v28 + v32);
      v35 = v26 - (v30 + v34);

      [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
      v98.origin.x = v36;
      v98.origin.y = v37;
      v98.size.width = v38;
      v98.size.height = v39;
      v94.origin.x = v29;
      v94.origin.y = v31 + 100.0;
      v94.size.width = v33;
      v94.size.height = v35 + -100.0;
      v95 = CGRectIntersection(v94, v98);
      [(UIKeyboardCandidateInlineFloatingView *)self setInlineRect:v95.origin.x, v95.origin.y, v95.size.width, v95.size.height];
    }
  }

  inlineText = [(UIKeyboardCandidateInlineFloatingView *)self inlineText];
  [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [(UIKeyboardCandidateInlineFloatingView *)self maxX];
  [(UIKeyboardCandidateInlineFloatingView *)self adjustFrameForInlineText:inlineText inlineRect:v42 maxX:v44, v46, v48, v49];

  v50 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerView = [v50 containerView];

  superview4 = [(UIView *)self superview];
  if (superview4 != containerView)
  {
    superview5 = [(UIView *)self superview];
    [superview5 bounds];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    [(UIView *)self frame];
    v99.origin.x = v62;
    v99.origin.y = v63;
    v99.size.width = v64;
    v99.size.height = v65;
    v96.origin.x = v55;
    v96.origin.y = v57;
    v96.size.width = v59;
    v96.size.height = v61;
    v66 = CGRectContainsRect(v96, v99);

    if (v66)
    {
      goto LABEL_13;
    }

    superview4 = containerView;
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    superview6 = [(UIView *)self superview];
    [superview4 convertRect:superview6 fromView:{v68, v70, v72, v74}];
    [(UIKeyboardCandidateInlineFloatingView *)self setInlineRect:?];

    [superview4 bounds];
    [(UIKeyboardCandidateInlineFloatingView *)self setMaxX:v76 + v77];
    if ([(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical])
    {
      [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
      [(UIKeyboardCandidateInlineFloatingView *)self setMaxX:CGRectGetMinX(v97)];
    }

    [superview4 addSubview:self];
    v78 = +[UIKeyboardImpl activeInstance];
    inputDelegate2 = [v78 inputDelegate];
    textInputView2 = [inputDelegate2 textInputView];
    [textInputView2 _convertVisualAltitude:self toView:0.0];
    [(UIView *)self _setVisualAltitude:?];

    inlineText2 = [(UIKeyboardCandidateInlineFloatingView *)self inlineText];
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    [(UIKeyboardCandidateInlineFloatingView *)self maxX];
    [(UIKeyboardCandidateInlineFloatingView *)self adjustFrameForInlineText:inlineText2 inlineRect:v83 maxX:v85, v87, v89, v90];
  }

LABEL_13:
  [(UIView *)self setNeedsLayout];
  [(UIView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = UIKeyboardCandidateInlineFloatingView;
  [(UIView *)&v13 layoutSubviews];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  subviews = [(UIView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [(UIView *)self bounds];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subviews = [(UIView *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [(UIView *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:eventCopy withEvent:?])
        {

          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16.receiver = self;
  v16.super_class = UIKeyboardCandidateInlineFloatingView;
  v14 = [(UIView *)&v16 pointInside:eventCopy withEvent:x, y];
LABEL_11:

  return v14;
}

- (id)traitCollection
{
  window = [(UIView *)self window];

  if (window)
  {
    window2 = [(UIView *)self window];
    traitCollection = [window2 traitCollection];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKeyboardCandidateInlineFloatingView;
    traitCollection = [(UIView *)&v7 traitCollection];
  }

  return traitCollection;
}

- (CGRect)inlineRect
{
  x = self->_inlineRect.origin.x;
  y = self->_inlineRect.origin.y;
  width = self->_inlineRect.size.width;
  height = self->_inlineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)previousCollapsedFrame
{
  x = self->_previousCollapsedFrame.origin.x;
  y = self->_previousCollapsedFrame.origin.y;
  width = self->_previousCollapsedFrame.size.width;
  height = self->_previousCollapsedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)extraInsets
{
  top = self->_extraInsets.top;
  left = self->_extraInsets.left;
  bottom = self->_extraInsets.bottom;
  right = self->_extraInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)cellPadding
{
  top = self->_cellPadding.top;
  left = self->_cellPadding.left;
  bottom = self->_cellPadding.bottom;
  right = self->_cellPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end