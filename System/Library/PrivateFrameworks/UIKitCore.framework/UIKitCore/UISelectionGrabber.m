@interface UISelectionGrabber
+ (id)_grabberDot;
- (BOOL)autoscrolled;
- (BOOL)clipDot:(CGRect)a3;
- (BOOL)dotIsVisibleInDocument:(CGRect)a3;
- (BOOL)inputViewIsChanging;
- (BOOL)isRotating;
- (BOOL)isScaling;
- (BOOL)isScrolling;
- (BOOL)scroller:(id)a3 fullyContainSelectionRect:(CGRect)a4;
- (UISelectionGrabber)initWithFrame:(CGRect)a3;
- (double)_defaultDotWidth;
- (id)bezierPathFromCustomPath:(id)a3;
- (id)fillColor;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)animateGrabberInWithCompletion:(id)a3;
- (void)animateGrabberOutWithCompletion:(id)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)drawRect:(CGRect)a3;
- (void)redrawDotForScale:(double)a3;
- (void)removeFromSuperview;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setCustomPath:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)transitionDot:(int64_t)a3 completion:(id)a4;
- (void)updateDot;
- (void)updatePathForBoundsChangeIfNecessary;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UISelectionGrabber

- (UISelectionGrabber)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UISelectionGrabber;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->m_screenScale = 1.0;
    [(UISelectionGrabber *)v3 setIsDotted:1];
    [(UIView *)v4 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:1];
    v5 = v4;
  }

  return v4;
}

- (void)dealloc
{
  [(UIView *)self->m_dotView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = UISelectionGrabber;
  [(UIView *)&v3 dealloc];
}

- (BOOL)isScrolling
{
  v2 = [(UISelectionGrabber *)self hostView];
  v3 = [v2 isScrolling];

  return v3;
}

- (BOOL)isScaling
{
  v2 = [(UISelectionGrabber *)self hostView];
  v3 = [v2 scaling];

  return v3;
}

- (BOOL)isRotating
{
  v2 = [(UISelectionGrabber *)self hostView];
  v3 = [v2 rotating];

  return v3;
}

- (BOOL)inputViewIsChanging
{
  v2 = [(UISelectionGrabber *)self hostView];
  v3 = [v2 inputViewIsChanging];

  return v3;
}

- (BOOL)autoscrolled
{
  v2 = [(UISelectionGrabber *)self hostView];
  v3 = [v2 autoscrolled];

  return v3;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  [(UIImageView *)self->m_dotView setHidden:?];
  v5.receiver = self;
  v5.super_class = UISelectionGrabber;
  [(UIView *)&v5 setHidden:v3];
}

- (void)setCustomPath:(id)a3
{
  v9 = a3;
  if (([(UISelectionGrabberCustomPath *)self->_customPath isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_customPath, a3);
    v5 = [(UISelectionGrabber *)self shapeLayer];
    v6 = v5;
    if (self->_customPath)
    {
      v7 = [(UISelectionGrabber *)self bezierPathFromCustomPath:?];
      [v6 setPath:{objc_msgSend(v7, "CGPath")}];

      [(UISelectionGrabberCustomPath *)self->_customPath lineWidth];
      [v6 setLineWidth:?];
      v8 = [(UISelectionGrabber *)self fillColor];
      [v6 setStrokeColor:{objc_msgSend(v8, "cgColor")}];
    }

    else
    {
      [v5 setPath:?];
    }

    [(UIView *)self setNeedsDisplay];
  }
}

- (id)bezierPathFromCustomPath:(id)a3
{
  v4 = a3;
  v5 = [(UISelectionGrabber *)self hostView];
  v6 = [v4 bezierPathForHostView:v5 targetView:self];

  return v6;
}

- (void)removeFromSuperview
{
  [(UIView *)self->m_dotView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = UISelectionGrabber;
  [(UIView *)&v3 removeFromSuperview];
}

- (BOOL)clipDot:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UISelectionGrabber *)self hostView];
  v9 = [v8 selectionView];
  v10 = [v9 selection];
  v11 = [v10 document];

  if ([v11 _usesAsynchronousProtocol] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v12 = v11;
    [v12 unobscuredContentRect];
    [(UIView *)self convertRect:v12 fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(UIView *)self superview];
    [(UIView *)self frame];
    [v21 convertRect:0 toView:?];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v51.origin.x = v14;
    v51.origin.y = v16;
    v51.size.width = v18;
    v51.size.height = v20;
    v55.origin.x = v23;
    v55.origin.y = v25;
    v55.size.width = v27;
    v55.size.height = v29;
    if (CGRectIntersectsRect(v51, v55))
    {
      v52.origin.x = v14;
      v52.origin.y = v16;
      v52.size.width = v18;
      v52.size.height = v20;
      v30 = CGRectContainsRect(v52, v49);
    }

    else
    {
      v30 = 1;
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && (v50.origin.x = x, v50.origin.y = y, v50.size.width = width, v50.size.height = height, [v11 visibleRect], objc_msgSend(v11, "convertRect:toView:", 0), v32 = v31, v34 = v33, v36 = v35, v38 = v37, -[UIView superview](self, "superview"), v39 = objc_claimAutoreleasedReturnValue(), -[UIView frame](self, "frame"), objc_msgSend(v39, "convertRect:toView:", 0), v41 = v40, v43 = v42, v45 = v44, v47 = v46, v39, v53.origin.x = v32, v53.origin.y = v34, v53.size.width = v36, v53.size.height = v38, v56.origin.x = v41, v56.origin.y = v43, v56.size.width = v45, v56.size.height = v47, CGRectIntersectsRect(v53, v56)))
  {
    v54.origin.x = v32;
    v54.origin.y = v34;
    v54.size.width = v36;
    v54.size.height = v38;
    v30 = CGRectContainsRect(v54, v50);
  }

  else
  {
    v30 = 1;
  }

  return v30;
}

- (BOOL)dotIsVisibleInDocument:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(UISelectionGrabber *)self hostView];
  v8 = [v7 selectionView];
  v9 = [v8 selection];
  v10 = [v9 document];

  if ([v10 _usesAsynchronousProtocol] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = v10;
    [v11 unobscuredContentRect];
    [v11 convertRect:0 toView:?];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    if (![v10 conformsToProtocol:&unk_1EFE8E9A0] || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v24 = 0;
      goto LABEL_9;
    }

    [v10 visibleRect];
    [v10 convertRect:0 toView:?];
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
  }

  v26.origin.x = v13;
  v26.origin.y = v15;
  v26.size.width = v17;
  v26.size.height = v19;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v24 = CGRectContainsRect(v26, v27);
