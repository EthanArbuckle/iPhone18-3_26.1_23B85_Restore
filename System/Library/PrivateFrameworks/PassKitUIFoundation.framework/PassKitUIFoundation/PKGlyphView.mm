@interface PKGlyphView
+ (id)sharedStaticResources;
+ (void)invokeSuccessFeedback;
- (CATransform3D)_phoneTransformDeltaWhileShownFromRotationPercentage:(SEL)percentage toPercentage:(double)toPercentage;
- (CGPoint)_phonePositionDeltaWhileShownFromRotationPercentage:(double)percentage toPercentage:(double)toPercentage;
- (CGPoint)_phonePositionWhileShownWithRotationPercentage:(double)percentage;
- (PKGlyphView)initWithCoder:(id)coder;
- (PKGlyphView)initWithStyle:(int64_t)style;
- (PKGlyphViewDelegate)delegate;
- (UIEdgeInsets)customImageAlignmentEdgeInsets;
- (id)_primaryColorForStyle:(int64_t)style mode:(int64_t)mode;
- (id)_secondaryColorForStyle:(int64_t)style mode:(int64_t)mode;
- (id)createCustomImageLayer;
- (void)_animateSecureIndicatorVisibilityForIndex:(unsigned __int16)index;
- (void)_applyEffectiveHighlightColorsToLayersAnimated:(BOOL)animated;
- (void)_applyEffectivePrimaryColorToLayersAnimated:(BOOL)animated;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_endPhoneWiggle;
- (void)_executeAfterMinimumAnimationDurationForStateTransitionWithDelayRatio:(double)ratio handler:(id)handler;
- (void)_executeTransitionCompletionHandlers:(BOOL)handlers;
- (void)_layoutContentLayer:(id)layer;
- (void)_setRecognizedIfNecessaryWithTransitionIndex:(unint64_t)index completion:(id)completion;
- (void)_startPhoneWiggle;
- (void)_updateCustomImageLayerOpacityAnimated:(BOOL)animated;
- (void)_updatePhoneLayoutWithTransitionIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_updatePhoneWiggleIfNecessary;
- (void)_updateSecureFaceIDState;
- (void)_updateSecureFaceIDVisibility;
- (void)_updateUserIntentLayerRotation;
- (void)_updateUserIntentLayoutAnimated:(BOOL)animated;
- (void)bindSecureIndicatorProviderToAuthenticator:(id)authenticator;
- (void)consumer:(id)consumer ensureIndicatorWithCompletion:(id)completion;
- (void)consumer:(id)consumer requestsState:(id)state;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)registerConsumer:(id)consumer;
- (void)setCustomImage:(CGImage *)image withAlignmentEdgeInsets:(UIEdgeInsets)insets;
- (void)setShowQRCode:(BOOL)code;
- (void)tintColorDidChange;
- (void)unregisterConsumer:(id)consumer;
- (void)updateRasterizationScale:(double)scale;
- (void)updateRotation;
@end

@implementation PKGlyphView

+ (id)sharedStaticResources
{
  if (PKPearlIsAvailable())
  {
    mEMORY[0x277D24220] = [MEMORY[0x277D24220] sharedStaticResources];
  }

  else
  {
    mEMORY[0x277D24220] = 0;
  }

  return mEMORY[0x277D24220];
}

+ (void)invokeSuccessFeedback
{
  if (PKPearlIsAvailable())
  {
    v2 = MEMORY[0x277D24220];

    [v2 invokeSuccessFeedback];
  }
}

- (PKGlyphView)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

- (PKGlyphView)initWithStyle:(int64_t)style
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  v105.receiver = self;
  v105.super_class = PKGlyphView;
  v6 = [(PKGlyphView *)&v105 initWithFrame:v4, v5, 63.0, 63.0];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_style = style;
  v6->_userIntentEdge = 1;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  transitionCompletionHandlers = v7->_transitionCompletionHandlers;
  v7->_transitionCompletionHandlers = v8;

  v10 = dispatch_group_create();
  lastAnimationGroup = v7->_lastAnimationGroup;
  v7->_lastAnimationGroup = v10;

  [(PKGlyphView *)v7 setAutoresizesSubviews:0];
  IsAvailable = PKPearlIsAvailable();
  if (IsAvailable)
  {
    IsAvailable = LAUIIsSecureFaceIDUISupported();
    if (IsAvailable)
    {
      LOBYTE(IsAvailable) = LAUIIsSecureFaceIDUIEnabled();
    }
  }

  v7->_secureIndicatorRequired = IsAvailable;
  if (PKPearlIsAvailable())
  {
    if (PKSystemApertureIsAvailable())
    {
      createSystemApertureConfiguration = [MEMORY[0x277D24218] createSystemApertureConfiguration];
    }

    else
    {
      createSystemApertureConfiguration = [MEMORY[0x277D24218] createDefaultConfiguration];
    }

    v18 = createSystemApertureConfiguration;
    style = v7->_style;
    v17 = 1.0;
    if (style - 3 < 4)
    {
      v20 = 3;
    }

    else
    {
      if (style >= 3)
      {
        if (style == 7)
        {
          [createSystemApertureConfiguration setInitialStyle:7];
          [v18 setLineThicknessScale:1.4285712];
          [v18 setCheckmarkThicknessScale:2.16];
          v17 = 1.71;
        }

        goto LABEL_15;
      }

      v20 = 0;
    }

    [createSystemApertureConfiguration setInitialStyle:v20];
LABEL_15:
    [v18 lineThicknessScale];
    v22 = v21;
    [v18 checkmarkThicknessScale];
    v16 = v22 * v23;
    v24 = [objc_alloc(MEMORY[0x277D24220]) initWithConfiguration:v18];
    pearlView = v7->_pearlView;
    v7->_pearlView = v24;

    [(LAUIPearlGlyphView *)v7->_pearlView setDelegate:v7];
    [(PKGlyphView *)v7 addSubview:v7->_pearlView];

    goto LABEL_16;
  }

  v14 = objc_alloc_init(PKFingerprintGlyphView);
  fingerprintView = v7->_fingerprintView;
  v7->_fingerprintView = v14;

  [(PKFingerprintGlyphView *)v7->_fingerprintView setDelegate:v7];
  [(PKGlyphView *)v7 addSubview:v7->_fingerprintView];
  v16 = 1.0;
  v17 = 1.0;
LABEL_16:
  contentLayer = [(LAUIPearlGlyphView *)v7->_pearlView contentLayer];
  v27 = contentLayer;
  if (contentLayer)
  {
    contentLayer2 = contentLayer;
  }

  else
  {
    contentLayer2 = [(PKFingerprintGlyphView *)v7->_fingerprintView contentLayer];
  }

  v29 = contentLayer2;

  v30 = *(MEMORY[0x277CD9DE8] + 32);
  v31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v104.m23 = *(MEMORY[0x277CD9DE8] + 48);
  *&v104.m31 = v31;
  v32 = *(MEMORY[0x277CD9DE8] + 16);
  *&v104.m11 = *MEMORY[0x277CD9DE8];
  v33 = *(MEMORY[0x277CD9DE8] + 80);
  *&v104.m13 = v32;
  *&v104.m21 = v30;
  v104.m33 = v33;
  v104.m34 = -0.0009553015;
  v34 = *(MEMORY[0x277CD9DE8] + 112);
  *&v104.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v104.m43 = v34;
  [v29 setSublayerTransform:&v104];
  v35 = objc_alloc_init(PKPhoneGlyphLayer);
  phoneLayer = v7->_phoneLayer;
  v7->_phoneLayer = v35;

  [(PKPhoneGlyphLayer *)v7->_phoneLayer setAnchorPoint:0.5, 1.0];
  [(PKPhoneGlyphLayer *)v7->_phoneLayer setAllowsEdgeAntialiasing:1];
  [(PKPhoneGlyphLayer *)v7->_phoneLayer setShouldRasterize:1];
  [v29 addSublayer:v7->_phoneLayer];
  rootLayer = [(PKMicaLayer *)v7->_phoneLayer rootLayer];
  [rootLayer bounds];
  v39 = v38;
  v41 = v40;

  v7->_phoneAspectRatio = v39 / v41;
  if (PKUserIntentIsAvailable())
  {
    v42 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    userIntentLayer = v7->_userIntentLayer;
    v7->_userIntentLayer = v42;

    [v29 addSublayer:v7->_userIntentLayer];
    v44 = PKIsPad();
    v7->_isPad = v44;
    if (v44)
    {
      v45 = PKPassKitUIFoundationBundle();
      v46 = [v45 URLForResource:@"Payment_glyph_intent_pad" withExtension:@"caar"];
      v47 = 0.5;
      v48 = 0.977777778;
    }

    else
    {
      IsWithinScreen = PKFrontFaceCameraIsWithinScreen();
      v50 = PKPassKitUIFoundationBundle();
      v45 = v50;
      if (IsWithinScreen)
      {
        v51 = @"Payment_glyph_intent_phone-D73";
      }

      else
      {
        v51 = @"Payment_glyph_intent_phone";
      }

      v46 = [v50 URLForResource:v51 withExtension:@"caar"];
      v48 = 0.00561797753;
      v47 = 0.494444444;
    }

    v52 = *MEMORY[0x277CDA7E8];
    v53 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v46 type:*MEMORY[0x277CDA7E8] options:0 error:0];
    v54 = objc_alloc(MEMORY[0x277D37F68]);
    v55 = *MEMORY[0x277CBF398];
    v56 = *(MEMORY[0x277CBF398] + 8);
    v57 = *(MEMORY[0x277CBF398] + 16);
    v58 = *(MEMORY[0x277CBF398] + 24);
    v59 = [v54 initWithFrame:v53 package:{*MEMORY[0x277CBF398], v56, v57, v58}];
    userIntentDeviceLayer = v7->_userIntentDeviceLayer;
    v7->_userIntentDeviceLayer = v59;

    [(PKMicaLayer *)v7->_userIntentDeviceLayer setAnchorPoint:v47, v48];
    v61 = PKPassKitUIFoundationBundle();
    v62 = [v61 URLForResource:@"Payment_glyph_intent_arrow" withExtension:@"caar"];

    v63 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v62 type:v52 options:0 error:0];

    v64 = [objc_alloc(MEMORY[0x277D37F68]) initWithFrame:v63 package:{v55, v56, v57, v58}];
    userIntentArrowLayer = v7->_userIntentArrowLayer;
    v7->_userIntentArrowLayer = v64;

    [(PKMicaLayer *)v7->_userIntentArrowLayer setAnchorPoint:0.0, 0.484375];
    if (v7->_isPad)
    {
      v66 = v7->_userIntentArrowLayer;
      CATransform3DMakeRotation(&v104, 1.57079633, 0.0, 0.0, 1.0);
      [(PKMicaLayer *)v66 setTransform:&v104];
    }

    [(CALayer *)v7->_userIntentLayer addSublayer:v7->_userIntentDeviceLayer];
    [(CALayer *)v7->_userIntentLayer addSublayer:v7->_userIntentArrowLayer];
  }

  v7->_checkScale = v17;
  v67 = objc_alloc_init(MEMORY[0x277D24208]);
  checkLayer = v7->_checkLayer;
  v7->_checkLayer = v67;

  [(LAUICheckmarkLayer *)v7->_checkLayer setLineWidthScale:v16 / v7->_checkScale];
  [(LAUICheckmarkLayer *)v7->_checkLayer setRevealed:0 animated:0];
  createCustomImageLayer = [(PKGlyphView *)v7 createCustomImageLayer];
  customImageLayer = v7->_customImageLayer;
  v7->_customImageLayer = createCustomImageLayer;

  [v29 addSublayer:v7->_customImageLayer];
  [v29 addSublayer:v7->_checkLayer];
  layer = [(PKGlyphView *)v7 layer];
  v72 = layer;
  if (style == 3)
  {
    [layer setAllowsGroupOpacity:0];
    [v72 setAllowsGroupBlending:0];
    layer2 = [(LAUIPearlGlyphView *)v7->_pearlView layer];
    v74 = layer2;
    if (layer2)
    {
      layer3 = layer2;
    }

    else
    {
      layer3 = [(PKFingerprintGlyphView *)v7->_fingerprintView layer];
    }

    v76 = layer3;

    [v76 setAllowsGroupOpacity:0];
    v77 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2A8]];
    [v76 setCompositingFilter:v77];
  }

  v78 = [MEMORY[0x277D75348] colorWithRed:0.8745098 green:0.9372549 blue:0.9960784 alpha:1.0];
  v79 = v78;
  v80 = MEMORY[0x277D75348];
  if (style == 3)
  {
    v81 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    primaryHighlightColor = v7->_primaryHighlightColor;
    v7->_primaryHighlightColor = v81;
  }

  else
  {
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __29__PKGlyphView_initWithStyle___block_invoke;
    v102[3] = &unk_279A00608;
    v103 = v78;
    v83 = [v80 colorWithDynamicProvider:v102];
    v84 = v7->_primaryHighlightColor;
    v7->_primaryHighlightColor = v83;

    primaryHighlightColor = v103;
  }

  v85 = [MEMORY[0x277D75348] colorWithRed:0.6784314 green:0.827451 blue:1.0 alpha:1.0];
  v86 = MEMORY[0x277D75348];
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __29__PKGlyphView_initWithStyle___block_invoke_2;
  v100[3] = &unk_279A00608;
  v87 = v85;
  v101 = v87;
  v88 = [v86 colorWithDynamicProvider:v100];
  intentPrimaryHighlightColor = v7->_intentPrimaryHighlightColor;
  v7->_intentPrimaryHighlightColor = v88;

  v90 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v91 = v90;
  v92 = MEMORY[0x277D75348];
  if (style == 3)
  {
    v93 = [MEMORY[0x277D75348] colorWithWhite:0.5723 alpha:1.0];
    secondaryHighlightColor = v7->_secondaryHighlightColor;
    v7->_secondaryHighlightColor = v93;
  }

  else
  {
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __29__PKGlyphView_initWithStyle___block_invoke_3;
    v98[3] = &unk_279A00608;
    v99 = v90;
    v95 = [v92 colorWithDynamicProvider:v98];
    v96 = v7->_secondaryHighlightColor;
    v7->_secondaryHighlightColor = v95;

    secondaryHighlightColor = v99;
  }

  v7->_colorMode = 0;
  [(PKGlyphView *)v7 _applyColorMode:0];
  [(PKGlyphView *)v7 _applyEffectiveHighlightColorsToLayersAnimated:0];
  [v72 contentsScale];
  [(PKGlyphView *)v7 updateRasterizationScale:?];
  [(PKGlyphView *)v7 setNeedsLayout];
  [(PKGlyphView *)v7 _updateUserIntentLayerRotation];
  [(PKGlyphView *)v7 updateRotation];
  [(PKGlyphView *)v7 setAccessibilityIdentifier:@"glyph"];

  return v7;
}

