@interface SBUIProudLockIconView
- (BOOL)_requiresFallbackIndicator;
- (CGAffineTransform)_incomingTransformForActiveView:(SEL)view forState:(id)state;
- (CGAffineTransform)_outgoingTransformForView:(SEL)view fromState:(id)state;
- (CGAffineTransform)_transformForActiveView:(SEL)view forState:(id)state;
- (CGAffineTransform)_zoomedTransform;
- (CGSize)_smallLockSize;
- (CGSize)_smallLockSizeForTextSize:(id)size;
- (SBUIProudLockIconView)initWithFrame:(CGRect)frame;
- (double)_scaleAmountForZoom;
- (double)proudLockLandscapeOffset;
- (id)_activeViewsForState:(int64_t)state;
- (id)_alphaAnimationSettingsForTransitionFromViews:(id)views andState:(int64_t)state toViews:(id)toViews andState:(int64_t)andState forIncomingViews:(BOOL)incomingViews;
- (id)_defaultAnimationSettingsForTransitionFromViews:(id)views andState:(int64_t)state toViews:(id)toViews andState:(int64_t)andState;
- (id)_faceIDCoachingView;
- (id)_layoutAnimationSettingsForTransitionFromViews:(id)views andState:(int64_t)state toViews:(id)toViews andState:(int64_t)andState;
- (id)_pearlGlyphView;
- (id)_transformAnimationSettingsForTransitionFromViews:(id)views andState:(int64_t)state toViews:(id)toViews andState:(int64_t)andState forIncomingViews:(BOOL)incomingViews;
- (void)_configureShadowFromLegibilitySettings:(id)settings;
- (void)_forEachLayerInHierarchy:(id)hierarchy perform:(id)perform;
- (void)_resetPearlGlyphView;
- (void)_transitionToState:(int64_t)state animated:(BOOL)animated updateText:(BOOL)text options:(int64_t)options completion:(id)completion;
- (void)layoutSubviews;
- (void)setAllowsAlongsideCoaching:(BOOL)coaching;
- (void)setContentColor:(id)color;
- (void)setLegibilitySettings:(id)settings;
- (void)setOverrideGlyphStyle:(int64_t)style;
- (void)setOverrideSize:(CGSize)size offset:(CGPoint)offset extent:(double)extent;
- (void)setState:(int64_t)state animated:(BOOL)animated updateText:(BOOL)text options:(int64_t)options completion:(id)completion;
@end

@implementation SBUIProudLockIconView

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = SBUIProudLockIconView;
  [(SBUIProudLockIconView *)&v78 layoutSubviews];
  [(SBUIProudLockIconView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  height = v9;
  v11 = MEMORY[0x1E69DDA98];
  activeInterfaceOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || (activeInterfaceOrientation - 3) > 1)
  {
    v16 = v8 * 0.5;
    [MEMORY[0x1E69D3FE8] proudLockCenterFromTopOfScreen];
    v18 = v17;
  }

  else
  {
    if (activeInterfaceOrientation == 3)
    {
      [MEMORY[0x1E69D3FE8] proudLockCenterFromTopOfScreen];
      v16 = v19;
    }

    else
    {
      v79.origin.x = v4;
      v79.origin.y = v6;
      v79.size.width = v8;
      v79.size.height = height;
      Width = CGRectGetWidth(v79);
      [MEMORY[0x1E69D3FE8] proudLockCenterFromTopOfScreen];
      v16 = Width - v21;
    }

    v18 = height * 0.5;
  }

  if (self->_overridesSizing)
  {
    v8 = self->_overrideSize.width;
    height = self->_overrideSize.height;
    v16 = v8 * 0.5;
    v18 = height * 0.5;
    v6 = 0.0;
    v4 = 0.0;
  }

  [(UIView *)self->_iconContainerView setBounds:v4, v6, v8, height];
  if (self->_overridesSizing)
  {
    v22 = self->_overrideSize.width * 1.13;
    v23 = self->_overrideSize.height * 1.13;
    v24 = self->_overrideSize.width * 0.5 + self->_overrideOffset.x;
    v25 = v18 + self->_overrideOffset.y;
  }

  else
  {
    v24 = v8 * 0.5;
    [MEMORY[0x1E69D3FE8] proudLockAssetSize];
    v22 = v26;
    v23 = v27;
    v25 = height * 0.5 - (v27 - floor(v27)) * 0.5;
  }

  [(SBUIProudLockIconContentView *)self->_lockView setBounds:0.0, 0.0, v22, v23];
  [(SBUIProudLockIconContentView *)self->_lockView setCenter:v24, v25];
  [(MTMaterialView *)self->_backgroundMaterialView setBounds:0.0, 0.0, v22 * 3.0, v22 * 3.0];
  [(MTMaterialView *)self->_backgroundMaterialView setCenter:v24, v25];
  lazy_pearlGlyphView = self->_lazy_pearlGlyphView;
  if (lazy_pearlGlyphView)
  {
    if (self->_overridesSizing)
    {
      overrideExtent = self->_overrideExtent;
    }

    else
    {
      v25 = v25 + 2.333333;
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        overrideExtent = 26.6666667;
      }

      else
      {
        overrideExtent = 20.0;
      }

      lazy_pearlGlyphView = self->_lazy_pearlGlyphView;
    }

    [(LAUIPearlGlyphView *)lazy_pearlGlyphView setBounds:0.0, 0.0, overrideExtent, overrideExtent];
    [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView setCenter:v24, v25];
  }

  v77 = v18;
  v32 = v16;
  [(SBUIProudLockIconView *)self _smallLockSize];
  v34 = v33;
  v76 = v35;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v80.origin.x = v38;
  v80.origin.y = v40;
  v80.size.width = v42;
  v80.size.height = v44;
  v45 = CGRectGetWidth(v80);
  v81.origin.x = v38;
  v81.origin.y = v40;
  v81.size.width = v42;
  v81.size.height = v44;
  v46 = CGRectGetHeight(v81);
  if (v45 < v46)
  {
    v46 = v45;
  }

  v47 = v46 + -32.0 - v34;
  [(SBUIProudLockIconView *)self _lockToCoachingSpacing];
  [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView setBounds:0.0, 0.0, v47 - v48, 40.0];
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v51 = v50;

  if (!self->_changingAllowsAlongsideCoaching)
  {
    [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView stringWidth];
  }

  BSFloatRoundForScale();
  v53 = v52;
  window = [(SBUIProudLockIconView *)self window];
  [(SBUIProudLockIconContentView *)self->_lockView bounds];
  [window convertRect:self->_lockView fromView:?];
  v56 = v55;
  v58 = v57;

  if (self->_allowsAlongsideCoaching)
  {
    v59 = v56;
    if (!self->_changingAllowsAlongsideCoaching)
    {
      [(SBUIProudLockIconView *)self _lockToCoachingSpacing];
      v59 = v53 + v56 + v60;
    }
  }

  else
  {
    v59 = v56;
  }

  if (!SBUIProudLockIconViewStateShowsCoachingText(self->_state) || self->_performingIncomingLayout || self->_changingAllowsAlongsideCoaching)
  {
    v61 = v32;
    v62 = v77;
  }

  else
  {
    v73 = v59 - v56;
    userInterfaceLayoutDirection = [*v11 userInterfaceLayoutDirection];
    v75 = -(v73 * 0.5);
    if (userInterfaceLayoutDirection != 1)
    {
      v75 = v73 * 0.5;
    }

    v61 = v32 - v75;
    v62 = v77 + (round(v51 * (v77 + v58 * 0.5)) - v51 * (v77 + v58 * 0.5)) / v51;
  }

  [(UIView *)self->_iconContainerView setCenter:v61, v62];
  userInterfaceLayoutDirection2 = [*v11 userInterfaceLayoutDirection];
  [(SBUIProudLockIconView *)self _lockToCoachingSpacing];
  v65 = (v34 + v53) * 0.5 + v64 + -1.5;
  if (userInterfaceLayoutDirection2 == 1)
  {
    v65 = -v65;
  }

  v66 = v61 + v65;
  mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen3 scale];
  v69 = v68;

  [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView setCenter:v66, v62 + round(v76 * v51 / 30.0) / v69];
  superview = [(SBUIFaceIDCameraGlyphView *)self->_cameraCoveredView superview];

  if (superview == self)
  {
    cameraCoveredView = self->_cameraCoveredView;
    superview2 = [(SBUIFaceIDCameraGlyphView *)cameraCoveredView superview];
    [superview2 bounds];
    [(SBUIFaceIDCameraGlyphView *)cameraCoveredView setFrame:?];
  }
}