LABEL_9:

  return v24;
}

- (BOOL)scroller:(id)a3 fullyContainSelectionRect:(CGRect)a4
{
  height = a4.size.height;
  x = a4.origin.x;
  width = a4.size.width;
  v32 = a4.origin.y + 1.0;
  v6 = a3;
  v7 = [(UISelectionGrabber *)self hostView];
  v8 = [v7 selectionView];
  UIRoundToViewScale(v8);
  rect2 = height - (v9 + 1.0);

  [v6 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v6 contentInset];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v27 = v32;
  v26 = x;
  v28 = width;
  v29 = rect2;

  v36.origin.x = v11 + v21;
  v36.origin.y = v13 + v19;
  v36.size.width = v15 - (v21 + v25);
  v36.size.height = v17 - (v19 + v23);
  return CGRectContainsRect(v36, *&v26);
}

- (double)_defaultDotWidth
{
  result = 11.0;
  if (self->m_screenScale == 1.0)
  {
    return 13.0;
  }

  return result;
}

- (void)updateDot
{
  if ([(UISelectionGrabber *)self isDotted])
  {
    v3 = [(UISelectionGrabber *)self hostView];
    v4 = [v3 superview];

    if (v4)
    {
      v5 = [(UIView *)self window];

      if (v5)
      {
        v6 = [(UIView *)self window];
        [v6 convertRect:self toView:{0.0, 0.0, 1.0, 1.0}];
        v8 = v7;
        v10 = v9;
      }

      else
      {
        v8 = 1.0;
        v10 = 1.0;
      }

      [(UISelectionGrabber *)self _defaultDotWidth];
      v13 = v12 * v8;
      v185 = v10;
      v14 = v12 * v10;
      if (!self->m_dotView)
      {
        v15 = [UISelectionGrabberDot alloc];
        v16 = [(UISelectionGrabber *)self hostView];
        v17 = [v16 container];
        v18 = [(UISelectionGrabberDot *)v15 initWithFrame:v17 container:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        m_dotView = self->m_dotView;
        self->m_dotView = v18;

        [(UISelectionGrabberDot *)self->m_dotView setGrabber:self];
        [(UIView *)self->m_dotView setOpaque:0];
        [(UIView *)self->m_dotView setUserInteractionEnabled:1];
      }

      v20 = v13 - v8;
      [(UIView *)self bounds];
      v23 = v22 + (v21 - v13) * 0.5;
      v26 = v25 + (v24 - v14) * 0.5;
      v27 = round(v23);
      v28 = round(v26);
      if (v8 == 1.0)
      {
        v29 = v27;
      }

      else
      {
        v29 = v23;
      }

      if (v8 == 1.0)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      if ([(UISelectionGrabber *)self isVertical])
      {
        if ([(UISelectionGrabber *)self isPointedDown])
        {
          v30 = -v20;
LABEL_22:
          [(UIView *)self bounds];
          goto LABEL_25;
        }

        [(UIView *)self bounds];
        v30 = v31 + v32 - v8;
      }

      else
      {
        if ([(UISelectionGrabber *)self isPointedRight])
        {
          v29 = -v20;
          goto LABEL_22;
        }

        [(UIView *)self bounds];
        v29 = v33 + v34 - v8;
      }

LABEL_25:
      v35 = [(UIView *)self _enclosingScrollableScrollerIncludingSelf];
      if (v35)
      {
        v36 = [(UIView *)self _enclosingScrollerIncludingSelf];
      }

      else
      {
        v36 = 0;
      }

      objc_opt_class();
      v187 = v35;
      if (objc_opt_isKindOfClass())
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      v38 = v37;
      [(UIView *)self convertRect:0 toView:v29, v30, v13, v14];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v186 = v45;
      if ([(UISelectionGrabber *)self animating])
      {
        goto LABEL_43;
      }

      v46 = [(UISelectionGrabber *)self hostView];
      v47 = [v46 selectionView];
      if ([v47 alertFlattened])
      {
        goto LABEL_42;
      }

      v48 = [(UISelectionGrabber *)self hostView];
      v49 = [v48 selectionView];
      if ([v49 activeFlattened])
      {
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v50 = [(UISelectionGrabber *)self hostView];
      v51 = [v50 selectionView];
      if ([v51 sheetFlattened])
      {
LABEL_40:

        goto LABEL_41;
      }

      v181 = v50;
      v52 = [(UISelectionGrabber *)self hostView];
      v53 = [v52 selectionView];
      if ([v53 popoverFlattened])
      {
LABEL_39:

        v50 = v181;
        goto LABEL_40;
      }

      v175 = v53;
      v178 = v52;
      v172 = [(UISelectionGrabber *)self hostView];
      v54 = [v172 selectionView];
      if (([v54 navigationTransitionFlattened] & 1) != 0 || -[UISelectionGrabber dotIsVisibleInDocument:](self, "dotIsVisibleInDocument:", v40, v42, v44, v186))
      {

        v52 = v178;
        goto LABEL_39;
      }

      v171 = [(UIView *)self window];
      v169 = [v171 _isTextEffectsWindow];
      if (v169)
      {
        v159 = [(UIView *)self window];
        objc_opt_class();
        v166 = v159;
        if (objc_opt_isKindOfClass())
        {
          v170 = 1;
          goto LABEL_134;
        }
      }

      v168 = [(UISelectionGrabber *)self hostView];
      v167 = [v168 inGesture];
      if ((v167 & 1) != 0 || (-[UISelectionGrabber hostView](self, "hostView"), v163 = objc_claimAutoreleasedReturnValue(), [v163 selectionView], v162 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v162, "interactionAssistant"), v161 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v161, "inGesture")))
      {
        v165 = [(UISelectionGrabber *)self hostView];
        v164 = [v165 selectionView];
        v160 = [v164 interactionAssistant];
        if ([v160 containerIsTextField])
        {

          v170 = 0;
        }

        else
        {
          v170 = [(UISelectionGrabber *)self clipDot:v40, v42, v44, v186];
        }

        if (v167)
        {

          if (!v169)
          {
LABEL_135:

            if (!v170)
            {
              v55 = 0;
LABEL_44:
              v56 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
              v57 = [v56 currentState];
              if (v55)
              {
                goto LABEL_45;
              }

              if ((v57 & 0xFFFFFFFFFFFFFFFDLL) == 0)
              {
                v58 = [v56 inputViews];
                v59 = [v58 inputAccessoryView];

                if (-[UIView isDescendantOfView:](self, "isDescendantOfView:", v59) && ([v59 bounds], v176 = v42, v179 = v40, v61 = v60, v173 = v44, v63 = v62, v64 = v14, v66 = v65, v182 = v8, v68 = v67, -[UIView convertRect:toView:](self, "convertRect:toView:", v59, v29, v30, v13, v64), v192.origin.x = v69, v192.origin.y = v70, v192.size.width = v71, v192.size.height = v72, v190.origin.x = v61, v190.origin.y = v63, v44 = v173, v190.size.width = v66, v14 = v64, v42 = v176, v40 = v179, v190.size.height = v68, v8 = v182, CGRectIntersectsRect(v190, v192)))
                {
                  v55 = v59;

                  if (v55)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                }
              }

              if ([(UISelectionGrabber *)self isRotating]|| [(UISelectionGrabber *)self inputViewIsChanging])
              {
                v73 = [v56 inputViews];
                v74 = [v73 inputAccessoryView];

                if (![(UIView *)self isDescendantOfView:v74]|| ([(UIView *)v74 bounds], v177 = v42, v180 = v40, v76 = v75, v77 = v14, v79 = v78, v183 = v8, v81 = v80, v174 = v44, v83 = v82, [(UIView *)self convertRect:v74 toView:v29, v30, v13, v77], v193.origin.x = v84, v193.origin.y = v85, v193.size.width = v86, v193.size.height = v87, v191.origin.x = v76, v191.origin.y = v79, v14 = v77, v42 = v177, v40 = v180, v191.size.width = v81, v8 = v183, v191.size.height = v83, v44 = v174, v88 = CGRectIntersectsRect(v191, v193), v89 = v74, !v88))
                {
                  if (v36)
                  {
                    v89 = v36;
                  }

                  else
                  {
                    v89 = self;
                  }
                }

                v55 = v89;

                if (v55)
                {
LABEL_78:
                  if (!v55)
                  {
                    goto LABEL_79;
                  }

LABEL_45:
                  if (v55 != v36)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
                v55 = 0;
              }

              if (v36)
              {
                if ([(UISelectionGrabber *)self isScrolling]|| [(UISelectionGrabber *)self isScaling])
                {
                  v55 = v36;
LABEL_67:
                  if (objc_opt_respondsToSelector())
                  {
                    v90 = [(UISelectionGrabber *)v55 _getDelegateZoomView];
                    if (([v90 _usesAsynchronousProtocol] & 1) == 0 && (!-[UIView isDescendantOfView:](self, "isDescendantOfView:", v90) || (objc_msgSend(v90, "isDescendantOfView:", v55) & 1) == 0))
                    {

                      goto LABEL_82;
                    }

                    v91 = v90;

                    v55 = v91;
                    if (!v91)
                    {
LABEL_79:
                      v92 = [(UISelectionGrabber *)self hostView];
                      v93 = [v92 selectionView];
                      v94 = [v93 interactionAssistant];
                      v95 = [v94 externalInteractions];

                      if (v95)
                      {
                        v55 = [(UIView *)self _enclosingScrollerIncludingSelf];
                      }

                      else
                      {
                        v55 = 0;
                      }
                    }
                  }

LABEL_82:
                  v96 = [(UISelectionGrabber *)self customPath];
                  if (v96)
                  {
                    v184 = v13;
                    v97 = v8;
                    [(UIView *)self frame];
                    v99 = v98;
                    v101 = v100;
                    if ([(UISelectionGrabber *)self isPointedDown])
                    {
                      [v96 topPoint];
                    }

                    else
                    {
                      [v96 bottomPoint];
                    }

                    v104 = v102;
                    v105 = v103;
                    if ([(UISelectionGrabber *)self isPointedDown])
                    {
                      [v96 bottomPoint];
                    }

                    else
                    {
                      [v96 topPoint];
                    }

                    v108 = v106;
                    v109 = v107;
                    [v96 lineWidth];
                    v111 = v104 - v108;
                    v112 = v105 - v109;
                    v113 = *(MEMORY[0x1E695EFF8] + 8);
                    if (v104 - v108 != *MEMORY[0x1E695EFF8] || (v114 = *MEMORY[0x1E695EFF8], v115 = *(MEMORY[0x1E695EFF8] + 8), v112 != v113))
                    {
                      v116 = 1.0 / sqrt(v111 * v111 + v112 * v112);
                      v114 = v111 * v116;
                      v115 = v112 * v116;
                    }

                    if (v114 != *MEMORY[0x1E695EFF8] || v115 != v113)
                    {
                      v117 = v14 * 0.5 + sqrt((v108 - v104) * (v108 - v104) + (v109 - v105) * (v109 - v105)) - v110;
                      v108 = v108 + v117 * v114;
                      v109 = v109 + v117 * v115;
                    }

                    v8 = v97;
                    v118 = v109 - v101;
                    v13 = v184;
                    v29 = v108 - v99 - v184 * 0.5;
                    v30 = v118 - v184 * 0.5;
                    [(UIView *)self convertRect:0 toView:v29, v30, v184, v14];
                    v40 = v119;
                    v42 = v120;
                    v44 = v121;
                    v186 = v122;
                  }

                  if (!v55)
                  {
                    v55 = [v56 containerView];
                  }

                  if ([(UIResponder *)v55 _usesAsynchronousProtocol]&& (objc_opt_respondsToSelector() & 1) != 0)
                  {
                    v123 = [(UISelectionGrabber *)v55 unscaledView];

                    v55 = v123;
                  }

                  v124 = v36;
                  if (v55 == self || ([(UIView *)self window], v125 = objc_claimAutoreleasedReturnValue(), v125, !v125))
                  {
                    v126 = v56;
                    v129 = v38;
                  }

                  else
                  {
                    v126 = v56;
                    v127 = [(UIView *)v55 window];
                    v128 = [(UIView *)self window];

                    v129 = v38;
                    v130 = v55;
                    if (v127 == v128)
                    {
                      v141 = v29;
                      v142 = v30;
                      v143 = v13;
                      v144 = v14;
                      v145 = self;
                    }

                    else
                    {
                      v131 = [(UIView *)v55 window];
                      v132 = [(UIView *)self window];
                      [v131 convertRect:v132 fromWindow:{v40, v42, v44, v186}];
                      v134 = v133;
                      v136 = v135;
                      v138 = v137;
                      v140 = v139;

                      v130 = v55;
                      v141 = v134;
                      v142 = v136;
                      v143 = v138;
                      v144 = v140;
                      v145 = 0;
                    }

                    [(UIView *)v130 convertRect:v145 fromView:v141, v142, v143, v144];
                    v29 = v146;
                    v30 = v147;
                    v13 = v148;
                    v14 = v149;
                  }

                  v150 = [(UISelectionGrabber *)self hostView];
                  v151 = [v150 selectionView];
                  v152 = [v151 interactionAssistant];
                  v153 = [v152 cursorVisible];

                  if (v153)
                  {
                    v154 = 1.0;
                  }

                  else
                  {
                    v154 = 0.0;
                  }

                  [(UIView *)self->m_dotView setAlpha:v154];
                  [(UIView *)self setAlpha:v154];
                  if (!v96)
                  {
                    if ([(UISelectionGrabber *)self isVertical])
                    {
                      v29 = v8 * 0.5 + v29;
                    }

                    else
                    {
                      v30 = v185 * 0.5 + v30;
                    }
                  }

                  v155 = [(UIView *)self->m_dotView superview];

                  if (v155 == v55)
                  {
                    [(UISelectionGrabberDot *)self->m_dotView setFrame:v29, v30, v13, v14];
                  }

                  else
                  {
                    [(UIView *)v55 addSubview:self->m_dotView];
                    v188[0] = MEMORY[0x1E69E9820];
                    v188[1] = 3221225472;
                    v188[2] = __31__UISelectionGrabber_updateDot__block_invoke;
                    v188[3] = &unk_1E70F3B20;
                    v188[4] = self;
                    *&v188[5] = v29;
                    *&v188[6] = v30;
                    *&v188[7] = v13;
                    *&v188[8] = v14;
                    [UIView performWithoutAnimation:v188];
                  }

                  v156 = [(UIView *)self layer];
                  v157 = [v156 contents];

                  if (!v157)
                  {
                    [(UIView *)self setNeedsDisplay];
                  }

                  v158 = self->m_dotView;
                  [(UIView *)self _convertVisualAltitude:v158 toView:0.0];
                  [(UIView *)v158 _setVisualAltitude:?];

                  return;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_79;
                }

                [v38 convertRect:0 fromView:{v40, v42, v44, v186}];
                if (![(UISelectionGrabber *)self scroller:v38 fullyContainSelectionRect:?])
                {
                  [(UIView *)self bounds];
                  [v38 convertRect:self fromView:?];
                  if ([(UISelectionGrabber *)self scroller:v38 fullyContainSelectionRect:?])
                  {
                    goto LABEL_79;
                  }
                }

                v55 = v38;
              }

              goto LABEL_78;
            }

LABEL_43:
            v55 = self;
            goto LABEL_44;
          }

LABEL_134:

          goto LABEL_135;
        }
      }

      else
      {
        v170 = 0;
      }

      if ((v169 & 1) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_134;
    }
  }

  v11 = self->m_dotView;

  [(UIView *)v11 removeFromSuperview];
}

- (void)redrawDotForScale:(double)a3
{
  m_dotView = self->m_dotView;
  [(UIView *)self _currentScreenScale];
  v6 = v5 * a3;

  [(UISelectionGrabberDot *)m_dotView redrawRasterizedImageForScale:v6];
}

- (void)animateGrabberInWithCompletion:(id)a3
{
  v4 = a3;
  LODWORD(v5) = 1053609165;
  LODWORD(v6) = 1058642330;
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 1.0;
  v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:v5 :v7 :v6 :v8];
  v10 = [(UIView *)self layer];
  [v10 bounds];
  v43 = v12;
  v44 = v11;
  v14 = v13;
  v16 = v15;

  v41 = v14 * 0.8;
  v42 = v14;
  v40 = (v14 - v14 * 0.8) * 0.5;
  v17 = [(UIView *)self->m_dotView layer];
  [v17 bounds];
  v19 = v18;
  v39 = v20;
  v22 = v21;
  v24 = v23;

  v25 = (v24 - v24 * 0.8) * 0.5;
  if ([(UISelectionGrabber *)self isPointedUp])
  {
    v25 = v25 + (v16 - v24) * -0.2;
  }

  else if ([(UISelectionGrabber *)self isPointedDown])
  {
    v25 = (v16 - v24) * 0.2 + v25;
  }

  v26 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  v27 = [MEMORY[0x1E696B098] valueWithCGRect:{(v22 - v22 * 0.8) * 0.5, v25, v22 * 0.8, v24 * 0.8}];
  [v26 setFromValue:v27];

  v28 = [MEMORY[0x1E696B098] valueWithCGRect:{v19, v39, v22, v24}];
  [v26 setToValue:v28];

  [v26 setFrameInterval:0.0166666667];
  [v26 setDuration:0.25];
  [v26 setTimingFunction:v9];
  v29 = [(UIView *)self->m_dotView layer];
  [v29 addAnimation:v26 forKey:@"dotView transition in"];

  v30 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v30 setFromValue:&unk_1EFE335F8];
  [v30 setToValue:&unk_1EFE2EE58];
  [v30 setFrameInterval:0.0166666667];
  [v30 setDuration:0.25];
  [v30 setTimingFunction:v9];
  v31 = [(UIView *)self->m_dotView layer];
  [v31 addAnimation:v30 forKey:@"dotView opacity transition in"];

  v32 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  v33 = [MEMORY[0x1E696B098] valueWithCGRect:{v40, (v16 - v16 * 0.8) * 0.5, v41, v16 * 0.8}];
  [v32 setFromValue:v33];

  v34 = [MEMORY[0x1E696B098] valueWithCGRect:{v44, v43, v42, v16}];
  [v32 setToValue:v34];

  [v32 setFrameInterval:0.0166666667];
  [v32 setDuration:0.25];
  [v32 setTimingFunction:v9];
  if (v4)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __53__UISelectionGrabber_animateGrabberInWithCompletion___block_invoke;
    v45[3] = &unk_1E70F3608;
    v46 = v4;
    v35 = [_UISelectionGrabberAnimationDelegate delegateWithCompletionBlock:v45];
    [v32 setDelegate:v35];
  }

  v36 = [(UIView *)self layer];
  [v36 addAnimation:v32 forKey:@"stemView transition in"];

  v37 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v37 setFromValue:&unk_1EFE335F8];
  [v37 setToValue:&unk_1EFE2EE58];
  [v37 setFrameInterval:0.0166666667];
  [v37 setDuration:0.25];
  [v37 setTimingFunction:v9];
  v38 = [(UIView *)self layer];
  [v38 addAnimation:v37 forKey:@"stemView opacity transition in"];
}