void *__29__PKGlyphView_initWithStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
LABEL_6:
      v5 = 0;
      v6 = *(a1 + 32);
      goto LABEL_7;
    }

    v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.1607843 blue:0.3137255 alpha:1.0];
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = v6;

  return v6;
}

void *__29__PKGlyphView_initWithStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
LABEL_6:
      v5 = 0;
      v6 = *(a1 + 32);
      goto LABEL_7;
    }

    v4 = [MEMORY[0x277D75348] colorWithRed:0.0313725 green:0.4156863 blue:0.8 alpha:1.0];
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = v6;

  return v6;
}

void *__29__PKGlyphView_initWithStyle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
LABEL_6:
      v5 = 0;
      v6 = *(a1 + 32);
      goto LABEL_7;
    }

    v4 = [MEMORY[0x277D75348] colorWithRed:0.01960784 green:0.2627451 blue:0.509804 alpha:1.0];
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = v6;

  return v6;
}

- (void)dealloc
{
  if (self->_transitioning)
  {
    [(PKGlyphView *)self _executeTransitionCompletionHandlers:1];
  }

  customImage = self->_customImage;
  if (customImage)
  {
    CFRelease(customImage);
  }

  [(LAUIPearlGlyphView *)self->_pearlView setDelegate:0];
  [(PKFingerprintGlyphView *)self->_fingerprintView setDelegate:0];
  authenticator = self->_authenticator;
  if (authenticator)
  {
    [(PKAuthenticatorSecureIndicatorAuthenticator *)authenticator unregisterSecureIndicatorProvider:self];
  }

  secureFaceIDView = self->_secureFaceIDView;
  if (secureFaceIDView)
  {
    [(LAUIPearlGlyphView *)secureFaceIDView invalidate];
  }

  secureIndicatorVisibleTracker = self->_secureIndicatorVisibleTracker;
  if (secureIndicatorVisibleTracker)
  {
    secureIndicatorVisibleTracker[2]();
  }

  v7 = self->_secureIndicatorVisibilityCompletions;
  v8 = v7;
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__PKGlyphView_dealloc__block_invoke;
    block[3] = &unk_2799FFC10;
    v11 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v9.receiver = self;
  v9.super_class = PKGlyphView;
  [(PKGlyphView *)&v9 dealloc];
}

void __22__PKGlyphView_dealloc__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PKGlyphView;
  [(PKGlyphView *)&v3 didMoveToWindow];
  [(PKGlyphView *)self updateRotation];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKGlyphView;
  [(PKGlyphView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKGlyphView *)self _applyEffectiveHighlightColorsToLayersAnimated:1];
  [(PKGlyphView *)self _applyEffectivePrimaryColorToLayersAnimated:1];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKGlyphView;
  [(PKGlyphView *)&v14 layoutSubviews];
  [(PKGlyphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  fingerprintView = self->_fingerprintView;
  if (fingerprintView)
  {
    [(PKFingerprintGlyphView *)fingerprintView bounds];
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    if (!CGRectEqualToRect(v15, v18))
    {
      [(PKFingerprintGlyphView *)self->_fingerprintView setFrame:v4, v6, v8, v10];
      [(PKFingerprintGlyphView *)self->_fingerprintView setNeedsLayout];
    }
  }

  pearlView = self->_pearlView;
  if (pearlView)
  {
    [(LAUIPearlGlyphView *)pearlView bounds];
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    if (!CGRectEqualToRect(v16, v19))
    {
      [(LAUIPearlGlyphView *)self->_pearlView setFrame:v4, v6, v8, v10];
      [(LAUIPearlGlyphView *)self->_pearlView setNeedsLayout];
    }
  }

  secureFaceIDView = self->_secureFaceIDView;
  if (secureFaceIDView)
  {
    [(LAUIPearlGlyphView *)secureFaceIDView bounds];
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    if (!CGRectEqualToRect(v17, v20))
    {
      [(LAUIPearlGlyphView *)self->_secureFaceIDView setFrame:v4, v6, v8, v10];
      [(LAUIPearlGlyphView *)self->_secureFaceIDView setNeedsLayout];
    }
  }
}

- (void)_layoutContentLayer:(id)layer
{
  layerCopy = layer;
  layer = [(PKGlyphView *)self layer];
  [layer contentsScale];
  v7 = v6;

  [layerCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  userIntentLayer = self->_userIntentLayer;
  v17 = MEMORY[0x277CBF348];
  if (userIntentLayer)
  {
    [(CALayer *)userIntentLayer anchorPoint];
    v19 = v18;
    v21 = v20;
    [(CALayer *)self->_userIntentLayer setBounds:*v17, v17[1], v13, v15];
    [(CALayer *)self->_userIntentLayer setPosition:v9 + v19 * v13, v11 + v21 * v15];
    [(PKGlyphView *)self _updateUserIntentLayoutAnimated:0];
  }

  v48 = v13;
  [(PKGlyphView *)self _updatePhoneLayoutWithTransitionIndex:self->_transitionIndex animated:0];
  [(CALayer *)self->_customImageLayer contentsScale];
  v23 = v22;
  top = self->_customImageAlignmentEdgeInsets.top;
  left = self->_customImageAlignmentEdgeInsets.left;
  bottom = self->_customImageAlignmentEdgeInsets.bottom;
  right = self->_customImageAlignmentEdgeInsets.right;
  customImage = self->_customImage;
  if (customImage && (CGImageGetWidth(customImage), (v29 = self->_customImage) != 0))
  {
    CGImageGetHeight(v29);
    v30 = bottom / v23;
    v31 = left / v23;
    v32 = top / v23;
    v47 = right / v23;
    if (self->_customImage)
    {
      v33 = left / v23;
      goto LABEL_9;
    }
  }

  else
  {
    v47 = right / v23;
    v30 = bottom / v23;
    v31 = left / v23;
    v32 = top / v23;
  }

  v33 = v31;
LABEL_9:
  v34 = *MEMORY[0x277D385C0];
  PKSizeAlignedInRectWithScale();
  v35 = v7;
  v37 = v36 - v33;
  v39 = v38 - v32;
  v41 = v47 + v33 + v40;
  v43 = v30 + v32 + v42;
  [(CALayer *)self->_customImageLayer anchorPoint];
  [(CALayer *)self->_customImageLayer setPosition:v37 + v44 * v41, v39 + v45 * v43];
  [(CALayer *)self->_customImageLayer setBounds:*v17, v17[1], v41, v43];
  [(LAUICheckmarkLayer *)self->_checkLayer defaultSizeForCircleWithDiameter:v48 * self->_checkScale scale:v35];
  checkLayer = self->_checkLayer;
  PKSizeAlignedInRectWithScale();

  [(LAUICheckmarkLayer *)checkLayer setFrame:?];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PKGlyphView;
  [(PKGlyphView *)&v3 tintColorDidChange];
  [(PKGlyphView *)self _applyColorMode:1];
}

- (void)updateRotation
{
  if (self->_userIntentLayer)
  {
    window = [(PKGlyphView *)self window];
    v34 = window;
    if (window)
    {
      [window screen];
    }

    else
    {
      [MEMORY[0x277D759A0] mainScreen];
    }
    v4 = ;
    fixedCoordinateSpace = [v4 fixedCoordinateSpace];
    coordinateSpace = [v4 coordinateSpace];
    [fixedCoordinateSpace bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [coordinateSpace bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    LAUIPhysicalButtonNormalizedFrame();
    [coordinateSpace convertRect:fixedCoordinateSpace fromCoordinateSpace:{v8 + v23 * v12, v10 + v24 * v14, v12 * v25, v14 * v26}];
    if (v29 <= 0.0)
    {
      v32 = v28;
      v37.origin.x = v16;
      v37.origin.y = v18;
      v37.size.width = v20;
      v37.size.height = v22;
      if (v32 < CGRectGetMidY(v37))
      {
        v31 = 1;
      }

      else
      {
        v31 = 3;
      }
    }

    else
    {
      v30 = v27;
      v36.origin.x = v16;
      v36.origin.y = v18;
      v36.size.width = v20;
      v36.size.height = v22;
      v31 = 2 * (v30 >= CGRectGetMidX(v36));
    }

    if (self->_userIntentEdge != v31)
    {
      self->_userIntentEdge = v31;
      [(PKGlyphView *)self _updateUserIntentLayerRotation];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained glyphViewUserIntentEdgeDidChange:self];
      }
    }
  }
}

- (void)updateRasterizationScale:(double)scale
{
  layer = [(PKGlyphView *)self layer];
  [layer setContentsScale:scale];

  phoneLayer = self->_phoneLayer;

  [(PKPhoneGlyphLayer *)phoneLayer setRasterizationScale:scale];
}

- (void)_executeAfterMinimumAnimationDurationForStateTransitionWithDelayRatio:(double)ratio handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = self->_lastAnimationWillFinish - Current;
    lastAnimationGroup = self->_lastAnimationGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__PKGlyphView__executeAfterMinimumAnimationDurationForStateTransitionWithDelayRatio_handler___block_invoke;
    block[3] = &unk_279A00630;
    v12 = fmax(ratio, 0.0) * fmax(v8, 0.0);
    v13 = Current;
    v11 = handlerCopy;
    dispatch_group_notify(lastAnimationGroup, MEMORY[0x277D85CD0], block);
  }
}

