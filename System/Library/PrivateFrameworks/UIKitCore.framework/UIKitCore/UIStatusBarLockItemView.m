@interface UIStatusBarLockItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (UIView)viewToAnimateAlongside;
- (double)updateContentsAndWidth;
- (id)accessibilityHUDRepresentation;
- (void)_endAnimation;
- (void)animateUnlockForegroundView:(id)a3 timeItemSnapshot:(id)a4 completionBlock:(id)a5;
- (void)jiggleCompletionBlock:(id)a3;
- (void)setVisible:(BOOL)a3 frame:(CGRect)a4 duration:(double)a5;
@end

@implementation UIStatusBarLockItemView

- (void)_endAnimation
{
  --self->_animationCount;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  animationCount = self->_animationCount;
  if (has_internal_diagnostics)
  {
    if ((animationCount & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Animation count is overreleased.", buf, 2u);
    }
  }

  else
  {
    if ((animationCount & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_endAnimation___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Animation count is overreleased.", v9, 2u);
    }
  }

  animationCount = self->_animationCount;
LABEL_3:
  if (!animationCount)
  {
    v5 = _Block_copy(self->_animationCompletionBlock);
    animationCompletionBlock = self->_animationCompletionBlock;
    self->_animationCompletionBlock = 0;

    if (v5)
    {
      v5[2](v5);
    }
  }
}

- (double)updateContentsAndWidth
{
  if (!self->_padlockView)
  {
    v3 = [_UIStatusBarLockItemPadlockView alloc];
    v4 = [(_UIStatusBarLockItemPadlockView *)v3 initWithFrame:self owner:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    padlockView = self->_padlockView;
    self->_padlockView = v4;

    [(UIView *)self->_padlockView sizeToFit];
    [(UIView *)self->_padlockView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIView *)self frame];
    Height = CGRectGetHeight(v18);
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    [(UIView *)self->_padlockView setFrame:v7, (Height - CGRectGetHeight(v19)) * 0.5 + -1.0, v11, v13];
    [(UIView *)self addSubview:self->_padlockView];
  }

  if ([(UIStatusBarLockItemView *)self _isAnimating])
  {
    widthNeededDuringAnimation = self->_widthNeededDuringAnimation;
  }

  else
  {
    [(UIView *)self->_padlockView frame];
    widthNeededDuringAnimation = CGRectGetWidth(v20);
  }

  [(UIStatusBarItemView *)self adjustFrameToNewSize:widthNeededDuringAnimation];
  return result;
}

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v4 = *&a4;
  padlockView = self->_padlockView;
  v7 = a3;
  [(_UIStatusBarLockItemPadlockView *)padlockView reset];
  v9.receiver = self;
  v9.super_class = UIStatusBarLockItemView;
  LOBYTE(v4) = [(UIStatusBarItemView *)&v9 updateForNewData:v7 actions:v4];

  return v4;
}

- (void)setVisible:(BOOL)a3 frame:(CGRect)a4 duration:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v12 = [(UIStatusBarItemView *)self isVisible]^ a3;
  if (a5 > 0.0 && v12 == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__UIStatusBarLockItemView_setVisible_frame_duration___block_invoke;
    v14[3] = &unk_1E70F3B20;
    v14[4] = self;
    *&v14[5] = x;
    *&v14[6] = y;
    *&v14[7] = width;
    *&v14[8] = height;
    [UIView performWithoutAnimation:v14];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UIStatusBarLockItemView;
    [(UIStatusBarItemView *)&v15 setVisible:v10 frame:x duration:y, width, height, a5];
  }
}