- (CGSize)_smallLockSize
{
  currentSizeCategory = [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView currentSizeCategory];
  [(SBUIProudLockIconView *)self _smallLockSizeForTextSize:currentSizeCategory];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)_faceIDCoachingView
{
  lazy_faceIDCoachingView = self->_lazy_faceIDCoachingView;
  if (!lazy_faceIDCoachingView)
  {
    v4 = objc_alloc_init(SBUIFaceIDCoachingView);
    v5 = self->_lazy_faceIDCoachingView;
    self->_lazy_faceIDCoachingView = v4;

    [(SBUIProudLockIconView *)self addSubview:self->_lazy_faceIDCoachingView];
    [(SBUIProudLockIconView *)self layoutIfNeeded];
    v6 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "[Legibility] Creating FaceID coaching view", v8, 2u);
    }

    [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView setLegibilitySettings:self->_legibilitySettings];
    [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView setHidden:[(SBUIProudLockIconView *)self allowsAlongsideCoaching]^ 1];
    [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView setAlpha:0.0];
    [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView setCoachingCondition:1];
    lazy_faceIDCoachingView = self->_lazy_faceIDCoachingView;
  }

  return lazy_faceIDCoachingView;
}

- (SBUIProudLockIconView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = SBUIProudLockIconView;
  v3 = [(SBUIProudLockIconView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  v3->_allowsAlongsideCoaching = 1;
  v3->_pearlGlyphStyle = 3;
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  iconContainerView = v4->_iconContainerView;
  v4->_iconContainerView = v5;

  [(SBUIProudLockIconView *)v4 addSubview:v4->_iconContainerView];
  v7 = objc_alloc_init(SBUIProudLockIconContentView);
  lockView = v4->_lockView;
  v4->_lockView = v7;

  layer = [(SBUIProudLockIconContentView *)v4->_lockView layer];
  [layer setAllowsGroupOpacity:1];

  [(UIView *)v4->_iconContainerView addSubview:v4->_lockView];
  layer2 = [(SBUIProudLockIconView *)v4 layer];
  [layer2 setAllowsGroupOpacity:1];

  v11 = [MEMORY[0x1E695DFA8] set];
  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [MEMORY[0x1E695DFA8] set];
  layer3 = [(SBUIProudLockIconContentView *)v4->_lockView layer];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __39__SBUIProudLockIconView_initWithFrame___block_invoke;
  v31[3] = &unk_1E789E4B0;
  v15 = v11;
  v32 = v15;
  v16 = v12;
  v33 = v16;
  v17 = v13;
  v34 = v17;
  [(SBUIProudLockIconView *)v4 _forEachLayerInHierarchy:layer3 perform:v31];

  v18 = [v15 copy];
  imageLayers = v4->_imageLayers;
  v4->_imageLayers = v18;

  v20 = [v16 copy];
  shadowImageLayers = v4->_shadowImageLayers;
  v4->_shadowImageLayers = v20;

  v22 = [v17 copy];
  shadowFilterLayers = v4->_shadowFilterLayers;
  v4->_shadowFilterLayers = v22;

  [(SBUIProudLockIconContentView *)v4->_lockView setHidden:0];
  [(SBUIProudLockIconView *)v4 setAccessibilityIdentifier:@"proud-lock"];
  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
LABEL_6:
    v26 = objc_alloc_init(SBUIFaceIDCameraGlyphView);
    cameraCoveredView = v4->_cameraCoveredView;
    v4->_cameraCoveredView = v26;
  }

LABEL_7:
  [(SBUIProudLockIconView *)v4 addSubview:v4->_cameraCoveredView];
  if (SBUIAllowsIndicatorSecureRendering() && (SBSIsSystemApertureAvailable() & 1) == 0)
  {
    v28 = [MEMORY[0x1E69AE158] materialViewWithRecipe:1];
    backgroundMaterialView = v4->_backgroundMaterialView;
    v4->_backgroundMaterialView = v28;

    [(MTMaterialView *)v4->_backgroundMaterialView setAutoresizingMask:18];
    [(MTMaterialView *)v4->_backgroundMaterialView setOverrideUserInterfaceStyle:1];
    [(MTMaterialView *)v4->_backgroundMaterialView _setCornerRadius:15.0];
    [(MTMaterialView *)v4->_backgroundMaterialView setAlpha:0.0];
    [(SBUIProudLockIconView *)v4 addSubview:v4->_backgroundMaterialView];
    [(SBUIProudLockIconView *)v4 sendSubviewToBack:v4->_backgroundMaterialView];
  }

  v4->_state = 0;
  [(SBUIProudLockIconView *)v4 _transitionToState:0 animated:0 updateText:1 options:0 completion:0];

  return v4;
}

void __39__SBUIProudLockIconView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  if ([v3 isEqualToString:@"shackle"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"body"))
  {
    v4 = 32;
LABEL_4:
    [*(a1 + v4) addObject:v5];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"shadow"])
  {
    v4 = 40;
    goto LABEL_4;
  }

  if ([v3 isEqualToString:@"filter"])
  {
    v4 = 48;
    goto LABEL_4;
  }