void __93__PKGlyphView__executeAfterMinimumAnimationDurationForStateTransitionWithDelayRatio_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40) - (CFAbsoluteTimeGetCurrent() - *(a1 + 48));
  if (v2 <= 0.0)
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }

  else
  {
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = *(a1 + 32);
    v5 = MEMORY[0x277D85CD0];

    dispatch_after(v3, v5, v4);
  }
}

- (void)_executeTransitionCompletionHandlers:(BOOL)handlers
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableArray *)self->_transitionCompletionHandlers copy];
  [(NSMutableArray *)self->_transitionCompletionHandlers removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained _finishTransitionForIndex:*(a1 + 40) cancelled:1];
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_2;
      v6[3] = &unk_279A003F0;
      objc_copyWeak(v7, (a1 + 32));
      v7[1] = *(a1 + 40);
      [v5 _executeAfterMinimumAnimationDurationForStateTransition:v6];
      objc_destroyWeak(v7);
    }
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _finishTransitionForIndex:*(a1 + 40) cancelled:0];
    WeakRetained = v3;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[64] == *(a1 + 40))
  {
    v6 = WeakRetained[74];
    if (v6)
    {
      v7 = *(a1 + 48);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_5;
      v13[3] = &unk_279A00680;
      v14 = v3;
      [v6 setState:6 animated:v7 withCompletion:v13];
      v8 = v14;
LABEL_7:

      goto LABEL_8;
    }

    v9 = WeakRetained[73];
    if (v9)
    {
      v10 = *(a1 + 48);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_6;
      v11[3] = &unk_279A00680;
      v12 = v3;
      [v9 setState:5 animated:v10 completionHandler:v11];
      v8 = v12;
      goto LABEL_7;
    }

    if (v3)
    {
      v3[2](v3);
    }
  }

LABEL_8:
}