void __53__UIStatusBarLockItemView_setVisible_frame_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 position];
  v4 = v3;
  v6 = v5;

  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v7 = [*(a1 + 32) layer];
  [v7 position];
  v9 = v8;
  v11 = v10;

  v30 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  setDefaultLockAnimationParameters(v30);
  v12 = [MEMORY[0x1E696B098] valueWithCGPoint:{v4, v6}];
  [v30 setFromValue:v12];

  v13 = [MEMORY[0x1E696B098] valueWithCGPoint:{v9, v11}];
  [v30 setToValue:v13];

  v14 = [*(a1 + 32) layer];
  [v14 addAnimation:v30 forKey:@"lock slide"];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 504));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = v9 - v4;
    v18 = *(*(a1 + 32) + 496);
    v19 = [WeakRetained layer];
    [v19 position];
    v21 = v20;
    v23 = v22;

    v24 = v21 - v17;
    if (v18)
    {
      v25 = v21;
    }

    else
    {
      v25 = v17 + v21;
    }

    if (v18)
    {
      v21 = v24;
    }

    v26 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    setDefaultLockAnimationParameters(v26);
    v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v21, v23}];
    [v26 setFromValue:v27];

    v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v23}];
    [v26 setToValue:v28];

    v29 = [v16 layer];
    [v29 addAnimation:v26 forKey:@"alongside lock slide"];

    objc_storeWeak((*(a1 + 32) + 504), 0);
  }
}