LABEL_5:
}

- (void)setState:(int64_t)state animated:(BOOL)animated updateText:(BOOL)text options:(int64_t)options completion:(id)completion
{
  textCopy = text;
  animatedCopy = animated;
  completionCopy = completion;
  if (self->_state == state)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(SBUIProudLockIconView *)self _transitionToState:state animated:animatedCopy updateText:textCopy options:options completion:?];
  }

  MEMORY[0x1EEE66C48]();
}

- (void)setOverrideSize:(CGSize)size offset:(CGPoint)offset extent:(double)extent
{
  self->_overridesSizing = 1;
  self->_overrideSize = size;
  self->_overrideOffset = offset;
  self->_overrideExtent = extent;
  [(SBUIProudLockIconView *)self setNeedsLayout];

  [(SBUIProudLockIconView *)self layoutIfNeeded];
}

- (void)setOverrideGlyphStyle:(int64_t)style
{
  if (style)
  {
    if (style != 1)
    {
      return;
    }

    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (v3 != self->_pearlGlyphStyle)
  {
    self->_pearlGlyphStyle = v3;
    [(SBUIProudLockIconView *)self _resetPearlGlyphView];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  v13 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:settingsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    v6 = SBLogLockScreenBiometricFaceIDCoaching();
    v7 = v6;
    if (settingsCopy)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = settingsCopy;
        _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "[Legibility] Updating to legibility settings: %@", &v11, 0xCu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [SBUIProudLockIconView setLegibilitySettings:v7];
    }

    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(SBUIProudLockIconView *)self setContentColor:primaryColor];

    [(SBUIProudLockIconView *)self _configureShadowFromLegibilitySettings:settingsCopy];
    _faceIDCoachingView = [(SBUIProudLockIconView *)self _faceIDCoachingView];
    [_faceIDCoachingView setLegibilitySettings:self->_legibilitySettings];

    cameraCoveredView = [(SBUIProudLockIconView *)self cameraCoveredView];
    [cameraCoveredView setLegibilitySettings:self->_legibilitySettings];
  }
}

- (double)proudLockLandscapeOffset
{
  [MEMORY[0x1E69D3FE8] proudLockLandscapeOffset];
  v3 = v2;
  v4 = SBUIAllowsIndicatorSecureRendering();
  result = 0.0;
  if (!v4)
  {
    return v3;
  }

  return result;
}

- (void)setAllowsAlongsideCoaching:(BOOL)coaching
{
  if (self->_allowsAlongsideCoaching != coaching)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_allowsAlongsideCoaching = coaching;
    self->_changingAllowsAlongsideCoaching = 1;
    [(SBUIFaceIDCoachingView *)self->_lazy_faceIDCoachingView setCoachingCondition:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__SBUIProudLockIconView_setAllowsAlongsideCoaching___block_invoke;
    v6[3] = &unk_1E789DA38;
    v6[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
    self->_changingAllowsAlongsideCoaching = 0;
  }
}

uint64_t __52__SBUIProudLockIconView_setAllowsAlongsideCoaching___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 490) == 1)
  {
    [*(v2 + 480) setHidden:0];
    v2 = *(a1 + 32);
  }

  [v2 setNeedsLayout];
  result = [*(a1 + 32) layoutIfNeeded];
  v4 = *(a1 + 32);
  if ((*(v4 + 490) & 1) == 0)
  {
    v5 = *(v4 + 480);

    return [v5 setHidden:1];
  }

  return result;
}

- (void)setContentColor:(id)color
{
  v26 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (self->_contentColor != colorCopy)
  {
    v20 = colorCopy;
    objc_storeStrong(&self->_contentColor, color);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_imageLayers;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v7)
    {
      goto LABEL_24;
    }

    v8 = v7;
    v9 = *v22;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        name = [v11 name];
        if ([name isEqualToString:@"body"])
        {
          v13 = objc_opt_class();
          v14 = v11;
          if (v13)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          v19 = v15;

          [v19 setFillColor:{-[UIColor cgColor](self->_contentColor, "cgColor")}];
        }

        else
        {
          if (![name isEqualToString:@"shackle"])
          {
            goto LABEL_22;
          }

          v16 = objc_opt_class();
          v17 = v11;
          if (v16)
          {
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;

          [v19 setStrokeColor:{-[UIColor cgColor](self->_contentColor, "cgColor")}];
        }

LABEL_22:
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v8)
      {
LABEL_24:

        [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView setFinishedColor:self->_contentColor animated:0];
        colorCopy = v20;
        break;
      }
    }
  }
}