uint64_t __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_7(uint64_t a1, void *a2)
{
  block = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 64) == *(a1 + 40))
    {
      *(WeakRetained + 576) |= 4u;
      [WeakRetained _updateUserIntentLayoutAnimated:*(a1 + 48)];
      if (block)
      {
        if (*(a1 + 48) == 1)
        {
          v5 = dispatch_time(0, 255000000);
          dispatch_after(v5, MEMORY[0x277D85CD0], block);
        }

        else
        {
          block[2]();
        }
      }
    }
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 64) == *(a1 + 40))
    {
      *(WeakRetained + 576) |= 8u;
      [WeakRetained _updateUserIntentLayoutAnimated:*(a1 + 48)];
      if (v5)
      {
        v5[2]();
      }
    }
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_9(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_10;
  v3[3] = &unk_279A006D0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  (*(v2 + 16))(v2, v3);
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_10(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_11;
  v2[3] = &unk_2799FFB20;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(v1 + 16))(v1, v2);
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_13(uint64_t a1, char a2)
{
  v4 = dispatch_time(0, 500000000);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_14;
  v5[3] = &unk_279A00720;
  objc_copyWeak(v7, (a1 + 40));
  v8 = a2;
  v7[1] = *(a1 + 48);
  v9 = *(a1 + 56);
  v6 = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(v7);
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v4 = *(a1 + 56) != 1 || WeakRetained == 0;
  if (v4 || *(WeakRetained + 64) != *(a1 + 48))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(WeakRetained + 74);
    v6 = *(a1 + 57);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_15;
    v7[3] = &unk_279A00680;
    v8 = *(a1 + 32);
    [v5 setState:0 animated:v6 withCompletion:v7];
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_22;
    v8[3] = &unk_279A00770;
    objc_copyWeak(&v10, (a1 + 40));
    v11 = *(a1 + 56);
    v9 = *(a1 + 32);
    v3 = MEMORY[0x25F8AAFE0](v8);
    v4 = v3;
    if (*(a1 + 57) == 1)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_24;
      v5[3] = &unk_279A00798;
      objc_copyWeak(v7, (a1 + 40));
      v7[1] = *(a1 + 48);
      v6 = v4;
      [WeakRetained _executeAfterMinimumAnimationDurationForStateTransition:v5];

      objc_destroyWeak(v7);
    }

    else
    {
      (*(v3 + 16))(v3);
    }

    objc_destroyWeak(&v10);
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setColorMode:1 animated:*(a1 + 48)];
    v4 = v3[74];
    if (v4)
    {
      v5 = *(a1 + 48);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_23;
      v7[3] = &unk_279A00680;
      v8 = *(a1 + 32);
      [v4 setState:5 animated:v5 withCompletion:v7];
    }

    else
    {
      v6 = v3[73];
      if (v6)
      {
        [v6 setState:3 animated:*(a1 + 48) completionHandler:*(a1 + 32)];
      }

      else
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_25(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 & 1) == 0 && WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setColorMode:1 animated:*(a1 + 48)];
    v4 = v3[74];
    if (v4)
    {
      v5 = *(a1 + 48);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_27;
      v7[3] = &unk_279A00680;
      v8 = *(a1 + 32);
      [v4 setState:6 animated:v5 withCompletion:v7];
    }

    else
    {
      v6 = v3[73];
      if (v6)
      {
        [v6 setState:5 animated:*(a1 + 48) completionHandler:*(a1 + 32)];
      }

      else
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_28(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && WeakRetained[64] == *(a1 + 56))
  {
    v5 = WeakRetained;
    if (a2)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    WeakRetained = v5;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_32;
    v15[3] = &unk_279A00810;
    objc_copyWeak(v17, (a1 + 40));
    v17[1] = *(a1 + 48);
    v18 = *(a1 + 56);
    v16 = *(a1 + 32);
    v4 = MEMORY[0x25F8AAFE0](v15);
    [v3 setColorMode:1 animated:*(a1 + 56)];
    v5 = v3[74];
    if (v5)
    {
      v6 = *(a1 + 56);
      v7 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_35;
      v13[3] = &unk_279A007C0;
      v8 = v14;
      objc_copyWeak(v14, (a1 + 40));
      v14[1] = *(a1 + 48);
      v13[4] = v4;
      [v5 setState:6 animated:v6 withCompletion:v13];
    }

    else
    {
      v9 = v3[73];
      if (!v9)
      {
        v4[2](v4);
        goto LABEL_8;
      }

      v10 = *(a1 + 56);
      v7 = v11;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_36;
      v11[3] = &unk_279A007C0;
      v8 = v12;
      objc_copyWeak(v12, (a1 + 40));
      v12[1] = *(a1 + 48);
      v11[4] = v4;
      [v9 setState:5 animated:v10 completionHandler:v11];
    }

    objc_destroyWeak(v8);
LABEL_8:

    objc_destroyWeak(v17);
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[576] |= 1u;
    [WeakRetained _updatePhoneLayoutWithTransitionIndex:*(a1 + 48) animated:*(a1 + 56)];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_33;
    v4[3] = &unk_279A00798;
    objc_copyWeak(v6, (a1 + 40));
    v6[1] = *(a1 + 48);
    v5 = *(a1 + 32);
    [v3 _executeAfterMinimumAnimationDurationForStateTransition:v4];

    objc_destroyWeak(v6);
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_33(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    *(WeakRetained + 576) |= 2u;
    [WeakRetained[75] setHighlighted:1 animated:1];
    [v3 _updatePhoneLayoutWithTransitionIndex:*(a1 + 48) animated:1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_34;
    v6[3] = &unk_279A003F0;
    objc_copyWeak(v7, (a1 + 40));
    v7[1] = *(a1 + 48);
    [v3 _executeAfterMinimumAnimationDurationForStateTransitionWithDelayRatio:v6 handler:0.9];
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v4, v5);
    objc_destroyWeak(v7);
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[64] == *(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained _updatePhoneWiggleIfNecessary];
    WeakRetained = v3;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_35(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_36(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 & 1) == 0 && WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_37(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 & 1) == 0 && WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 64) == *(a1 + 48))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_39;
    v4[3] = &unk_279A00810;
    objc_copyWeak(v6, (a1 + 40));
    v6[1] = *(a1 + 48);
    v7 = *(a1 + 56);
    v5 = *(a1 + 32);
    [v3 _executeAfterMinimumAnimationDurationForStateTransition:v4];

    objc_destroyWeak(v6);
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_39(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v3 = WeakRetained;
    [WeakRetained _updateCustomImageLayerOpacityAnimated:*(a1 + 56)];
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_40(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_41(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 & 1) == 0 && WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

void __62__PKGlyphView__performTransitionWithTransitionIndex_animated___block_invoke_42(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[64] == *(a1 + 48))
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)_updatePhoneLayoutWithTransitionIndex:(unint64_t)index animated:(BOOL)animated
{
  if (self->_transitionIndex == index)
  {
    v87 = v13;
    v88 = v12;
    v89 = v11;
    v90 = v10;
    v91 = v9;
    v92 = v8;
    v93 = v7;
    v94 = v6;
    v95 = v4;
    v96 = v5;
    animatedCopy = animated;
    contentLayer = [(LAUIPearlGlyphView *)self->_pearlView contentLayer];
    v17 = contentLayer;
    if (contentLayer)
    {
      contentLayer2 = contentLayer;
    }

    else
    {
      contentLayer2 = [(PKFingerprintGlyphView *)self->_fingerprintView contentLayer];
    }

    v19 = contentLayer2;

    [v19 bounds];
    v21 = v20;
    v83 = v22;
    v24 = v23;
    [(PKPhoneGlyphLayer *)self->_phoneLayer bounds];
    v26 = v25;
    v28 = v27;
    [(PKPhoneGlyphLayer *)self->_phoneLayer position];
    v30 = v29;
    v32 = v31;
    memset(&v86[1], 0, sizeof(CATransform3D));
    phoneLayer = self->_phoneLayer;
    if (phoneLayer)
    {
      [(PKPhoneGlyphLayer *)phoneLayer transform];
    }

    v34 = v24 * 0.75 / 0.675;
    v35 = v34 * self->_phoneAspectRatio;
    if (v35 != v26 || v34 != v28)
    {
      v81 = v21;
      v82 = v32;
      v37 = v30;
      v38 = *MEMORY[0x277CBF348];
      v39 = *(MEMORY[0x277CBF348] + 8);
      if (animatedCopy)
      {
        v40 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"bounds.size.width"];
        [v40 pkui_updateForAdditiveAnimationFromScalar:v26 toScalar:v35];
        v41 = [(PKPhoneGlyphLayer *)self->_phoneLayer pkui_addAdditiveAnimation:v40];
        [v40 duration];
        [(PKGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:?];
        v42 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"bounds.size.height"];

        [v42 pkui_updateForAdditiveAnimationFromScalar:v28 toScalar:v24 * 0.75 / 0.675];
        v43 = [(PKPhoneGlyphLayer *)self->_phoneLayer pkui_addAdditiveAnimation:v42];
        [v42 duration];
        [(PKGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:?];
      }

      [(PKPhoneGlyphLayer *)self->_phoneLayer setBounds:v38, v39, v35, v24 * 0.75 / 0.675];
      v30 = v37;
      v21 = v81;
      v32 = v82;
    }

    [(PKPhoneGlyphLayer *)self->_phoneLayer anchorPoint];
    layoutFlags = self->_layoutFlags;
    if (*&layoutFlags)
    {
      [(PKGlyphView *)self _phonePositionWhileShownWithRotationPercentage:((*&layoutFlags >> 1) & 1)];
      v48 = v47;
      v50 = v49;
    }

    else
    {
      v48 = (v83 - v35) * 0.5 + v21 + v44 * v35;
      v50 = v24 + v45 * v34;
    }

    if (v48 != v30 || v50 != v32)
    {
      if (animatedCopy)
      {
        animation = [MEMORY[0x277CD9E00] animation];
        v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v54 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
        [v54 setAdditive:1];
        if (*&self->_layoutFlags & 2) != 0 && (*&self->_layoutFlags)
        {
          LODWORD(v55) = 1058642330;
          LODWORD(v56) = *"ff&?";
          LODWORD(v57) = 1.0;
          v58 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v55 :0.0 :v56 :v57];
          [v54 setTimingFunction:v58];

          [v54 setDuration:1.3];
          [v54 duration];
          v60 = v59;
        }

        else
        {
          if (*&self->_layoutFlags)
          {
            v55 = 0.0;
            LODWORD(v56) = 0.25;
          }

          else
          {
            LODWORD(v55) = 0.75;
            LODWORD(v56) = 1.0;
          }

          LODWORD(v57) = 1.0;
          v61 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v55 :0.0 :v56 :v57];
          [v54 setTimingFunction:v61];

          v62 = 0.2;
          if (*&self->_layoutFlags)
          {
            v62 = 0.4;
          }

          [v54 setDuration:v62];
          [v54 duration];
          v64 = 0.9;
          if ((*&self->_layoutFlags & 1) == 0)
          {
            v64 = 0.75;
          }

          v60 = v63 * v64;
        }

        [v54 duration];
        [animation setDuration:?];
        [v53 addObject:v54];
        [v54 pkui_updateForAdditiveAnimationFromPoint:v30 toPoint:{v32, v48, v50}];
        if ((*&self->_layoutFlags & 1) == 0 && (self->_state & 0xFFFFFFFFFFFFFFFELL) == 0xA)
        {
          timingFunction = [v54 timingFunction];
          [(PKPhoneGlyphLayer *)self->_phoneLayer opacity];
          v67 = v66;
          v68 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];

          [v68 setAdditive:1];
          [v68 setDuration:0.1];
          [v68 setTimingFunction:timingFunction];
          [v68 setFillMode:*MEMORY[0x277CDA238]];
          [v53 addObject:v68];
          [v68 pkui_updateForAdditiveAnimationFromScalar:v67 toScalar:0.0 withLayerScalar:v67];

          v54 = v68;
        }

        [animation setAnimations:v53];
        v69 = [(PKPhoneGlyphLayer *)self->_phoneLayer pkui_addAdditiveAnimation:animation];
        [(PKGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:v60];
      }

      [(PKPhoneGlyphLayer *)self->_phoneLayer setPosition:v48, v50];
    }

    memset(v86, 0, 128);
    if ((*&self->_layoutFlags & 2) != 0)
    {
      [(PKGlyphView *)self _phoneTransformDeltaWhileShownFromRotationPercentage:0.0 toPercentage:1.0];
    }

    else
    {
      v70 = *(MEMORY[0x277CD9DE8] + 80);
      *&v86[0].m31 = *(MEMORY[0x277CD9DE8] + 64);
      *&v86[0].m33 = v70;
      v71 = *(MEMORY[0x277CD9DE8] + 112);
      *&v86[0].m41 = *(MEMORY[0x277CD9DE8] + 96);
      *&v86[0].m43 = v71;
      v72 = *(MEMORY[0x277CD9DE8] + 16);
      *&v86[0].m11 = *MEMORY[0x277CD9DE8];
      *&v86[0].m13 = v72;
      v73 = *(MEMORY[0x277CD9DE8] + 48);
      *&v86[0].m21 = *(MEMORY[0x277CD9DE8] + 32);
      *&v86[0].m23 = v73;
    }

    a = v86[0];
    b = v86[1];
    if (!CATransform3DEqualToTransform(&a, &b))
    {
      if (animatedCopy)
      {
        v74 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
        [v74 setAdditive:1];
        LODWORD(v75) = 1058642330;
        LODWORD(v76) = *"ff&?";
        LODWORD(v77) = 1.0;
        v78 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v75 :0.0 :v76 :v77];
        [v74 setTimingFunction:v78];

        [v74 setDuration:1.3];
        a = v86[1];
        b = v86[0];
        [v74 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&b];
        v79 = [(PKPhoneGlyphLayer *)self->_phoneLayer pkui_addAdditiveAnimation:v74];
        if (*&self->_layoutFlags)
        {
          [v74 duration];
          [(PKGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:?];
        }
      }

      v80 = self->_phoneLayer;
      a = v86[0];
      [(PKPhoneGlyphLayer *)v80 setTransform:&a];
    }
  }
}

- (void)_updatePhoneWiggleIfNecessary
{
  phoneWiggling = self->_phoneWiggling;
  v3 = self->_state == 9;
  if (self->_state == 9)
  {
    if (!self->_phoneWiggling)
    {
      self->_phoneWiggling = v3;
      [(PKGlyphView *)self _startPhoneWiggle];
    }
  }

  else if (self->_phoneWiggling)
  {
    self->_phoneWiggling = v3;
    [(PKGlyphView *)self _endPhoneWiggle];
  }
}

- (void)_startPhoneWiggle
{
  if (!self->_phoneWiggleAnimationKey)
  {
    [(PKPhoneGlyphLayer *)self->_phoneLayer _startPhoneWiggle];
    animation = [MEMORY[0x277CD9E00] animation];
    [animation setDuration:2.6];
    LODWORD(v4) = 2139095040;
    [animation setRepeatCount:v4];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    v6 = *(MEMORY[0x277CD9DE8] + 80);
    v21[4] = *(MEMORY[0x277CD9DE8] + 64);
    v21[5] = v6;
    v7 = *(MEMORY[0x277CD9DE8] + 112);
    v21[6] = *(MEMORY[0x277CD9DE8] + 96);
    v21[7] = v7;
    v8 = *(MEMORY[0x277CD9DE8] + 16);
    v21[0] = *MEMORY[0x277CD9DE8];
    v21[1] = v8;
    v9 = *(MEMORY[0x277CD9DE8] + 48);
    v21[2] = *(MEMORY[0x277CD9DE8] + 32);
    v21[3] = v9;
    v10 = [MEMORY[0x277CCAE60] valueWithCATransform3D:v21];
    v11 = MEMORY[0x277CCAE60];
    [(PKGlyphView *)self _phoneTransformDeltaWhileShownFromRotationPercentage:1.0 toPercentage:0.35];
    v12 = [v11 valueWithCATransform3D:v21];
    v13 = __32__PKGlyphView__startPhoneWiggle__block_invoke(v12, @"transform", v10, v12);

    if (v13)
    {
      [v5 addObject:v13];
    }

    v14 = [MEMORY[0x277CCAE60] valueWithPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    v15 = MEMORY[0x277CCAE60];
    [(PKGlyphView *)self _phonePositionDeltaWhileShownFromRotationPercentage:1.0 toPercentage:0.35];
    v16 = [v15 valueWithPoint:?];
    v17 = __32__PKGlyphView__startPhoneWiggle__block_invoke(v16, @"position", v14, v16);

    if (v17)
    {
      [v5 addObject:v17];
    }

    [animation setAnimations:v5];
    v18 = [(PKPhoneGlyphLayer *)self->_phoneLayer pkui_addAdditiveAnimation:animation];
    v19 = [v18 copy];
    phoneWiggleAnimationKey = self->_phoneWiggleAnimationKey;
    self->_phoneWiggleAnimationKey = v19;
  }
}

id __32__PKGlyphView__startPhoneWiggle__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CD9EC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 animationWithKeyPath:a2];
  [v9 setAdditive:1];
  [v9 setKeyTimes:&unk_286FD1388];
  v23[0] = v8;
  v23[1] = v7;
  v23[2] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  [v9 setValues:v10];

  LODWORD(v11) = 0.75;
  LODWORD(v12) = 1.0;
  LODWORD(v13) = *"ff&?";
  v14 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v11 :0.0 :v13 :v12];
  LODWORD(v15) = 1058642330;
  LODWORD(v16) = 1.0;
  LODWORD(v17) = *"ff&?";
  v18 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v15 :0.0 :v17 :{v16, v14}];
  v22[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  [v9 setTimingFunctions:v19];
  [v9 setDuration:2.6];
  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_endPhoneWiggle
{
  if (self->_phoneWiggleAnimationKey)
  {
    [(PKPhoneGlyphLayer *)self->_phoneLayer _endPhoneWiggle];
    v3 = self->_phoneWiggleAnimationKey;
    v4 = [(PKPhoneGlyphLayer *)self->_phoneLayer animationForKey:v3];
    phoneWiggleAnimationKey = self->_phoneWiggleAnimationKey;
    self->_phoneWiggleAnimationKey = 0;

    [(PKPhoneGlyphLayer *)self->_phoneLayer pkui_elapsedDurationForAnimationWithKey:v3];
    if (v6 <= 0.0)
    {
      [(PKPhoneGlyphLayer *)self->_phoneLayer removeAnimationForKey:v3];
    }

    else
    {
      v7 = v6;
      [v4 duration];
      if (!v3)
      {
LABEL_7:

        return;
      }

      v9 = ((v8 - fmod(v7, v8)) * 1000000000.0);
      objc_initWeak(&location, self);
      v10 = dispatch_time(0, v9);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__PKGlyphView__endPhoneWiggle__block_invoke;
      block[3] = &unk_2799FFAF8;
      objc_copyWeak(&v13, &location);
      v12 = v3;
      v3 = v3;
      dispatch_after(v10, MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    goto LABEL_7;
  }
}

void __30__PKGlyphView__endPhoneWiggle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[75] removeAnimationForKey:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_updateUserIntentLayoutAnimated:(BOOL)animated
{
  userIntentLayer = self->_userIntentLayer;
  if (userIntentLayer)
  {
    [(CALayer *)userIntentLayer bounds];
    v7 = v6;
    v9 = v8;
    rootLayer = [(PKMicaLayer *)self->_userIntentDeviceLayer rootLayer];
    [rootLayer bounds];
    v12 = v11;
    v14 = v13;

    rootLayer2 = [(PKMicaLayer *)self->_userIntentArrowLayer rootLayer];
    [rootLayer2 bounds];
    v43 = v16;
    v18 = v17;

    v19 = *MEMORY[0x277CBF348];
    v20 = *(MEMORY[0x277CBF348] + 8);
    if (self->_isPad)
    {
      v21 = v14;
      v22 = v7 * 0.697674419 / 0.697674419;
      v23 = v22 * (v21 / v12);
    }

    else
    {
      v23 = v9 * 0.857142857 / 0.612359551;
      v22 = v23 * (v12 / v14);
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __47__PKGlyphView__updateUserIntentLayoutAnimated___block_invoke;
    v46[3] = &unk_279A00838;
    animatedCopy = animated;
    v46[4] = self;
    v24 = MEMORY[0x25F8AAFE0](v46);
    (v24)[2](v24, self->_userIntentDeviceLayer, v19, v20, v22, v23);
    (v24)[2](v24, self->_userIntentArrowLayer, v19, v20, v9 * 0.253968254 * (v43 / v18), v9 * 0.253968254);
    isPad = self->_isPad;
    v26 = 0.202380952;
    if (self->_isPad)
    {
      v26 = 0.802325581;
    }

    v27 = v7 * v26;
    v28 = 0.142857143;
    if (self->_isPad)
    {
      v28 = 0.511627907;
    }

    v29 = v9 * v28;
    v30 = 0.5;
    v31 = v7 + v22 * 0.5;
    if (self->_isPad)
    {
      v32 = v29;
    }

    else
    {
      v32 = v9 * 1.07936508;
    }

    if (!self->_isPad)
    {
      v30 = 0.615079365;
    }

    v33 = v7 * v30;
    if (self->_isPad)
    {
      v34 = v29 + v9 * 0.0465116279;
    }

    else
    {
      v34 = v9 * 0.492063492;
    }

    if (self->_isPad)
    {
      v35 = v7 * v30;
    }

    else
    {
      v35 = v7 * 1.17460317;
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __47__PKGlyphView__updateUserIntentLayoutAnimated___block_invoke_2;
    v44[3] = &unk_279A00860;
    if (!isPad)
    {
      v9 = v9 * 0.492063492;
    }

    animatedCopy2 = animated;
    v44[4] = self;
    v36 = MEMORY[0x25F8AAFE0](v44);
    v39 = v36;
    if ((*&self->_layoutFlags & 4) != 0)
    {
      v38.n128_f64[0] = v29;
    }

    else
    {
      v38.n128_f64[0] = v32;
    }

    if ((*&self->_layoutFlags & 4) == 0 && isPad)
    {
      v37.n128_f64[0] = v31;
    }

    else
    {
      v37.n128_f64[0] = v27;
    }

    v40 = (v36 + 16);
    (*(v36 + 16))(v36, self->_userIntentDeviceLayer, v37, v38);
    if ((*&self->_layoutFlags & 8) != 0)
    {
      v42.n128_f64[0] = v34;
    }

    else
    {
      v42.n128_f64[0] = v9;
    }

    if ((*&self->_layoutFlags & 8) != 0)
    {
      v41.n128_f64[0] = v33;
    }

    else
    {
      v41.n128_f64[0] = v35;
    }

    (*v40)(v39, self->_userIntentArrowLayer, v41, v42);
  }
}

void __47__PKGlyphView__updateUserIntentLayoutAnimated___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v22 = a2;
  [v22 bounds];
  if (a5 != v11 || a6 != v12)
  {
    if (*(a1 + 40) == 1)
    {
      v14 = v11;
      v15 = v12;
      v16 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"bounds.size.width"];
      [v16 pkui_updateForAdditiveAnimationFromScalar:v14 toScalar:a5];
      v17 = [v22 pkui_addAdditiveAnimation:v16];
      v18 = *(a1 + 32);
      [v16 duration];
      [v18 _updateLastAnimationTimeWithAnimationOfDuration:?];
      v19 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"bounds.size.height"];

      [v19 pkui_updateForAdditiveAnimationFromScalar:v15 toScalar:a6];
      v20 = [v22 pkui_addAdditiveAnimation:v19];
      v21 = *(a1 + 32);
      [v19 duration];
      [v21 _updateLastAnimationTimeWithAnimationOfDuration:?];
    }

    [v22 setBounds:{a3, a4, a5, a6}];
  }
}

void __47__PKGlyphView__updateUserIntentLayoutAnimated___block_invoke_2(uint64_t a1, void *a2, double a3, double a4)
{
  v15 = a2;
  [v15 position];
  if (a3 != v7 || a4 != v8)
  {
    if (*(a1 + 40) == 1)
    {
      v10 = v7;
      v11 = v8;
      v12 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
      [v12 setAdditive:1];
      [v12 setMass:2.0];
      [v12 setStiffness:300.0];
      [v12 setDamping:400.0];
      [v12 durationForEpsilon:0.001];
      [v12 setDuration:?];
      [v12 pkui_updateForAdditiveAnimationFromPoint:v10 toPoint:{v11, a3, a4}];
      v13 = [v15 pkui_addAdditiveAnimation:v12];
      v14 = *(a1 + 32);
      [v12 duration];
      [v14 _updateLastAnimationTimeWithAnimationOfDuration:?];
    }

    [v15 setPosition:{a3, a4}];
  }
}

- (void)_updateUserIntentLayerRotation
{
  userIntentLayer = self->_userIntentLayer;
  if (userIntentLayer)
  {
    userIntentEdge = self->_userIntentEdge;
    v4 = 0.0;
    if (self->_isPad)
    {
      if (userIntentEdge < 3)
      {
        v5 = &unk_25E0D6130;
LABEL_7:
        v4 = v5[userIntentEdge];
      }
    }

    else if (userIntentEdge < 4)
    {
      v5 = &unk_25E0D6148;
      goto LABEL_7;
    }

    CATransform3DMakeRotation(&v6, v4, 0.0, 0.0, 1.0);
    [(CALayer *)userIntentLayer setTransform:&v6];
  }
}

- (void)_updateCustomImageLayerOpacityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CALayer *)self->_customImageLayer opacity];
  state = self->_state;
  v7 = v6;
  if (state == 10)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (v7 != v8)
  {
    if (animatedCopy)
    {
      v9 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"opacity"];
      [v9 pkui_updateForAdditiveAnimationFromScalar:v7 toScalar:v8];
      v10 = [(CALayer *)self->_customImageLayer pkui_addAdditiveAnimation:v9];
      [v9 duration];
      [(PKGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:?];
    }

    customImageLayer = self->_customImageLayer;
    v12 = 0.0;
    if (state == 10)
    {
      *&v12 = 1.0;
    }

    [(CALayer *)customImageLayer setOpacity:v12];
  }
}

