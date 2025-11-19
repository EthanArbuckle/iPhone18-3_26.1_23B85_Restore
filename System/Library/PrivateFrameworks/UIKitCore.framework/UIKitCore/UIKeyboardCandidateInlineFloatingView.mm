@interface UIKeyboardCandidateInlineFloatingView
- (BOOL)isAcceptableFrame:(CGRect)a3 afterScrollBy:(double)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldExtendUpwards;
- (CGRect)adjustedFrameFromDesiredFrame:(CGRect)a3 textHeight:(double)a4;
- (CGRect)adjustedFrameFromDesiredFrame:(CGRect)a3 textWidth:(double)a4;
- (CGRect)adjustedInlineRectFromInlineText:(id)a3 inlineRect:(CGRect)a4;
- (CGRect)inlineRect;
- (CGRect)previousCollapsedFrame;
- (CGSize)preferredSize;
- (UIEdgeInsets)cellPadding;
- (UIEdgeInsets)extraInsets;
- (UIKeyboardCandidateInlineFloatingView)initWithFrame:(CGRect)a3;
- (id)traitCollection;
- (void)adjustFrameForInlineText:(id)a3 inlineRect:(CGRect)a4 maxX:(double)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setInlineText:(id)a3 inlineRect:(CGRect)a4 maxX:(double)a5 layout:(BOOL)a6;
@end

@implementation UIKeyboardCandidateInlineFloatingView

- (UIKeyboardCandidateInlineFloatingView)initWithFrame:(CGRect)a3
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIView *)self frame:a3.origin.x];
  v10.receiver = self;
  v10.super_class = UIKeyboardCandidateInlineFloatingView;
  v6 = [(UIView *)&v10 initWithFrame:v4, v5];
  v7 = v6;
  if (v6)
  {
    [(UIView *)v6 setOpaque:0];
    v8 = [(UIView *)v7 layer];
    [v8 setMasksToBounds:0];

    v7->_tewObserverIsSet = 0;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_tewObserverIsSet)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = [(UIView *)self window];
    [v3 removeObserver:self name:0x1EFBA8F70 object:v4];
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateInlineFloatingView;
  [(UIView *)&v5 dealloc];
}

- (CGRect)adjustedInlineRectFromInlineText:(id)a3 inlineRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(UIView *)self superview];
  v11 = AutocorrectAdjustedInlineRect(v9, v10, x, y, width, height);
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