- (void)_configureShadowFromLegibilitySettings:(id)settings
{
  v21 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  shadowColor = [settingsCopy shadowColor];
  style = [settingsCopy style];
  v7 = MEMORY[0x1E69798C8];
  if (style != 1)
  {
    v7 = MEMORY[0x1E6979C38];
  }

  v8 = *v7;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_shadowImageLayers;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        superlayer = [v14 superlayer];
        [superlayer setAllowsGroupBlending:0];

        [v14 setShadowColor:{objc_msgSend(shadowColor, "cgColor")}];
        [v14 setCompositingFilter:v8];
      }

      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)_forEachLayerInHierarchy:(id)hierarchy perform:(id)perform
{
  v19 = *MEMORY[0x1E69E9840];
  hierarchyCopy = hierarchy;
  performCopy = perform;
  performCopy[2](performCopy, hierarchyCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sublayers = [hierarchyCopy sublayers];
  v9 = [sublayers copy];

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SBUIProudLockIconView *)self _forEachLayerInHierarchy:*(*(&v14 + 1) + 8 * v13++) perform:performCopy];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_transitionToState:(int64_t)state animated:(BOOL)animated updateText:(BOOL)text options:(int64_t)options completion:(id)completion
{
  animatedCopy = animated;
  v137 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x2020000000;
  v135 = 0;
  state = self->_state;
  self->_state = state;
  if ((options & 2) != 0)
  {
    [(SBUIProudLockIconView *)self _resetPearlGlyphView];
    [(SBUIProudLockIconView *)self _resetfaceIDCoachingView];
    [(SBUIProudLockIconView *)self _resetCameraGlyphView];
  }

  v11 = [(SBUIProudLockIconView *)self _activeViewsForState:state];
  v12 = [(SBUIProudLockIconView *)self _activeViewsForState:state];
  v13 = [v11 mutableCopy];
  [v13 removeObjectsInArray:v12];
  v69 = v13;
  v14 = [v12 mutableCopy];
  [v14 removeObjectsInArray:v11];
  v15 = state == 5 && state == 4 || state == 4 && state == 5 || state == 25 || state == 25;
  v71 = v15;
  v68 = [v11 isEqualToArray:v12];
  v17 = SBUIProudLockIconViewStateShowsCoachingText(state);
  HIDWORD(v60) = SBUIProudLockIconViewStateShowsCoachingText(state);
  LODWORD(v60) = v17;
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  dispatch_group_enter(v18);
  dispatch_group_enter(v18);
  dispatch_group_enter(v18);
  dispatch_group_enter(v18);
  v19 = objc_opt_new();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke;
  block[3] = &unk_1E789E500;
  block[4] = self;
  v20 = v11;
  v129 = v20;
  v70 = v12;
  v130 = v70;
  v63 = v19;
  v131 = v63;
  v61 = completionCopy;
  v132 = v61;
  v133 = v134;
  dispatch_group_notify(v18, MEMORY[0x1E69E96A0], block);
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_3;
  v123[3] = &unk_1E789E550;
  v21 = v18;
  v124 = v21;
  selfCopy = self;
  v127 = animatedCopy;
  v126 = v134;
  v65 = MEMORY[0x1AC58E960](v123);
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_5;
  v121[3] = &unk_1E789E598;
  v121[5] = options;
  v121[4] = self;
  v122 = animatedCopy;
  v67 = MEMORY[0x1AC58E960](v121);
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_8;
  v116[3] = &unk_1E789E5C0;
  v22 = v21;
  textCopy = text;
  v117 = v22;
  selfCopy2 = self;
  v120 = animatedCopy;
  v64 = MEMORY[0x1AC58E960](v116);
  if (animatedCopy)
  {
    v23 = [(SBUIProudLockIconView *)self _alphaAnimationSettingsForTransitionFromViews:v70 andState:state toViews:v20 andState:state forIncomingViews:0];
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x1E698E7D0];
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_9;
  v112[3] = &unk_1E789E1D0;
  v114 = v68 ^ 1;
  v115 = v71;
  v25 = v14;
  v113 = v25;
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_10;
  v110[3] = &unk_1E789DC08;
  v26 = v22;
  v111 = v26;
  [v24 animateWithSettings:v23 actions:v112 completion:v110];
  [(SBUIProudLockIconView *)self _alphaForActiveViewForState:state];
  v28 = v27;
  v62 = v25;
  if (animatedCopy)
  {
    v29 = [(SBUIProudLockIconView *)self _alphaAnimationSettingsForTransitionFromViews:v70 andState:state toViews:v20 andState:state forIncomingViews:1];
  }

  else
  {
    v29 = 0;
  }

  v30 = MEMORY[0x1E698E7D0];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_11;
  v105[3] = &unk_1E789E5E8;
  v108 = v68 ^ 1;
  v109 = v71;
  v31 = v20;
  v106 = v31;
  v107 = v28;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_12;
  v103[3] = &unk_1E789DC08;
  v32 = v26;
  v104 = v32;
  [v30 animateWithSettings:v29 actions:v105 completion:v103];

  v33 = 0.0;
  v34 = 1;
  stateCopy = 4;
  switch(state)
  {
    case 0:
      goto LABEL_48;
    case 1:
    case 2:
      stateCopy = state;
      goto LABEL_48;
    case 3:
      if (v17 != HIDWORD(v60))
      {
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_13;
        v101[3] = &unk_1E789E610;
        v102 = v67;
        v40 = MEMORY[0x1AC58E960](v101);
        [v63 addObject:v40];
      }

      else
      {
        stateCopy = 3;
LABEL_48:
        (v67)[2](v67, stateCopy, v32);
      }

LABEL_49:
      v37 = 0;
LABEL_50:
      [(SBUIFaceIDCameraGlyphView *)self->_cameraCoveredView setState:v37 delay:v33, v60];
      if (((v68 ^ 1) & 1) != 0 || v71)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v44 = v69;
        v45 = [v44 countByEnumeratingWithState:&v97 objects:v136 count:16];
        if (v45)
        {
          v46 = *v98;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v98 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v97 + 1) + 8 * i);
              v95 = 0u;
              v96 = 0u;
              v94 = 0u;
              [(SBUIProudLockIconView *)self _incomingTransformForActiveView:v48 forState:state];
              v93[0] = v94;
              v93[1] = v95;
              v93[2] = v96;
              [v48 setTransform:v93];
            }

            v45 = [v44 countByEnumeratingWithState:&v97 objects:v136 count:16];
          }

          while (v45);
        }
      }

      if (animatedCopy)
      {
        v49 = [(SBUIProudLockIconView *)self _transformAnimationSettingsForTransitionFromViews:v70 andState:state toViews:v31 andState:state forIncomingViews:0];
      }

      else
      {
        v49 = 0;
      }

      v50 = MEMORY[0x1E698E7D0];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_14;
      v87[3] = &unk_1E789E638;
      v91 = v68 ^ 1;
      v92 = v71;
      v51 = v62;
      v88 = v51;
      selfCopy3 = self;
      stateCopy2 = state;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_15;
      v85[3] = &unk_1E789DC08;
      v52 = v32;
      v86 = v52;
      [v50 animateWithSettings:v49 actions:v87 completion:v85];
      if (animatedCopy)
      {
        v53 = [(SBUIProudLockIconView *)self _transformAnimationSettingsForTransitionFromViews:v70 andState:state toViews:v31 andState:state forIncomingViews:1];
      }

      else
      {
        v53 = 0;
      }

      v54 = MEMORY[0x1E698E7D0];
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_16;
      v79[3] = &unk_1E789E638;
      v83 = v68 ^ 1;
      v84 = v71;
      v55 = v31;
      v80 = v55;
      selfCopy4 = self;
      stateCopy3 = state;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_17;
      v77[3] = &unk_1E789DC08;
      v56 = v52;
      v78 = v56;
      [v54 animateWithSettings:v53 actions:v79 completion:v77];

      if ((v68 & 1) == 0 && self->_lazy_faceIDCoachingView && [v55 containsObject:?] && self->_allowsAlongsideCoaching)
      {
        self->_performingIncomingLayout = 1;
        [(SBUIProudLockIconView *)self setNeedsLayout];
        [(SBUIProudLockIconView *)self layoutIfNeeded];
        self->_performingIncomingLayout = 0;
      }

      [(SBUIProudLockIconView *)self setNeedsLayout];
      if (animatedCopy)
      {
        v57 = [(SBUIProudLockIconView *)self _layoutAnimationSettingsForTransitionFromViews:v70 andState:state toViews:v55 andState:state];
      }

      else
      {
        v57 = 0;
      }

      v58 = MEMORY[0x1E698E7D0];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_18;
      v76[3] = &unk_1E789DA38;
      v76[4] = self;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_19;
      v74[3] = &unk_1E789DC08;
      v59 = v56;
      v75 = v59;
      [v58 animateWithSettings:v57 actions:v76 completion:v74];

      _Block_object_dispose(v134, 8);
      return;
    case 4:
    case 15:
    case 19:
    case 20:
    case 21:
      goto LABEL_39;
    case 5:
    case 8:
    case 10:
      v34 = 2;
      goto LABEL_39;
    case 6:
      v34 = 3;
      goto LABEL_39;
    case 7:
      v34 = 4;