void __60__PKGlyphView__updateCheckViewStateAnimated_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

- (void)_setRecognizedIfNecessaryWithTransitionIndex:(unint64_t)index completion:(id)completion
{
  completionCopy = completion;
  if (self->_transitionIndex == index)
  {
    objc_initWeak(&location, self);
    pearlView = self->_pearlView;
    if (pearlView)
    {
      if (([(LAUIPearlGlyphView *)pearlView state]- 1) <= 3)
      {
        v8 = self->_pearlView;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __71__PKGlyphView__setRecognizedIfNecessaryWithTransitionIndex_completion___block_invoke;
        v13[3] = &unk_279A00888;
        v14 = completionCopy;
        objc_copyWeak(v15, &location);
        v15[1] = index;
        [(LAUIPearlGlyphView *)v8 setState:6 animated:1 withCompletion:v13];
        objc_destroyWeak(v15);

LABEL_11:
        objc_destroyWeak(&location);
        goto LABEL_12;
      }

      if (!completionCopy)
      {
        goto LABEL_11;
      }
    }

    else
    {
      fingerprintView = self->_fingerprintView;
      if (fingerprintView)
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __71__PKGlyphView__setRecognizedIfNecessaryWithTransitionIndex_completion___block_invoke_2;
        v10[3] = &unk_279A007C0;
        objc_copyWeak(v12, &location);
        v11 = completionCopy;
        v12[1] = index;
        [(PKFingerprintGlyphView *)fingerprintView setRecognizedIfNecessaryWithCompletion:v10];

        objc_destroyWeak(v12);
        goto LABEL_11;
      }

      if (!completionCopy)
      {
        goto LABEL_11;
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
    goto LABEL_11;
  }

LABEL_12:
}

void __71__PKGlyphView__setRecognizedIfNecessaryWithTransitionIndex_completion___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = 1;
    if (a2 && WeakRetained)
    {
      v5 = WeakRetained[64] != *(a1 + 48);
    }

    v6 = WeakRetained;
    (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
  }
}

uint64_t __71__PKGlyphView__setRecognizedIfNecessaryWithTransitionIndex_completion___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 1;
    if ((a2 & 1) == 0 && WeakRetained)
    {
      v6 = WeakRetained[64] != *(a1 + 48);
    }

    (*(v5 + 16))(v5, v6);
  }

  return MEMORY[0x2821F9730]();
}