- (void)animateGrabberOutWithCompletion:(id)a3
{
  v50 = a3;
  LODWORD(v4) = 1053609165;
  LODWORD(v5) = 1058642330;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1.0;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v4 :v6 :v5 :v7];
  v9 = [(UIView *)self layer];
  [v9 bounds];
  v48 = v11;
  v49 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(UIView *)self->m_dotView layer];
  [v16 bounds];
  v47 = v17;
  v46 = v18;
  v20 = v19;
  v22 = v21;

  v23 = (v22 - v22 * 0.8) * 0.5;
  if ([(UISelectionGrabber *)self isPointedUp])
  {
    v23 = v23 + (v15 - v22) * -0.2;
  }

  else if ([(UISelectionGrabber *)self isPointedDown])
  {
    v23 = (v15 - v22) * 0.2 + v23;
  }

  v45 = (v15 - v15 * 0.8) * 0.5;
  v24 = [(UIView *)self->m_dotView layer];
  [v24 setBounds:{(v20 - v20 * 0.8) * 0.5, v23, v20 * 0.8, v22 * 0.8}];

  v25 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  v26 = [MEMORY[0x1E696B098] valueWithCGRect:{v47, v46, v20, v22}];
  [v25 setFromValue:v26];

  v27 = [MEMORY[0x1E696B098] valueWithCGRect:{(v20 - v20 * 0.8) * 0.5, v23, v20 * 0.8, v22 * 0.8}];
  [v25 setToValue:v27];

  [v25 setFrameInterval:0.0166666667];
  [v25 setDuration:0.2];
  [v25 setTimingFunction:v8];
  v28 = *MEMORY[0x1E69797E0];
  [v25 setFillMode:*MEMORY[0x1E69797E0]];
  [v25 setRemovedOnCompletion:0];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __54__UISelectionGrabber_animateGrabberOutWithCompletion___block_invoke;
  v59[3] = &unk_1E71256C8;
  v59[4] = self;
  *&v59[5] = v47;
  *&v59[6] = v46;
  *&v59[7] = v20;
  *&v59[8] = v22;
  v29 = [_UISelectionGrabberAnimationDelegate delegateWithCompletionBlock:v59];
  [v25 setDelegate:v29];

  v30 = [(UIView *)self->m_dotView layer];
  [v30 addAnimation:v25 forKey:@"dotView transition out"];

  v31 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v31 setFromValue:&unk_1EFE2EE58];
  [v31 setToValue:&unk_1EFE335F8];
  [v31 setFrameInterval:0.0166666667];
  [v31 setDuration:0.2];
  [v31 setTimingFunction:v8];
  [v31 setFillMode:v28];
  [v31 setRemovedOnCompletion:0];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __54__UISelectionGrabber_animateGrabberOutWithCompletion___block_invoke_2;
  v58[3] = &unk_1E70F5AC0;
  v58[4] = self;
  v32 = [_UISelectionGrabberAnimationDelegate delegateWithCompletionBlock:v58];
  [v31 setDelegate:v32];

  v33 = [(UIView *)self->m_dotView layer];
  [v33 addAnimation:v31 forKey:@"dotView opacity transition out"];

  v34 = [(UIView *)self layer];
  v35 = (v13 - v13 * 0.8) * 0.5;
  [v34 setBounds:{v35, v45, v13 * 0.8, v15 * 0.8}];

  v36 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  v37 = [MEMORY[0x1E696B098] valueWithCGRect:{v49, v48, v13, v15}];
  [v36 setFromValue:v37];

  v38 = [MEMORY[0x1E696B098] valueWithCGRect:{v35, v45, v13 * 0.8, v15 * 0.8}];
  [v36 setToValue:v38];

  [v36 setFrameInterval:0.0166666667];
  [v36 setDuration:0.2];
  [v36 setTimingFunction:v8];
  [v36 setFillMode:v28];
  [v36 setRemovedOnCompletion:0];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __54__UISelectionGrabber_animateGrabberOutWithCompletion___block_invoke_3;
  v52[3] = &unk_1E71256F0;
  v54 = v49;
  v55 = v48;
  v56 = v13;
  v57 = v15;
  v52[4] = self;
  v53 = v50;
  v39 = v50;
  v40 = [_UISelectionGrabberAnimationDelegate delegateWithCompletionBlock:v52];
  [v36 setDelegate:v40];

  v41 = [(UIView *)self layer];
  [v41 addAnimation:v36 forKey:@"stemView transition out"];

  v42 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v42 setFromValue:&unk_1EFE2EE58];
  [v42 setToValue:&unk_1EFE335F8];
  [v42 setFrameInterval:0.0166666667];
  [v42 setDuration:0.2];
  [v42 setTimingFunction:v8];
  [v42 setFillMode:v28];
  [v42 setRemovedOnCompletion:0];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __54__UISelectionGrabber_animateGrabberOutWithCompletion___block_invoke_4;
  v51[3] = &unk_1E70F5AC0;
  v51[4] = self;
  v43 = [_UISelectionGrabberAnimationDelegate delegateWithCompletionBlock:v51];
  [v42 setDelegate:v43];

  v44 = [(UIView *)self layer];
  [v44 addAnimation:v42 forKey:@"stemView opacity transition out"];
}