LABEL_39:
      v65[2](v65, v34);
      goto LABEL_49;
    case 9:
      goto LABEL_22;
    case 11:
      stateCopy = 5;
      goto LABEL_48;
    case 12:
      stateCopy = 6;
      goto LABEL_48;
    case 13:
      stateCopy = 7;
      goto LABEL_48;
    case 14:
      if (![(SBUIProudLockIconView *)self _requiresFallbackIndicator])
      {
        (v67)[2](v67, 1, v32);
      }

      v39 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(self->_state);
      v64[2](v64, v39);
      goto LABEL_49;
    case 16:
      v43 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(16);
      v64[2](v64, v43);
      goto LABEL_49;
    case 17:
      v36 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(17);
      v64[2](v64, v36);
      v33 = 0.5;
      v37 = 2;
      goto LABEL_50;
    case 18:
      v38 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(18);
      v64[2](v64, v38);
      v33 = 0.5;
      goto LABEL_31;
    case 22:
      (v67)[2](v67, 1, v32);
      v41 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(self->_state);
      v64[2](v64, v41);
      goto LABEL_49;
    case 23:
      v64[2](v64, 13);
      goto LABEL_49;
    case 24:
      v64[2](v64, 13);
LABEL_31:
      v37 = 1;
      goto LABEL_50;
    case 25:
    case 26:
    case 27:
    case 29:
      if ([(SBUIProudLockIconView *)self _requiresFallbackIndicator])
      {
        goto LABEL_49;
      }

LABEL_22:
      stateCopy = 1;
      goto LABEL_48;
    case 28:
      if (_SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled())
      {
        v42 = 15;
      }

      else
      {
        v42 = 1;
      }

      v64[2](v64, v42);
      goto LABEL_49;
    default:
      goto LABEL_49;
  }
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _activeViewsForState:{objc_msgSend(*(a1 + 32), "state")}];
  v3 = *(*(a1 + 32) + 464);
  if (v3 && ([*(a1 + 40) containsObject:v3] & 1) == 0 && (objc_msgSend(v2, "containsObject:", v3) & 1) == 0 && objc_msgSend(*(a1 + 48), "containsObject:", v3))
  {
    [*(a1 + 32) _resetPearlGlyphView];
  }

  v4 = *(*(a1 + 32) + 480);
  if (v4 && ([*(a1 + 40) containsObject:v4] & 1) == 0 && (objc_msgSend(v2, "containsObject:", v4) & 1) == 0 && objc_msgSend(*(a1 + 48), "containsObject:", v4))
  {
    [*(a1 + 32) _resetfaceIDCoachingView];
  }

  v5 = dispatch_group_create();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 56);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v16 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_2;
  v13[3] = &unk_1E789E4D8;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v14 = v11;
  v15 = v12;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v13);
}