- (void)_applyEffectiveHighlightColorsToLayersAnimated:(BOOL)animated
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PKGlyphView__applyEffectiveHighlightColorsToLayersAnimated___block_invoke;
  v7[3] = &unk_279A008D8;
  animatedCopy = animated;
  v7[4] = self;
  v4 = MEMORY[0x25F8AAFE0](v7, a2);
  (v4)[2](v4, self->_phoneLayer, self->_primaryHighlightColor);
  intentPrimaryHighlightColor = self->_intentPrimaryHighlightColor;
  if (!intentPrimaryHighlightColor)
  {
    intentPrimaryHighlightColor = self->_primaryHighlightColor;
  }

  (v4)[2](v4, self->_userIntentArrowLayer, intentPrimaryHighlightColor);
  primaryHighlightColor = self->_intentPrimaryHighlightColor;
  if (!primaryHighlightColor)
  {
    primaryHighlightColor = self->_primaryHighlightColor;
  }

  (v4)[2](v4, self->_userIntentDeviceLayer, primaryHighlightColor);
}

void __62__PKGlyphView__applyEffectiveHighlightColorsToLayersAnimated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v6 publishedColorLayers];
    v8 = [v6 publishedColorShapeLayers];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__PKGlyphView__applyEffectiveHighlightColorsToLayersAnimated___block_invoke_2;
    v12[3] = &unk_279A008B0;
    v15 = *(a1 + 40);
    v13 = v7;
    v14 = v8;
    v9 = v8;
    v10 = v7;
    v11 = MEMORY[0x25F8AAFE0](v12);
    (v11)[2](v11, v5, @"primary_highlight", 15);
    (v11)[2](v11, v5, @"primary-border/primary_highlight-background", 1);

    (v11)[2](v11, *(*(a1 + 32) + 688), @"secondary_highlight", 15);
  }
}

void __62__PKGlyphView__applyEffectiveHighlightColorsToLayersAnimated___block_invoke_2(uint64_t a1, void *a2, void *a3, char a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        LayerApplyColor(*(*(&v24 + 1) + 8 * v13++), v7, a4, *(a1 + 48));
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  v14 = [*(a1 + 40) objectForKeyedSubscript:v8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        ShapeLayerApplyColor(*(*(&v20 + 1) + 8 * v18++), v7, a4, *(a1 + 48));
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_applyEffectivePrimaryColorToLayersAnimated:(BOOL)animated
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[2] = __59__PKGlyphView__applyEffectivePrimaryColorToLayersAnimated___block_invoke;
  v8[3] = &unk_279A00928;
  v8[4] = self;
  animatedCopy = animated;
  v3 = MEMORY[0x277D75C80];
  selfCopy = self;
  currentTraitCollection = [v3 currentTraitCollection];
  v6 = MEMORY[0x277D75C80];
  traitCollection = [(PKGlyphView *)selfCopy traitCollection];

  [v6 setCurrentTraitCollection:traitCollection];
  __59__PKGlyphView__applyEffectivePrimaryColorToLayersAnimated___block_invoke(v8);
  [MEMORY[0x277D75C80] setCurrentTraitCollection:currentTraitCollection];
}

void __59__PKGlyphView__applyEffectivePrimaryColorToLayersAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 592) setFinishedColor:*(*(a1 + 32) + 712) animated:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 712) CGColor];
  [*(*(a1 + 32) + 616) setColor:v2 animated:*(a1 + 40)];
  [*(*(a1 + 32) + 600) setPrimaryColor:v2 animated:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__PKGlyphView__applyEffectivePrimaryColorToLayersAnimated___block_invoke_2;
  v4[3] = &unk_279A00900;
  v5 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v3 = MEMORY[0x25F8AAFE0](v4);
  v3[2](v3, *(*(a1 + 32) + 600));
  v3[2](v3, *(*(a1 + 32) + 632));
  v3[2](v3, *(*(a1 + 32) + 640));
}

void __59__PKGlyphView__applyEffectivePrimaryColorToLayersAnimated___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 publishedColorLayers];
    v5 = [v3 publishedColorShapeLayers];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__PKGlyphView__applyEffectivePrimaryColorToLayersAnimated___block_invoke_3;
    v9[3] = &unk_279A008B0;
    v12 = *(a1 + 40);
    v10 = v4;
    v11 = v5;
    v6 = v5;
    v7 = v4;
    v8 = MEMORY[0x25F8AAFE0](v9);
    (v8)[2](v8, *(*(a1 + 32) + 712), @"primary", 15);
    (v8)[2](v8, *(*(a1 + 32) + 712), @"primary-border/primary_highlight-background", 2);
  }
}