void __54__UISelectionGrabber_animateGrabberOutWithCompletion___block_invoke(double *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v7 = [*(*(a1 + 4) + 416) layer];
    [v7 setBounds:{v3, v4, v5, v6}];
  }

  v8 = [*(*(a1 + 4) + 416) layer];
  [v8 removeAnimationForKey:@"dotView transition out"];
}

void __54__UISelectionGrabber_animateGrabberOutWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 416) layer];
    LODWORD(v4) = 1.0;
    [v3 setOpacity:v4];
  }

  v5 = [*(*(a1 + 32) + 416) layer];
  [v5 removeAnimationForKey:@"dotView opacity transition out"];
}

uint64_t __54__UISelectionGrabber_animateGrabberOutWithCompletion___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = [*(a1 + 32) layer];
    [v7 setBounds:{v3, v4, v5, v6}];
  }

  v8 = [*(a1 + 32) layer];
  [v8 removeAnimationForKey:@"stemView transition out"];

  result = *(a1 + 40);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

void __54__UISelectionGrabber_animateGrabberOutWithCompletion___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) layer];
    LODWORD(v4) = 1.0;
    [v3 setOpacity:v4];
  }

  v5 = [*(a1 + 32) layer];
  [v5 removeAnimationForKey:@"stemView opacity transition out"];
}