uint64_t __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  dispatch_group_enter(*(a1 + 32));
  v4 = [*(a1 + 40) _pearlGlyphView];
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_4;
  v6[3] = &unk_1E789E528;
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  [v4 setState:a2 animated:v5 withCompletion:v6];
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  dispatch_group_enter(v5);
  if (a2 == 2)
  {
    kdebug_trace();
  }

  v7 = 2.0;
  if ((v6 & 1) == 0)
  {
    v7 = 1.0;
  }

  v8 = *(*(a1 + 32) + 424);
  v9 = *(a1 + 48);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_6;
  v14[3] = &__block_descriptor_33_e8_v12__0B8l;
  v15 = a2 == 2;
  [v8 setState:a2 animated:v9 transitionSpeed:v14 completion:v7];
  v10 = dispatch_time(0, 150000000);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_7;
  v12[3] = &unk_1E789DA38;
  v13 = v5;
  v11 = v5;
  dispatch_after(v10, MEMORY[0x1E69E96A0], v12);
}

uint64_t __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_6(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_8(uint64_t a1, uint64_t a2)
{
  dispatch_group_enter(*(a1 + 32));
  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 40) _faceIDCoachingView];
    [v4 setCoachingCondition:a2 animated:*(a1 + 49) delay:0.18];
  }

  v5 = *(a1 + 32);

  dispatch_group_leave(v5);
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_9(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(a1 + 32);
    v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v1);
          }

          [*(*(&v6 + 1) + 8 * v5++) setAlpha:{0.0, v6}];
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_11(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6++) setAlpha:{*(a1 + 40), v7}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_14(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 57) == 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          v11 = 0u;
          v12 = 0u;
          v10 = 0u;
          v8 = *(a1 + 40);
          if (v8)
          {
            [v8 _outgoingTransformForView:v7 fromState:*(a1 + 48)];
          }

          v9[0] = v10;
          v9[1] = v11;
          v9[2] = v12;
          [v7 setTransform:v9];
        }

        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }
  }
}

void __83__SBUIProudLockIconView__transitionToState_animated_updateText_options_completion___block_invoke_16(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 57) == 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          v11 = 0u;
          v12 = 0u;
          v10 = 0u;
          v8 = *(a1 + 40);
          if (v8)
          {
            [v8 _transformForActiveView:v7 forState:*(a1 + 48)];
          }

          v9[0] = v10;
          v9[1] = v11;
          v9[2] = v12;
          [v7 setTransform:v9];
        }

        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }
  }
}

- (id)_transformAnimationSettingsForTransitionFromViews:(id)views andState:(int64_t)state toViews:(id)toViews andState:(int64_t)andState forIncomingViews:(BOOL)incomingViews
{
  incomingViewsCopy = incomingViews;
  viewsCopy = views;
  toViewsCopy = toViews;
  v14 = [toViewsCopy isEqualToArray:viewsCopy];
  v19 = v14 ^ 1;
  if (state != 1)
  {
    v19 = 0;
  }

  if (andState == 4 && v19)
  {
    v20 = MEMORY[0x1E69793D0];
    if (incomingViewsCopy)
    {
      LODWORD(v15) = 1048911544;
      LODWORD(v17) = 1056293519;
      LODWORD(v16) = 1.0;
      LODWORD(v18) = 1.0;
      v21 = [MEMORY[0x1E69793D0] functionWithControlPoints:v15 :v16 :v17 :v18];
      v22 = MEMORY[0x1E698E608];
      v23 = 0.56;
LABEL_20:
      v26 = [v22 settingsWithDuration:v21 timingFunction:v23];

      goto LABEL_21;
    }

    LODWORD(v15) = 1056293519;
    v16 = 0.0;
    LODWORD(v17) = 1.0;
    LODWORD(v18) = 1.0;
LABEL_19:
    v21 = [v20 functionWithControlPoints:v15 :v16 :v17 :v18];
    v22 = MEMORY[0x1E698E608];
    v23 = 0.27;
    goto LABEL_20;
  }

  v24 = state == 4 && andState == 2;
  v25 = !incomingViewsCopy;
  if (!v24)
  {
    v25 = 1;
  }

  if (((v25 | v14) & 1) == 0)
  {
    v20 = MEMORY[0x1E69793D0];
    LODWORD(v15) = 1043207291;
    LODWORD(v16) = 1038174126;
    LODWORD(v17) = 1057300152;
    LODWORD(v18) = 1064682127;
    goto LABEL_19;
  }

  if (v19 && SBUIProudLockIconViewStateShowsCoachingText(andState) && incomingViewsCopy)
  {
    v20 = MEMORY[0x1E69793D0];
    LODWORD(v15) = 1054280253;
    LODWORD(v17) = 1061494456;
    LODWORD(v18) = 1062836634;
    v16 = 0.0;
    goto LABEL_19;
  }

  v26 = [(SBUIProudLockIconView *)self _defaultAnimationSettingsForTransitionFromViews:viewsCopy andState:state toViews:toViewsCopy andState:andState];
LABEL_21:

  return v26;
}

- (id)_alphaAnimationSettingsForTransitionFromViews:(id)views andState:(int64_t)state toViews:(id)toViews andState:(int64_t)andState forIncomingViews:(BOOL)incomingViews
{
  incomingViewsCopy = incomingViews;
  viewsCopy = views;
  toViewsCopy = toViews;
  v14 = [toViewsCopy isEqualToArray:viewsCopy];
  if (andState == 4 && state == 1 && !v14)
  {
    v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    if (incomingViewsCopy)
    {
      v16 = 0.1;
    }

    else
    {
      v16 = 0.27;
    }

    v17 = [MEMORY[0x1E698E608] settingsWithDuration:v15 timingFunction:v16];
  }

  else
  {
    v17 = [(SBUIProudLockIconView *)self _defaultAnimationSettingsForTransitionFromViews:viewsCopy andState:state toViews:toViewsCopy andState:andState];
  }

  return v17;
}