- (BOOL)isAcceptableFrame:(CGRect)a3 afterScrollBy:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(UIView *)self superview];
  v10 = y - a4;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIView *)self superview];
  [v19 safeAreaInsets];
  v21 = v12 + v20;
  v23 = v14 + v22;
  v25 = v16 - (v20 + v24);
  v27 = v18 - (v22 + v26);

  [(UIKeyboardCandidateInlineFloatingView *)self extraInsets];
  v29 = v21 + v28;
  v31 = v23 + v30;
  v33 = v25 - (v28 + v32);
  v35 = v27 - (v30 + v34);
  v36 = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
  v37 = v29;
  v38 = v31;
  v39 = v33;
  v40 = v35;
  v41 = x;
  v42 = v10;
  v43 = width;
  if (v36)
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

  v46 = [(UIView *)self window];
  [v9 convertRect:v46 toView:{x, v10, width, v44}];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v55 = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
  v56 = [(UIView *)self window];
  [v56 bounds];
  v61 = v48;
  v62 = v50;
  v63 = v52;
  v64 = v54;
  if (v55)
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
  v69 = [v68 _window];
  v70 = [v69 screen];
  v71 = [(UIView *)self _window];
  v72 = [v71 screen];

  if (v70 != v72)
  {
    goto LABEL_16;
  }

  [v9 _convertViewPointToSceneSpaceForKeyboard:{x, v10, width, v44}];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = [v68 superview];
  [v68 frame];
  [v81 _convertViewPointToSceneSpaceForKeyboard:?];
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;

  v90 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v91 = [v90 inputViews];
  v92 = [v91 inputAccessoryView];

  [v92 frame];
  if (v93 > 0.0)
  {
    v107 = v76;
    v109 = v74;
    v94 = [v92 window];
    [v94 windowLevel];
    v96 = v95;
    v97 = [(UIView *)self window];
    [v97 windowLevel];
    v99 = v98;

    if (v96 > v99)
    {
      v100 = [v92 superview];
      [v92 frame];
      [v100 _convertViewPointToSceneSpaceForKeyboard:?];
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

- (CGRect)adjustedFrameFromDesiredFrame:(CGRect)a3 textHeight:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a3.origin.y + a4;
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
    v15 = [v14 inputDelegateManager];
    v16 = [v15 keyInputDelegate];

    if (v16)
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
          [v16 visibleTextRect];
          v19 = v18;
          v40 = v21;
          v42 = v20;
          recta = v22;
          v23 = [(UIView *)self superview];
          [v16 convertRect:v23 toCoordinateSpace:{v19, v42, v40, recta}];
          v39 = v25;
          v41 = v24;
          v13 = v26;
          rect = v27;

          break;
        }

        v17 = [v16 superview];

        v16 = v17;
        if (!v17)
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
      v29 = [(UIView *)self superview];
      [v29 frame];
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
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)adjustedFrameFromDesiredFrame:(CGRect)a3 textWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIKeyboardCandidateInlineFloatingView *)self extendedStateAdditionalHeight:a3.origin.x];
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
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)adjustFrameForInlineText:(id)a3 inlineRect:(CGRect)a4 maxX:(double)a5
{
  v127 = *MEMORY[0x1E69E9840];
  self->_reducedWidth = 0;
  [(UIKeyboardCandidateInlineFloatingView *)self adjustedInlineRectFromInlineText:a3 inlineRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
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
    v20 = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
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
    if (v20)
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

  v32 = [(UIView *)self superview];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = [(UIView *)self superview];
  [v41 safeAreaInsets];
  x = v34 + v42;
  y = v36 + v44;
  width = v38 - (v42 + v46);
  height = v40 - (v44 + v48);

  v50 = [(UIView *)self window];
  v51 = [v50 _isTextEffectsWindow];

  rect = v13;
  if (v51)
  {
    v52 = [(UIView *)self superview];
    v53 = [(UIView *)self window];
    [v53 actualSceneBounds];
    v55 = v54;
    v57 = v56;
    v103 = v9;
    v104 = a5;
    v59 = v58;
    v61 = v60;
    v62 = [(UIView *)self window];
    [v52 convertRect:v62 fromView:{v55, v57, v59, v61}];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v129.origin.x = v64;
    v129.origin.y = v66;
    v129.size.width = v68;
    v9 = v103;
    a5 = v104;
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
    if (v74 <= a5)
    {
      a5 = v74;
    }

    v75 = 312.0;
    v76 = v108;
  }

  v134.origin.x = v107;
  v134.origin.y = v9;
  v134.size.width = v75;
  v134.size.height = v71;
  MaxX = CGRectGetMaxX(v134);
  if (MaxX >= a5)
  {
    v80 = v107 - (MaxX - a5);
    if (v75 >= a5)
    {
      goto LABEL_28;
    }

    if (a5 - v75 > 1.0)
    {
      v80 = v80 + -1.0;
    }

    if (a5 - v75 <= 2.0)
    {
LABEL_28:
      v78 = v75;
    }

    else
    {
      v78 = v75;
      v80 = v80 + -1.0;
    }

    v81 = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
    if (v80 >= 0.0 || v81)
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

  v83 = [(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical];
  v112 = v71;
  v84 = v107;
  v85 = v9;
  v86 = v76;
  v87 = rect;
  if (v83)
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
      v101 = [(UIView *)self superview];
      v102 = [(UIView *)self window];
      *buf = 136316674;
      v114 = "[UIKeyboardCandidateInlineFloatingView adjustFrameForInlineText:inlineRect:maxX:]";
      v115 = 2112;
      v116 = v98;
      v117 = 2048;
      v118 = a5;
      v119 = 2112;
      v120 = v99;
      v121 = 2112;
      v122 = v100;
      v123 = 2112;
      v124 = v101;
      v125 = 2112;
      v126 = v102;
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
      v101 = [(UIView *)self superview];
      v102 = [(UIView *)self window];
      *buf = 136316674;
      v114 = "[UIKeyboardCandidateInlineFloatingView adjustFrameForInlineText:inlineRect:maxX:]";
      v115 = 2112;
      v116 = v98;
      v117 = 2048;
      v118 = a5;
      v119 = 2112;
      v120 = v99;
      v121 = 2112;
      v122 = v100;
      v123 = 2112;
      v124 = v101;
      v125 = 2112;
      v126 = v102;
      _os_log_impl(&dword_188A29000, v97, OS_LOG_TYPE_ERROR, "%s: invalid adjust frame, inlineRect %@, maxX %f, adjustedFrame %@, finalAdjustedFrame %@, superview %@, window %@", buf, 0x48u);
    }

LABEL_49:
    return;
  }

  [(UIView *)self setFrame:?];
}

- (BOOL)shouldExtendUpwards
{
  v3 = [(UIView *)self superview];

  if (v3)
  {
    v4 = [(UIKeyboardCandidateInlineFloatingView *)self position];
    if (v4 != 1)
    {
      [(UIView *)self frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(UIKeyboardCandidateInlineFloatingView *)self extendedStateAdditionalHeight];
      v14 = v13 + v12;
      v15 = [(UIView *)self superview];
      [v15 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = [(UIView *)self superview];
      [v24 safeAreaInsets];
      v26 = v17 + v25;
      v28 = v19 + v27;
      v30 = v21 - (v25 + v29);
      v32 = v23 - (v27 + v31);

      LOBYTE(v4) = !_CGRectContainsRectVertically(v26, v28, v30, v32, v6, v8, v10, v14);
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setInlineText:(id)a3 inlineRect:(CGRect)a4 maxX:(double)a5 layout:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(UIKeyboardCandidateInlineFloatingView *)self setInlineText:a3, a6];
  [(UIKeyboardCandidateInlineFloatingView *)self setInlineRect:x, y, width, height];
  [(UIKeyboardCandidateInlineFloatingView *)self setMaxX:a5];
  v12 = +[UIKeyboardImpl activeInstance];
  v91 = [v12 inputOverlayContainer];

  v13 = [(UIView *)self superview];

  if (v13)
  {
    [v91 bringSubviewToFront:self];
  }

  else
  {
    [v91 addSubview:self];
    v14 = +[UIKeyboardImpl activeInstance];
    v15 = [v14 inputDelegate];
    v16 = [v15 textInputView];
    [v16 _convertVisualAltitude:self toView:0.0];
    [(UIView *)self _setVisualAltitude:?];
  }

  if ([(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical])
  {
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    [(UIKeyboardCandidateInlineFloatingView *)self setMaxX:CGRectGetMinX(v93)];
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    if (v17 > 100.0)
    {
      v18 = [(UIView *)self superview];
      [v18 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [(UIView *)self superview];
      [v27 safeAreaInsets];
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

  v40 = [(UIKeyboardCandidateInlineFloatingView *)self inlineText];
  [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [(UIKeyboardCandidateInlineFloatingView *)self maxX];
  [(UIKeyboardCandidateInlineFloatingView *)self adjustFrameForInlineText:v40 inlineRect:v42 maxX:v44, v46, v48, v49];

  v50 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v51 = [v50 containerView];

  v52 = [(UIView *)self superview];
  if (v52 != v51)
  {
    v53 = [(UIView *)self superview];
    [v53 bounds];
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

    v52 = v51;
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = [(UIView *)self superview];
    [v52 convertRect:v75 fromView:{v68, v70, v72, v74}];
    [(UIKeyboardCandidateInlineFloatingView *)self setInlineRect:?];

    [v52 bounds];
    [(UIKeyboardCandidateInlineFloatingView *)self setMaxX:v76 + v77];
    if ([(UIKeyboardCandidateInlineFloatingView *)self inlineRectIsVertical])
    {
      [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
      [(UIKeyboardCandidateInlineFloatingView *)self setMaxX:CGRectGetMinX(v97)];
    }

    [v52 addSubview:self];
    v78 = +[UIKeyboardImpl activeInstance];
    v79 = [v78 inputDelegate];
    v80 = [v79 textInputView];
    [v80 _convertVisualAltitude:self toView:0.0];
    [(UIView *)self _setVisualAltitude:?];

    v81 = [(UIKeyboardCandidateInlineFloatingView *)self inlineText];
    [(UIKeyboardCandidateInlineFloatingView *)self inlineRect];
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    [(UIKeyboardCandidateInlineFloatingView *)self maxX];
    [(UIKeyboardCandidateInlineFloatingView *)self adjustFrameForInlineText:v81 inlineRect:v83 maxX:v85, v87, v89, v90];
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
  v3 = [(UIView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [(UIView *)self bounds];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(UIView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [(UIView *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:v7 withEvent:?])
        {

          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16.receiver = self;
  v16.super_class = UIKeyboardCandidateInlineFloatingView;
  v14 = [(UIView *)&v16 pointInside:v7 withEvent:x, y];
LABEL_11:

  return v14;
}

- (id)traitCollection
{
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4 = [(UIView *)self window];
    v5 = [v4 traitCollection];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKeyboardCandidateInlineFloatingView;
    v5 = [(UIView *)&v7 traitCollection];
  }

  return v5;
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