- (void)transitionDot:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 2)
  {
    v8 = v6;
    [(UISelectionGrabber *)self animateGrabberOutWithCompletion:v6];
  }

  else if (a3 == 1)
  {
    v8 = v6;
    [(UISelectionGrabber *)self animateGrabberInWithCompletion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v8 = v6;
    (*(v6 + 2))(v6);
  }

  v7 = v8;
LABEL_8:
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v7.receiver = self;
  v7.super_class = UISelectionGrabber;
  [(UIView *)&v7 _dynamicUserInterfaceTraitDidChange];
  v3 = [(UISelectionGrabber *)self customPath];

  if (v3)
  {
    v4 = [(UISelectionGrabber *)self fillColor];
    v5 = [v4 cgColor];
    v6 = [(UISelectionGrabber *)self shapeLayer];
    [v6 setStrokeColor:v5];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISelectionGrabber;
  [(UIView *)&v9 willMoveToWindow:v4];
  if (v4)
  {
    v5 = [v4 screen];
    [v5 scale];
    self->m_screenScale = v6;

    [(UISelectionGrabber *)self updatePathForBoundsChangeIfNecessary];
  }

  else
  {
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    self->m_screenScale = v8;
  }
}

- (void)didMoveToSuperview
{
  [(UISelectionGrabber *)self updateDot];

  [(UISelectionGrabber *)self updatePathForBoundsChangeIfNecessary];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIView *)self window];
  [v8 convertRect:self toView:{0.0, 0.0, 1.0, 1.0}];
  v10 = v9;

  if (v10 == 1.0)
  {
    v11 = [(UIView *)self window];
    x = pixelAlignedRectForRect(v11);
    y = v12;
    width = v13;
    height = v14;
  }

  v15.receiver = self;
  v15.super_class = UISelectionGrabber;
  [(UIView *)&v15 setFrame:x, y, width, height];
  [(UISelectionGrabber *)self updateDot];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = UISelectionGrabber;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UISelectionGrabber *)self updatePathForBoundsChangeIfNecessary];
}