- (id)_defaultAnimationSettingsForTransitionFromViews:(id)views andState:(int64_t)state toViews:(id)toViews andState:(int64_t)andState
{
  viewsCopy = views;
  toViewsCopy = toViews;
  if (([toViewsCopy isEqualToArray:viewsCopy] & 1) == 0 && ((v10 = objc_msgSend(toViewsCopy, "containsObject:", self->_lockView), !self->_lazy_faceIDCoachingView) ? (v11 = 0) : (v11 = objc_msgSend(viewsCopy, "containsObject:")), v10 ? (v12 = v11 == 0) : (v12 = 0), v12))
  {
    v13 = 0.2;
  }

  else
  {
    v13 = 0.4;
  }

  v14 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v15 = [MEMORY[0x1E698E608] settingsWithDuration:v14 timingFunction:v13];

  return v15;
}

- (id)_layoutAnimationSettingsForTransitionFromViews:(id)views andState:(int64_t)state toViews:(id)toViews andState:(int64_t)andState
{
  LODWORD(v6) = 1048911544;
  LODWORD(v7) = 1041194025;
  LODWORD(v8) = 1052266988;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:views :state :toViews :{andState, v6, v7, v8, v9}];
  v11 = [MEMORY[0x1E698E608] settingsWithDuration:v10 delay:0.63 timingFunction:0.12];

  return v11;
}

- (id)_activeViewsForState:(int64_t)state
{
  v28[2] = *MEMORY[0x1E69E9840];
  allowsAlongsideCoaching = [(SBUIProudLockIconView *)self allowsAlongsideCoaching];
  if (state <= 9)
  {
    if ((state - 4) < 5)
    {
      goto LABEL_13;
    }

    if (state < 4 || state == 9)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (state <= 0x1D)
    {
      v3 = allowsAlongsideCoaching;
      if (((1 << state) & 0x2FC74000) != 0)
      {
        if (allowsAlongsideCoaching)
        {
          v25[0] = self->_lockView;
          _faceIDCoachingView = [(SBUIProudLockIconView *)self _faceIDCoachingView];
          iconContainerView = self->_iconContainerView;
          v25[1] = _faceIDCoachingView;
          v25[2] = iconContainerView;
          v9 = MEMORY[0x1E695DEC8];
          v10 = v25;
LABEL_6:
          v11 = 3;
LABEL_16:
          v3 = [v9 arrayWithObjects:v10 count:v11];

          goto LABEL_23;
        }

        v12 = self->_iconContainerView;
        v24[0] = self->_lockView;
        v24[1] = v12;
        v13 = MEMORY[0x1E695DEC8];
        p_lockView = v24;
        goto LABEL_22;
      }

      if (((1 << state) & 0x388000) != 0)
      {
LABEL_13:
        _pearlGlyphView = [(SBUIProudLockIconView *)self _pearlGlyphView];
        _faceIDCoachingView = _pearlGlyphView;
        if (_pearlGlyphView)
        {
          v16 = self->_iconContainerView;
          v26[0] = _pearlGlyphView;
          v26[1] = v16;
          v9 = MEMORY[0x1E695DEC8];
          v10 = v26;
          v11 = 2;
        }

        else
        {
          v27 = self->_iconContainerView;
          v9 = MEMORY[0x1E695DEC8];
          v10 = &v27;
          v11 = 1;
        }

        goto LABEL_16;
      }

      if (state == 28)
      {
        if (_SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled() & allowsAlongsideCoaching)
        {
          v23[0] = self->_lockView;
          _faceIDCoachingView = [(SBUIProudLockIconView *)self _faceIDCoachingView];
          v17 = self->_iconContainerView;
          v23[1] = _faceIDCoachingView;
          v23[2] = v17;
          v9 = MEMORY[0x1E695DEC8];
          v10 = v23;
          goto LABEL_6;
        }

        v20 = self->_iconContainerView;
        lockView = self->_lockView;
        v22 = v20;
        v13 = MEMORY[0x1E695DEC8];
        p_lockView = &lockView;
        goto LABEL_22;
      }
    }

    if ((state - 11) < 3)
    {
LABEL_21:
      v18 = self->_iconContainerView;
      v28[0] = self->_lockView;
      v28[1] = v18;
      v13 = MEMORY[0x1E695DEC8];
      p_lockView = v28;
LABEL_22:
      v3 = [v13 arrayWithObjects:p_lockView count:{2, lockView, v22}];
      goto LABEL_23;
    }

    if (state == 10)
    {
      goto LABEL_13;
    }
  }

LABEL_23:

  return v3;
}

- (BOOL)_requiresFallbackIndicator
{
  v2 = +[SBUIBiometricResource sharedInstance];
  requiresSecureIndicator = [v2 requiresSecureIndicator];

  return requiresSecureIndicator;
}

- (CGAffineTransform)_incomingTransformForActiveView:(SEL)view forState:(id)state
{
  stateCopy = state;
  if (a5 == 4 && (v17 = stateCopy, [(SBUIProudLockIconView *)self _pearlGlyphViewIfExists], v9 = objc_claimAutoreleasedReturnValue(), v9, stateCopy = v17, v9 == v17))
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    CGAffineTransformMakeScale(retstr, dbl_1A9B2A970[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1], dbl_1A9B2A970[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1]);
  }

  else
  {
    lazy_faceIDCoachingView = self->_lazy_faceIDCoachingView;
    if (lazy_faceIDCoachingView)
    {
      v11 = lazy_faceIDCoachingView == stateCopy;
    }

    else
    {
      v11 = 0;
    }

    if (v11 || self->_iconContainerView == stateCopy)
    {
      v12 = MEMORY[0x1E695EFD0];
      v13 = *(MEMORY[0x1E695EFD0] + 16);
      *&retstr->a = *MEMORY[0x1E695EFD0];
      *&retstr->c = v13;
      *&retstr->tx = *(v12 + 32);
      goto LABEL_12;
    }

    v17 = stateCopy;
    [(SBUIProudLockIconView *)self _zoomedTransform];
  }

  stateCopy = v17;