- (void)animateUnlockForegroundView:(id)a3 timeItemSnapshot:(id)a4 completionBlock:(id)a5
{
  v181[2] = *MEMORY[0x1E69E9840];
  v172 = a3;
  v167 = a4;
  v8 = a5;
  if ([(UIStatusBarLockItemView *)self _isAnimating])
  {
    if (v8)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v8);
    }
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &_MergedGlobals_3_16);
    if (*CategoryCachedImpl)
    {
      v162 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_188A29000, v162, OS_LOG_TYPE_ERROR, "Starting unlock animation", location, 2u);
      }
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    padlockView = self->_padlockView;
    if (has_internal_diagnostics)
    {
      if (!padlockView)
      {
        v163 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_FAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_fault_impl(&dword_188A29000, v163, OS_LOG_TYPE_FAULT, "padlockView must have been created before unlock is called", location, 2u);
        }
      }
    }

    else if (!padlockView)
    {
      v164 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A350) + 8);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_188A29000, v164, OS_LOG_TYPE_ERROR, "padlockView must have been created before unlock is called", location, 2u);
      }
    }

    textClippingView = self->_textClippingView;
    if (!textClippingView)
    {
      v13 = objc_alloc_init(_UIExpandingGlyphsView);
      textView = self->_textView;
      self->_textView = v13;

      v15 = [(UIStatusBarItemView *)self foregroundStyle];
      v16 = [v15 textFontForStyle:3];

      v17 = [(UIStatusBarItemView *)self foregroundStyle];
      v18 = [v17 textColorForStyle:3];

      v19 = objc_alloc(MEMORY[0x1E696AAB0]);
      v20 = _UILocalizedStringInSystemLanguage(@"UIStatusBar: Unlocked", @"Unlocked");
      v21 = *off_1E70EC920;
      v180[0] = *off_1E70EC918;
      v180[1] = v21;
      v181[0] = v16;
      v181[1] = v18;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v181 forKeys:v180 count:2];
      v23 = [v19 initWithString:v20 attributes:v22];

      [(_UIExpandingGlyphsView *)self->_textView setAttributedString:v23];
      [(UIView *)self->_textView sizeToFit];
      v24 = objc_alloc_init(UIView);
      v25 = self->_textClippingView;
      self->_textClippingView = v24;

      [(UIView *)self->_textClippingView setClipsToBounds:1];
      [(UIView *)self->_textView frame];
      rect = v26;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      [(UIView *)self->_textClippingView frame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
      {
        v182.origin.x = v34;
        v182.origin.y = v36;
        v182.size.width = v38;
        v182.size.height = v40;
        MinX = CGRectGetMinX(v182);
      }

      else
      {
        v183.origin.x = v34;
        v183.origin.y = v36;
        v183.size.width = v38;
        v183.size.height = v40;
        v42 = CGRectGetMinX(v183);
        v184.origin.x = v34;
        v184.origin.y = v36;
        v184.size.width = v38;
        v184.size.height = v40;
        Width = CGRectGetWidth(v184);
        v185.origin.x = v28;
        v185.origin.y = v30;
        v185.size.width = rect;
        v185.size.height = v32;
        MinX = v42 + Width - CGRectGetWidth(v185);
      }

      v44 = [(UIStatusBarItemView *)self foregroundStyle];
      [v44 baselineOffsetForStyle:3];
      v46 = v45;

      [(_UIExpandingGlyphsView *)self->_textView baselineOffset];
      [(UIView *)self->_textView setFrame:MinX, v46 - v47, rect, v32];
      [(UIView *)self->_textClippingView addSubview:self->_textView];

      textClippingView = self->_textClippingView;
    }

    [(UIView *)self addSubview:textClippingView];
    [v172 bounds];
    MidX = CGRectGetMidX(v186);
    v49 = [(UIView *)self->_padlockView superview];
    [(UIView *)self->_padlockView frame];
    [v49 convertRect:v172 toCoordinateSpace:?];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v187.origin.x = v51;
    v187.origin.y = v53;
    v187.size.width = v55;
    v187.size.height = v57;
    v58 = MidX + 2.0;
    self->_padlockViewCenterOffsetFromForegroundViewCenter = CGRectGetMidX(v187) - (MidX + 2.0);
    v188.origin.x = v51;
    v188.origin.y = v53;
    v188.size.width = v55;
    v188.size.height = v57;
    v59 = CGRectGetMinX(v188);
    v189.origin.x = v51;
    v189.origin.y = v53;
    v189.size.width = v55;
    v189.size.height = v57;
    MaxX = CGRectGetMaxX(v189);
    v61 = vabdd_f64(v59, v58);
    v62 = vabdd_f64(MaxX, v58);
    if (v61 >= v62)
    {
      v63 = v61;
    }

    else
    {
      v63 = v62;
    }

    [(UIView *)self->_padlockView frame];
    v64 = CGRectGetWidth(v190);
    v65 = [(UIStatusBarItemView *)self foregroundStyle];
    [v65 standardPadding];
    v67 = v66;
    [(UIView *)self->_textView frame];
    self->_widthNeededForFinalState = v64 + v67 + CGRectGetWidth(v191);

    v68 = self->_widthNeededForFinalState * 0.5;
    if (v63 >= v68)
    {
      v68 = v63;
    }

    self->_widthNeededDuringAnimation = v68 + v68;
    if (v167)
    {
      [v167 frame];
      self->_timeItemSnapshotCenterOffsetFromForegroundViewCenter = vabdd_f64(CGRectGetMidX(v192), v58);
      objc_storeStrong(&self->_timeItemSnapshot, a4);
      [(UIView *)self insertSubview:v167 atIndex:0];
    }

    [(UIStatusBarLockItemView *)self _beginAnimation];
    [(UIStatusBarLockItemView *)self updateContentsAndWidth];
    [v172 reflowItemViewsForgettingEitherSideItemHistory];
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__UIStatusBarLockItemView_animateUnlockForegroundView_timeItemSnapshot_completionBlock___block_invoke;
    aBlock[3] = &unk_1E71177E8;
    objc_copyWeak(&v178, location);
    v69 = v172;
    v176 = v69;
    v177 = v8;
    v70 = _Block_copy(aBlock);
    animationCompletionBlock = self->_animationCompletionBlock;
    self->_animationCompletionBlock = v70;

    [(UIStatusBarLockItemView *)self _beginAnimation];
    v72 = self->_padlockView;
    v174[0] = MEMORY[0x1E69E9820];
    v174[1] = 3221225472;
    v174[2] = __88__UIStatusBarLockItemView_animateUnlockForegroundView_timeItemSnapshot_completionBlock___block_invoke_2;
    v174[3] = &unk_1E70F3590;
    v174[4] = self;
    [(_UIStatusBarLockItemPadlockView *)v72 animateUnlockCompletionBlock:v174];
    timeItemSnapshot = self->_timeItemSnapshot;
    if (timeItemSnapshot)
    {
      timeItemSnapshotCenterOffsetFromForegroundViewCenter = self->_timeItemSnapshotCenterOffsetFromForegroundViewCenter;
      [(UIView *)timeItemSnapshot frame];
      v75 = CGRectGetWidth(v193);
      [(UIView *)self->_timeItemSnapshot frame];
      MinY = CGRectGetMinY(v194);
      [(UIView *)self->_timeItemSnapshot frame];
      v77 = CGRectGetWidth(v195);
      [(UIView *)self->_timeItemSnapshot frame];
      Height = CGRectGetHeight(v196);
      v79 = [(UIView *)self->_timeItemSnapshot superview];
      [v79 convertRect:v69 fromCoordinateSpace:{v58 + timeItemSnapshotCenterOffsetFromForegroundViewCenter + v75 * -0.5, MinY, v77, Height}];
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;

      [(UIView *)self->_timeItemSnapshot setFrame:v81, v83, v85, v87];
      [(UIStatusBarLockItemView *)self _beginAnimation];
      [(UIView *)self->_timeItemSnapshot setAlpha:0.0];
      v88 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
      setDefaultLockAnimationParameters(v88);
      [v88 setFromValue:&unk_1EFE2EB08];
      [v88 setToValue:&unk_1EFE2EB18];
      LODWORD(v89) = 3.0;
      [v88 setSpeed:v89];
      v90 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
      [v88 setDelegate:v90];

      v91 = [(UIView *)self->_timeItemSnapshot layer];
      [v91 addAnimation:v88 forKey:@"fade"];
    }

    padlockViewCenterOffsetFromForegroundViewCenter = self->_padlockViewCenterOffsetFromForegroundViewCenter;
    [(UIView *)self->_padlockView frame];
    v93 = CGRectGetWidth(v197);
    [(UIView *)self->_padlockView frame];
    v94 = CGRectGetMinY(v198);
    [(UIView *)self->_padlockView frame];
    v95 = CGRectGetWidth(v199);
    [(UIView *)self->_padlockView frame];
    v96 = CGRectGetHeight(v200);
    v97 = [(UIView *)self->_padlockView superview];
    [v97 convertRect:v69 fromCoordinateSpace:{v58 + padlockViewCenterOffsetFromForegroundViewCenter + v93 * -0.5, v94, v95, v96}];
    v166 = v98;
    v169 = v100;
    recta = v99;
    v168 = v101;

    if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
    {
      [(UIView *)self bounds];
      v102 = CGRectGetMidX(v201);
      widthNeededForFinalState = self->_widthNeededForFinalState;
      v202.origin.x = v166;
      v202.size.width = v169;
      v202.origin.y = recta;
      v202.size.height = v168;
      v104 = v102 + widthNeededForFinalState * 0.5 - CGRectGetWidth(v202);
    }

    else
    {
      [(UIView *)self bounds];
      v104 = CGRectGetMidX(v203) + self->_widthNeededForFinalState * -0.5;
    }

    v105 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    setDefaultLockAnimationParameters(v105);
    v106 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(v166, recta, v169, v168)}];
    [v105 setFromValue:v106];

    v107 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(v104, recta, v169, v168)}];
    [v105 setToValue:v107];

    v108 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
    [v105 setDelegate:v108];

    [(UIStatusBarLockItemView *)self _beginAnimation];
    v109 = [(UIView *)self->_padlockView layer];
    [v109 addAnimation:v105 forKey:@"padlock translation"];

    [(UIView *)self->_padlockView setFrame:v104, recta, v169, v168];
    [(UIView *)self bounds];
    v110 = CGRectGetHeight(v204);
    if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
    {
      v205.origin.x = v166;
      v205.size.width = v169;
      v205.origin.y = recta;
      v205.size.height = v168;
      v111 = CGRectGetMinX(v205);
    }

    else
    {
      v206.origin.x = v166;
      v206.size.width = v169;
      v206.origin.y = recta;
      v206.size.height = v168;
      v111 = CGRectGetMaxX(v206);
    }

    v112 = v111;
    if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
    {
      [(UIView *)self bounds];
      v113 = CGRectGetMidX(v207);
      v114 = self->_widthNeededForFinalState;
      v208.origin.x = v104;
      v208.size.width = v169;
      v208.origin.y = recta;
      v208.size.height = v168;
      v115 = CGRectGetWidth(v208);
      v116 = 0.0;
    }

    else
    {
      v209.origin.x = v104;
      v209.size.width = v169;
      v209.origin.y = recta;
      v209.size.height = v168;
      v116 = CGRectGetMaxX(v209);
      [(UIView *)self bounds];
      v113 = CGRectGetMidX(v210);
      v114 = self->_widthNeededForFinalState;
      v211.origin.y = 0.0;
      v211.size.width = 0.0;
      v211.origin.x = v116;
      v211.size.height = v110;
      v115 = CGRectGetMinX(v211);
    }

    v117 = v113 + v114 * 0.5 - v115;
    [(UIView *)self->_textClippingView setFrame:v116, 0.0, v117, v110];
    v118 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    setDefaultLockAnimationParameters(v118);
    v119 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(v112, 0.0, 0.0, v110)}];
    [v118 setFromValue:v119];

    v120 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(v116, 0.0, v117, v110)}];
    [v118 setToValue:v120];

    v121 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
    [v118 setDelegate:v121];

    [(UIStatusBarLockItemView *)self _beginAnimation];
    v122 = [(UIView *)self->_textClippingView layer];
    [v122 addAnimation:v118 forKey:@"text clipping translation"];

    v123 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
    setDefaultLockAnimationParameters(v123);
    v124 = MEMORY[0x1E696B098];
    v212.origin.y = 0.0;
    v212.size.width = 0.0;
    v212.origin.x = v112;
    v212.size.height = v110;
    v125 = CGRectGetWidth(v212);
    v213.origin.y = 0.0;
    v213.size.width = 0.0;
    v213.origin.x = v112;
    v213.size.height = v110;
    v126 = [v124 valueWithCGRect:{0.0, 0.0, v125, CGRectGetHeight(v213)}];
    [v123 setFromValue:v126];

    v127 = MEMORY[0x1E696B098];
    v214.origin.y = 0.0;
    v214.origin.x = v116;
    v214.size.width = v117;
    v214.size.height = v110;
    v128 = CGRectGetWidth(v214);
    v215.origin.y = 0.0;
    v215.origin.x = v116;
    v215.size.width = v117;
    v215.size.height = v110;
    v129 = [v127 valueWithCGRect:{0.0, 0.0, v128, CGRectGetHeight(v215)}];
    [v123 setToValue:v129];

    v130 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
    [v123 setDelegate:v130];

    [(UIStatusBarLockItemView *)self _beginAnimation];
    v131 = [(UIView *)self->_textClippingView layer];
    [v131 addAnimation:v123 forKey:@"text clipping bounds"];

    [(UIView *)self->_textView frame];
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v140 = 0.0;
    if (![(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
    {
      v216.origin.x = v133;
      v216.origin.y = v135;
      v216.size.width = v137;
      v216.size.height = v139;
      v140 = -CGRectGetWidth(v216);
    }

    if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
    {
      v217.origin.y = 0.0;
      v217.origin.x = v116;
      v217.size.width = v117;
      v217.size.height = v110;
      v141 = CGRectGetWidth(v217);
      v142 = [(UIStatusBarItemView *)self foregroundStyle];
      [v142 standardPadding];
      v144 = v141 - v143;
      v145 = v140;
    }

    else
    {
      v142 = [(UIStatusBarItemView *)self foregroundStyle];
      [v142 standardPadding];
      v145 = v146;
      v144 = v137;
    }

    [(UIView *)self->_textView setFrame:v145, v135, v144, v139];
    v147 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    setDefaultLockAnimationParameters(v147);
    v148 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(v140, v135, v137, v139)}];
    [v147 setFromValue:v148];

    v149 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(v145, v135, v144, v139)}];
    [v147 setToValue:v149];

    v150 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
    [v147 setDelegate:v150];

    [(UIStatusBarLockItemView *)self _beginAnimation];
    v151 = [(UIView *)self->_textView layer];
    [v151 addAnimation:v147 forKey:@"text translation"];

    v152 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
    setDefaultLockAnimationParameters(v152);
    v153 = MEMORY[0x1E696B098];
    v218.origin.x = v140;
    v218.origin.y = v135;
    v218.size.width = v137;
    v218.size.height = v139;
    v154 = CGRectGetWidth(v218);
    v219.origin.x = v140;
    v219.origin.y = v135;
    v219.size.width = v137;
    v219.size.height = v139;
    v155 = [v153 valueWithCGRect:{0.0, 0.0, v154, CGRectGetHeight(v219)}];
    [v152 setFromValue:v155];

    v156 = MEMORY[0x1E696B098];
    v220.origin.x = v145;
    v220.origin.y = v135;
    v220.size.width = v144;
    v220.size.height = v139;
    v157 = CGRectGetWidth(v220);
    v221.origin.x = v145;
    v221.origin.y = v135;
    v221.size.width = v144;
    v221.size.height = v139;
    v158 = [v156 valueWithCGRect:{0.0, 0.0, v157, CGRectGetHeight(v221)}];
    [v152 setToValue:v158];

    v159 = [_UIViewWeakCAAnimationDelegate weakAnimationDelegate:self];
    [v152 setDelegate:v159];

    [(UIStatusBarLockItemView *)self _beginAnimation];
    v160 = [(UIView *)self->_textView layer];
    [v160 addAnimation:v152 forKey:@"text bounds"];

    [(UIStatusBarLockItemView *)self _beginAnimation];
    [(_UIExpandingGlyphsView *)self->_textView setExpandsFromLeftToRight:[(UIStatusBarItemView *)self _shouldReverseLayoutDirection]];
    v161 = self->_textView;
    v173[0] = MEMORY[0x1E69E9820];
    v173[1] = v165;
    v173[2] = __88__UIStatusBarLockItemView_animateUnlockForegroundView_timeItemSnapshot_completionBlock___block_invoke_3;
    v173[3] = &unk_1E70F3B20;
    v173[4] = self;
    *&v173[5] = v166;
    *&v173[6] = recta;
    *&v173[7] = v169;
    *&v173[8] = v168;
    [(_UIExpandingGlyphsView *)v161 animateCompletionBlock:v173];
    [(UIStatusBarLockItemView *)self _endAnimation];

    objc_destroyWeak(&v178);
    objc_destroyWeak(location);
  }
}