- (void)setCenter:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = UISelectionGrabber;
  [(UIView *)&v4 setCenter:a3.x, a3.y];
  [(UISelectionGrabber *)self updatePathForBoundsChangeIfNecessary];
}

- (void)updatePathForBoundsChangeIfNecessary
{
  v3 = [(UISelectionGrabber *)self customPath];

  if (v3)
  {
    v7 = [(UISelectionGrabber *)self customPath];
    v4 = [(UISelectionGrabber *)self bezierPathFromCustomPath:v7];
    v5 = [v4 CGPath];
    v6 = [(UISelectionGrabber *)self shapeLayer];
    [v6 setPath:v5];
  }
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(UISelectionGrabber *)self customPath:a3.origin.x];

  if (!v4)
  {
    v17 = [(UISelectionGrabber *)self fillColor];
    [(UIView *)self bounds];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
    v13 = [(UIView *)self _screen];
    [v13 scale];
    v15 = v14;

    if (v15 <= 1.0)
    {
      v16 = [v17 colorWithAlphaComponent:0.5];
      [v16 set];

      UIRectFillUsingOperation(1, x, y, width, height);
      [v17 set];
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v20 = CGRectInset(v19, 1.0, 0.0);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
    }

    else
    {
      [v17 set];
    }

    UIRectFillUsingOperation(1, x, y, width, height);
  }
}

- (id)fillColor
{
  v2 = [(UISelectionGrabber *)self hostView];
  v3 = [v2 container];

  if (objc_opt_respondsToSelector())
  {
    [v3 selectionBarColor];
  }

  else
  {
    +[UIColor selectionGrabberColor];
  }
  v4 = ;

  return v4;
}

+ (id)_grabberDot
{
  v2 = [(UIImageView *)[UISelectionGrabberDot alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];

  return v2;
}

@end