LABEL_12:

  return result;
}

- (CGAffineTransform)_transformForActiveView:(SEL)view forState:(id)state
{
  stateCopy = state;
  _zoomedTransform = SBUIProudLockIconViewStateShowsCoachingText(a5);
  v9 = stateCopy;
  if (_zoomedTransform && self->_iconContainerView == stateCopy)
  {
    _zoomedTransform = [(SBUIProudLockIconView *)self _zoomedTransform];
    v9 = stateCopy;
  }

  else
  {
    v10 = MEMORY[0x1E695EFD0];
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v11;
    *&retstr->tx = *(v10 + 32);
  }

  return MEMORY[0x1EEE66BB8](_zoomedTransform, v9);
}

- (CGAffineTransform)_outgoingTransformForView:(SEL)view fromState:(id)state
{
  stateCopy = state;
  if (a5 == 4 && (v15 = stateCopy, [(SBUIProudLockIconView *)self _pearlGlyphViewIfExists], v9 = objc_claimAutoreleasedReturnValue(), v9, stateCopy = v15, v9 == v15) || ((lazy_faceIDCoachingView = self->_lazy_faceIDCoachingView) != 0 ? (v11 = lazy_faceIDCoachingView == stateCopy) : (v11 = 0), v11 || self->_iconContainerView == stateCopy || self->_lockView != stateCopy))
  {
    v12 = MEMORY[0x1E695EFD0];
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v13;
    *&retstr->tx = *(v12 + 32);
  }

  else
  {
    v16 = stateCopy;
    [(SBUIProudLockIconView *)self _zoomedTransform];
    stateCopy = v16;
  }

  return result;
}

- (CGAffineTransform)_zoomedTransform
{
  [(SBUIProudLockIconView *)self _scaleAmountForZoom];

  return CGAffineTransformMakeScale(retstr, v4, v4);
}

- (double)_scaleAmountForZoom
{
  [(SBUIProudLockIconView *)self _smallLockSize];
  v3 = v2;
  [MEMORY[0x1E69D3FE8] proudLockAssetSize];
  return v3 / v4;
}

- (CGSize)_smallLockSizeForTextSize:(id)size
{
  v3 = MEMORY[0x1E69D3FE8];
  sizeCopy = size;
  [v3 proudLockAssetSize];
  v6 = v5;
  v8 = v7;
  v9 = v5 / v7;
  SBUICeilingCapHeightForCoachingTextForUIContentSizeCategory(sizeCopy);
  v11 = v10;

  v12 = v11 * 1.66666667;
  v13 = v12 * v9;
  v14 = BSSizeLessThanSize();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v6;
  }

  if (v14)
  {
    v16 = v12;
  }

  else
  {
    v16 = v8;
  }

  result.height = v16;
  result.width = v15;
  return result;
}

- (id)_pearlGlyphView
{
  lazy_pearlGlyphView = self->_lazy_pearlGlyphView;
  if (!lazy_pearlGlyphView)
  {
    pearlGlyphStyle = self->_pearlGlyphStyle;
    LAUIPearlGlyphStaticConfigurationClass = getLAUIPearlGlyphStaticConfigurationClass();
    if (pearlGlyphStyle == 4)
    {
      createSystemApertureConfiguration = [LAUIPearlGlyphStaticConfigurationClass createSystemApertureConfiguration];
      v7 = 7;
    }

    else
    {
      createSystemApertureConfiguration = [LAUIPearlGlyphStaticConfigurationClass createDefaultConfiguration];
      [createSystemApertureConfiguration setInitialStyle:self->_pearlGlyphStyle];
      v7 = 0;
    }

    if (SBUIAllowsIndicatorSecureRendering())
    {
      [createSystemApertureConfiguration setSecureVariantEnabled:1];
      [createSystemApertureConfiguration setSecureVariantType:pearlGlyphStyle != 4];
    }

    v8 = [objc_alloc(getLAUIPearlGlyphViewClass()) initWithConfiguration:createSystemApertureConfiguration];
    v9 = self->_lazy_pearlGlyphView;
    self->_lazy_pearlGlyphView = v8;

    [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView setFaceVisibility:v7 animated:0];
    [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView setFeedbackEnabled:0];
    [(UIView *)self->_iconContainerView addSubview:self->_lazy_pearlGlyphView];
    [(SBUIProudLockIconView *)self setNeedsLayout];
    [(SBUIProudLockIconView *)self layoutIfNeeded];
    if (!self->_pearlGlyphViewSharedResources)
    {
      sharedStaticResources = [getLAUIPearlGlyphViewClass() sharedStaticResources];
      pearlGlyphViewSharedResources = self->_pearlGlyphViewSharedResources;
      self->_pearlGlyphViewSharedResources = sharedStaticResources;
    }

    [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView setFinishedColor:self->_contentColor animated:0];
    [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView setHidden:0];
    [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView setAlpha:0.0];
    [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView setState:6 animated:0];

    lazy_pearlGlyphView = self->_lazy_pearlGlyphView;
  }

  return lazy_pearlGlyphView;
}

- (void)_resetPearlGlyphView
{
  v4 = self->_lazy_pearlGlyphView;
  [(LAUIPearlGlyphView *)v4 setState:6 animated:0];
  [(LAUIPearlGlyphView *)self->_lazy_pearlGlyphView removeFromSuperview];
  lazy_pearlGlyphView = self->_lazy_pearlGlyphView;
  self->_lazy_pearlGlyphView = 0;
}

@end