void __88__UIStatusBarLockItemView_animateUnlockForegroundView_timeItemSnapshot_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained padlockView];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [v14 padlockView];
    [v11 setFrame:{0.0, v6, v8, v10}];

    v12 = [v14 timeItemSnapshot];
    [v12 removeFromSuperview];

    [v14 setTimeItemSnapshot:0];
    [v14 updateContentsAndWidth];
    [*(a1 + 32) reflowItemViewsForgettingEitherSideItemHistory];
    v3 = v14;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
    v3 = v14;
  }
}

uint64_t __88__UIStatusBarLockItemView_animateUnlockForegroundView_timeItemSnapshot_completionBlock___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 520) removeFromSuperview];
  [*(*(a1 + 32) + 512) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 _endAnimation];
}

- (void)jiggleCompletionBlock:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  padlockView = self->_padlockView;
  if (has_internal_diagnostics)
  {
    if (!padlockView)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "padlockView must have been created before jiggle is called", buf, 2u);
      }
    }
  }

  else if (!padlockView)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &jiggleCompletionBlock____s_category_164) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "padlockView must have been created before jiggle is called", buf, 2u);
    }
  }

  if ([(UIStatusBarLockItemView *)self _isAnimating])
  {
    if (v4)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v4);
    }
  }

  else
  {
    v7 = _Block_copy(v4);
    animationCompletionBlock = self->_animationCompletionBlock;
    self->_animationCompletionBlock = v7;

    [(UIStatusBarLockItemView *)self _beginAnimation];
    v9 = self->_padlockView;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__UIStatusBarLockItemView_jiggleCompletionBlock___block_invoke;
    v12[3] = &unk_1E70F3590;
    v12[4] = self;
    [(_UIStatusBarLockItemPadlockView *)v9 jiggleCompletionBlock:v12];
  }
}

- (id)accessibilityHUDRepresentation
{
  v2 = [UIAccessibilityHUDItem alloc];
  v3 = [UIImage kitImageNamed:@"LockScreen_Lock"];
  v4 = [(UIAccessibilityHUDItem *)v2 initWithTitle:0 image:v3 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];

  return v4;
}

- (UIView)viewToAnimateAlongside
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToAnimateAlongside);

  return WeakRetained;
}

@end