void __59__PKGlyphView__applyEffectivePrimaryColorToLayersAnimated___block_invoke_3(uint64_t a1, void *a2, void *a3, char a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        LayerApplyColor(*(*(&v24 + 1) + 8 * v13++), v7, a4, *(a1 + 48));
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  v14 = [*(a1 + 40) objectForKeyedSubscript:v8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        ShapeLayerApplyColor(*(*(&v20 + 1) + 8 * v18++), v7, a4, *(a1 + 48));
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_primaryColorForStyle:(int64_t)style mode:(int64_t)mode
{
  v5 = 0;
  pearlView = self->_pearlView;
  if (style > 3)
  {
    if (style <= 5)
    {
      if (style != 4)
      {
        goto LABEL_20;
      }

      v13 = mode == 3;
      if (mode >= 3)
      {
        goto LABEL_26;
      }

      v7 = MEMORY[0x277D75348];
      v8 = 1.0;
      v10 = 1.0;
      v11 = 1.0;
LABEL_45:
      v9 = 1.0;
      goto LABEL_46;
    }

    if (style == 6)
    {
      if (pearlView)
      {
        if (mode >= 3)
        {
          if (mode == 3)
          {
            goto LABEL_50;
          }

          if (mode != 4)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v5 = 0;
        if (mode > 2)
        {
          if (mode == 3)
          {
            goto LABEL_50;
          }

          if (mode != 4)
          {
            goto LABEL_52;
          }
        }

        else if ((mode - 1) >= 2)
        {
          goto LABEL_39;
        }
      }

      labelColor = [MEMORY[0x277D75348] labelColor];
      goto LABEL_51;
    }

    if (style != 7)
    {
      goto LABEL_52;
    }

    if (mode >= 3)
    {
      if (mode == 3)
      {
        v7 = MEMORY[0x277D75348];
        v8 = 0.9451;
        v10 = 0.3686;
        v11 = 0.3098;
        goto LABEL_45;
      }

      if (mode != 4)
      {
        goto LABEL_33;
      }
    }

LABEL_20:
    labelColor = [MEMORY[0x277D75348] systemWhiteColor];
LABEL_51:
    v5 = labelColor;
    goto LABEL_52;
  }

  if (style > 1)
  {
    if (style == 2)
    {
      goto LABEL_22;
    }

    v7 = MEMORY[0x277D75348];
    v8 = 0.744;
    v9 = 1.0;
    v10 = 0.744;
    v11 = 0.744;
LABEL_46:
    labelColor = [v7 colorWithRed:v8 green:v10 blue:v11 alpha:v9];
    goto LABEL_51;
  }

  if (!style)
  {
    if (pearlView)
    {
      goto LABEL_22;
    }

    v5 = 0;
    if (mode > 2)
    {
      goto LABEL_41;
    }

    if ((mode - 1) < 2)
    {
      goto LABEL_28;
    }

LABEL_39:
    if (mode)
    {
      goto LABEL_52;
    }

    goto LABEL_40;
  }

  if (style != 1)
  {
    goto LABEL_52;
  }

  if (pearlView)
  {
LABEL_22:
    v13 = mode == 3;
    if (mode >= 3)
    {
LABEL_26:
      if (!v13)
      {
        if (mode == 4)
        {
          goto LABEL_28;
        }

LABEL_33:
        v5 = 0;
        goto LABEL_52;
      }

LABEL_50:
      labelColor = [MEMORY[0x277D75348] systemRedColor];
      goto LABEL_51;
    }

LABEL_28:
    labelColor = [MEMORY[0x277D75348] systemBlueColor];
    goto LABEL_51;
  }

  v5 = 0;
  if (mode <= 2)
  {
    if (mode >= 2)
    {
      if (mode != 2)
      {
        goto LABEL_52;
      }

      goto LABEL_28;
    }

LABEL_40:
    labelColor = [MEMORY[0x277D75348] systemPinkColor];
    goto LABEL_51;
  }

LABEL_41:
  if (mode == 3)
  {
    goto LABEL_50;
  }

  if (mode == 4)
  {
    goto LABEL_28;
  }

LABEL_52:
  v14 = [(PKGlyphView *)self _accessibilityHigherContrastTintColorForColor:v5];

  return v14;
}

- (id)_secondaryColorForStyle:(int64_t)style mode:(int64_t)mode
{
  v4 = 0;
  if (style <= 3)
  {
    if ((style - 1) >= 2)
    {
      if (style)
      {
        if (style != 3)
        {
          goto LABEL_16;
        }

        v5 = MEMORY[0x277D75348];
        v6 = 0.468;
        v7 = 1.0;
        v8 = 0.468;
        v9 = 0.468;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (style > 5)
  {
    if (style != 7)
    {
      if (style != 6)
      {
        goto LABEL_16;
      }

LABEL_11:
      systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
      goto LABEL_15;
    }

LABEL_12:
    v11 = [PKGlyphView _primaryColorForStyle:"_primaryColorForStyle:mode:" mode:?];
    v4 = [v11 colorWithAlphaComponent:0.5];

    goto LABEL_16;
  }

  if (style == 4)
  {
    v5 = MEMORY[0x277D75348];
    v6 = 1.0;
    v8 = 1.0;
    v9 = 1.0;
    v7 = 0.5;
LABEL_14:
    systemGray3Color = [v5 colorWithRed:v6 green:v8 blue:v9 alpha:v7];
    goto LABEL_15;
  }

  systemGray3Color = [MEMORY[0x277D75348] systemWhiteColor];
LABEL_15:
  v4 = systemGray3Color;
LABEL_16:

  return v4;
}

- (void)setCustomImage:(CGImage *)image withAlignmentEdgeInsets:(UIEdgeInsets)insets
{
  self->_customImageAlignmentEdgeInsets = insets;
  customImage = self->_customImage;
  if (customImage == image)
  {

    [(PKGlyphView *)self setNeedsLayout];
  }

  else
  {
    v7 = customImage != 0;
    if (customImage)
    {
      CFRelease(self->_customImage);
      self->_customImage = 0;
    }

    if (image)
    {
      CFRetain(image);
    }

    self->_customImage = image;
    v8 = self->_customImageLayer;
    [(CALayer *)v8 opacity];
    v10 = v9;
    if ((v9 <= 0.0 || -[CALayer isHidden](v8, "isHidden")) && ((-[CALayer animationKeys](v8, "animationKeys"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, customImage) ? (v13 = v12 == 0) : (v13 = 1), v13 ? (v7 = 0) : (v7 = 1), !v12))
    {
      v7 = 0;
    }

    else
    {
      LODWORD(v12) = self->_customImage != 0;
    }

    createCustomImageLayer = [(PKGlyphView *)self createCustomImageLayer];
    customImageLayer = self->_customImageLayer;
    self->_customImageLayer = createCustomImageLayer;

    if (v7)
    {
      v16 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"opacity"];
      [v16 pkui_updateForAdditiveAnimationFromScalar:v10 toScalar:0.0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __54__PKGlyphView_setCustomImage_withAlignmentEdgeInsets___block_invoke;
      v23[3] = &unk_279A00950;
      v17 = v8;
      v24 = v17;
      [v16 pkui_setCompletionHandler:v23];
      v18 = [(CALayer *)v17 pkui_addAdditiveAnimation:v16];
      [(CALayer *)v17 setOpacity:0.0];
    }

    else
    {
      [(CALayer *)v8 removeFromSuperlayer];
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__PKGlyphView_setCustomImage_withAlignmentEdgeInsets___block_invoke_2;
    v22[3] = &unk_2799FFC10;
    v22[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v22];
    if (v12)
    {
      v20 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"opacity"];
      [v20 pkui_updateForAdditiveAnimationFromScalar:0.0 toScalar:v10];
      v21 = [(CALayer *)self->_customImageLayer pkui_addAdditiveAnimation:v20];
    }

    *&v19 = v10;
    [(CALayer *)self->_customImageLayer setOpacity:v19];
  }
}

uint64_t __54__PKGlyphView_setCustomImage_withAlignmentEdgeInsets___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[90];
  if (v3)
  {
    v4 = v2[82];
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
    Width = CGImageGetWidth(v3);
    [v4 setBounds:{v5, v6, Width, CGImageGetHeight(*(*(a1 + 32) + 720))}];
    [*(*(a1 + 32) + 656) setContents:*(*(a1 + 32) + 720)];
    v2 = *(a1 + 32);
  }

  v8 = v2[74];
  if (!v8)
  {
    v8 = v2[73];
  }

  [v8 setNeedsLayout];
  v9 = *(a1 + 32);
  v10 = *(v9 + 592);
  if (!v10)
  {
    v10 = *(v9 + 584);
  }

  return [v10 layoutIfNeeded];
}

- (id)createCustomImageLayer
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  v4 = PKLayerNullActions();
  [v3 setActions:v4];

  [v3 setOpacity:0.0];
  layer = [(PKGlyphView *)self layer];
  [layer contentsScale];
  [v3 setContentsScale:?];

  customImageLayer = self->_customImageLayer;
  if (customImageLayer)
  {
    superlayer = [(CALayer *)customImageLayer superlayer];
    [superlayer insertSublayer:v3 above:self->_customImageLayer];
  }

  return v3;
}

- (void)setShowQRCode:(BOOL)code
{
  if (self->_showQRCode == !code)
  {
    self->_showQRCode = code;
    [(PKPhoneGlyphLayer *)self->_phoneLayer setShowQRCode:?];
  }
}

- (CATransform3D)_phoneTransformDeltaWhileShownFromRotationPercentage:(SEL)percentage toPercentage:(double)toPercentage
{
  v6 = fmin(fmax(toPercentage, 0.0), 1.0);
  v7 = fmin(fmax(a5, 0.0), 1.0);
  v8 = (1.0 - v7 + v7 * 0.79) / (1.0 - v6 + v6 * 0.79);
  v9 = MEMORY[0x277CD9DE8];
  v10 = *(MEMORY[0x277CD9DE8] + 64);
  v11 = *(MEMORY[0x277CD9DE8] + 80);
  *&retstr->m31 = v10;
  *&retstr->m33 = v11;
  v12 = v9[6];
  v13 = v9[7];
  v14 = v6 * 0.855211333;
  *&retstr->m41 = v12;
  *&retstr->m43 = v13;
  v15 = *v9;
  v16 = v9[1];
  *&retstr->m11 = *v9;
  *&retstr->m13 = v16;
  v17 = v9[2];
  v18 = v9[3];
  *&retstr->m21 = v17;
  *&retstr->m23 = v18;
  if (v14 != 0.0)
  {
    *&v38.m31 = v10;
    *&v38.m33 = v11;
    *&v38.m41 = v12;
    *&v38.m43 = v13;
    *&v38.m11 = v15;
    *&v38.m13 = v16;
    *&v38.m21 = v17;
    *&v38.m23 = v18;
    self = CATransform3DRotate(retstr, &v38, -v14, 1.0, 0.0, 0.0);
  }

  v19 = v7 * 0.855211333;
  if (v8 != 0.0 && v8 != 1.0)
  {
    v21 = *&retstr->m33;
    *&v37.m31 = *&retstr->m31;
    *&v37.m33 = v21;
    v22 = *&retstr->m43;
    *&v37.m41 = *&retstr->m41;
    *&v37.m43 = v22;
    v23 = *&retstr->m13;
    *&v37.m11 = *&retstr->m11;
    *&v37.m13 = v23;
    v24 = *&retstr->m23;
    *&v37.m21 = *&retstr->m21;
    *&v37.m23 = v24;
    self = CATransform3DScale(&v38, &v37, v8, v8, 1.0);
    v25 = *&v38.m33;
    *&retstr->m31 = *&v38.m31;
    *&retstr->m33 = v25;
    v26 = *&v38.m43;
    *&retstr->m41 = *&v38.m41;
    *&retstr->m43 = v26;
    v27 = *&v38.m13;
    *&retstr->m11 = *&v38.m11;
    *&retstr->m13 = v27;
    v28 = *&v38.m23;
    *&retstr->m21 = *&v38.m21;
    *&retstr->m23 = v28;
  }

  if (v19 != 0.0)
  {
    v29 = *&retstr->m33;
    *&v37.m31 = *&retstr->m31;
    *&v37.m33 = v29;
    v30 = *&retstr->m43;
    *&v37.m41 = *&retstr->m41;
    *&v37.m43 = v30;
    v31 = *&retstr->m13;
    *&v37.m11 = *&retstr->m11;
    *&v37.m13 = v31;
    v32 = *&retstr->m23;
    *&v37.m21 = *&retstr->m21;
    *&v37.m23 = v32;
    self = CATransform3DRotate(&v38, &v37, v19, 1.0, 0.0, 0.0);
    v33 = *&v38.m33;
    *&retstr->m31 = *&v38.m31;
    *&retstr->m33 = v33;
    v34 = *&v38.m43;
    *&retstr->m41 = *&v38.m41;
    *&retstr->m43 = v34;
    v35 = *&v38.m13;
    *&retstr->m11 = *&v38.m11;
    *&retstr->m13 = v35;
    v36 = *&v38.m23;
    *&retstr->m21 = *&v38.m21;
    *&retstr->m23 = v36;
  }

  return self;
}

- (CGPoint)_phonePositionWhileShownWithRotationPercentage:(double)percentage
{
  contentLayer = [(LAUIPearlGlyphView *)self->_pearlView contentLayer];
  v6 = contentLayer;
  if (contentLayer)
  {
    contentLayer2 = contentLayer;
  }

  else
  {
    contentLayer2 = [(PKFingerprintGlyphView *)self->_fingerprintView contentLayer];
  }

  v8 = contentLayer2;
  v9 = fmin(fmax(percentage, 0.0), 1.0);

  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(PKPhoneGlyphLayer *)self->_phoneLayer bounds];
  v19 = v18;
  v21 = v20;
  [(PKPhoneGlyphLayer *)self->_phoneLayer anchorPoint];
  v24 = v11 + v23 * v19 + (v15 - v19) * 0.5;
  v25 = v13 + (1.0 - v9) * (v17 * 0.25 + v22 * v21) + v9 * (v17 + v17 * -0.024 - v21 + v22 * v21);

  v26 = v24;
  v27 = v25;
  result.y = v27;
  result.x = v26;
  return result;
}

- (CGPoint)_phonePositionDeltaWhileShownFromRotationPercentage:(double)percentage toPercentage:(double)toPercentage
{
  [(PKGlyphView *)self _phonePositionWhileShownWithRotationPercentage:percentage];
  v7 = v6;
  v9 = v8;
  [(PKGlyphView *)self _phonePositionWhileShownWithRotationPercentage:toPercentage];
  v11 = v10 - v7;
  v13 = v12 - v9;
  result.y = v13;
  result.x = v11;
  return result;
}

- (UIEdgeInsets)customImageAlignmentEdgeInsets
{
  top = self->_customImageAlignmentEdgeInsets.top;
  left = self->_customImageAlignmentEdgeInsets.left;
  bottom = self->_customImageAlignmentEdgeInsets.bottom;
  right = self->_customImageAlignmentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PKGlyphViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)bindSecureIndicatorProviderToAuthenticator:(id)authenticator
{
  authenticatorCopy = authenticator;
  authenticator = self->_authenticator;
  if (authenticator != authenticatorCopy)
  {
    v8 = authenticatorCopy;
    if (authenticator)
    {
      self->_authenticator = 0;
      authenticatorCopy2 = authenticator;

      [(PKAuthenticatorSecureIndicatorAuthenticator *)authenticatorCopy2 unregisterSecureIndicatorProvider:self];
    }

    objc_storeStrong(&self->_authenticator, authenticator);
    authenticatorCopy = v8;
    if (v8)
    {
      [(PKAuthenticatorSecureIndicatorAuthenticator *)v8 registerSecureIndicatorProvider:self];
      authenticatorCopy = v8;
    }
  }
}

- (void)consumer:(id)consumer ensureIndicatorWithCompletion:(id)completion
{
  consumerCopy = consumer;
  completionCopy = completion;
  if (consumerCopy)
  {
    if (self->_secureIndicatorVisible)
    {
      if (self->_secureIndicatorVisibilityAnimating)
      {
        if (completionCopy)
        {
          secureIndicatorVisibilityCompletions = self->_secureIndicatorVisibilityCompletions;
          if (!secureIndicatorVisibilityCompletions)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v9 = self->_secureIndicatorVisibilityCompletions;
            self->_secureIndicatorVisibilityCompletions = v8;

            secureIndicatorVisibilityCompletions = self->_secureIndicatorVisibilityCompletions;
          }

          v10 = MEMORY[0x25F8AAFE0](completionCopy);
          [(NSMutableArray *)secureIndicatorVisibilityCompletions addObject:v10];
        }
      }

      else if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)consumer:(id)consumer requestsState:(id)state
{
  consumerCopy = consumer;
  stateCopy = state;
  if (!consumerCopy)
  {
    __break(1u);
    return;
  }

  v7 = stateCopy;
  if ([(NSMutableArray *)self->_secureIndicatorConsumers indexOfObjectIdenticalTo:?]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    secureIndicatorConsumerStates = self->_secureIndicatorConsumerStates;
    if (v7)
    {
      if (!secureIndicatorConsumerStates)
      {
        pk_createWeakPointerPersonalityToStrongObjects = [MEMORY[0x277CCAB00] pk_createWeakPointerPersonalityToStrongObjects];
        v10 = self->_secureIndicatorConsumerStates;
        self->_secureIndicatorConsumerStates = pk_createWeakPointerPersonalityToStrongObjects;

        secureIndicatorConsumerStates = self->_secureIndicatorConsumerStates;
      }

      [(NSMapTable *)secureIndicatorConsumerStates setObject:v7 forKey:consumerCopy];
      glyphState = [v7 glyphState];
      if (glyphState == 4)
      {
        v12 = 441;
        goto LABEL_11;
      }

      if (glyphState == 3)
      {
        v12 = 440;
LABEL_11:
        *(&self->super.super.super.isa + v12) = 1;
      }
    }

    else
    {
      [(NSMapTable *)secureIndicatorConsumerStates removeObjectForKey:consumerCopy];
    }

    [(PKGlyphView *)self _updateSecureFaceIDState];
  }
}

- (void)registerConsumer:(id)consumer
{
  consumerCopy = consumer;
  if (consumerCopy)
  {
    v5 = consumerCopy;
    secureIndicatorConsumers = self->_secureIndicatorConsumers;
    v9 = v5;
    if (!secureIndicatorConsumers)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = self->_secureIndicatorConsumers;
      self->_secureIndicatorConsumers = v7;

      v5 = v9;
      secureIndicatorConsumers = self->_secureIndicatorConsumers;
    }

    if ([(NSMutableArray *)secureIndicatorConsumers indexOfObjectIdenticalTo:v5]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_secureIndicatorConsumers addObject:v9];
      [(PKGlyphView *)self _updateSecureFaceIDVisibility];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)unregisterConsumer:(id)consumer
{
  consumerCopy = consumer;
  if (consumerCopy)
  {
    v6 = consumerCopy;
    v5 = [(NSMutableArray *)self->_secureIndicatorConsumers indexOfObjectIdenticalTo:consumerCopy];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_secureIndicatorConsumers removeObjectAtIndex:v5];
      [(NSMapTable *)self->_secureIndicatorConsumerStates removeObjectForKey:v6];
      [(PKGlyphView *)self _updateSecureFaceIDVisibility];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)_updateSecureFaceIDVisibility
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_secureIndicatorConsumers count]!= 0;
  if (self->_secureIndicatorVisible == v3)
  {
LABEL_23:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  self->_secureIndicatorVisible = v3;
  v4 = self->_secureIndicatorAnimationIndex + 1;
  self->_secureIndicatorAnimationIndex = v4;
  self->_secureIndicatorVisibilityAnimating = 1;
  self->_secureIndicatorVisibilityAnimationDeferred = 0;
  if (self->_secureIndicatorVisible)
  {
    self->_secureIndicatorBecameVisibleAt = CFAbsoluteTimeGetCurrent();
    self->_outstandingMatch = 0;
    self->_outstandingFailure = 0;
    if (!self->_secureIndicatorVisibleTracker)
    {
      v5 = +[PKAuthenticator trackSecureIndicatorVisibility];
      secureIndicatorVisibleTracker = self->_secureIndicatorVisibleTracker;
      self->_secureIndicatorVisibleTracker = v5;
    }
  }

  if (!self->_secureIndicatorVisible)
  {
    v11 = self->_secureIndicatorVisibilityCompletions;
    secureIndicatorVisibilityCompletions = self->_secureIndicatorVisibilityCompletions;
    self->_secureIndicatorVisibilityCompletions = 0;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v11;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v22 + 1) + 8 * i) + 16))();
        }

        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    goto LABEL_17;
  }

  if (self->_secureFaceIDView)
  {
LABEL_17:
    if (self->_secureIndicatorAnimationIndex == v4)
    {
      if (self->_secureIndicatorVisible)
      {
        [(PKGlyphView *)self _animateSecureIndicatorVisibilityForIndex:v4];
        [(PKGlyphView *)self _updateSecureFaceIDState];
      }

      else
      {
        self->_secureIndicatorVisibilityAnimationDeferred = 1;
        [(PKGlyphView *)self _updateSecureFaceIDState];
        if (fmax(2.0 - fmin(fmax(CFAbsoluteTimeGetCurrent() - self->_secureIndicatorBecameVisibleAt, 0.0), 2.0), 0.0) > 0.0)
        {
          [(PKGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:?];
        }

        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __87__PKGlyphView_PKGlyphViewSecureIndicator_implementation___updateSecureFaceIDVisibility__block_invoke;
        v18[3] = &unk_279A00978;
        objc_copyWeak(&v19, &location);
        v20 = v4;
        [(PKGlyphView *)self _executeAfterMinimumAnimationDurationForStateTransition:v18];
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }
    }

    goto LABEL_23;
  }

  createSystemApertureConfiguration = [MEMORY[0x277D24218] createSystemApertureConfiguration];
  [createSystemApertureConfiguration setSecureVariantEnabled:1];
  [createSystemApertureConfiguration setSecureVariantType:1];
  [createSystemApertureConfiguration setInitialStyle:0];
  v8 = [objc_alloc(MEMORY[0x277D24220]) initWithConfiguration:createSystemApertureConfiguration];
  secureFaceIDView = self->_secureFaceIDView;
  self->_secureFaceIDView = v8;

  v10 = self->_secureFaceIDView;
  if (v10)
  {
    [(LAUIPearlGlyphView *)v10 setFaceVisibility:7 animated:0];
    [(LAUIPearlGlyphView *)self->_secureFaceIDView setShakeEnabled:0];
    [(LAUIPearlGlyphView *)self->_secureFaceIDView setInApplicationContext:1];
    [(LAUIPearlGlyphView *)self->_secureFaceIDView setState:7 animated:0];
    [(PKGlyphView *)self insertSubview:self->_secureFaceIDView aboveSubview:self->_pearlView];

    goto LABEL_17;
  }

  __break(1u);
}

void __87__PKGlyphView_PKGlyphViewSecureIndicator_implementation___updateSecureFaceIDVisibility__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[228] == *(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained _animateSecureIndicatorVisibilityForIndex:?];
    [v3 _updateSecureFaceIDState];
    WeakRetained = v3;
  }
}

- (void)_animateSecureIndicatorVisibilityForIndex:(unsigned __int16)index
{
  if (self->_secureIndicatorAnimationIndex == index && self->_secureIndicatorVisibilityAnimating)
  {
    self->_secureIndicatorVisibilityAnimationDeferred = 0;
    layer = [(LAUIPearlGlyphView *)self->_pearlView layer];
    presentationLayer = [layer presentationLayer];
    v7 = presentationLayer;
    if (presentationLayer)
    {
      v8 = presentationLayer;
    }

    else
    {
      v8 = layer;
    }

    v9 = v8;

    v10 = !self->_secureIndicatorVisible;
    v11 = [MEMORY[0x277D382C8] springAnimationWithKeyPath:@"opacity"];
    [v9 opacity];
    [v11 pkui_updateForAdditiveAnimationFromScalar:v12 toScalar:v10];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__PKGlyphView_PKGlyphViewSecureIndicator_implementation___animateSecureIndicatorVisibilityForIndex___block_invoke;
    v21[3] = &unk_279A009A0;
    v21[4] = self;
    *&v21[5] = v10;
    [MEMORY[0x277D75D18] performWithoutAnimation:v21];
    objc_initWeak(&location, self);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __100__PKGlyphView_PKGlyphViewSecureIndicator_implementation___animateSecureIndicatorVisibilityForIndex___block_invoke_2;
    v16 = &unk_279A009F0;
    objc_copyWeak(&v18, &location);
    indexCopy = index;
    selfCopy = self;
    [v11 pkui_setCompletionHandler:&v13];
    [v9 addAnimation:v11 forKey:{@"opacity", v13, v14, v15, v16}];
    [v11 duration];
    [(PKGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:?];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __100__PKGlyphView_PKGlyphViewSecureIndicator_implementation___animateSecureIndicatorVisibilityForIndex___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 228) == *(a1 + 48))
  {
    *(WeakRetained + 458) = 0;
    v4 = WeakRetained[59];
    v5 = v3[59];
    v3[59] = 0;

    if (*(v3 + 442) == 1)
    {
      [v3 _updateSecureFaceIDState];
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __100__PKGlyphView_PKGlyphViewSecureIndicator_implementation___animateSecureIndicatorVisibilityForIndex___block_invoke_3;
      v16[3] = &unk_279A009C8;
      objc_copyWeak(&v17, (a1 + 40));
      v18 = *(a1 + 48);
      v16[4] = *(a1 + 32);
      [v3 _executeAfterMinimumAnimationDurationForStateTransition:v16];
      objc_destroyWeak(&v17);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(v3 + 442);
          (*(*(*(&v12 + 1) + 8 * v9) + 16))(*(*(&v12 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __100__PKGlyphView_PKGlyphViewSecureIndicator_implementation___animateSecureIndicatorVisibilityForIndex___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(WeakRetained + 228) == *(a1 + 48) && (*(WeakRetained + 442) & 1) == 0)
  {
    v8 = WeakRetained;
    v3 = WeakRetained[53];
    v4 = v8[53];
    v8[53] = 0;

    [v3 removeFromSuperview];
    [v3 invalidate];
    if (v8[56])
    {
      v5 = MEMORY[0x25F8AAFE0](*(*(a1 + 32) + 448));
      v6 = *(a1 + 32);
      v7 = *(v6 + 448);
      *(v6 + 448) = 0;

      v5[2](v5);
    }

    WeakRetained = v8;
  }
}

- (void)_updateSecureFaceIDState
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_secureFaceIDView)
  {
    goto LABEL_36;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_secureIndicatorConsumers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_secureIndicatorConsumerStates objectForKey:*(*(&v16 + 1) + 8 * i), v16];
        if (v8)
        {
          v9 = v8;
          goto LABEL_12;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  if (self->_secureIndicatorVisible)
  {
    outstandingMatch = self->_outstandingMatch;
    if (self->_secureIndicatorVisibilityAnimating)
    {
      if (self->_outstandingMatch || self->_outstandingFailure)
      {
        v11 = 0;
        outstandingFailure = 0;
        v13 = 2;
        goto LABEL_32;
      }

LABEL_27:
      if (v9)
      {
        glyphState = [v9 glyphState];
        v11 = 0;
        outstandingFailure = 0;
        if (glyphState == 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = glyphState == 1;
        }
      }

      else
      {
        v11 = 0;
        outstandingFailure = 0;
        v13 = 0;
      }

      goto LABEL_32;
    }

    if (self->_outstandingMatch)
    {
      goto LABEL_23;
    }

    if (!self->_outstandingFailure)
    {
      goto LABEL_27;
    }

    v11 = 0;
    outstandingFailure = 1;
    v13 = 4;
  }

  else
  {
    if (self->_secureIndicatorVisibilityAnimationDeferred)
    {
      if (!self->_outstandingMatch)
      {
        v11 = 0;
        outstandingFailure = self->_outstandingFailure;
        if (self->_outstandingFailure)
        {
          v13 = 4;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_32;
      }

LABEL_23:
      outstandingFailure = 0;
      v11 = 1;
      v13 = 3;
      goto LABEL_32;
    }

    v11 = 0;
    outstandingFailure = 0;
    v13 = 7;
  }

LABEL_32:
  if ([(LAUIPearlGlyphView *)self->_secureFaceIDView state]!= v13)
  {
    [(LAUIPearlGlyphView *)self->_secureFaceIDView setState:v13 animated:1];
    if ((v11 | outstandingFailure) == 1)
    {
      [(PKGlyphView *)self _updateLastAnimationTimeWithAnimationOfDuration:0.25];
    }
  }

LABEL_36:
  v15 = *MEMORY[0x277D85DE8];
}

@end