@interface TUIKeyplaneView
+ (CGSize)keyplaneSizeForLayout:(id)layout screenTraits:(id)traits keyboardType:(int64_t)type;
+ (Class)selectorViewClassForKey:(id)key forRenderingContext:(id)context;
+ (id)dynamicKeyboardForName:(id)name size:(CGSize)size isLandscape:(BOOL)landscape;
+ (id)keyplaneViewForKeyboard:(id)keyboard size:(CGSize)size isLandscape:(BOOL)landscape displayKeyplane:(unint64_t)keyplane;
+ (id)keyplaneViewForLayout:(id)layout size:(CGSize)size isLandscape:(BOOL)landscape;
+ (id)updateDynamicKeyboard:(id)keyboard usingSize:(CGSize)size isLandscape:(BOOL)landscape;
+ (id)updateDynamicKeyplane:(id)keyplane usingSize:(CGSize)size isLandscape:(BOOL)landscape;
- (BOOL)_shouldAllowKey:(id)key;
- (BOOL)_shouldUseUnifiedKeyView:(id)view;
- (BOOL)_showDebugBackdrop;
- (BOOL)isInSizeTransition;
- (BOOL)isSplit;
- (BOOL)supportsSplit;
- (CGRect)updateFrameForKey:(id)key;
- (CGSize)idealKeySizeforLayoutType:(int64_t)type;
- (CGSize)leftSplitSize;
- (CGSize)preferredFloatingSize;
- (CGSize)preferredSize;
- (CGSize)rightSplitSize;
- (CGSize)sizeForDockedLayoutClass;
- (CGSize)sizeForFloatingLayoutClass;
- (CGSize)sizeForVisualState:(int64_t)state;
- (CGSize)sizeFromScreenTraitsAndClass;
- (CGSize)sizeFromScreenTraitsAndClassWithSplitHeight:(BOOL)height;
- (CGSize)splitSizeForRightSide:(BOOL)side;
- (CGSize)transitionFloatingSize;
- (CGSize)transitionFullSize;
- (CGSize)transitionMiddleSize;
- (CGSize)unsplitSize;
- (Class)preferredKeyViewClass;
- (NSString)description;
- (TUIKeyplaneView)initWithFrame:(CGRect)frame keyplane:(id)keyplane;
- (UIEdgeInsets)keycapInsets;
- (UIEdgeInsets)keyplaneInsets;
- (UIEdgeInsets)rowInsets;
- (UIEdgeInsets)standardKeyInsets;
- (UIKBRenderFactory)factory;
- (double)fullHeightForDockedKeyboard;
- (double)rowsVerticalSpacing;
- (double)totalSplitSizeForRow:(unint64_t)row;
- (id)cacheIdentifierForKey:(id)key withState:(int)state;
- (id)cachedVariantViewForTree:(id)tree state:(int)state;
- (id)currentKBLayoutInfo;
- (id)hitTestVariantKeyAtPoint:(CGPoint)point;
- (id)keyViewForKey:(id)key;
- (id)keyViewForTree:(id)tree;
- (id)keyplaneFromTree:(id)tree size:(CGSize)size controlKeyType:(int64_t)type;
- (id)keyplaneRenderConfig;
- (id)renderConfigForCurrentTraitCollection;
- (id)variantViewForKey:(id)key cacheID:(id)d;
- (id)viewForBaseKey:(id)key;
- (int64_t)keyLayoutStyle;
- (void)_generateFactoryIfNeeded;
- (void)_generateRenderingContextIfNeeded;
- (void)_regenerateFactoryPreservingUpdates:(BOOL)updates;
- (void)_updateRenderingContext;
- (void)addKeyToDelayedDeactivationSet:(id)set;
- (void)animatingTransitionFromState:(int64_t)state toState:(int64_t)toState animationType:(int64_t)type totalDuration:(double)duration;
- (void)boundsChangedForKey:(id)key;
- (void)changingSelectedVariantForKey:(id)key atPoint:(CGPoint)point isDragging:(BOOL)dragging;
- (void)compareKeyplane:(id)keyplane toKeyplane:(id)toKeyplane;
- (void)createContentViewsIfNeeded;
- (void)createSplitLayoutIfNeeded;
- (void)deactivateAdaptiveKey:(id)key;
- (void)deactivateKey:(id)key previousState:(int)state;
- (void)deactivateKeys;
- (void)didTapBiasEscapeButton;
- (void)dimKeys:(id)keys;
- (void)finalLayoutForSplit:(BOOL)split;
- (void)finishFloatingTransitionWithState:(int64_t)state animationType:(int64_t)type;
- (void)finishSplitTransition;
- (void)finishedSelectingVariantForKey:(id)key atPoint:(CGPoint)point;
- (void)finishedTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition;
- (void)generateFactoryForKeyplane:(id)keyplane landscape:(BOOL)landscape;
- (void)layoutKeysInRows:(id)rows;
- (void)layoutRows:(unint64_t)rows;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForFloatingTransition;
- (void)prepareForSplitTransition;
- (void)prepareForTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition;
- (void)presentSelectorView:(id)view fromBaseKey:(id)key;
- (void)removeFromSuperview;
- (void)removeKeyFromDelayedDeactivationSet:(id)set;
- (void)resetLayoutAndApplyKeyplane:(id)keyplane;
- (void)setKeyboardBias:(int64_t)bias;
- (void)setKeyplane:(id)keyplane override:(BOOL)override;
- (void)setKeyplaneForAutomation:(id)automation;
- (void)setOverrideScreenTraits:(id)traits;
- (void)setRenderConfig:(id)config;
- (void)setRenderingContext:(id)context;
- (void)setState:(int)state forKey:(id)key;
- (void)switchToFloatingTransitionLayoutClass:(int64_t)class interactive:(BOOL)interactive;
- (void)tappedToDismissSelector;
- (void)transitionToKeyplane:(id)keyplane override:(BOOL)override;
- (void)transitionWillFinishWithProgress:(double)progress completion:(id)completion;
- (void)transitioningToState:(int64_t)state animationType:(int64_t)type completionPercentage:(double)percentage;
- (void)updateAllTrees;
- (void)updateBiasEscapeButtonVisbility:(BOOL)visbility;
- (void)updateBottomRowSizingGuide;
- (void)updateBottomRowSizingGuideForClass:(int64_t)class;
- (void)updateFloatingTransitionForPercentComplete:(double)complete;
- (void)updateKeyplaneSpacing;
- (void)updateKeysForFloating:(BOOL)floating;
- (void)updateKeysForRow:(unint64_t)row withKeys:(id)keys;
- (void)updateRowsForTransitionToKeyplane:(id)keyplane;
- (void)updateSplitProgress:(double)progress;
- (void)updateToSize:(CGSize)size;
- (void)updateToSpecifiedSize:(CGSize)size;
- (void)updateTreeForAutomation;
- (void)updateVariantSelectorFramesForKey:(id)key;
@end

@implementation TUIKeyplaneView

- (void)createContentViewsIfNeeded
{
  v72[6] = *MEMORY[0x1E69E9840];
  keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];

  if (!keyboardContentView)
  {
    v4 = objc_alloc_init(TUIKeyboardContentView);
    [(TUIKeyplaneView *)self setKeyboardContentView:v4];

    keyboardContentView2 = [(TUIKeyplaneView *)self keyboardContentView];
    [keyboardContentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    keyboardContentView3 = [(TUIKeyplaneView *)self keyboardContentView];
    [keyboardContentView3 setUserInteractionEnabled:0];

    keyboardContentView4 = [(TUIKeyplaneView *)self keyboardContentView];
    [(TUIKeyplaneView *)self addSubview:keyboardContentView4];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [v8 setIdentifier:@"TUIKeyplane.left"];
    [(TUIKeyplaneView *)self addLayoutGuide:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [v9 setIdentifier:@"TUIKeyplane.right"];
    [(TUIKeyplaneView *)self addLayoutGuide:v9];
    widthAnchor = [v8 widthAnchor];
    v11 = [widthAnchor constraintEqualToConstant:0.0];
    [(TUIKeyplaneView *)self setLeftSpacing:v11];

    widthAnchor2 = [v9 widthAnchor];
    v13 = [widthAnchor2 constraintEqualToConstant:0.0];
    [(TUIKeyplaneView *)self setRightSpacing:v13];

    keyboardContentView5 = [(TUIKeyplaneView *)self keyboardContentView];
    topAnchor = [keyboardContentView5 topAnchor];
    topAnchor2 = [(TUIKeyplaneView *)self topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    [(TUIKeyplaneView *)self setTopSpacing:v17];

    bottomAnchor = [(TUIKeyplaneView *)self bottomAnchor];
    keyboardContentView6 = [(TUIKeyplaneView *)self keyboardContentView];
    bottomAnchor2 = [keyboardContentView6 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(TUIKeyplaneView *)self setBottomSpacing:v21];

    rightAnchor = [v9 rightAnchor];
    rightAnchor2 = [(TUIKeyplaneView *)self rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
    [(TUIKeyplaneView *)self setTrailingTieConstraint:v24];

    topSpacing = [(TUIKeyplaneView *)self topSpacing];
    v72[0] = topSpacing;
    keyboardContentView7 = [(TUIKeyplaneView *)self keyboardContentView];
    leftAnchor = [keyboardContentView7 leftAnchor];
    rightAnchor3 = [v8 rightAnchor];
    v63 = [leftAnchor constraintEqualToAnchor:rightAnchor3 constant:0.0];
    v72[1] = v63;
    v69 = v8;
    leftAnchor2 = [v8 leftAnchor];
    leftAnchor3 = [(TUIKeyplaneView *)self leftAnchor];
    v26 = [leftAnchor2 constraintEqualToAnchor:leftAnchor3];
    v72[2] = v26;
    v68 = v9;
    leftAnchor4 = [v9 leftAnchor];
    keyboardContentView8 = [(TUIKeyplaneView *)self keyboardContentView];
    rightAnchor4 = [keyboardContentView8 rightAnchor];
    v30 = [leftAnchor4 constraintEqualToAnchor:rightAnchor4 constant:0.0];
    v72[3] = v30;
    leftSpacing = [(TUIKeyplaneView *)self leftSpacing];
    v72[4] = leftSpacing;
    rightSpacing = [(TUIKeyplaneView *)self rightSpacing];
    v72[5] = rightSpacing;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:6];

    [MEMORY[0x1E696ACD8] activateConstraints:v33];
    screenTraits = [(TUIKeyplaneView *)self screenTraits];

    if (screenTraits)
    {
      screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
      keyplane = [(TUIKeyplaneView *)self keyplane];
      layoutName = [keyplane layoutName];
      keyplane2 = [(TUIKeyplaneView *)self keyplane];
      name = [keyplane2 name];
      [TUIKeyplane sizeFromScreenTraits:screenTraits2 layout:layoutName layoutClass:[TUIKeyplane layoutClassFromKeyplaneName:name]];
      v41 = v40;
      v43 = v42;
    }

    else
    {
      screenTraits3 = [(TUIKeyplaneView *)self screenTraits];
      if (screenTraits3)
      {
        screenTraits4 = [(TUIKeyplaneView *)self screenTraits];
        [screenTraits4 keyboardScreenReferenceSize];
        v41 = v46;
        v48 = v47;
      }

      else
      {
        screenTraits4 = [(TUIKeyplaneView *)self window];
        screen = [screenTraits4 screen];
        [screen bounds];
        v41 = v50;
        v48 = v51;
      }

      screenTraits5 = [(TUIKeyplaneView *)self screenTraits];
      if (screenTraits5)
      {
        screenTraits6 = [(TUIKeyplaneView *)self screenTraits];
        v54 = [screenTraits6 isKeyboardMinorEdgeWidth] ^ 1;
      }

      else
      {
        v54 = v41 > v48;
      }

      v55 = [TUIKeyplane layoutClassFromScreenDimensions:v41, v48];
      [TUIKeyplane sizeBasisForLayoutClass:v55];
      screenTraits2 = [(TUIKeyplaneView *)self keyplane];
      keyplane = [screenTraits2 layoutName];
      [TUIKeyplane baseHeightForLayout:keyplane layoutClass:v55 landscape:v54];
      v43 = v56;
    }

    [(TUIKeyplaneView *)self updateToSize:v41, v43];
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
    LODWORD(v57) = 1144766464;
    [(TUIKeyplaneView *)self setContentHuggingPriority:0 forAxis:v57];
    v71 = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __45__TUIKeyplaneView_createContentViewsIfNeeded__block_invoke;
    v70[3] = &unk_1E72D8378;
    v70[4] = self;
    v59 = [(TUIKeyplaneView *)self registerForTraitChanges:v58 withHandler:v70];
  }

  if ([(TUIKeyplaneView *)self _showDebugBackdrop])
  {
    systemPurpleColor = [MEMORY[0x1E69DC888] systemPurpleColor];
    v61 = [systemPurpleColor colorWithAlphaComponent:0.2];
    [(TUIKeyplaneView *)self setBackgroundColor:v61];
  }
}

- (void)layoutSubviews
{
  v20 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = TUIKeyplaneView;
  [(TUIKeyplaneView *)&v11 layoutSubviews];
  v3 = _TUIKeyplaneViewLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    [(TUIKeyplaneView *)self bounds];
    v21.width = v6;
    v21.height = v7;
    v8 = NSStringFromCGSize(v21);
    layoutReadyForTreeUpdate = [(TUIKeyplaneView *)self layoutReadyForTreeUpdate];
    v10 = @"Skip update";
    *buf = 138413058;
    v13 = v5;
    v14 = 2048;
    if (layoutReadyForTreeUpdate)
    {
      v10 = @"Layout ready";
    }

    selfCopy = self;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEBUG, "<%@: %p> Layout subviews %@ with %@", buf, 0x2Au);
  }

  if ([(TUIKeyplaneView *)self layoutReadyForTreeUpdate]|| self->_keyBoundsChangeCount <= 0)
  {
    [(TUIKeyplaneView *)self updateAllTrees];
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
  }

  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  self->_keyBoundsChangeCount = [currentKeyplane numberOfKeys];
}

- (UIEdgeInsets)keycapInsets
{
  [(TUIKeyplaneView *)self standardKeyInsets];
  v4.f64[1] = v3;
  v6.f64[1] = v5;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *MEMORY[0x1E69DDCE0]), vceqq_f64(v6, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    keyplane = [(TUIKeyplaneView *)self keyplane];
    layoutName = [keyplane layoutName];

    if (([layoutName isEqualToString:@"QWERTY-Arabic"] & 1) != 0 || objc_msgSend(layoutName, "isEqualToString:", @"AZERTY-Arabic"))
    {
      factory = [(TUIKeyplaneView *)self factory];
      [factory dynamicInsetsForNumberOfRows:4];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
    }

    else
    {
      factory = [(TUIKeyplaneView *)self factory];
      currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
      [factory dynamicInsetsForNumberOfRows:{objc_msgSend(currentKeyplane, "numberOfRows")}];
      v15 = v23;
      v17 = v24;
      v19 = v25;
      v21 = v26;
    }

    [(TUIKeyplaneView *)self setStandardKeyInsets:v15, v17, v19, v21];
    [(TUIKeyplaneView *)self standardKeyInsets];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v7 = v28;
    v8 = v30;
    v9 = v32;
    v10 = v34;
  }

  else
  {

    [(TUIKeyplaneView *)self standardKeyInsets];
  }

  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (void)updateAllTrees
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_keyplane)
  {
    keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
    if ([keyRowViews count] && !-[TUIKeyplaneView movingToFloating](self, "movingToFloating"))
    {
      movingFromFloating = [(TUIKeyplaneView *)self movingFromFloating];

      if (!movingFromFloating)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __33__TUIKeyplaneView_updateAllTrees__block_invoke;
        aBlock[3] = &unk_1E72D8438;
        aBlock[4] = self;
        v4 = _Block_copy(aBlock);
        keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
        [keyboardContentView bounds];
        IsEmpty = CGRectIsEmpty(v23);

        if (!IsEmpty)
        {
          [(TUIKeyplaneView *)self setStandardKeyInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
        }

        keys = [(UIKBTree *)self->_keyplane keys];
        if ([(TUIKeyplaneView *)self layoutReadyForTreeUpdate])
        {
          keyRowViews2 = [(TUIKeyplaneView *)self keyRowViews];
          v9 = [keyRowViews2 objectForKey:&unk_1F03D8E88];

          [v9 bounds];
          if (!CGRectIsEmpty(v24))
          {
            v10 = _TUIKeyplaneViewLogger();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v13 = objc_opt_class();
              *buf = 138412546;
              v18 = v13;
              v19 = 2048;
              selfCopy2 = self;
              _os_log_debug_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_DEBUG, "<%@: %p> Updating keys", buf, 0x16u);
            }

            v4[2](v4, keys);
          }
        }

        else
        {
          v11 = _TUIKeyplaneViewLogger();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = objc_opt_class();
            *buf = 138412546;
            v18 = v12;
            v19 = 2048;
            selfCopy2 = self;
            _os_log_debug_impl(&dword_18FFDC000, v11, OS_LOG_TYPE_DEBUG, "<%@: %p> Requested tree update when layout is not yet ready", buf, 0x16u);
          }

          if (![(TUIKeyplaneView *)self isInSizeTransition])
          {
            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __33__TUIKeyplaneView_updateAllTrees__block_invoke_103;
            v15[3] = &unk_1E72D83A0;
            v15[4] = self;
            [MEMORY[0x1E69DD250] performWithoutAnimation:v15];
          }
        }
      }
    }

    else
    {
    }
  }
}

- (UIKBRenderFactory)factory
{
  [(TUIKeyplaneView *)self _generateFactoryIfNeeded];
  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  idiom = [screenTraits idiom];

  if (idiom == 3)
  {
    [(UIKBRenderFactory *)self->_factory setDynamicFactory:0];
  }

  else
  {
    screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
    if ([screenTraits2 isKeyboardMinorEdgeWidth])
    {
      [(UIKBRenderFactory *)self->_factory setDynamicFactory:1];
    }

    else
    {
      screenTraits3 = [(TUIKeyplaneView *)self screenTraits];
      v7 = ([screenTraits3 isFloating] & 1) != 0 || -[TUIKeyplaneView currentHandBias](self, "currentHandBias") != 0;
      [(UIKBRenderFactory *)self->_factory setDynamicFactory:v7];
    }
  }

  factory = self->_factory;

  return factory;
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isInSizeTransition
{
  if ([(TUIKeyplaneView *)self isInSplitTransition]|| [(TUIKeyplaneView *)self movingToFloating])
  {
    return 1;
  }

  return [(TUIKeyplaneView *)self movingFromFloating];
}

- (void)_generateFactoryIfNeeded
{
  factory = self->_factory;
  if (!factory)
  {
    [(TUIKeyplaneView *)self setStandardKeyInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(TUIKeyplaneView *)self _generateRenderingContextIfNeeded];
    visualStyling = [(UIKBTree *)self->_keyplane visualStyling];
    v5 = visualStyling;
    v6 = visualStyling & 0xFFFFFFFF00000000;
    if ([(TUIKeyplaneView *)self isCurrentlySplit])
    {
      v7 = 192;
    }

    else
    {
      v7 = 64;
    }

    v8 = v7 | v5 & 0xFFFFFF3F;
    [(UIKBTree *)self->_keyplane setVisualStyling:v6 | v8];
    renderingContext = [(TUIKeyplaneView *)self renderingContext];
    [renderingContext setHandBias:0];

    if ([(UIKBScreenTraits *)self->_screenTraits idiom]== 3)
    {
      v8 = v8 & 0xFFFFFFC0 | 3;
    }

    else
    {
      v8 = v8;
    }

    v10 = MEMORY[0x1E69DCB50];
    renderingContext2 = [(TUIKeyplaneView *)self renderingContext];
    v12 = [v10 factoryForVisualStyle:v6 | v8 renderingContext:renderingContext2];
    v13 = self->_factory;
    self->_factory = v12;

    screenTraits = [(TUIKeyplaneView *)self screenTraits];
    screen = [screenTraits screen];
    [screen scale];
    [(UIKBRenderFactory *)self->_factory setScale:?];

    v16 = UIKeyboardGetCurrentInputMode();
    [(UIKBRenderFactory *)self->_factory setPreferStringKeycapOverImage:UIKeyboardUIPreferStringOverImageForInputMode()];

    [(UIKBRenderFactory *)self->_factory setStretchFactor:1.0, 1.0];
    screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
    [screenTraits2 stretchFactor];
    if (v18 != 1.0)
    {
      screenTraits3 = [(TUIKeyplaneView *)self screenTraits];
      [screenTraits3 stretchFactor];
      if (v20 <= 0.0)
      {
      }

      else
      {
        screenTraits4 = [(TUIKeyplaneView *)self screenTraits];
        isFloating = [screenTraits4 isFloating];

        if (isFloating)
        {
LABEL_14:
          mEMORY[0x1E69DCC00] = [MEMORY[0x1E69DCC00] sharedPreferencesController];
          -[UIKBRenderFactory setAllowsPaddles:](self->_factory, "setAllowsPaddles:", [mEMORY[0x1E69DCC00] BOOLForPreferenceKey:*MEMORY[0x1E69D97F0]]);

          factory = self->_factory;
          goto LABEL_15;
        }

        screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
        [screenTraits2 stretchFactor];
        [(UIKBRenderFactory *)self->_factory setStretchFactor:?];
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  if ([(UIKBRenderFactory *)factory allowsPaddles])
  {
    layoutName = [(UIKBTree *)self->_keyplane layoutName];
    v25 = [layoutName isEqualToString:@"Thai-24-Key"];

    if (v25)
    {
      v26 = self->_factory;

      [(UIKBRenderFactory *)v26 setAllowsPaddles:0];
    }
  }
}

- (void)updateKeyplaneSpacing
{
  [(TUIKeyplaneView *)self keyplaneInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  topSpacing = [(TUIKeyplaneView *)self topSpacing];
  [topSpacing setConstant:v4];

  leftSpacing = [(TUIKeyplaneView *)self leftSpacing];
  [leftSpacing setConstant:v6];

  bottomSpacing = [(TUIKeyplaneView *)self bottomSpacing];
  [bottomSpacing setConstant:v8];

  rightSpacing = [(TUIKeyplaneView *)self rightSpacing];
  [rightSpacing setConstant:v10];
}

- (UIEdgeInsets)keyplaneInsets
{
  v3 = MEMORY[0x1E69DDCE0];
  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  effectsType = [currentKeyplane effectsType];

  if (effectsType == 1)
  {
    v9 = *(v3 + 8);
  }

  else
  {
    [(TUIKeyplaneView *)self keycapInsets];
    v9 = v14;
    screenTraits = [(TUIKeyplaneView *)self screenTraits];
    isKeyboardMinorEdgeWidth = [screenTraits isKeyboardMinorEdgeWidth];

    if (isKeyboardMinorEdgeWidth)
    {
      v17 = 1;
    }

    else
    {
      v17 = 4;
    }

    [MEMORY[0x1E69DCBE0] deviceSpecificPaddingForInterfaceOrientation:v17 inputMode:0];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
    layoutClass = [currentKeyplane2 layoutClass];

    if (layoutClass > 2)
    {
      if (layoutClass == 3)
      {
        if (v21 + -3.0 >= 0.0)
        {
          v5 = v21 + -3.0;
        }

        else
        {
          v5 = 0.0;
        }

        if (isKeyboardMinorEdgeWidth)
        {
          v4 = 7.0;
        }

        else
        {
          v4 = 10.0;
        }

        [(TUIKeyplaneView *)self keycapInsets];
        v9 = v9 + v38 * 0.5;
        [(TUIKeyplaneView *)self keycapInsets];
        v6 = v6 + v39 * 0.5;
      }

      else if (layoutClass == 4)
      {
        if (isKeyboardMinorEdgeWidth)
        {
          v4 = 5.0;
        }

        else
        {
          v4 = 7.0;
        }

        v5 = v21 - v4;
        if (v21 - v4 < 0.0)
        {
          v29 = v5 * 0.5;
          screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
          isKeyboardMinorEdgeWidth2 = [screenTraits2 isKeyboardMinorEdgeWidth];

          if (isKeyboardMinorEdgeWidth2)
          {
            v5 = v29 + 0.5;
          }

          else
          {
            v5 = v29 + -0.5;
          }
        }

        [(TUIKeyplaneView *)self keycapInsets];
        v9 = v49 * 0.5;
        [(TUIKeyplaneView *)self keycapInsets];
        v51 = v50 * 0.5;
        trailingTieConstraint = [(TUIKeyplaneView *)self trailingTieConstraint];
        [trailingTieConstraint setConstant:v51];
      }
    }

    else if (layoutClass == 1)
    {
      activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
      textInputTraits = [activeInstance textInputTraits];
      [textInputTraits keyboardType];
      if (UIKeyboardTypeIsNumberPad())
      {
        screenTraits3 = [(TUIKeyplaneView *)self screenTraits];
        isInPopover = [screenTraits3 isInPopover];

        if (isInPopover)
        {
          [(TUIKeyplaneView *)self keycapInsets];
          v9 = 15.0;
          v5 = fmax(15.0 - v36, 0.0);
          [(TUIKeyplaneView *)self keycapInsets];
          v6 = fmax(15.0 - v37, 0.0);
          v4 = 15.0;
          goto LABEL_3;
        }
      }

      else
      {
      }

      [(TUIKeyplaneView *)self preferredSize];
      if (v40 <= 400.0)
      {
        isKeyboardMinorEdgeWidth3 = 0;
      }

      else
      {
        screenTraits4 = [(TUIKeyplaneView *)self screenTraits];
        isKeyboardMinorEdgeWidth3 = [screenTraits4 isKeyboardMinorEdgeWidth];
      }

      screenTraits5 = [(TUIKeyplaneView *)self screenTraits];
      idiom = [screenTraits5 idiom];

      if (idiom == 3)
      {
        if (v9 + v19 >= 8.0)
        {
          v9 = v9 + v19;
        }

        else
        {
          v9 = 8.0;
        }

        if (v6 + v23 >= 8.0)
        {
          v6 = v6 + v23;
        }

        else
        {
          v6 = 8.0;
        }

        if (v4 < 8.0)
        {
          v4 = 8.0;
        }

        if (v5 < 0.0)
        {
          v5 = 0.0;
        }
      }

      else
      {
        v45 = 10.0;
        if (v21 >= 10.0)
        {
          if (!isKeyboardMinorEdgeWidth)
          {
            v45 = 16.0;
          }

          if (isKeyboardMinorEdgeWidth3)
          {
            v5 = 12.0;
          }

          else
          {
            v5 = v45;
          }
        }

        else
        {
          if (isKeyboardMinorEdgeWidth3)
          {
            v46 = 2.0;
          }

          else
          {
            v46 = 1.0;
          }

          [(TUIKeyplaneView *)self keycapInsets];
          v5 = v46 - v47;
          if ((([(TUIKeyplaneView *)self currentHandBias]!= 0) & isKeyboardMinorEdgeWidth) == 0)
          {
            if (isKeyboardMinorEdgeWidth)
            {
              v6 = 0.0;
            }

            else
            {
              v6 = 68.0;
            }

            [(TUIKeyplaneView *)self keycapInsets];
            v9 = v6 + v48;
          }
        }
      }

      screenTraits6 = [(TUIKeyplaneView *)self screenTraits];
      idiom2 = [screenTraits6 idiom];
      v55 = 5.0;
      if (isKeyboardMinorEdgeWidth3)
      {
        v55 = 0.0;
      }

      if (isKeyboardMinorEdgeWidth)
      {
        v55 = 7.0;
      }

      if (idiom2 != 3)
      {
        v4 = v55;
      }

      if ((([(TUIKeyplaneView *)self currentHandBias]!= 0) & isKeyboardMinorEdgeWidth) == 1)
      {
        [(TUIKeyplaneView *)self preferredSize];
        if (v56 <= 0.0)
        {
          [(TUIKeyplaneView *)self bounds];
          v57 = v59;
        }

        else
        {
          [(TUIKeyplaneView *)self preferredSize];
        }

        v58 = v57 - *MEMORY[0x1E69DEB58];
        if ([(TUIKeyplaneView *)self currentHandBias]== 2)
        {
          [(TUIKeyplaneView *)self keycapInsets];
          v9 = v60;
        }

        else if ([(TUIKeyplaneView *)self currentHandBias]== 1)
        {
          v9 = v58;
          v58 = 0.0;
        }

        else
        {
          v58 = v6;
        }
      }

      else
      {
        v58 = v6;
      }

      if ([(TUIKeyplaneView *)self isFloating])
      {
        v4 = v4 + 3.0;
        v9 = v9 * 0.5;
        [(TUIKeyplaneView *)self keycapInsets];
        v62 = v61 * 0.5;
        trailingTieConstraint2 = [(TUIKeyplaneView *)self trailingTieConstraint];
        [trailingTieConstraint2 setConstant:v62];
      }

      v6 = v58;
    }

    else if (layoutClass == 2)
    {
      if (v21 + -3.0 >= 0.0)
      {
        v5 = v21 + -3.0;
      }

      else
      {
        v5 = 0.0;
      }

      if (isKeyboardMinorEdgeWidth)
      {
        v4 = 7.0;
      }

      else
      {
        v4 = 10.0;
      }

      [(TUIKeyplaneView *)self keycapInsets];
      v27 = v26;
      trailingTieConstraint3 = [(TUIKeyplaneView *)self trailingTieConstraint];
      [trailingTieConstraint3 setConstant:v27];

      v6 = v27 * 0.5;
      v9 = v6;
    }
  }

LABEL_3:
  v10 = v4;
  v11 = v9;
  v12 = v5;
  v13 = v6;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (UIEdgeInsets)standardKeyInsets
{
  top = self->_standardKeyInsets.top;
  left = self->_standardKeyInsets.left;
  bottom = self->_standardKeyInsets.bottom;
  right = self->_standardKeyInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)isSplit
{
  supportsSplit = [(TUIKeyplaneView *)self supportsSplit];
  if (supportsSplit)
  {
    supportsSplit = [(TUIKeyplaneView *)self isCurrentlySplit];
    if (supportsSplit)
    {
      LOBYTE(supportsSplit) = ![(TUIKeyplaneView *)self isInSplitTransition];
    }
  }

  return supportsSplit;
}

- (BOOL)supportsSplit
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  v3 = [currentKeyplane layoutClass] == 2;

  return v3;
}

- (id)keyplaneRenderConfig
{
  renderConfig = self->_renderConfig;
  if (!renderConfig)
  {
    renderConfigForCurrentTraitCollection = [(TUIKeyplaneView *)self renderConfigForCurrentTraitCollection];
    v5 = self->_renderConfig;
    self->_renderConfig = renderConfigForCurrentTraitCollection;

    renderConfig = self->_renderConfig;
  }

  return renderConfig;
}

- (void)deactivateKeys
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  allValues = [(NSMutableDictionary *)self->_delayedDeactivationKeys allValues];
  v5 = [allValues countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v2 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v2)
        {
          objc_enumerationMutation(allValues);
        }

        [(TUIKeyplaneView *)self setState:2 forKey:*(*(&v35 + 1) + 8 * i)];
      }

      v6 = [allValues countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  storedKeyViews = [(TUIKeyplaneView *)self storedKeyViews];
  allValues2 = [storedKeyViews allValues];

  v10 = [allValues2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(allValues2);
        }

        v14 = *(*(&v31 + 1) + 8 * j);
        v15 = [v14 key];
        state = [v15 state];

        if (state == 16 || state == 4)
        {
          v2 = [v14 key];
          v18 = [v2 avoidAutoDeactivation] ^ 1;
        }

        else
        {
          v18 = 0;
        }

        if (state == 16 || state == 4)
        {
        }

        if (v18)
        {
          v20 = [v14 key];
          [(TUIKeyplaneView *)self setState:2 forKey:v20];
        }
      }

      v11 = [allValues2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v11);
  }

  activeKey = [(TUIKeyplaneView *)self activeKey];

  if (activeKey)
  {
    activeKey2 = [(TUIKeyplaneView *)self activeKey];
    activeKey3 = [(TUIKeyplaneView *)self activeKey];
    backingTree = [activeKey3 backingTree];
    v25 = [(TUIKeyplaneView *)self cacheIdentifierForKey:backingTree withState:16];
    v26 = [(TUIKeyplaneView *)self variantViewForKey:activeKey2 cacheID:v25];

    if (v26)
    {
      [v26 bounds];
      if (!CGRectIsEmpty(v42))
      {
        activeKey4 = [(TUIKeyplaneView *)self activeKey];
        backingTree2 = [activeKey4 backingTree];
        [backingTree2 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];

        activeKey5 = [(TUIKeyplaneView *)self activeKey];
        backingTree3 = [activeKey5 backingTree];
        [(TUIKeyplaneView *)self setState:2 forKey:backingTree3];
      }
    }

    [(TUIKeyplaneView *)self setActiveKey:0];
  }
}

- (BOOL)_showDebugBackdrop
{
  if (TIGetShowCrescendoBackdropValue_onceToken != -1)
  {
    dispatch_once(&TIGetShowCrescendoBackdropValue_onceToken, &__block_literal_global_747);
  }

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"ShowCrescendoBackdrop"];

  LOBYTE(mEMORY[0x1E69D9680]) = [v3 BOOLValue];
  return mEMORY[0x1E69D9680];
}

- (id)currentKBLayoutInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCB38]);
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  [v3 setIsAutoShifted:{objc_msgSend(activeInstance, "isAutoShifted")}];

  activeInstance2 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v3 setIsShiftLocked:{objc_msgSend(activeInstance2, "isShiftLocked")}];

  activeInstance3 = [MEMORY[0x1E69DCBE0] activeInstance];
  textInputTraits = [activeInstance3 textInputTraits];
  [v3 setTextInputTraits:textInputTraits];

  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  [v3 setScreenTraits:screenTraits];

  return v3;
}

- (void)_updateRenderingContext
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  textInputTraits = [activeInstance textInputTraits];
  -[UIKBRenderingContext setKeyboardType:](self->_renderingContext, "setKeyboardType:", [textInputTraits keyboardType]);

  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  if (screenTraits)
  {
    screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
    -[UIKBRenderingContext setIsFloating:](self->_renderingContext, "setIsFloating:", [screenTraits2 isFloating]);
  }

  else
  {
    [(UIKBRenderingContext *)self->_renderingContext setIsFloating:[(UIKBTree *)self->_keyplane isFloating]];
  }
}

- (void)_generateRenderingContextIfNeeded
{
  if (!self->_renderingContext)
  {
    v3 = MEMORY[0x1E69DCB60];
    keyplaneRenderConfig = [(TUIKeyplaneView *)self keyplaneRenderConfig];
    v5 = [v3 renderingContextForRenderConfig:keyplaneRenderConfig];
    renderingContext = self->_renderingContext;
    self->_renderingContext = v5;
  }

  [(TUIKeyplaneView *)self _updateRenderingContext];
}

- (UIEdgeInsets)rowInsets
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  effectsType = [currentKeyplane effectsType];

  v4 = 0.0;
  v5 = 24.0;
  if (effectsType != 1)
  {
    v5 = 0.0;
  }

  v6 = 0.0;
  v7 = v5;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (int64_t)keyLayoutStyle
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  keyLayoutStyle = [currentKeyplane keyLayoutStyle];

  if (keyLayoutStyle == -1)
  {
    v5 = 1;
  }

  else
  {
    v5 = keyLayoutStyle;
  }

  if ([(TUIKeyplaneView *)self isSplit]|| [(TUIKeyplaneView *)self isInSplitTransition]|| [(TUIKeyplaneView *)self isCurrentlySplit])
  {
    return 4;
  }

  return v5;
}

- (CGSize)leftSplitSize
{
  [(TUIKeyplaneView *)self splitSizeForRightSide:0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)rowsVerticalSpacing
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  effectsType = [currentKeyplane effectsType];

  result = 0.0;
  if (effectsType == 1)
  {
    return 12.0;
  }

  return result;
}

- (Class)preferredKeyViewClass
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  [currentKeyplane effectsType];

  v3 = objc_opt_class();

  return v3;
}

- (void)updateBottomRowSizingGuide
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  -[TUIKeyplaneView updateBottomRowSizingGuideForClass:](self, "updateBottomRowSizingGuideForClass:", [currentKeyplane layoutClass]);
}

- (CGSize)rightSplitSize
{
  [(TUIKeyplaneView *)self splitSizeForRightSide:1];
  result.height = v3;
  result.width = v2;
  return result;
}

void __33__TUIKeyplaneView_updateAllTrees__block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 count];
  v4 = [objc_alloc(MEMORY[0x1E69D9628]) initWithCapacity:v3];
  [v4 setUsesTwoHands:0];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
    do
    {
      v11 = [v24 objectAtIndex:v6];
      [*(a1 + 32) updateFrameForKey:v11];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [*(a1 + 32) viewForKey:v11];
      if (([v11 isExemptFromInputManagerLayout] & 1) != 0 || objc_msgSend(v20, "isHidden"))
      {
        [v4 addKeyWithString:&stru_1F03BA8F8 frame:{v7, v8, v9, v10}];
      }

      else
      {
        v26.origin.x = v13;
        v26.origin.y = v15;
        v26.size.width = v17;
        v26.size.height = v19;
        v5 += !CGRectIsEmpty(v26);
        v21 = [v11 representedString];
        v22 = [v21 lowercaseString];
        [v4 addKeyWithString:v22 frame:{v13, v15, v17, v19}];
      }

      ++v6;
    }

    while (v3 != v6);
    if (v5)
    {
      [*(a1 + 32) setNeedsLayout];
      v23 = [MEMORY[0x1E69DCBE0] activeInstance];
      [v23 setLayoutForKeyHitTest:v4];
    }
  }
}

void __45__TUIKeyplaneView_createContentViewsIfNeeded__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _regenerateFactoryPreservingUpdates:1];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) keyRowViews];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [*(a1 + 32) keyLayoutStyle];
        v10 = [*(a1 + 32) factory];
        [v8 updateKeysInRowWithStyle:v9 factory:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (CGSize)transitionFloatingSize
{
  width = self->_transitionFloatingSize.width;
  height = self->_transitionFloatingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)transitionMiddleSize
{
  width = self->_transitionMiddleSize.width;
  height = self->_transitionMiddleSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)transitionFullSize
{
  width = self->_transitionFullSize.width;
  height = self->_transitionFullSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)unsplitSize
{
  width = self->_unsplitSize.width;
  height = self->_unsplitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)preferredFloatingSize
{
  width = self->_preferredFloatingSize.width;
  height = self->_preferredFloatingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  keyplane = [(TUIKeyplaneView *)self keyplane];
  name = [keyplane name];
  if ([(TUIKeyplaneView *)self isFloating])
  {
    [(TUIKeyplaneView *)self preferredFloatingSize];
  }

  else
  {
    [(TUIKeyplaneView *)self preferredSize];
  }

  v9 = NSStringFromCGSize(*&v7);
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  v11 = [v3 stringWithFormat:@"<%@: %p> name = %@ preferredSize = %@; currentKeyplane = %@", v4, self, name, v9, currentKeyplane];;

  return v11;
}

- (void)updateToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v69 = *MEMORY[0x1E69E9840];
  if (![(TUIKeyplaneView *)self movingToFloating]&& ![(TUIKeyplaneView *)self movingFromFloating]&& width > 0.0 && height > 0.0)
  {
    factory = [(TUIKeyplaneView *)self factory];
    [factory scale];
    v8 = v7;

    if (v8 > 0.0)
    {
      factory2 = [(TUIKeyplaneView *)self factory];
      [factory2 scale];
      v11 = ceil(height * v10);
      factory3 = [(TUIKeyplaneView *)self factory];
      [factory3 scale];
      height = v11 / v13;

      factory4 = [(TUIKeyplaneView *)self factory];
      [factory4 scale];
      v16 = ceil(width * v15);
      factory5 = [(TUIKeyplaneView *)self factory];
      [factory5 scale];
      width = v16 / v18;
    }

    if (-[TUIKeyplaneView isFloating](self, "isFloating") && (-[TUIKeyplaneView currentKeyplane](self, "currentKeyplane"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 supportsFloatingStyle], v19, v20))
    {
      sizeRatioConstraint = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [sizeRatioConstraint setActive:0];

      heightConstraint = [(TUIKeyplaneView *)self heightConstraint];
      [heightConstraint setActive:0];

      preferredWidthConstraint = [(TUIKeyplaneView *)self preferredWidthConstraint];
      [preferredWidthConstraint setConstant:width];

      preferredWidthConstraint2 = [(TUIKeyplaneView *)self preferredWidthConstraint];
      [preferredWidthConstraint2 setActive:0];

      keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
      heightAnchor = [keyboardContentView heightAnchor];
      keyboardContentView2 = [(TUIKeyplaneView *)self keyboardContentView];
      widthAnchor = [keyboardContentView2 widthAnchor];
      width = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:height / width];
      [(TUIKeyplaneView *)self setSizeRatioConstraint:width];

      sizeRatioConstraint2 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [sizeRatioConstraint2 setIdentifier:@"TUIKeyplane.sizeRatio"];

      sizeRatioConstraint3 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [sizeRatioConstraint3 setActive:1];

      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen bounds];
      [(TUIKeyplaneView *)self setMaximumWidth:v33];
    }

    else
    {
      sizeRatioConstraint4 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [sizeRatioConstraint4 setActive:0];

      heightConstraint2 = [(TUIKeyplaneView *)self heightConstraint];

      if (!heightConstraint2)
      {
        keyboardContentView3 = [(TUIKeyplaneView *)self keyboardContentView];
        heightAnchor2 = [keyboardContentView3 heightAnchor];
        v38 = [heightAnchor2 constraintEqualToConstant:height];
        [(TUIKeyplaneView *)self setHeightConstraint:v38];

        heightConstraint3 = [(TUIKeyplaneView *)self heightConstraint];
        [heightConstraint3 setIdentifier:@"TUIKeyplane.height"];
      }

      preferredWidthConstraint3 = [(TUIKeyplaneView *)self preferredWidthConstraint];

      if (!preferredWidthConstraint3)
      {
        keyboardContentView4 = [(TUIKeyplaneView *)self keyboardContentView];
        widthAnchor2 = [keyboardContentView4 widthAnchor];
        v43 = [widthAnchor2 constraintEqualToConstant:width];
        [(TUIKeyplaneView *)self setPreferredWidthConstraint:v43];

        preferredWidthConstraint4 = [(TUIKeyplaneView *)self preferredWidthConstraint];
        [preferredWidthConstraint4 setIdentifier:@"TUIKeyplane.width"];
      }

      screenTraits = [(TUIKeyplaneView *)self screenTraits];
      idiom = [screenTraits idiom];

      if (idiom != 3)
      {
        preferredWidthConstraint5 = [(TUIKeyplaneView *)self preferredWidthConstraint];
        LODWORD(v48) = 1144750080;
        [preferredWidthConstraint5 setPriority:v48];
      }

      heightConstraint4 = [(TUIKeyplaneView *)self heightConstraint];
      [heightConstraint4 setActive:1];

      mainScreen = [(TUIKeyplaneView *)self preferredWidthConstraint];
      [mainScreen setActive:1];
    }

    heightConstraint5 = [(TUIKeyplaneView *)self heightConstraint];
    [heightConstraint5 setConstant:height];

    preferredWidthConstraint6 = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [preferredWidthConstraint6 setConstant:width];

    [(TUIKeyplaneView *)self preferredSize];
    v53 = v52;
    v55 = v54;
    [(TUIKeyplaneView *)self setPreferredSize:width, height];
    if (v53 != width || v55 != height)
    {
      v56 = _TUIKeyplaneViewLogger();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = objc_opt_class();
        v70.width = width;
        v70.height = height;
        v58 = NSStringFromCGSize(v70);
        if ([(TUIKeyplaneView *)self isFloating])
        {
          v59 = @"floating";
        }

        else
        {
          isCurrentlySplit = [(TUIKeyplaneView *)self isCurrentlySplit];
          v59 = @"docked";
          if (isCurrentlySplit)
          {
            v59 = @"split";
          }
        }

        v61 = 138413058;
        v62 = v57;
        v63 = 2048;
        selfCopy = self;
        v65 = 2112;
        v66 = v58;
        v67 = 2112;
        v68 = v59;
        _os_log_impl(&dword_18FFDC000, v56, OS_LOG_TYPE_DEFAULT, "<%@: %p> changed keyplane size to %@; %@", &v61, 0x2Au);
      }

      [(TUIKeyplaneView *)self invalidateIntrinsicContentSize];
    }

    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
    [(TUIKeyplaneView *)self updateAllTrees];
  }
}

- (double)fullHeightForDockedKeyboard
{
  [(TUIKeyplaneView *)self unsplitSize];
  v4 = v3;
  [(TUIKeyplaneView *)self preferredSize];
  if (v4 < v5)
  {
    [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:0];
    [(TUIKeyplaneView *)self setUnsplitSize:?];
  }

  [(TUIKeyplaneView *)self unsplitSize];
  return v6;
}

- (CGSize)idealKeySizeforLayoutType:(int64_t)type
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  effectsType = [currentKeyplane effectsType];

  v6 = 60.0;
  v7 = 102.0;
  if (type != 7)
  {
    v7 = 60.0;
  }

  if (effectsType != 1)
  {
    v7 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)sizeFromScreenTraitsAndClassWithSplitHeight:(BOOL)height
{
  heightCopy = height;
  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  keyplane = [(TUIKeyplaneView *)self keyplane];
  layoutName = [keyplane layoutName];
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  +[TUIKeyplane sizeFromScreenTraits:layout:layoutClass:](TUIKeyplane, "sizeFromScreenTraits:layout:layoutClass:", screenTraits, layoutName, [currentKeyplane layoutClass]);
  v10 = v9;
  v12 = v11;

  if (heightCopy)
  {
    currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
    supportsSplitStyle = [currentKeyplane2 supportsSplitStyle];

    if (supportsSplitStyle)
    {
      [(TUIKeyplaneView *)self rightSplitSize];
      v12 = v15;
    }
  }

  v16 = v10;
  v17 = v12;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)sizeFromScreenTraitsAndClass
{
  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  keyplane = [(TUIKeyplaneView *)self keyplane];
  layoutName = [keyplane layoutName];
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  +[TUIKeyplane sizeFromScreenTraits:layout:layoutClass:](TUIKeyplane, "sizeFromScreenTraits:layout:layoutClass:", screenTraits, layoutName, [currentKeyplane layoutClass]);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)splitSizeForRightSide:(BOOL)side
{
  sideCopy = side;
  if (side)
  {
    v5 = 280.0;
  }

  else
  {
    v5 = 266.0;
  }

  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];

  if (currentKeyplane)
  {
    currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
    [currentKeyplane2 finalSplitSizeForRightSide:sideCopy];
    v5 = v8;

    currentKeyplane3 = [(TUIKeyplaneView *)self currentKeyplane];
    [currentKeyplane3 finalHeightForSplitKeyboard];
    v11 = v10;
  }

  else
  {
    v11 = 205.0;
  }

  mEMORY[0x1E69DCC00] = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  preferencesActions = [mEMORY[0x1E69DCC00] preferencesActions];
  [preferencesActions rivenSizeFactor:v5];
  v15 = v14;
  mEMORY[0x1E69DCC00]2 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  preferencesActions2 = [mEMORY[0x1E69DCC00]2 preferencesActions];
  [preferencesActions2 rivenSizeFactor:v11];
  v19 = v18;

  v20 = v15;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)finalLayoutForSplit:(BOOL)split
{
  splitCopy = split;
  v37 = *MEMORY[0x1E69E9840];
  if ([(TUIKeyplaneView *)self isCurrentlySplit]!= split)
  {
    [(TUIKeyplaneView *)self setIsCurrentlySplit:splitCopy];
  }

  [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  allValues = [keyRowViews allValues];

  v7 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v32 + 1) + 8 * i) toggleConstraintsForSplit:splitCopy];
      }

      v8 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  if (splitCopy)
  {
    [(TUIKeyplaneView *)self leftSplitSize];
    v12 = v11;
    [(TUIKeyplaneView *)self rightSplitSize];
    v14 = vabdd_f64(v12, v13) + 20.0;
    keySizeSpacer = [(TUIKeyplaneView *)self keySizeSpacer];
    [keySizeSpacer setConstant:v14];

    splitSpacing = [(TUIKeyplaneView *)self splitSpacing];
    [splitSpacing setActive:0];

    [(TUIKeyplaneView *)self leftSplitSize];
    v18 = v17;
    leftSplitWidth = [(TUIKeyplaneView *)self leftSplitWidth];
    [leftSplitWidth setConstant:v18];

    [(TUIKeyplaneView *)self rightSplitSize];
    v21 = v20;
    rightSplitWidth = [(TUIKeyplaneView *)self rightSplitWidth];
    [rightSplitWidth setConstant:v21];

    leftSplitWidth2 = [(TUIKeyplaneView *)self leftSplitWidth];
    [leftSplitWidth2 setActive:1];

    rightSplitWidth2 = [(TUIKeyplaneView *)self rightSplitWidth];
    [rightSplitWidth2 setActive:1];

    [(TUIKeyplaneView *)self leftSplitSize];
  }

  else
  {
    keySizeSpacer2 = [(TUIKeyplaneView *)self keySizeSpacer];
    [keySizeSpacer2 setConstant:0.0];

    splitSpacing2 = [(TUIKeyplaneView *)self splitSpacing];
    [splitSpacing2 setActive:1];

    leftSplitWidth3 = [(TUIKeyplaneView *)self leftSplitWidth];
    [leftSplitWidth3 setActive:0];

    rightSplitWidth3 = [(TUIKeyplaneView *)self rightSplitWidth];
    [rightSplitWidth3 setActive:0];

    [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:0];
    [(TUIKeyplaneView *)self setUnsplitSize:?];
    [(TUIKeyplaneView *)self unsplitSize];
  }

  v30 = v25;
  heightConstraint = [(TUIKeyplaneView *)self heightConstraint];
  [heightConstraint setConstant:v30];
}

- (void)finishSplitTransition
{
  v24 = *MEMORY[0x1E69E9840];
  [(TUIKeyplaneView *)self splitTransitionProgress];
  v4 = v3;
  [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:v3 > 0.5];
  v6 = v5;
  v8 = v7;
  if (![(TUIKeyplaneView *)self isInSplitTransition]&& v4 > 0.5)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __40__TUIKeyplaneView_finishSplitTransition__block_invoke;
    v22[3] = &unk_1E72D83A0;
    v22[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v22];
  }

  [(TUIKeyplaneView *)self setIsInSplitTransition:0];
  [(TUIKeyplaneView *)self setIsCurrentlySplit:v4 > 0.5];
  bottomSpacing = [(TUIKeyplaneView *)self bottomSpacing];
  [bottomSpacing setActive:1];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  allValues = [keyRowViews allValues];

  v12 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        [(TUIKeyplaneView *)self splitTransitionProgress];
        [v16 updateKeysForTransitionProgress:?];
        [v16 updateKeysForTransition:0];
        ++v15;
      }

      while (v13 != v15);
      v13 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }

  if ([(TUIKeyplaneView *)self isCurrentlySplit])
  {
    currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
    -[TUIKeyplaneView updateBottomRowSizingGuideForClass:](self, "updateBottomRowSizingGuideForClass:", [currentKeyplane layoutClass]);
  }

  [(TUIKeyplaneView *)self setNeedsLayout];
  [(TUIKeyplaneView *)self updateToSize:v6, v8];
}

- (void)transitionWillFinishWithProgress:(double)progress completion:(id)completion
{
  completionCopy = completion;
  [(TUIKeyplaneView *)self splitTransitionProgress];
  v8 = vabdd_f64(progress, v7) / 3.0;
  [(TUIKeyplaneView *)self finalLayoutForSplit:progress != 0.0];
  [(TUIKeyplaneView *)self setSplitTransitionProgress:progress];
  v9 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__TUIKeyplaneView_transitionWillFinishWithProgress_completion___block_invoke;
  v13[3] = &unk_1E72D84B0;
  v13[4] = self;
  *&v13[5] = progress;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__TUIKeyplaneView_transitionWillFinishWithProgress_completion___block_invoke_2;
  v11[3] = &unk_1E72D8570;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 animateWithDuration:4 delay:v13 options:v11 animations:v8 completion:0.0];
}

uint64_t __63__TUIKeyplaneView_transitionWillFinishWithProgress_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) keyRowViews];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 updateKeysForTransitionProgress:*(a1 + 40)];
        [v8 updateKeysForTransition:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __63__TUIKeyplaneView_transitionWillFinishWithProgress_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setLayoutReadyForTreeUpdate:1];
  [*(a1 + 32) updateAllTrees];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)updateSplitProgress:(double)progress
{
  v83 = *MEMORY[0x1E69E9840];
  if (progress == 0.0 || progress == 1.0)
  {
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:[(TUIKeyplaneView *)self isInSplitTransition]^ 1];
    if (progress == 0.0)
    {
      leftSplitWidth = [(TUIKeyplaneView *)self leftSplitWidth];
      isActive = [leftSplitWidth isActive];

      if (isActive)
      {
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
        allValues = [keyRowViews allValues];

        v10 = [allValues countByEnumeratingWithState:&v76 objects:v82 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v77;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v77 != v12)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v76 + 1) + 8 * i) toggleConstraintsForSplit:0];
            }

            v11 = [allValues countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v11);
        }

        keySizeSpacer = [(TUIKeyplaneView *)self keySizeSpacer];
        [keySizeSpacer setConstant:0.0];

        splitSpacing = [(TUIKeyplaneView *)self splitSpacing];
        [splitSpacing setActive:1];

        leftSplitWidth2 = [(TUIKeyplaneView *)self leftSplitWidth];
        [leftSplitWidth2 setActive:0];

        rightSplitWidth = [(TUIKeyplaneView *)self rightSplitWidth];
        [rightSplitWidth setActive:0];

        v18 = MEMORY[0x1E69DD250];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __39__TUIKeyplaneView_updateSplitProgress___block_invoke;
        v75[3] = &unk_1E72D83A0;
        v75[4] = self;
        v19 = &__block_literal_global_158;
        v20 = v75;
        goto LABEL_26;
      }
    }
  }

  else
  {
    [(TUIKeyplaneView *)self setIsInSplitTransition:1];
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
    [(TUIKeyplaneView *)self splitTransitionProgress];
    if (v21 == 0.0 || ([(TUIKeyplaneView *)self splitTransitionProgress], v22 == 1.0))
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      keyRowViews2 = [(TUIKeyplaneView *)self keyRowViews];
      allValues2 = [keyRowViews2 allValues];

      v25 = [allValues2 countByEnumeratingWithState:&v71 objects:v81 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v72;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v72 != v27)
            {
              objc_enumerationMutation(allValues2);
            }

            [*(*(&v71 + 1) + 8 * j) toggleConstraintsForSplit:1];
          }

          v26 = [allValues2 countByEnumeratingWithState:&v71 objects:v81 count:16];
        }

        while (v26);
      }

      splitSpacing2 = [(TUIKeyplaneView *)self splitSpacing];
      [splitSpacing2 setActive:0];

      leftSplitWidth3 = [(TUIKeyplaneView *)self leftSplitWidth];
      [leftSplitWidth3 setActive:1];

      rightSplitWidth2 = [(TUIKeyplaneView *)self rightSplitWidth];
      [rightSplitWidth2 setActive:1];

      v18 = MEMORY[0x1E69DD250];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __39__TUIKeyplaneView_updateSplitProgress___block_invoke_3;
      v70[3] = &unk_1E72D83A0;
      v70[4] = self;
      v19 = &__block_literal_global_160;
      v20 = v70;
LABEL_26:
      [v18 animateWithDuration:v20 animations:v19 completion:0.1];
    }
  }

  progressCopy = 0.0;
  if (progress >= 0.0)
  {
    progressCopy = progress;
  }

  if (progress <= 1.0)
  {
    v33 = progressCopy;
  }

  else
  {
    v33 = 1.0;
  }

  [(TUIKeyplaneView *)self unsplitSize];
  v35 = v34;
  [(TUIKeyplaneView *)self leftSplitSize];
  v37 = v36;
  [(TUIKeyplaneView *)self rightSplitSize];
  v39 = v35 - (v37 + v38);
  [(TUIKeyplaneView *)self leftSplitSize];
  v41 = v40 + v39 * 0.5 * (1.0 - v33);
  leftSplitWidth4 = [(TUIKeyplaneView *)self leftSplitWidth];
  [leftSplitWidth4 setConstant:v41];

  [(TUIKeyplaneView *)self rightSplitSize];
  v44 = v43 + v39 * 0.5 * (1.0 - v33);
  rightSplitWidth3 = [(TUIKeyplaneView *)self rightSplitWidth];
  [rightSplitWidth3 setConstant:v44];

  [(TUIKeyplaneView *)self leftSplitSize];
  v47 = v46;
  [(TUIKeyplaneView *)self rightSplitSize];
  v49 = vabdd_f64(v47, v48) + 20.0;
  if (v33 * v39 <= v49)
  {
    v50 = v33 * v39;
  }

  else
  {
    v50 = v49;
  }

  keySizeSpacer2 = [(TUIKeyplaneView *)self keySizeSpacer];
  [keySizeSpacer2 setConstant:v50];

  [(TUIKeyplaneView *)self unsplitSize];
  v53 = v52;
  [(TUIKeyplaneView *)self leftSplitSize];
  v55 = v33 * (v53 - v54);
  [(TUIKeyplaneView *)self unsplitSize];
  v57 = v56 - v55;
  heightConstraint = [(TUIKeyplaneView *)self heightConstraint];
  [heightConstraint setConstant:v57];

  if (v33 > 0.6)
  {
    if ([(TUIKeyplaneView *)self isCurrentlySplit])
    {
      goto LABEL_41;
    }

LABEL_40:
    [(TUIKeyplaneView *)self setIsCurrentlySplit:v33 > 0.6];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __39__TUIKeyplaneView_updateSplitProgress___block_invoke_5;
    v69[3] = &unk_1E72D83A0;
    v69[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v69 animations:0 completion:0.1];
    goto LABEL_41;
  }

  if (v33 < 0.6 && [(TUIKeyplaneView *)self isCurrentlySplit])
  {
    goto LABEL_40;
  }

LABEL_41:
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  keyRowViews3 = [(TUIKeyplaneView *)self keyRowViews];
  allValues3 = [keyRowViews3 allValues];

  v61 = [allValues3 countByEnumeratingWithState:&v65 objects:v80 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v66;
    do
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v66 != v63)
        {
          objc_enumerationMutation(allValues3);
        }

        [*(*(&v65 + 1) + 8 * k) updateKeysForTransitionProgress:v33];
      }

      v62 = [allValues3 countByEnumeratingWithState:&v65 objects:v80 count:16];
    }

    while (v62);
  }

  [(TUIKeyplaneView *)self setSplitTransitionProgress:v33];
}

void __39__TUIKeyplaneView_updateSplitProgress___block_invoke_5(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) keyRowViews];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ([*(a1 + 32) isCurrentlySplit])
        {
          v9 = 4;
        }

        else
        {
          v9 = 2;
        }

        [v8 updateKeysInRowWithStyle:v9 factory:0];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)prepareForSplitTransition
{
  v44 = *MEMORY[0x1E69E9840];
  if (![(TUIKeyplaneView *)self isInSplitTransition])
  {
    [(TUIKeyplaneView *)self deactivateKeys];
    [(TUIKeyplaneView *)self createSplitLayoutIfNeeded];
    [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:0];
    [(TUIKeyplaneView *)self setUnsplitSize:?];
    [(TUIKeyplaneView *)self unsplitSize];
    v4 = v3;
    [(TUIKeyplaneView *)self leftSplitSize];
    v6 = v5;
    [(TUIKeyplaneView *)self rightSplitSize];
    v8 = (v4 - (v6 + v7)) * 0.5;
    isCurrentlySplit = [(TUIKeyplaneView *)self isCurrentlySplit];
    [(TUIKeyplaneView *)self leftSplitSize];
    if (isCurrentlySplit)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8 + v10;
    }

    isCurrentlySplit2 = [(TUIKeyplaneView *)self isCurrentlySplit];
    [(TUIKeyplaneView *)self rightSplitSize];
    if (isCurrentlySplit2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v8 + v13;
    }

    leftSplitWidth = [(TUIKeyplaneView *)self leftSplitWidth];
    [leftSplitWidth setConstant:v11];

    rightSplitWidth = [(TUIKeyplaneView *)self rightSplitWidth];
    [rightSplitWidth setConstant:v14];

    [(TUIKeyplaneView *)self leftSplitSize];
    v18 = v17;
    [(TUIKeyplaneView *)self rightSplitSize];
    v20 = vabdd_f64(v18, v19) + 20.0;
    [(TUIKeyplaneView *)self splitTransitionProgress];
    v22 = v21 * v20;
    keySizeSpacer = [(TUIKeyplaneView *)self keySizeSpacer];
    [keySizeSpacer setConstant:v22];

    keySizeSpacer2 = [(TUIKeyplaneView *)self keySizeSpacer];
    LODWORD(v25) = 1148829696;
    [keySizeSpacer2 setPriority:v25];

    [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
    v26 = 2;
    if ([(TUIKeyplaneView *)self isCurrentlySplit])
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    v39 = 0u;
    v40 = 0u;
    if (![(TUIKeyplaneView *)self isCurrentlySplit])
    {
      v26 = 4;
    }

    v41 = 0uLL;
    v42 = 0uLL;
    keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
    allValues = [keyRowViews allValues];

    v30 = [allValues countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v40;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v39 + 1) + 8 * i) updateKeysForTransition:1 startStyle:v27 endStyle:v26];
        }

        v31 = [allValues countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v31);
    }

    bottomSpacing = [(TUIKeyplaneView *)self bottomSpacing];
    [bottomSpacing setActive:0];

    splitSpacing = [(TUIKeyplaneView *)self splitSpacing];
    [splitSpacing setActive:0];

    keySizeSpacer3 = [(TUIKeyplaneView *)self keySizeSpacer];
    [keySizeSpacer3 setActive:1];

    leftSplitWidth2 = [(TUIKeyplaneView *)self leftSplitWidth];
    [leftSplitWidth2 setActive:1];

    rightSplitWidth2 = [(TUIKeyplaneView *)self rightSplitWidth];
    [rightSplitWidth2 setActive:1];

    [(TUIKeyplaneView *)self setIsInSplitTransition:1];
  }
}

- (void)createSplitLayoutIfNeeded
{
  v62[5] = *MEMORY[0x1E69E9840];
  if ([(TUIKeyplaneView *)self supportsSplit])
  {
    [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:0];
    [(TUIKeyplaneView *)self setUnsplitSize:?];
    leftSplitWidth = [(TUIKeyplaneView *)self leftSplitWidth];
    if (leftSplitWidth)
    {
      v4 = leftSplitWidth;
      rightSplitWidth = [(TUIKeyplaneView *)self rightSplitWidth];
      if (rightSplitWidth)
      {
        v6 = rightSplitWidth;
        splitTransitionLayoutGuides = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
        v8 = [splitTransitionLayoutGuides count];

        if (v8)
        {
          return;
        }
      }

      else
      {
      }
    }

    splitTransitionLayoutGuides2 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];

    if (!splitTransitionLayoutGuides2)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(TUIKeyplaneView *)self setSplitTransitionLayoutGuides:dictionary];
    }

    splitTransitionLayoutGuides3 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
    v12 = [splitTransitionLayoutGuides3 objectForKey:@"TUIKBSplitGuide_Middle"];

    v13 = v12 == 0;
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v12 setIdentifier:@"TUIKBSplitGuide_Middle"];
      splitTransitionLayoutGuides4 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
      [splitTransitionLayoutGuides4 setObject:v12 forKey:@"TUIKBSplitGuide_Middle"];
    }

    [(TUIKeyplaneView *)self addLayoutGuide:v12];
    splitTransitionLayoutGuides5 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
    v16 = [splitTransitionLayoutGuides5 objectForKey:@"TUIKBSplitGuide_Left"];

    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v16 setIdentifier:@"TUIKBSplitGuide_Left"];
      splitTransitionLayoutGuides6 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
      [splitTransitionLayoutGuides6 setObject:v16 forKey:@"TUIKBSplitGuide_Left"];

      v13 = 1;
    }

    [(TUIKeyplaneView *)self addLayoutGuide:v16];
    splitTransitionLayoutGuides7 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
    v19 = [splitTransitionLayoutGuides7 objectForKey:@"TUIKBSplitGuide_Right"];

    if (!v19)
    {
      v19 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v19 setIdentifier:@"TUIKBSplitGuide_Right"];
      splitTransitionLayoutGuides8 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
      [splitTransitionLayoutGuides8 setObject:v19 forKey:@"TUIKBSplitGuide_Right"];

      v13 = 1;
    }

    [(TUIKeyplaneView *)self addLayoutGuide:v19];
    splitTransitionLayoutGuides9 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
    v22 = [splitTransitionLayoutGuides9 objectForKey:@"TUIKBSplitGuide_Padding"];

    if (!v22)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v22 setIdentifier:@"TUIKBSplitGuide_Padding"];
      splitTransitionLayoutGuides10 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
      [splitTransitionLayoutGuides10 setObject:v22 forKey:@"TUIKBSplitGuide_Padding"];
    }

    [(TUIKeyplaneView *)self addLayoutGuide:v22];
    if (v13)
    {
      v54 = MEMORY[0x1E696ACD8];
      leftAnchor = [v16 leftAnchor];
      leftAnchor2 = [(TUIKeyplaneView *)self leftAnchor];
      v58 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v62[0] = v58;
      leftAnchor3 = [v12 leftAnchor];
      rightAnchor = [v16 rightAnchor];
      v55 = [leftAnchor3 constraintEqualToAnchor:rightAnchor];
      v62[1] = v55;
      leftAnchor4 = [v22 leftAnchor];
      leftAnchor5 = [v19 leftAnchor];
      v51 = [leftAnchor4 constraintEqualToAnchor:leftAnchor5];
      v62[2] = v51;
      rightAnchor2 = [v12 rightAnchor];
      rightAnchor3 = [v22 rightAnchor];
      v25 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3 constant:0.0];
      v62[3] = v25;
      [(TUIKeyplaneView *)self rightAnchor];
      v26 = v61 = v12;
      rightAnchor4 = [v19 rightAnchor];
      v28 = [v26 constraintEqualToAnchor:rightAnchor4];
      v62[4] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:5];
      [v54 activateConstraints:v29];

      v12 = v61;
    }

    [(TUIKeyplaneView *)self unsplitSize];
    v31 = v30;
    [(TUIKeyplaneView *)self leftSplitSize];
    v33 = v32;
    [(TUIKeyplaneView *)self rightSplitSize];
    v35 = (v31 - (v33 + v34)) * 0.5;
    isCurrentlySplit = [(TUIKeyplaneView *)self isCurrentlySplit];
    [(TUIKeyplaneView *)self leftSplitSize];
    if (isCurrentlySplit)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35 + v37;
    }

    isCurrentlySplit2 = [(TUIKeyplaneView *)self isCurrentlySplit];
    [(TUIKeyplaneView *)self rightSplitSize];
    if (isCurrentlySplit2)
    {
      v41 = v40;
    }

    else
    {
      v41 = v35 + v40;
    }

    widthAnchor = [v22 widthAnchor];
    v43 = [widthAnchor constraintEqualToConstant:0.0];
    [(TUIKeyplaneView *)self setKeySizeSpacer:v43];

    widthAnchor2 = [v12 widthAnchor];
    v45 = [widthAnchor2 constraintEqualToConstant:0.0];
    [(TUIKeyplaneView *)self setSplitSpacing:v45];

    widthAnchor3 = [v16 widthAnchor];
    v47 = [widthAnchor3 constraintEqualToConstant:v38];
    [(TUIKeyplaneView *)self setLeftSplitWidth:v47];

    widthAnchor4 = [v19 widthAnchor];
    v49 = [widthAnchor4 constraintEqualToConstant:v41];
    [(TUIKeyplaneView *)self setRightSplitWidth:v49];
  }
}

- (void)finishFloatingTransitionWithState:(int64_t)state animationType:(int64_t)type
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke;
  aBlock[3] = &unk_1E72D84B0;
  aBlock[4] = self;
  aBlock[5] = state;
  v7 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke_2;
  v16[3] = &unk_1E72D84D8;
  v16[4] = self;
  v8 = _Block_copy(v16);
  v9 = v8;
  if (state == 4 || !type)
  {
    (*(v8 + 2))(v8, state);
  }

  else
  {
    [(TUIKeyplaneView *)self setMovingFromFloating:0];
    [(TUIKeyplaneView *)self setMovingToFloating:0];
    v10 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke_3;
    v14[3] = &unk_1E72D8500;
    v15 = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke_4;
    v11[3] = &unk_1E72D8528;
    v12 = v9;
    stateCopy = state;
    v11[4] = self;
    [v10 animateWithDuration:v14 animations:v11 completion:0.0];
  }
}

void __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 != 4)
  {
    if (v1 == 3)
    {
      [*(a1 + 32) floatingTransitionProgress];
      if (v3 != 0.0)
      {
        [*(a1 + 32) updateFloatingTransitionForPercentComplete:0.0];
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v4 = [*(a1 + 32) keyRowViews];
      v5 = [v4 allValues];

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v20 + 1) + 8 * i) updateKeysForTransitionProgress:0.0];
          }

          v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v7);
      }
    }

    else
    {
      [*(a1 + 32) floatingTransitionProgress];
      if (v10 != 1.0)
      {
        [*(a1 + 32) updateFloatingTransitionForPercentComplete:1.0];
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = [*(a1 + 32) keyRowViews];
      v5 = [v11 allValues];

      v12 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v16 + 1) + 8 * j) updateKeysForTransitionProgress:1.0];
          }

          v13 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }
}

void __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setMovingFromFloating:0];
  [*(a1 + 32) setMovingToFloating:0];
  v4 = 0;
  if (a2 == 4)
  {
    v4 = [*(a1 + 32) isCurrentlySplit];
  }

  [*(a1 + 32) setIsCurrentlySplit:v4];
  [*(a1 + 32) setIsFloating:a2 == 3];
  v5 = *(a1 + 32);
  if (a2 == 3)
  {
    [v5 floatingKeyplaneForTransition];
  }

  else
  {
    [v5 fullKeyplaneForTransition];
  }
  v6 = ;
  v7 = v6;
  if (v6)
  {
    *(*(a1 + 32) + 808) = [v6 numberOfKeys];
    [*(a1 + 32) resetLayoutAndApplyKeyplane:v7];
    [*(a1 + 32) setKeyplane:*(*(a1 + 32) + 424) override:1];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [*(a1 + 32) keyRowViews];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v18 + 1) + 8 * i) updateKeysForTransition:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [*(a1 + 32) transitionFloatingSize];
  if (v15 == 0.0 && v14 == 0.0)
  {
    [*(a1 + 32) sizeForFloatingLayoutClass];
  }

  if (a2 != 3)
  {
    v16 = *(a1 + 32);
    if (a2 == 4)
    {
      v17 = 1;
    }

    else
    {
      v17 = [*(a1 + 32) isCurrentlySplit];
    }

    [v16 sizeFromScreenTraitsAndClassWithSplitHeight:v17];
  }

  [*(a1 + 32) updateToSize:?];
}

uint64_t __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) updateKeysForFloating:*(a1 + 48) == 3];
  [*(a1 + 32) setFloatingKeyplaneForTransition:0];
  v2 = *(a1 + 32);

  return [v2 setFullKeyplaneForTransition:0];
}

- (void)switchToFloatingTransitionLayoutClass:(int64_t)class interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  v62 = *MEMORY[0x1E69E9840];
  floatingKeyplaneForTransition = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
  layoutClass = [floatingKeyplaneForTransition layoutClass];

  if (layoutClass == class)
  {
    floatingKeyplaneForTransition2 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
    if (floatingKeyplaneForTransition2)
    {
      v10 = floatingKeyplaneForTransition2;
      floatingKeyplaneForTransition3 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
      layoutClass2 = [floatingKeyplaneForTransition3 layoutClass];
      activeTransitionLayoutClass = [(TUIKeyplaneView *)self activeTransitionLayoutClass];

      if (layoutClass2 != activeTransitionLayoutClass)
      {
        currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
        v15 = [currentKeyplane keyStyleForLayoutClass:{-[TUIKeyplaneView activeTransitionLayoutClass](self, "activeTransitionLayoutClass")}];

        floatingKeyplaneForTransition4 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
        floatingKeyplaneForTransition5 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
        v18 = [floatingKeyplaneForTransition4 keyStyleForLayoutClass:{objc_msgSend(floatingKeyplaneForTransition5, "layoutClass")}];

        floatingKeyplaneForTransition6 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
        [(TUIKeyplaneView *)self updateRowsForTransitionToKeyplane:floatingKeyplaneForTransition6];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
        allValues = [keyRowViews allValues];

        v22 = [allValues countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v57;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v57 != v24)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v56 + 1) + 8 * i) updateKeysForTransition:1 startStyle:v15 endStyle:v18];
            }

            v23 = [allValues countByEnumeratingWithState:&v56 objects:v61 count:16];
          }

          while (v23);
        }

        floatingKeyplaneForTransition7 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
        -[TUIKeyplaneView setActiveTransitionLayoutClass:](self, "setActiveTransitionLayoutClass:", [floatingKeyplaneForTransition7 layoutClass]);

        [(TUIKeyplaneView *)self updateKeyplaneSpacing];
        if (interactiveCopy)
        {
          v27 = MEMORY[0x1E69DD250];
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __69__TUIKeyplaneView_switchToFloatingTransitionLayoutClass_interactive___block_invoke;
          v55[3] = &unk_1E72D83A0;
          v55[4] = self;
          v28 = v55;
LABEL_25:
          [v27 performWithoutAnimation:v28];
        }
      }
    }
  }

  else
  {
    fullKeyplaneForTransition = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
    layoutClass3 = [fullKeyplaneForTransition layoutClass];

    if (layoutClass3 == class)
    {
      fullKeyplaneForTransition2 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
      if (fullKeyplaneForTransition2)
      {
        v32 = fullKeyplaneForTransition2;
        fullKeyplaneForTransition3 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
        layoutClass4 = [fullKeyplaneForTransition3 layoutClass];
        activeTransitionLayoutClass2 = [(TUIKeyplaneView *)self activeTransitionLayoutClass];

        if (layoutClass4 != activeTransitionLayoutClass2)
        {
          currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
          v37 = [currentKeyplane2 keyStyleForLayoutClass:{-[TUIKeyplaneView activeTransitionLayoutClass](self, "activeTransitionLayoutClass")}];

          fullKeyplaneForTransition4 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
          fullKeyplaneForTransition5 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
          v40 = [fullKeyplaneForTransition4 keyStyleForLayoutClass:{objc_msgSend(fullKeyplaneForTransition5, "layoutClass")}];

          fullKeyplaneForTransition6 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
          [(TUIKeyplaneView *)self updateRowsForTransitionToKeyplane:fullKeyplaneForTransition6];

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          keyRowViews2 = [(TUIKeyplaneView *)self keyRowViews];
          allValues2 = [keyRowViews2 allValues];

          v44 = [allValues2 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v52;
            do
            {
              for (j = 0; j != v45; ++j)
              {
                if (*v52 != v46)
                {
                  objc_enumerationMutation(allValues2);
                }

                v48 = *(*(&v51 + 1) + 8 * j);
                [v48 updateKeysForTransition:1 startStyle:v37 endStyle:v40];
                [v48 toggleConstraintsForSplit:0];
              }

              v45 = [allValues2 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v45);
          }

          fullKeyplaneForTransition7 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
          -[TUIKeyplaneView setActiveTransitionLayoutClass:](self, "setActiveTransitionLayoutClass:", [fullKeyplaneForTransition7 layoutClass]);

          [(TUIKeyplaneView *)self updateKeyplaneSpacing];
          if (interactiveCopy)
          {
            v27 = MEMORY[0x1E69DD250];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __69__TUIKeyplaneView_switchToFloatingTransitionLayoutClass_interactive___block_invoke_2;
            v50[3] = &unk_1E72D83A0;
            v50[4] = self;
            v28 = v50;
            goto LABEL_25;
          }
        }
      }
    }
  }
}

- (void)updateFloatingTransitionForPercentComplete:(double)complete
{
  v55 = *MEMORY[0x1E69E9840];
  [(TUIKeyplaneView *)self transitionFloatingSize];
  completeCopy = complete;
  if (complete <= 0.5)
  {
    completeCopy = (complete + -0.3) / 0.4;
  }

  v6 = 0.0;
  if (completeCopy >= 0.0)
  {
    v6 = completeCopy;
  }

  if (completeCopy <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  [(TUIKeyplaneView *)self floatingTransitionProgress];
  v9 = v8;
  [(TUIKeyplaneView *)self setFloatingTransitionProgress:v7];
  [(TUIKeyplaneView *)self transitionFullSize];
  v11 = v10;
  [(TUIKeyplaneView *)self transitionFloatingSize];
  v13 = v7 * (v11 - v12);
  [(TUIKeyplaneView *)self transitionFloatingSize];
  v15 = v14 + v13;
  [(TUIKeyplaneView *)self transitionFullSize];
  if (v15 <= v16)
  {
    [(TUIKeyplaneView *)self transitionFloatingSize];
    if (v15 >= v18)
    {
      goto LABEL_13;
    }

    [(TUIKeyplaneView *)self transitionFloatingSize];
  }

  else
  {
    [(TUIKeyplaneView *)self transitionFullSize];
  }

  v15 = v17;
LABEL_13:
  [(TUIKeyplaneView *)self transitionMiddleSize];
  if (v15 <= v19)
  {
    [(TUIKeyplaneView *)self transitionFloatingSize];
    v27 = v26;
    heightConstraint = [(TUIKeyplaneView *)self heightConstraint];
    [heightConstraint setConstant:v27];

    sizeRatioConstraint = [(TUIKeyplaneView *)self sizeRatioConstraint];
    isActive = [sizeRatioConstraint isActive];

    if (isActive)
    {
      sizeRatioConstraint2 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [sizeRatioConstraint2 setActive:0];
    }

    heightConstraint2 = [(TUIKeyplaneView *)self heightConstraint];
    isActive2 = [heightConstraint2 isActive];

    if ((isActive2 & 1) == 0)
    {
      heightConstraint3 = [(TUIKeyplaneView *)self heightConstraint];
      goto LABEL_22;
    }
  }

  else
  {
    heightConstraint4 = [(TUIKeyplaneView *)self heightConstraint];
    isActive3 = [heightConstraint4 isActive];

    if (isActive3)
    {
      heightConstraint5 = [(TUIKeyplaneView *)self heightConstraint];
      [heightConstraint5 setActive:0];
    }

    sizeRatioConstraint3 = [(TUIKeyplaneView *)self sizeRatioConstraint];
    isActive4 = [sizeRatioConstraint3 isActive];

    if ((isActive4 & 1) == 0)
    {
      heightConstraint3 = [(TUIKeyplaneView *)self sizeRatioConstraint];
LABEL_22:
      v34 = heightConstraint3;
      [heightConstraint3 setActive:1];
    }
  }

  if (complete >= 0.4)
  {
    if (complete <= 0.5)
    {
      goto LABEL_28;
    }

    fullKeyplaneForTransition = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
  }

  else
  {
    fullKeyplaneForTransition = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
  }

  v36 = fullKeyplaneForTransition;
  -[TUIKeyplaneView switchToFloatingTransitionLayoutClass:interactive:](self, "switchToFloatingTransitionLayoutClass:interactive:", [fullKeyplaneForTransition layoutClass], vabdd_f64(v9, v7) < 0.25);

LABEL_28:
  preferredWidthConstraint = [(TUIKeyplaneView *)self preferredWidthConstraint];
  isActive5 = [preferredWidthConstraint isActive];

  if ((isActive5 & 1) == 0)
  {
    preferredWidthConstraint2 = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [preferredWidthConstraint2 setActive:1];
  }

  preferredWidthConstraint3 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  [preferredWidthConstraint3 constant];
  v42 = v15 - v41;

  preferredWidthConstraint4 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  [preferredWidthConstraint4 setConstant:v15];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  allValues = [keyRowViews allValues];

  v46 = [allValues countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v51;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v51 != v48)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v50 + 1) + 8 * i) updateKeysForTransitionProgress:complete];
      }

      v47 = [allValues countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v47);
  }

  if (v42 != 0.0)
  {
    [(TUIKeyplaneView *)self setNeedsLayout];
  }
}

- (void)prepareForFloatingTransition
{
  v65 = *MEMORY[0x1E69E9840];
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  -[TUIKeyplaneView setActiveTransitionLayoutClass:](self, "setActiveTransitionLayoutClass:", [currentKeyplane layoutClass]);

  [(TUIKeyplaneView *)self sizeForDockedLayoutClass];
  v5 = v4;
  v7 = v6;
  [(TUIKeyplaneView *)self setTransitionFullSize:?];
  [(TUIKeyplaneView *)self sizeForFloatingLayoutClass];
  v9 = v8;
  v11 = v10;
  [(TUIKeyplaneView *)self setTransitionFloatingSize:?];
  [(TUIKeyplaneView *)self setTransitionMiddleSize:round(v5 * (v11 / v7)), v11];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  allValues = [keyRowViews allValues];

  v14 = [allValues countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v60;
    do
    {
      v17 = 0;
      do
      {
        if (*v60 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v59 + 1) + 8 * v17++) updateKeysForTransition:1];
      }

      while (v15 != v17);
      v15 = [allValues countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v15);
  }

  sizeRatioConstraint = [(TUIKeyplaneView *)self sizeRatioConstraint];
  isActive = [sizeRatioConstraint isActive];

  if (isActive)
  {
    sizeRatioConstraint2 = [(TUIKeyplaneView *)self sizeRatioConstraint];
    [sizeRatioConstraint2 setActive:0];
  }

  keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
  heightAnchor = [keyboardContentView heightAnchor];
  keyboardContentView2 = [(TUIKeyplaneView *)self keyboardContentView];
  widthAnchor = [keyboardContentView2 widthAnchor];
  [(TUIKeyplaneView *)self transitionFullSize];
  v26 = v25;
  [(TUIKeyplaneView *)self transitionFullSize];
  v28 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v26 / v27];
  [(TUIKeyplaneView *)self setSizeRatioConstraint:v28];

  heightConstraint = [(TUIKeyplaneView *)self heightConstraint];
  LODWORD(heightAnchor) = [heightConstraint isActive];

  if (heightAnchor)
  {
    heightConstraint2 = [(TUIKeyplaneView *)self heightConstraint];
    [heightConstraint2 setActive:0];
  }

  keyboardContentView3 = [(TUIKeyplaneView *)self keyboardContentView];
  heightAnchor2 = [keyboardContentView3 heightAnchor];
  v33 = [heightAnchor2 constraintEqualToConstant:v11];
  [(TUIKeyplaneView *)self setHeightConstraint:v33];

  preferredWidthConstraint = [(TUIKeyplaneView *)self preferredWidthConstraint];
  LODWORD(heightAnchor2) = [preferredWidthConstraint isActive];

  if (heightAnchor2)
  {
    preferredWidthConstraint2 = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [preferredWidthConstraint2 setActive:0];
  }

  keyboardContentView4 = [(TUIKeyplaneView *)self keyboardContentView];
  widthAnchor2 = [keyboardContentView4 widthAnchor];
  if ([(TUIKeyplaneView *)self movingToFloating])
  {
    v38 = v5;
  }

  else
  {
    v38 = v9;
  }

  v39 = [widthAnchor2 constraintEqualToConstant:v38];
  [(TUIKeyplaneView *)self setPreferredWidthConstraint:v39];

  preferredWidthConstraint3 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  keyLayoutStyle = 1;
  [preferredWidthConstraint3 setActive:1];

  [(TUIKeyplaneView *)self setIsFloating:1];
  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  [screenTraits bounds];
  v45 = [TUIKeyplane layoutClassFromScreenDimensions:v43, v44];

  if ([(TUIKeyplaneView *)self movingToFloating])
  {
    currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
    keyLayoutStyle = [currentKeyplane2 keyLayoutStyle];
  }

  if ([(TUIKeyplaneView *)self movingToFloating])
  {
    v47 = 1;
  }

  else
  {
    currentKeyplane3 = [(TUIKeyplaneView *)self currentKeyplane];
    v47 = [currentKeyplane3 keyStyleForLayoutClass:v45];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  keyRowViews2 = [(TUIKeyplaneView *)self keyRowViews];
  allValues2 = [keyRowViews2 allValues];

  v51 = [allValues2 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v56;
    do
    {
      v54 = 0;
      do
      {
        if (*v56 != v53)
        {
          objc_enumerationMutation(allValues2);
        }

        [*(*(&v55 + 1) + 8 * v54++) updateKeysForTransition:1 startStyle:keyLayoutStyle endStyle:v47];
      }

      while (v52 != v54);
      v52 = [allValues2 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v52);
  }
}

- (CGSize)sizeForFloatingLayoutClass
{
  v3 = [MEMORY[0x1E69DCB68] traitsForPopoverEmulatingWidth:1 minorEdge:1 orientation:1 idiom:320.0];
  keyplane = [(TUIKeyplaneView *)self keyplane];
  layoutName = [keyplane layoutName];
  [TUIKeyplane sizeFromScreenTraits:v3 layout:layoutName layoutClass:1];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeForDockedLayoutClass
{
  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  [screenTraits bounds];
  v6 = [TUIKeyplane layoutClassFromScreenDimensions:v4, v5];

  keyplane = [(TUIKeyplaneView *)self keyplane];
  layoutName = [keyplane layoutName];
  screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
  +[TUIKeyplane baseHeightForLayout:layoutClass:landscape:](TUIKeyplane, "baseHeightForLayout:layoutClass:landscape:", layoutName, v6, ([screenTraits2 orientation] - 3) < 2);
  v11 = v10;

  screenTraits3 = [(TUIKeyplaneView *)self screenTraits];
  [screenTraits3 bounds];
  v14 = v13;

  v15 = v14;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)finishedTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition
{
  v8 = [(TUIKeyplaneView *)self isInSplitTransition:state];
  if (state == 4 || v8)
  {
    v9 = 0.0;
    if (state == 4)
    {
      [(TUIKeyplaneView *)self setIsFloating:0, 0.0];
      [(TUIKeyplaneView *)self setMovingToFloating:0];
      [(TUIKeyplaneView *)self setMovingFromFloating:0];
      v9 = 1.0;
    }

    [(TUIKeyplaneView *)self updateSplitProgress:v9];
    [(TUIKeyplaneView *)self finishSplitTransition];
  }

  if (state == 3 || (type - 7) < 2 || [(TUIKeyplaneView *)self movingToFloating]|| [(TUIKeyplaneView *)self movingFromFloating])
  {
    [(TUIKeyplaneView *)self finishFloatingTransitionWithState:state animationType:type];
  }

  if (!type)
  {
    [(TUIKeyplaneView *)self setIsFloating:state == 3];
    [(TUIKeyplaneView *)self setIsCurrentlySplit:state == 4];
    [(TUIKeyplaneView *)self setMovingToFloating:0];

    [(TUIKeyplaneView *)self setMovingFromFloating:0];
  }
}

- (void)transitioningToState:(int64_t)state animationType:(int64_t)type completionPercentage:(double)percentage
{
  if ((type - 7) > 1)
  {
    if (state == 4)
    {
      if (![(TUIKeyplaneView *)self isInSplitTransition])
      {
        [(TUIKeyplaneView *)self prepareForSplitTransition];
      }

      [(TUIKeyplaneView *)self updateSplitProgress:percentage];
    }
  }

  else
  {
    [(TUIKeyplaneView *)self floatingTransitionProgress];
    [(TUIKeyplaneView *)self floatingTransitionProgress];
    if (v7 < 1.0)
    {
      [(TUIKeyplaneView *)self floatingTransitionProgress];
    }

    [(TUIKeyplaneView *)self updateFloatingTransitionForPercentComplete:percentage];
  }
}

- (void)animatingTransitionFromState:(int64_t)state toState:(int64_t)toState animationType:(int64_t)type totalDuration:(double)duration
{
  if (state != toState && type)
  {
    if (toState == 4)
    {
      if (state == 3)
      {
        [(TUIKeyplaneView *)self prepareForFloatingTransition];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke;
        v32[3] = &unk_1E72D83A0;
        v32[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:32 delay:v32 options:0 animations:duration / 3.0 completion:0.0];
        v8 = MEMORY[0x1E69DD250];
        durationCopy = duration * 0.5;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_2;
        v31[3] = &unk_1E72D83A0;
        v31[4] = self;
        v10 = v31;
        v11 = duration * 0.5;
        goto LABEL_9;
      }

      [(TUIKeyplaneView *)self setMovingToFloating:0];
      [(TUIKeyplaneView *)self setMovingFromFloating:0];
      [(TUIKeyplaneView *)self setIsFloating:0];
      if (![(TUIKeyplaneView *)self isInSplitTransition])
      {
        [(TUIKeyplaneView *)self prepareForSplitTransition];
      }

      [(TUIKeyplaneView *)self updateSplitProgress:1.0];
    }

    else
    {
      if (state == 4)
      {
        if (toState != 3)
        {
          [(TUIKeyplaneView *)self prepareForSplitTransition];
          v8 = MEMORY[0x1E69DD250];
          v20 = MEMORY[0x1E69E9820];
          v21 = 3221225472;
          v22 = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_5;
          v23 = &unk_1E72D83A0;
          selfCopy = self;
          v15 = MEMORY[0x1E69E9820];
          v16 = 3221225472;
          v17 = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_6;
          v18 = &unk_1E72D8488;
          selfCopy2 = self;
          v11 = 0.0;
          v10 = &v20;
          v13 = &v15;
          durationCopy = duration;
          goto LABEL_19;
        }

        v12 = duration * 0.5;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_3;
        v30[3] = &unk_1E72D83A0;
        v30[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:32 delay:v30 options:0 animations:duration * 0.5 completion:0.0];
        v8 = MEMORY[0x1E69DD250];
        v25 = MEMORY[0x1E69E9820];
        v26 = 3221225472;
        v27 = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_4;
        v28 = &unk_1E72D83A0;
        selfCopy3 = self;
        v10 = &v25;
        durationCopy = v12;
        v11 = v12;
LABEL_9:
        v13 = 0;
LABEL_19:
        [v8 animateWithDuration:32 delay:v10 options:v13 animations:durationCopy completion:{v11, v15, v16, v17, v18, selfCopy2, v20, v21, v22, v23, selfCopy, v25, v26, v27, v28, selfCopy3}];
        return;
      }

      if (type == 8)
      {
        [(TUIKeyplaneView *)self setMovingFromFloating:1];
        v14 = 1.0;
      }

      else
      {
        if (type != 7)
        {
          return;
        }

        [(TUIKeyplaneView *)self setMovingToFloating:1];
        v14 = 0.0;
      }

      [(TUIKeyplaneView *)self updateFloatingTransitionForPercentComplete:v14];
    }
  }
}

uint64_t __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMovingFromFloating:1];
  v2 = *(a1 + 32);

  return [v2 updateFloatingTransitionForPercentComplete:1.0];
}

uint64_t __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMovingToFloating:0];
  [*(a1 + 32) setMovingFromFloating:0];
  [*(a1 + 32) setIsFloating:0];
  [*(a1 + 32) prepareForSplitTransition];
  v2 = *(a1 + 32);

  return [v2 updateSplitProgress:1.0];
}

uint64_t __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) finalLayoutForSplit:0];
  [*(a1 + 32) setSplitTransitionProgress:0.0];
  [*(a1 + 32) finishSplitTransition];
  [*(a1 + 32) setMovingToFloating:1];
  v2 = *(a1 + 32);

  return [v2 prepareForFloatingTransition];
}

- (void)prepareForTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition
{
  v8 = [(TUIKeyplaneView *)self isFloating:state];
  if (state == 3 && v8)
  {
    [(TUIKeyplaneView *)self sizeForFloatingLayoutClass];
    [(TUIKeyplaneView *)self setTransitionFloatingSize:?];
    [(TUIKeyplaneView *)self sizeForDockedLayoutClass];
    [(TUIKeyplaneView *)self setTransitionFullSize:?];
    [(TUIKeyplaneView *)self setMovingToFloating:0];

    [(TUIKeyplaneView *)self setMovingFromFloating:0];
    return;
  }

  if (!type)
  {
    return;
  }

  [(TUIKeyplaneView *)self deactivateKeys];
  if (state != 3 && (type - 7) > 1)
  {
    sizeRatioConstraint = [(TUIKeyplaneView *)self sizeRatioConstraint];
    [sizeRatioConstraint setActive:0];

    heightConstraint = [(TUIKeyplaneView *)self heightConstraint];
    [heightConstraint setActive:1];

    preferredWidthConstraint = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [preferredWidthConstraint setActive:1];

    goto LABEL_24;
  }

  if ([(TUIKeyplaneView *)self isCurrentlySplit]|| [(TUIKeyplaneView *)self isInSplitTransition])
  {
    [(TUIKeyplaneView *)self updateSplitProgress:0.0];
    [(TUIKeyplaneView *)self finishSplitTransition];
  }

  if (state != 3)
  {
    [(TUIKeyplaneView *)self setFloatingTransitionProgress:0.0];
    [(TUIKeyplaneView *)self setMovingFromFloating:1];
    currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
    if ([currentKeyplane supportsSplitStyle])
    {
      fullKeyplaneForTransition = [(TUIKeyplaneView *)self fullKeyplaneForTransition];

      if (fullKeyplaneForTransition)
      {
LABEL_20:
        keyplane = self->_keyplane;
        currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
        v18 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", keyplane, [currentKeyplane2 currentVariantType]);
        [(TUIKeyplaneView *)self setFloatingKeyplaneForTransition:v18];
LABEL_22:

        goto LABEL_23;
      }

      currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
      [(TUIKeyplaneView *)self setFullKeyplaneForTransition:currentKeyplane];
    }

    goto LABEL_20;
  }

  [(TUIKeyplaneView *)self setFloatingTransitionProgress:1.0];
  [(TUIKeyplaneView *)self setMovingToFloating:1];
  currentKeyplane3 = [(TUIKeyplaneView *)self currentKeyplane];
  supportsFloatingStyle = [currentKeyplane3 supportsFloatingStyle];

  if (!supportsFloatingStyle)
  {
    v19 = self->_keyplane;
    currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
    v18 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", v19, [currentKeyplane2 currentVariantType]);
    [(TUIKeyplaneView *)self setFullKeyplaneForTransition:v18];
    goto LABEL_22;
  }

  currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
  [(TUIKeyplaneView *)self setFloatingKeyplaneForTransition:currentKeyplane2];
LABEL_23:

  [(TUIKeyplaneView *)self prepareForFloatingTransition];
LABEL_24:
  if (state == 4)
  {
    currentKeyplane4 = [(TUIKeyplaneView *)self currentKeyplane];
    supportsSplitStyle = [currentKeyplane4 supportsSplitStyle];

    if (supportsSplitStyle)
    {
      if ([(TUIKeyplaneView *)self isFloating])
      {
        [(TUIKeyplaneView *)self setIsFloating:0];
        [(TUIKeyplaneView *)self setMovingFromFloating:1];
        [(TUIKeyplaneView *)self setMovingToFloating:0];
      }

      fullKeyplaneForTransition2 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];

      if (!fullKeyplaneForTransition2)
      {
        currentKeyplane5 = [(TUIKeyplaneView *)self currentKeyplane];
        [(TUIKeyplaneView *)self setFullKeyplaneForTransition:currentKeyplane5];
      }
    }

    [(TUIKeyplaneView *)self setIsInSplitTransition:0];
  }
}

- (CGSize)sizeForVisualState:(int64_t)state
{
  if (state == 3)
  {
    [(TUIKeyplaneView *)self sizeForFloatingLayoutClass];
  }

  else
  {
    [(TUIKeyplaneView *)self sizeForDockedLayoutClass];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)updateFrameForKey:(id)key
{
  keyCopy = key;
  [keyCopy paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(TUIKeyplaneView *)self viewForKey:keyCopy];
  [v13 frame];
  if (v13)
  {
    v18 = v16;
    if (v16 > 0.0)
    {
      v19 = v17;
      if (v17 > 0.0)
      {
        v20 = v14;
        v21 = v15;
        [keyCopy paddedFrame];
        v89 = v23;
        v90 = v22;
        v87 = v25;
        v88 = v24;
        keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
        v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "rowNumber")}];
        v28 = [keyRowViews objectForKey:v27];

        superview = [v13 superview];
        v30 = superview;
        if (superview == v28)
        {
        }

        else
        {
          superview2 = [v13 superview];
          keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
          v33 = keyboardContentView;
          if (superview2 != keyboardContentView)
          {

LABEL_10:
            [(TUIKeyplaneView *)self keycapInsets];
            v39 = v20;
            v41 = v40;
            v42 = v21;
            v44 = v43;
            v85 = v42;
            v86 = v39;
            v82 = v46;
            v83 = v45;
            UIRectInset();
            v6 = v48;
            v8 = v49;
            v10 = v47;
            v12 = v50;
            if (v50 <= 0.0 || v47 <= 0.0)
            {
LABEL_39:

              goto LABEL_40;
            }

            if ([v13 layoutShape] != 2)
            {
              [keyCopy setFrame:{v86, v85, v18, v19}];
              [keyCopy setPaddedFrame:{v6, v8, v10, v12}];
LABEL_33:
              v93.origin.y = v89;
              v93.origin.x = v90;
              v93.size.height = v87;
              v93.size.width = v88;
              v96.origin.x = v6;
              v96.origin.y = v8;
              v96.size.width = v10;
              v96.size.height = v12;
              if (!CGRectEqualToRect(v93, v96))
              {
                [v13 setDrawFrame:{v6, v8, v10, v12}];
              }

              v94.origin.x = v6;
              v94.origin.y = v8;
              v94.size.width = v10;
              v94.size.height = v12;
              if (!CGRectIsEmpty(v94) && ([v13 isTransitioning] & 1) == 0)
              {
                renderConfig = [(TUIKeyplaneView *)self renderConfig];
                colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

                if (colorAdaptiveBackground)
                {
                  [v13 setNeedsDisplay];
                  [v13 prepareForDisplay];
                }
              }

              goto LABEL_39;
            }

            [keyCopy paddedFrame];
            if (CGRectEqualToRect(v91, *MEMORY[0x1E695F058]) || ([keyCopy frame], v80 = v51, objc_msgSend(v13, "frame"), v52 = v80, v80 != v53))
            {
              [keyCopy setFrame:{v86, v85, v18, v19}];
              [keyCopy setPaddedFrame:{v6, v8, v10, v12}];
            }

            currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
            name = [keyCopy name];
            v56 = [currentKeyplane keysForName:name];

            if ([v56 count] < 2)
            {
LABEL_32:

              goto LABEL_33;
            }

            firstObject = [v56 firstObject];
            lastObject = [v56 lastObject];
            v59 = [keyCopy isEqual:firstObject];
            v60 = lastObject;
            if ((v59 & 1) == 0 && (v61 = [keyCopy isEqual:lastObject], v60 = firstObject, !v61) || (-[TUIKeyplaneView viewForKey:](self, "viewForKey:", v60), (v62 = objc_claimAutoreleasedReturnValue()) == 0))
            {
LABEL_31:

              goto LABEL_32;
            }

            v81 = v62;
            v84 = [v13 shapeWhenMergedWithKey:v62 insets:{v41, v44, v83, v82}];
            isEmpty = [v84 isEmpty];
            currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
            isGridLayout = [currentKeyplane2 isGridLayout];
            v66 = isGridLayout;
            if (isEmpty)
            {
              if (!isGridLayout)
              {

                v68 = v84;
                goto LABEL_30;
              }

              v92.origin.x = v6;
              v92.origin.y = v8;
              v92.size.width = v10;
              v92.size.height = v12;
              IsEmpty = CGRectIsEmpty(v92);

              v68 = v84;
              if (IsEmpty)
              {
LABEL_30:

                goto LABEL_31;
              }

              [firstObject setFrame:{v86, v85, v18, v19}];
              [firstObject setPaddedFrame:{v6, v8, v10, v12}];
              [lastObject setFrame:{v86, v85, v18, v19}];
              v69 = lastObject;
              v70 = v6;
              v71 = v8;
              v72 = v10;
              v73 = v12;
            }

            else
            {

              if (!v66)
              {
                v68 = v84;
                [firstObject setShape:v84];
                [lastObject setShape:v84];
                goto LABEL_30;
              }

              v68 = v84;
              [v84 frame];
              [firstObject setFrame:?];
              [v84 paddedFrame];
              [firstObject setPaddedFrame:?];
              [v84 frame];
              [lastObject setFrame:?];
              [v84 paddedFrame];
              v69 = lastObject;
            }

            [v69 setPaddedFrame:{v70, v71, v72, v73}];
            goto LABEL_30;
          }

          currentHandBias = [(TUIKeyplaneView *)self currentHandBias];

          if (!currentHandBias)
          {
            goto LABEL_10;
          }
        }

        [v13 bounds];
        [(TUIKeyplaneView *)self convertRect:v13 fromView:?];
        v20 = v35;
        v21 = v36;
        v18 = v37;
        v19 = v38;
        goto LABEL_10;
      }
    }
  }

LABEL_40:

  v76 = v6;
  v77 = v8;
  v78 = v10;
  v79 = v12;
  result.size.height = v79;
  result.size.width = v78;
  result.origin.y = v77;
  result.origin.x = v76;
  return result;
}

- (void)setOverrideScreenTraits:(id)traits
{
  v31 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  if (self->_screenTraits == traitsCopy)
  {
    [(TUIKeyplaneView *)self _generateFactoryIfNeeded];
  }

  else
  {
    objc_storeStrong(&self->_screenTraits, traits);
    factory = self->_factory;
    self->_factory = 0;

    [(TUIKeyplaneView *)self _generateFactoryIfNeeded];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
    allValues = [keyRowViews allValues];

    v9 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          keyLayoutStyle = [(TUIKeyplaneView *)self keyLayoutStyle];
          factory = [(TUIKeyplaneView *)self factory];
          [v13 updateKeysInRowWithStyle:keyLayoutStyle factory:factory];
        }

        v10 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }
  }

  [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:[(TUIKeyplaneView *)self isCurrentlySplit]];
  v17 = v16;
  v19 = v18;
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  if (!currentKeyplane || [(TUIKeyplaneView *)self isInSizeTransition]|| ([(TUIKeyplaneView *)self preferredSize], v17 == v22) && v19 == v21)
  {
  }

  else
  {
    screenTraits = [(TUIKeyplaneView *)self screenTraits];
    [screenTraits keyboardWidth];
    v25 = v24;

    if (v25 > 0.0)
    {
      [(TUIKeyplaneView *)self updateToSize:v17, v19];
    }
  }
}

- (void)_regenerateFactoryPreservingUpdates:(BOOL)updates
{
  v28 = *MEMORY[0x1E69E9840];
  factory = self->_factory;
  if (factory && updates)
  {
    preferStringKeycapOverImage = [(UIKBRenderFactory *)factory preferStringKeycapOverImage];
    allowsPaddles = [(UIKBRenderFactory *)self->_factory allowsPaddles];
    [(UIKBRenderFactory *)self->_factory stretchFactor];
    v8 = v7;
    v10 = v9;
    v11 = self->_factory;
    self->_factory = 0;

    [(TUIKeyplaneView *)self _generateFactoryIfNeeded];
    [(UIKBRenderFactory *)self->_factory setPreferStringKeycapOverImage:preferStringKeycapOverImage];
    [(UIKBRenderFactory *)self->_factory setAllowsPaddles:allowsPaddles];
    if ([(UIKBRenderFactory *)self->_factory allowsPaddles])
    {
      layoutName = [(UIKBTree *)self->_keyplane layoutName];
      v13 = [layoutName isEqualToString:@"Thai-24-Key"];

      if (v13)
      {
        [(UIKBRenderFactory *)self->_factory setAllowsPaddles:0];
      }
    }

    [(UIKBRenderFactory *)self->_factory setStretchFactor:v8, v10];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
    allValues = [keyRowViews allValues];

    v16 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(allValues);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          keyLayoutStyle = [(TUIKeyplaneView *)self keyLayoutStyle];
          factory = [(TUIKeyplaneView *)self factory];
          [v20 updateKeysInRowWithStyle:keyLayoutStyle factory:factory];
        }

        v17 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

  else
  {
    self->_factory = 0;

    [(TUIKeyplaneView *)self _generateFactoryIfNeeded];
  }
}

- (void)setRenderingContext:(id)context
{
  contextCopy = context;
  isFloating = [contextCopy isFloating];
  isFloating2 = [(UIKBRenderingContext *)self->_renderingContext isFloating];
  objc_storeStrong(&self->_renderingContext, context);
  [(TUIKeyplaneView *)self _generateRenderingContextIfNeeded];
  if (isFloating == isFloating2 && (factory = self->_factory) != 0)
  {
    [(UIKBRenderFactory *)factory setRenderingContext:self->_renderingContext];
  }

  else
  {
    [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
  }
}

- (void)setRenderConfig:(id)config
{
  v32 = *MEMORY[0x1E69E9840];
  configCopy = config;
  renderConfig = self->_renderConfig;
  if (!renderConfig)
  {
    LOBYTE(v7) = 1;
    if (configCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    renderConfigForCurrentTraitCollection = [(TUIKeyplaneView *)self renderConfigForCurrentTraitCollection];
    goto LABEL_6;
  }

  lightKeyboard = [(UIKBRenderConfig *)renderConfig lightKeyboard];
  v7 = lightKeyboard ^ [configCopy lightKeyboard];
  if (!configCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  renderConfigForCurrentTraitCollection = configCopy;
LABEL_6:
  v9 = self->_renderConfig;
  self->_renderConfig = renderConfigForCurrentTraitCollection;

  keyplane = [(TUIKeyplaneView *)self keyplane];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if ([configCopy usesCompactKeycapsFont])
    {
      keyplane2 = [(TUIKeyplaneView *)self keyplane];
      isKanaKeyboard = [keyplane2 isKanaKeyboard];

      if (isKanaKeyboard)
      {
        [configCopy setUsesCompactKeycapsFont:0];
        usesCompactKeycapsFont = [(UIKBRenderConfig *)self->_renderConfig usesCompactKeycapsFont];
        v7 = usesCompactKeycapsFont ^ [configCopy usesCompactKeycapsFont];
      }
    }
  }

  renderingContext = [(UIKBRenderFactory *)self->_factory renderingContext];

  if (renderingContext)
  {
    v16 = self->_renderConfig;
    renderingContext2 = [(UIKBRenderFactory *)self->_factory renderingContext];
    [renderingContext2 setRenderConfig:v16];
  }

  else
  {
    renderingContext2 = [MEMORY[0x1E69DCB60] renderingContextForRenderConfig:self->_renderConfig];
    screenTraits = [(TUIKeyplaneView *)self screenTraits];
    if (screenTraits)
    {
      screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
      [renderingContext2 setIsFloating:{objc_msgSend(screenTraits2, "isFloating")}];
    }

    else
    {
      [renderingContext2 setIsFloating:{-[UIKBTree isFloating](self->_keyplane, "isFloating")}];
    }

    [(UIKBRenderFactory *)self->_factory setRenderingContext:renderingContext2];
  }

  if (((configCopy != 0) & v7) == 1)
  {
    [(TUIKeyplaneView *)self setNeedsDisplay];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  allValues = [keyRowViews allValues];

  v22 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(allValues);
        }

        v26 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v26 setRenderConfig:self->_renderConfig];
        }
      }

      v23 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v23);
  }
}

- (id)renderConfigForCurrentTraitCollection
{
  traitCollection = [(TUIKeyplaneView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x1E69DCB48] darkConfig];
  }

  else
  {
    [MEMORY[0x1E69DCB48] defaultConfig];
  }
  v4 = ;

  return v4;
}

- (id)viewForBaseKey:(id)key
{
  v4 = [(TUIKeyplaneView *)self cacheIdentifierForKey:key withState:2];
  storedKeyViews = [(TUIKeyplaneView *)self storedKeyViews];
  v6 = [storedKeyViews objectForKey:v4];

  return v6;
}

- (id)keyViewForTree:(id)tree
{
  treeCopy = tree;
  v5 = -[TUIKeyplaneView cacheIdentifierForKey:withState:](self, "cacheIdentifierForKey:withState:", treeCopy, [treeCopy state]);
  storedKeyViews = [(TUIKeyplaneView *)self storedKeyViews];
  v7 = [storedKeyViews objectForKey:v5];

  if ([treeCopy displayTypeHint] == 10 && !v7)
  {
    v8 = [(TUIKeyplaneView *)self cacheIdentifierForKey:treeCopy withState:4];

    storedKeyViews2 = [(TUIKeyplaneView *)self storedKeyViews];
    v7 = [storedKeyViews2 objectForKey:v8];

    v5 = v8;
  }

  return v7;
}

- (id)cachedVariantViewForTree:(id)tree state:(int)state
{
  v4 = *&state;
  treeCopy = tree;
  v7 = [(TUIKeyplaneView *)self cacheIdentifierForKey:treeCopy withState:v4];
  storedVariantViews = [(TUIKeyplaneView *)self storedVariantViews];
  v9 = [storedVariantViews objectForKey:v7];

  if (v9)
  {
    factory = [(TUIKeyplaneView *)self factory];
    keyplane = [(TUIKeyplaneView *)self keyplane];
    v12 = [factory traitsForKey:treeCopy onKeyplane:keyplane];

    [v9 setRenderTraits:v12];
    renderConfig = [(TUIKeyplaneView *)self renderConfig];
    [v9 updateBackgroundMaterialsForRenderConfig:renderConfig];

    [v9 setTouchesForwardingView:self];
  }

  return v9;
}

- (id)variantViewForKey:(id)key cacheID:(id)d
{
  keyCopy = key;
  dCopy = d;
  if (!dCopy)
  {
    backingTree = [keyCopy backingTree];
    backingTree2 = [keyCopy backingTree];
    dCopy = -[TUIKeyplaneView cacheIdentifierForKey:withState:](self, "cacheIdentifierForKey:withState:", backingTree, [backingTree2 state]);
  }

  storedVariantViews = [(TUIKeyplaneView *)self storedVariantViews];
  v11 = [storedVariantViews objectForKey:dCopy];

  factory = [(TUIKeyplaneView *)self factory];
  backingTree3 = [keyCopy backingTree];
  keyplane = [(TUIKeyplaneView *)self keyplane];
  v15 = [factory traitsForKey:backingTree3 onKeyplane:keyplane];

  if (v11)
  {
    [v11 setRenderTraits:v15];
  }

  else
  {
    v16 = objc_opt_class();
    renderingContext = [(TUIKeyplaneView *)self renderingContext];
    v18 = [v16 selectorViewClassForKey:keyCopy forRenderingContext:renderingContext];

    variantSelectorType = [v18 variantSelectorType];
    if ((variantSelectorType - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = variantSelectorType;
      currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
      [currentKeyplane updateVariantOrderForKey:keyCopy withVariantSelectorType:v20];
    }

    v11 = [[v18 alloc] initWithKey:keyCopy renderTraits:v15];
    storedVariantViews2 = [(TUIKeyplaneView *)self storedVariantViews];
    [storedVariantViews2 setObject:v11 forKey:dCopy];
  }

  renderConfig = [(TUIKeyplaneView *)self renderConfig];
  [v11 updateBackgroundMaterialsForRenderConfig:renderConfig];

  [v11 setTouchesForwardingView:self];

  return v11;
}

- (BOOL)_shouldAllowKey:(id)key
{
  keyCopy = key;
  if (![keyCopy visible])
  {
    goto LABEL_6;
  }

  keys = [(UIKBTree *)self->_keyplane keys];
  if (![keys containsObject:keyCopy])
  {
    parentKey = [keyCopy parentKey];

    if (parentKey)
    {
      goto LABEL_5;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v7 = 1;
LABEL_7:

  return v7;
}

- (void)removeKeyFromDelayedDeactivationSet:(id)set
{
  setCopy = set;
  if (setCopy && [(NSMutableDictionary *)self->_delayedDeactivationKeys count])
  {
    currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
    effectsType = [currentKeyplane effectsType];

    if (effectsType == 1)
    {
      [setCopy setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    delayedDeactivationKeys = self->_delayedDeactivationKeys;
    name = [setCopy name];
    [(NSMutableDictionary *)delayedDeactivationKeys removeObjectForKey:name];
  }
}

- (void)addKeyToDelayedDeactivationSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (setCopy)
  {
    v6 = 59000000;
    if ([setCopy displayTypeHint] == 10)
    {
      v7 = [(TUIKeyplaneView *)self viewForKey:v5];
      v8 = [v7 layerForRenderFlags:4];
      v9 = [v8 animationForKey:@"pan opacity"];

      if (v9)
      {
        [v7 endingTransitionDuration];
        v6 = (v10 * 1000000000.0);
      }
    }

    delayedDeactivationKeys = self->_delayedDeactivationKeys;
    name = [v5 name];
    [(NSMutableDictionary *)delayedDeactivationKeys setObject:v5 forKey:name];

    v13 = dispatch_time(0, v6);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__TUIKeyplaneView_addKeyToDelayedDeactivationSet___block_invoke;
    v14[3] = &unk_1E72D85E0;
    v14[4] = self;
    v15 = v5;
    dispatch_after(v13, MEMORY[0x1E69E96A0], v14);
  }
}

void __50__TUIKeyplaneView_addKeyToDelayedDeactivationSet___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 776);
  v3 = [*(a1 + 40) name];
  v7 = [v2 objectForKey:v3];

  v4 = v7;
  if (v7)
  {
    v5 = [*(a1 + 32) currentKeyplane];
    if ([v5 effectsType] == 1 && objc_msgSend(MEMORY[0x1E69DCBB8], "isKeyboardProcess") && objc_msgSend(v7, "interactionType") == 14)
    {
      v6 = [v7 state];

      if (v6 == 8)
      {
        [*(a1 + 32) removeKeyFromDelayedDeactivationSet:v7];
LABEL_9:
        v4 = v7;
        goto LABEL_10;
      }
    }

    else
    {
    }

    [*(a1 + 32) setState:2 forKey:v7];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)deactivateAdaptiveKey:(id)key
{
  keyCopy = key;
  [(TUIKeyplaneView *)self setState:2 forKey:keyCopy];
  [(TUIKeyplaneView *)self removeKeyFromDelayedDeactivationSet:keyCopy];
  -[TUIKeyplaneView deactivateKey:previousState:](self, "deactivateKey:previousState:", keyCopy, [keyCopy state]);
}

- (void)dimKeys:(id)keys
{
  v16 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  storedKeyViews = [(TUIKeyplaneView *)self storedKeyViews];
  allValues = [storedKeyViews allValues];

  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10++) dimKeyUsingOpacities:keysCopy];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)hitTestVariantKeyAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  activeKey = [(TUIKeyplaneView *)self activeKey];
  backingTree = [activeKey backingTree];
  state = [backingTree state];

  if (state == 16)
  {
    backingTree2 = [activeKey backingTree];
    v10 = [(TUIKeyplaneView *)self cachedVariantViewForTree:backingTree2];

    superview = [v10 superview];
    if (superview && (v12 = superview, [v10 bounds], IsEmpty = CGRectIsEmpty(v17), v12, !IsEmpty) && (-[TUIKeyplaneView convertPoint:toView:](self, "convertPoint:toView:", v10, x, y), objc_msgSend(v10, "pointInside:withEvent:", 0)))
    {
      backingTree3 = [activeKey backingTree];
    }

    else
    {
      backingTree3 = 0;
    }
  }

  else
  {
    backingTree3 = 0;
  }

  return backingTree3;
}

- (void)finishedSelectingVariantForKey:(id)key atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  keyCopy = key;
  if ([keyCopy interactionType] == 9)
  {
    [(TUIKeyplaneView *)self removeKeyFromDelayedDeactivationSet:keyCopy];
  }

  else
  {
    activeKey = [(TUIKeyplaneView *)self activeKey];
    backingTree = [activeKey backingTree];

    activeKey2 = [(TUIKeyplaneView *)self activeKey];
    if (activeKey2)
    {
      v10 = activeKey2;
      state = [backingTree state];

      if (state == 16)
      {
        activeKey3 = [(TUIKeyplaneView *)self activeKey];
        v13 = [(TUIKeyplaneView *)self cacheIdentifierForKey:backingTree withState:16];
        v14 = [(TUIKeyplaneView *)self variantViewForKey:activeKey3 cacheID:v13];

        if (v14)
        {
          [v14 bounds];
          if (!CGRectIsEmpty(v19))
          {
            [(TUIKeyplaneView *)self convertPoint:v14 toView:x, y];
            if ([v14 pointInside:0 withEvent:?])
            {
              [v14 finishVariantSelection];
            }

            else
            {
              [backingTree setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
              [(TUIKeyplaneView *)self setState:2 forKey:backingTree];
            }
          }
        }
      }
    }

    if (([backingTree isEqual:keyCopy] & 1) == 0 && objc_msgSend(backingTree, "state") == 16)
    {
      v15 = [(TUIKeyplaneView *)self cachedVariantViewForTree:keyCopy];
      v16 = v15;
      if (v15)
      {
        [v15 bounds];
        if (!CGRectIsEmpty(v20))
        {
          [(TUIKeyplaneView *)self convertPoint:v16 toView:x, y];
          if ([v16 pointInside:0 withEvent:?])
          {
            [v16 finishVariantSelection];
          }

          else
          {
            [keyCopy setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
            [(TUIKeyplaneView *)self setState:2 forKey:keyCopy];
          }
        }
      }
    }
  }
}

- (void)changingSelectedVariantForKey:(id)key atPoint:(CGPoint)point isDragging:(BOOL)dragging
{
  y = point.y;
  x = point.x;
  keyCopy = key;
  activeKey = [(TUIKeyplaneView *)self activeKey];
  backingTree = [activeKey backingTree];

  activeKey2 = [(TUIKeyplaneView *)self activeKey];
  if (activeKey2)
  {
    v12 = activeKey2;
    state = [backingTree state];

    if (state == 16)
    {
      activeKey3 = [(TUIKeyplaneView *)self activeKey];
      v15 = [(TUIKeyplaneView *)self cacheIdentifierForKey:backingTree withState:16];
      v16 = [(TUIKeyplaneView *)self variantViewForKey:activeKey3 cacheID:v15];

      if (!v16)
      {
        goto LABEL_11;
      }

      [v16 bounds];
      if (CGRectIsEmpty(v31))
      {
        goto LABEL_11;
      }

      [(TUIKeyplaneView *)self convertPoint:v16 toView:x, y];
      v18 = v17;
      v20 = v19;
      currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
      if ([currentKeyplane effectsType] == 1 && dragging)
      {
      }

      else
      {
        v22 = [v16 pointInside:0 withEvent:{v18, v20}];

        if ((v22 & 1) == 0)
        {
          [backingTree setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
          [(TUIKeyplaneView *)self setState:2 forKey:backingTree];
          goto LABEL_11;
        }
      }

      [v16 updateSelectorForPoint:{v18, v20}];
LABEL_11:
    }
  }

  if ([backingTree state] == 16 && (objc_msgSend(backingTree, "isEqual:", keyCopy) & 1) == 0)
  {
    v23 = [(TUIKeyplaneView *)self cachedVariantViewForTree:keyCopy];
    v24 = v23;
    if (v23)
    {
      [v23 bounds];
      if (!CGRectIsEmpty(v32))
      {
        [(TUIKeyplaneView *)self convertPoint:v24 toView:x, y];
        v26 = v25;
        v28 = v27;
        if ([v24 pointInside:0 withEvent:?])
        {
          [v24 updateSelectorForPoint:{v26, v28}];
        }

        else
        {
          [keyCopy setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
          [(TUIKeyplaneView *)self setState:2 forKey:keyCopy];
        }
      }
    }
  }
}

- (void)tappedToDismissSelector
{
  activeKey = [(TUIKeyplaneView *)self activeKey];
  backingTree = [activeKey backingTree];

  if (!-[TUIKeyplaneView dismissingKeyboardMenu](self, "dismissingKeyboardMenu") && [backingTree interactionType] == 9)
  {
    v5 = [(TUIKeyplaneView *)self viewForBaseKey:backingTree];
    popupMenu = [v5 popupMenu];

    if (popupMenu)
    {
      activeKey2 = [(TUIKeyplaneView *)self activeKey];
      v8 = [(TUIKeyplaneView *)self cacheIdentifierForKey:backingTree withState:16];
      v9 = [(TUIKeyplaneView *)self variantViewForKey:activeKey2 cacheID:v8];

      activeVariantViews = [(TUIKeyplaneView *)self activeVariantViews];
      [activeVariantViews removeObject:v9];

      [(TUIKeyplaneView *)self setDismissingKeyboardMenu:1];
      [(TUIKeyplaneView *)self removeKeyFromDelayedDeactivationSet:backingTree];
      [(TUIKeyplaneView *)self setState:2 forKey:backingTree];
      v11 = MEMORY[0x1E69DD250];
      currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
      if ([currentKeyplane layoutClass] == 1)
      {
        v13 = 0.5;
      }

      else
      {
        v13 = 0.1;
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __42__TUIKeyplaneView_tappedToDismissSelector__block_invoke;
      v18[3] = &unk_1E72D85E0;
      v19 = v5;
      v20 = v9;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __42__TUIKeyplaneView_tappedToDismissSelector__block_invoke_2;
      v15[3] = &unk_1E72D8460;
      v15[4] = self;
      v16 = v19;
      v17 = v20;
      v14 = v20;
      [v11 animateWithDuration:50331648 delay:v18 options:v15 animations:v13 completion:0.0];
    }

    else
    {
      [(TUIKeyplaneView *)self setDismissingKeyboardMenu:0];
      [(TUIKeyplaneView *)self setState:2 forKey:backingTree];
    }
  }
}

uint64_t __42__TUIKeyplaneView_tappedToDismissSelector__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) popupMenu];

  if (v2)
  {
    v3 = [*(a1 + 32) popupMenu];
    [v3 setAlpha:0.0];
  }

  v4 = *(a1 + 40);

  return [v4 setAlpha:0.0];
}

uint64_t __42__TUIKeyplaneView_tappedToDismissSelector__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDismissingKeyboardMenu:0];
  v2 = [*(a1 + 40) popupMenu];
  [v2 removeFromSuperview];

  v3 = *(a1 + 48);

  return [v3 removeFromSuperview];
}

- (void)presentSelectorView:(id)view fromBaseKey:(id)key
{
  v59[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  keyCopy = key;
  v8 = keyCopy;
  if (viewCopy)
  {
    if (keyCopy)
    {
      superview = [viewCopy superview];

      if (superview)
      {
        v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
        baseKeyLayoutGuide = [viewCopy baseKeyLayoutGuide];
        topAnchor = [baseKeyLayoutGuide topAnchor];
        topAnchor2 = [v8 topAnchor];
        v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v59[0] = v47;
        baseKeyLayoutGuide2 = [viewCopy baseKeyLayoutGuide];
        leftAnchor = [baseKeyLayoutGuide2 leftAnchor];
        leftAnchor2 = [v8 leftAnchor];
        [(TUIKeyplaneView *)self keycapInsets];
        v43 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v10];
        v59[1] = v43;
        bottomAnchor = [v8 bottomAnchor];
        [viewCopy baseKeyLayoutGuide];
        v12 = v56 = v8;
        bottomAnchor2 = [v12 bottomAnchor];
        [(TUIKeyplaneView *)self keycapInsets];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v14];
        v59[2] = v15;
        rightAnchor = [v56 rightAnchor];
        baseKeyLayoutGuide3 = [viewCopy baseKeyLayoutGuide];
        rightAnchor2 = [baseKeyLayoutGuide3 rightAnchor];
        selfCopy = self;
        v20 = rightAnchor2;
        v51 = selfCopy;
        [(TUIKeyplaneView *)selfCopy keycapInsets];
        v22 = [rightAnchor constraintEqualToAnchor:v20 constant:v21];
        v59[3] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
        [v55 addObjectsFromArray:v23];

        v8 = v56;
        popupMenu = [v56 popupMenu];

        if (popupMenu)
        {
          [(TUIKeyplaneView *)v51 setDismissingKeyboardMenu:0];
          popupMenu2 = [v56 popupMenu];
          [popupMenu2 setAlpha:1.0];
          [viewCopy setAlpha:1.0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = viewCopy;
            [popupMenu2 _cornerRadius];
            if (v27 > 0.0)
            {
              v28 = [MEMORY[0x1E696B098] valueWithCGSize:{v27, v27}];
              [v26 setCornerRadiusOverride:v28];
            }
          }

          [popupMenu2 frame];
          if (v29 < 0.0)
          {
            [popupMenu2 frame];
            [popupMenu2 setFrame:0.0];
          }

          [viewCopy setPopupDelegate:v51];
          window = [(TUIKeyplaneView *)v51 window];
          rootViewController = [window rootViewController];
          view = [rootViewController view];
          [view bringSubviewToFront:popupMenu2];

          leadingAnchor = [viewCopy leadingAnchor];
          leadingAnchor2 = [popupMenu2 leadingAnchor];
          v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          v58[0] = v54;
          topAnchor3 = [viewCopy topAnchor];
          topAnchor4 = [popupMenu2 topAnchor];
          keyboardContentView2 = topAnchor3;
          trailingAnchor3 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
          v58[1] = trailingAnchor3;
          trailingAnchor = [viewCopy trailingAnchor];
          trailingAnchor2 = [popupMenu2 trailingAnchor];
          v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v58[2] = v39;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
          v41 = v55;
          [v55 addObjectsFromArray:v40];

          keyboardContentView = leadingAnchor;
          v8 = v56;
        }

        else
        {
          popupMenu2 = [viewCopy leadingAnchor];
          keyboardContentView = [(TUIKeyplaneView *)v51 keyboardContentView];
          leadingAnchor2 = [keyboardContentView leadingAnchor];
          v54 = [popupMenu2 constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
          v57[0] = v54;
          keyboardContentView2 = [(TUIKeyplaneView *)v51 keyboardContentView];
          topAnchor4 = [keyboardContentView2 trailingAnchor];
          trailingAnchor3 = [viewCopy trailingAnchor];
          trailingAnchor = [topAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor3];
          v57[1] = trailingAnchor;
          trailingAnchor2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
          v41 = v55;
          [v55 addObjectsFromArray:trailingAnchor2];
        }

        [MEMORY[0x1E696ACD8] activateConstraints:v41];
      }
    }
  }
}

- (void)deactivateKey:(id)key previousState:(int)state
{
  v4 = [(TUIKeyplaneView *)self viewForKey:key, *&state];
  [v4 setNeedsDisplay];
}

- (void)setState:(int)state forKey:(id)key
{
  v4 = *&state;
  v97 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  state = [keyCopy state];
  [keyCopy setState:v4];
  v8 = -[TUIKeyplaneView cacheIdentifierForKey:withState:](self, "cacheIdentifierForKey:withState:", keyCopy, [keyCopy state]);
  if (v4 > 0x14 || ((1 << v4) & 0x110010) == 0)
  {
    [(TUIKeyplaneView *)self removeKeyFromDelayedDeactivationSet:keyCopy];
  }

  v82 = [(TUIKeyplaneView *)self viewForKey:keyCopy];
  if ([v82 layoutShape] == 2)
  {
    currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
    name = [keyCopy name];
    v11 = [currentKeyplane keysForName:name];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v91 objects:v96 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v92;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v92 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v91 + 1) + 8 * i);
          if ([v17 state] != v4)
          {
            [(TUIKeyplaneView *)self setState:v4 forKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v91 objects:v96 count:16];
      }

      while (v14);
    }
  }

  v19 = v4 == 16 || v4 == 20;
  currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
  effectsType = [currentKeyplane2 effectsType];

  v84 = state;
  v83 = v8;
  v81 = v19;
  if (v4 == 4 && [keyCopy interactionType] == 2)
  {
    currentKeyplane3 = [(TUIKeyplaneView *)self currentKeyplane];
    if ([currentKeyplane3 supportsPaddles])
    {
      factory = [(TUIKeyplaneView *)self factory];
      allowsPaddles = [factory allowsPaddles];
    }

    else
    {
      allowsPaddles = 0;
    }
  }

  else
  {
    allowsPaddles = 0;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  selfCopy = self;
  activeVariantViews = [(TUIKeyplaneView *)self activeVariantViews];
  v25 = [activeVariantViews copy];

  v26 = [v25 countByEnumeratingWithState:&v87 objects:v95 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v88;
    do
    {
      v29 = 0;
      do
      {
        if (*v88 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v87 + 1) + 8 * v29);
        associatedTree = [v30 associatedTree];
        state2 = [associatedTree state];

        if ((allowsPaddles & 1) != 0 || (v4 | 4) == 0x14 || effectsType != 1)
        {
          associatedTree2 = [v30 associatedTree];

          if (associatedTree2 != keyCopy)
          {
            if (state2 == 16 || state2 == 4)
            {
              associatedTree3 = [v30 associatedTree];
              [associatedTree3 setState:2];
            }

            [v30 removeFromSuperview];
            activeVariantViews2 = [(TUIKeyplaneView *)selfCopy activeVariantViews];
            [activeVariantViews2 removeObject:v30];
          }
        }

        ++v29;
      }

      while (v27 != v29);
      v37 = [v25 countByEnumeratingWithState:&v87 objects:v95 count:16];
      v27 = v37;
    }

    while (v37);
  }

  activeKey = [(TUIKeyplaneView *)selfCopy activeKey];
  v39 = v84;
  v41 = v82;
  v40 = v83;
  if (activeKey)
  {
    v42 = activeKey;
    dismissingKeyboardMenu = [(TUIKeyplaneView *)selfCopy dismissingKeyboardMenu];

    v44 = v4 != 20 && v84 == v4;
    v45 = !v44;
    if (!dismissingKeyboardMenu && v45)
    {
      if ([keyCopy selectedVariantIndex] != 0x7FFFFFFFFFFFFFFFLL || v4 <= 0x14 && ((1 << v4) & 0x110100) != 0 || (v84 != 1 ? (v80 = v4 == 2) : (v80 = 0), v80 || v84 == 4))
      {
        activeKey2 = [(TUIKeyplaneView *)selfCopy activeKey];
        backingTree = [activeKey2 backingTree];
        v48 = [(TUIKeyplaneView *)selfCopy cachedVariantViewForTree:backingTree state:v84];

        superview = [v48 superview];

        if (superview)
        {
          [v48 removeFromSuperview];
        }

        activeVariantViews3 = [(TUIKeyplaneView *)selfCopy activeVariantViews];
        [activeVariantViews3 removeObject:v48];

        if (v84)
        {
          [(TUIKeyplaneView *)selfCopy setActiveKey:0];
        }
      }
    }
  }

  if ((allowsPaddles & 1) == 0 && (v4 | 4) != 0x14)
  {
    if (v82)
    {
      v41 = v82;
      v73 = v41;
    }

    else
    {
      v77 = [TUIKey keyFromKBTree:keyCopy];
      keyplane = [(TUIKeyplaneView *)selfCopy keyplane];
      [v77 setKeyplane:keyplane];

      [v77 setStyle:{-[TUIKeyplaneView keyLayoutStyle](selfCopy, "keyLayoutStyle")}];
      v73 = [objc_alloc(-[TUIKeyplaneView preferredKeyViewClass](selfCopy "preferredKeyViewClass"))];
      storedKeyViews = [(TUIKeyplaneView *)selfCopy storedKeyViews];
      [storedKeyViews setObject:v73 forKey:v83];
    }

LABEL_88:
    keyplaneRenderConfig = [(TUIKeyplaneView *)selfCopy keyplaneRenderConfig];
    [v73 setRenderConfig:keyplaneRenderConfig];

    factory2 = [(TUIKeyplaneView *)selfCopy factory];
    [v73 setFactory:factory2];

    v74 = v73;
    goto LABEL_89;
  }

  if (!v82)
  {
    v41 = [(TUIKeyplaneView *)selfCopy viewForBaseKey:keyCopy];
  }

  v51 = [TUIKey keyFromKBTree:keyCopy];
  keyplane2 = [(TUIKeyplaneView *)selfCopy keyplane];
  [v51 setKeyplane:keyplane2];

  currentKeyplane4 = [(TUIKeyplaneView *)selfCopy currentKeyplane];
  currentKeyplane5 = [(TUIKeyplaneView *)selfCopy currentKeyplane];
  [v51 setStyle:{objc_msgSend(currentKeyplane4, "keyStyleForLayoutClass:", objc_msgSend(currentKeyplane5, "layoutClass"))}];

  v55 = [(TUIKeyplaneView *)selfCopy variantViewForKey:v51 cacheID:v83];
  [(TUIKeyplaneView *)selfCopy setActiveKey:v51];
  window = [(TUIKeyplaneView *)selfCopy window];
  rootViewController = [window rootViewController];
  view = [rootViewController view];

  if (v55)
  {
    if (view)
    {
      superview2 = [v55 superview];

      if (!superview2)
      {
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        if (objc_opt_respondsToSelector())
        {
          _containerForKeyplaneViews = [view _containerForKeyplaneViews];
          v61 = _containerForKeyplaneViews;
          if (_containerForKeyplaneViews)
          {
            v62 = _containerForKeyplaneViews;
          }

          else
          {
            v62 = view;
          }

          v63 = v62;

          view = v63;
        }

        [view addSubview:v55];
        popupMenu = [v41 popupMenu];

        v65 = !v81;
        if (popupMenu)
        {
          v65 = 1;
        }

        if ((v65 & 1) == 0)
        {
          [v55 updateVariantsIfNeededForKey:keyCopy];
        }

        [(TUIKeyplaneView *)selfCopy presentSelectorView:v55 fromBaseKey:v41];
        activeVariantViews4 = [(TUIKeyplaneView *)selfCopy activeVariantViews];

        if (!activeVariantViews4)
        {
          array = [MEMORY[0x1E695DF70] array];
          [(TUIKeyplaneView *)selfCopy setActiveVariantViews:array];
        }

        activeVariantViews5 = [(TUIKeyplaneView *)selfCopy activeVariantViews];
        [activeVariantViews5 addObject:v55];

        [v55 layoutIfNeeded];
      }
    }
  }

  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  textInputTraits = [activeInstance textInputTraits];
  if ([textInputTraits isSecureTextEntry])
  {
    v71 = 18;
  }

  else
  {
    v71 = 0;
  }

  layer = [v55 layer];
  [layer setDisableUpdateMask:v71];

  v73 = 0;
  v74 = 0;
  v40 = v83;
  v39 = v84;
  if (v4 != 16)
  {
    goto LABEL_88;
  }

LABEL_89:
  [v74 updateStateFrom:v39 to:v4];
}

- (void)layoutKeysInRows:(id)rows
{
  v134[1] = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  if (!keyRowViews || (v6 = keyRowViews, -[TUIKeyplaneView keyRowViews](self, "keyRowViews"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v9 = objc_msgSend(rowsCopy, "count"), v7, v6, v8 < v9))
  {
    -[TUIKeyplaneView layoutRows:](self, "layoutRows:", [rowsCopy count]);
  }

  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  if ([currentKeyplane isGridLayout])
  {
    v11 = 7;
  }

  else
  {
    v11 = 0;
  }

  bottomRowSizingGuide = [(TUIKeyplaneView *)self bottomRowSizingGuide];

  if (bottomRowSizingGuide)
  {
    bottomRowSizingGuide2 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
    owningView = [bottomRowSizingGuide2 owningView];

    if (owningView)
    {
      goto LABEL_12;
    }

    bottomRowSizingConstraint = [(TUIKeyplaneView *)self bottomRowSizingConstraint];
    [bottomRowSizingConstraint setActive:0];
  }

  else
  {
    bottomRowSizingConstraint = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(TUIKeyplaneView *)self setBottomRowSizingGuide:bottomRowSizingConstraint];
  }

  keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
  bottomRowSizingGuide3 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
  [keyboardContentView addLayoutGuide:bottomRowSizingGuide3];

LABEL_12:
  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  if ([screenTraits idiom] == 3)
  {
    v19 = UIKeyboardAlwaysShowCandidateBarForCurrentInputMode();

    if (v19)
    {
      v20 = [rowsCopy mutableCopy];
      currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
      v22 = [currentKeyplane2 candidateBarKeyFromKeyplane:self->_keyplane];

      v134[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:1];
      [v20 insertObject:v23 atIndex:0];

      rowsCopy = v20;
    }
  }

  else
  {
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  keyplane = [(TUIKeyplaneView *)self keyplane];
  name = [keyplane name];
  v88 = [name containsString:@"Korean10Key"];

  if ([rowsCopy count])
  {
    v27 = 0;
    v89 = rowsCopy;
    selfCopy = self;
    v98 = dictionary;
    do
    {
      keyRowViews2 = [(TUIKeyplaneView *)self keyRowViews];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
      v30 = [keyRowViews2 objectForKey:v29];

      v96 = [rowsCopy objectAtIndex:v27];
      v31 = [rowsCopy count] - 1;
      currentKeyplane3 = [(TUIKeyplaneView *)self currentKeyplane];
      v33 = currentKeyplane3;
      if (v27 != v31 || v11 == 7)
      {
        effectsType = [currentKeyplane3 effectsType];

        if (effectsType == 1)
        {
          keySizeReferenceGuide = [(TUIKeyplaneView *)self keySizeReferenceGuide];
        }

        else
        {
          v38 = objc_alloc_init(MEMORY[0x1E69DCC20]);
          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Row%liSizingGuide", v27];
          v93 = v38;
          [v38 setIdentifier:v39];

          if (((v27 == [rowsCopy count] - 1) & v88) == 1)
          {
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v40 = v96;
            v41 = [v40 countByEnumeratingWithState:&v122 objects:v133 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v123;
              do
              {
                for (i = 0; i != v42; ++i)
                {
                  if (*v123 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v122 + 1) + 8 * i);
                  if ([v45 layoutType] == 3 && objc_msgSend(v45, "layoutShape") != 2)
                  {
                    [v45 setLayoutType:2];
                  }
                }

                v42 = [v40 countByEnumeratingWithState:&v122 objects:v133 count:16];
              }

              while (v42);
            }

            rowsCopy = v89;
          }

          keySizeReferenceGuide = v93;
        }
      }

      else
      {
        currentKeyplane4 = [(TUIKeyplaneView *)self currentKeyplane];
        v35 = [v33 variantTypeIncludesSpaceBar:{objc_msgSend(currentKeyplane4, "currentVariantType")}];

        if (v35)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        keySizeReferenceGuide = [(TUIKeyplaneView *)self bottomRowSizingGuide];
        [(TUIKeyplaneView *)self updateBottomRowSizingGuide];
      }

      [v30 layoutRowWithKeys:v96 guide:keySizeReferenceGuide type:v11];
      if ([dictionary count])
      {
        v92 = v11;
        v94 = keySizeReferenceGuide;
        v90 = v27;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        obj = dictionary;
        v101 = [obj countByEnumeratingWithState:&v118 objects:v132 count:16];
        if (v101)
        {
          v99 = *v119;
          do
          {
            v46 = 0;
            do
            {
              if (*v119 != v99)
              {
                objc_enumerationMutation(obj);
              }

              v107 = v46;
              v47 = *(*(&v118 + 1) + 8 * v46);
              v48 = [obj objectForKey:v47];
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v105 = v48;
              doubleHeightKeysForRow = [v48 doubleHeightKeysForRow];
              v50 = [doubleHeightKeysForRow countByEnumeratingWithState:&v114 objects:v131 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v115;
                do
                {
                  for (j = 0; j != v51; ++j)
                  {
                    if (*v115 != v52)
                    {
                      objc_enumerationMutation(doubleHeightKeysForRow);
                    }

                    v54 = *(*(&v114 + 1) + 8 * j);
                    v55 = [v54 key];
                    representedString = [v55 representedString];
                    v57 = [representedString isEqualToString:v47];

                    if (v57)
                    {
                      bottomAnchor = [v54 bottomAnchor];
                      bottomAnchor2 = [v30 bottomAnchor];
                      v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
                      v130 = v60;
                      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
                      [array addObjectsFromArray:v61];
                    }
                  }

                  v51 = [doubleHeightKeysForRow countByEnumeratingWithState:&v114 objects:v131 count:16];
                }

                while (v51);
              }

              v46 = v107 + 1;
            }

            while (v107 + 1 != v101);
            v101 = [obj countByEnumeratingWithState:&v118 objects:v132 count:16];
          }

          while (v101);
        }

        self = selfCopy;
        dictionary = v98;
        rowsCopy = v89;
        v27 = v90;
        v11 = v92;
        keySizeReferenceGuide = v94;
      }

      if (v11 == 7 && [v30 rowHasDoubleHeightKeys])
      {
        v95 = keySizeReferenceGuide;
        v91 = v27;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        doubleHeightKeysForRow2 = [v30 doubleHeightKeysForRow];
        obja = [doubleHeightKeysForRow2 countByEnumeratingWithState:&v110 objects:v129 count:16];
        if (obja)
        {
          v102 = *v111;
          do
          {
            for (k = 0; k != obja; k = k + 1)
            {
              if (*v111 != v102)
              {
                objc_enumerationMutation(doubleHeightKeysForRow2);
              }

              v63 = *(*(&v110 + 1) + 8 * k);
              v64 = [v63 key];
              representedString2 = [v64 representedString];

              v66 = [dictionary objectForKey:representedString2];
              topAnchor = [v63 topAnchor];
              if (v66)
              {
                topAnchor2 = [v66 topAnchor];
                [topAnchor constraintEqualToAnchor:topAnchor2];
                v106 = topAnchor;
                v69 = v66;
                v71 = v70 = representedString2;
                v128[0] = v71;
                [v63 bottomAnchor];
                v72 = v108 = v63;
                bottomAnchor3 = [v30 bottomAnchor];
                v74 = [v72 constraintEqualToAnchor:bottomAnchor3];
                v128[1] = v74;
                v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
                [array addObjectsFromArray:v75];

                dictionary = v98;
                representedString2 = v70;
                v66 = v69;

                [v98 removeObjectForKey:representedString2];
                [v108 setHidden:1];
              }

              else
              {
                topAnchor3 = [v30 topAnchor];
                v77 = [topAnchor constraintEqualToAnchor:topAnchor3];
                v127 = v77;
                v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
                [array addObjectsFromArray:v78];

                [dictionary setObject:v30 forKey:representedString2];
                currentKeyplane5 = [(TUIKeyplaneView *)selfCopy currentKeyplane];
                effectsType2 = [currentKeyplane5 effectsType];

                if (effectsType2 == 1)
                {
                  heightAnchor = [v63 heightAnchor];
                  v82 = [heightAnchor constraintEqualToConstant:132.0];
                  v126 = v82;
                  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v126 count:1];
                  [array addObjectsFromArray:v83];
                }
              }
            }

            obja = [doubleHeightKeysForRow2 countByEnumeratingWithState:&v110 objects:v129 count:16];
          }

          while (obja);
        }

        v27 = v91;
        v11 = 7;
        keySizeReferenceGuide = v95;
        rowsCopy = v89;
        self = selfCopy;
      }

      if ([(TUIKeyplaneView *)self supportsSplit]&& ![(TUIKeyplaneView *)self isInSizeTransition])
      {
        [v30 toggleConstraintsForSplit:{-[TUIKeyplaneView isCurrentlySplit](self, "isCurrentlySplit")}];
      }

      ++v27;
    }

    while (v27 < [rowsCopy count]);
  }

  keyRowConstraints = [(TUIKeyplaneView *)self keyRowConstraints];
  v85 = [keyRowConstraints objectForKey:@"TUIDoubleHeightConstraints"];

  if (v85)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:v85];
    keyRowConstraints2 = [(TUIKeyplaneView *)self keyRowConstraints];
    [keyRowConstraints2 removeObjectForKey:@"TUIDoubleHeightConstraints"];
  }

  if ([array count])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:array];
    keyRowConstraints3 = [(TUIKeyplaneView *)self keyRowConstraints];
    [keyRowConstraints3 setObject:array forKey:@"TUIDoubleHeightConstraints"];
  }

  [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
  [(TUIKeyplaneView *)self setNeedsLayout];
}

- (void)layoutRows:(unint64_t)rows
{
  selfCopy = self;
  v141[2] = *MEMORY[0x1E69E9840];
  keySizeReferenceGuide = [(TUIKeyplaneView *)self keySizeReferenceGuide];

  if (!keySizeReferenceGuide)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(TUIKeyplaneView *)selfCopy setKeySizeReferenceGuide:v6];

    keySizeReferenceGuide2 = [(TUIKeyplaneView *)selfCopy keySizeReferenceGuide];
    [keySizeReferenceGuide2 setIdentifier:@"TUIKeyplaneKeySizingGuide"];
  }

  keySizeReferenceGuide3 = [(TUIKeyplaneView *)selfCopy keySizeReferenceGuide];
  owningView = [keySizeReferenceGuide3 owningView];

  if (!owningView)
  {
    v10 = MEMORY[0x1E696ACD8];
    keySizeConstraints = [(TUIKeyplaneView *)selfCopy keySizeConstraints];
    [v10 deactivateConstraints:keySizeConstraints];

    [(TUIKeyplaneView *)selfCopy setKeySizeConstraints:0];
    keyboardContentView = [(TUIKeyplaneView *)selfCopy keyboardContentView];
    keySizeReferenceGuide4 = [(TUIKeyplaneView *)selfCopy keySizeReferenceGuide];
    [keyboardContentView addLayoutGuide:keySizeReferenceGuide4];
  }

  keyRowViews = [(TUIKeyplaneView *)selfCopy keyRowViews];
  v127 = [keyRowViews count] == 0;

  keyRowViews2 = [(TUIKeyplaneView *)selfCopy keyRowViews];

  if (!keyRowViews2)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(TUIKeyplaneView *)selfCopy setKeyRowViews:v16];

    v127 = 1;
  }

  keyRowConstraints = [(TUIKeyplaneView *)selfCopy keyRowConstraints];

  if (!keyRowConstraints)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(TUIKeyplaneView *)selfCopy setKeyRowConstraints:v18];

    v127 = 1;
  }

  supportsSplit = [(TUIKeyplaneView *)selfCopy supportsSplit];
  if (supportsSplit)
  {
    splitTransitionLayoutGuides = [(TUIKeyplaneView *)selfCopy splitTransitionLayoutGuides];
    v20 = [splitTransitionLayoutGuides objectForKey:@"TUIKBSplitGuide_Middle"];

    v122 = v20;
    if (!v20)
    {
      [(TUIKeyplaneView *)selfCopy createSplitLayoutIfNeeded];
      splitTransitionLayoutGuides2 = [(TUIKeyplaneView *)selfCopy splitTransitionLayoutGuides];
      v122 = [splitTransitionLayoutGuides2 objectForKey:@"TUIKBSplitGuide_Middle"];
    }

    isCurrentlySplit = [(TUIKeyplaneView *)selfCopy isCurrentlySplit];
    splitSpacing = [(TUIKeyplaneView *)selfCopy splitSpacing];
    [splitSpacing setActive:!isCurrentlySplit];
  }

  else
  {
    v122 = 0;
  }

  currentKeyplane = [(TUIKeyplaneView *)selfCopy currentKeyplane];
  if ([currentKeyplane isGridLayout])
  {
    v25 = 7;
  }

  else
  {
    v25 = 0;
  }

  currentKeyplane2 = [(TUIKeyplaneView *)selfCopy currentKeyplane];
  effectsType = [currentKeyplane2 effectsType];

  v125 = selfCopy;
  if (effectsType == 1)
  {
    [(TUIKeyplaneView *)selfCopy idealKeySizeforLayoutType:v25];
    v29 = v28;
    v31 = v30;
    keySizeConstraints2 = [(TUIKeyplaneView *)selfCopy keySizeConstraints];

    if (keySizeConstraints2)
    {
      keySizeConstraints3 = [(TUIKeyplaneView *)selfCopy keySizeConstraints];
      v34 = [keySizeConstraints3 objectAtIndexedSubscript:0];
      [v34 setConstant:v29];

      keySizeConstraints4 = [(TUIKeyplaneView *)selfCopy keySizeConstraints];
      v36 = [keySizeConstraints4 objectAtIndexedSubscript:1];
      [v36 setConstant:v31];
    }

    else
    {
      keySizeReferenceGuide5 = [(TUIKeyplaneView *)selfCopy keySizeReferenceGuide];
      widthAnchor = [keySizeReferenceGuide5 widthAnchor];
      v39 = [widthAnchor constraintEqualToConstant:v29];
      v141[0] = v39;
      keySizeReferenceGuide6 = [(TUIKeyplaneView *)selfCopy keySizeReferenceGuide];
      heightAnchor = [keySizeReferenceGuide6 heightAnchor];
      v42 = [heightAnchor constraintEqualToConstant:v31];
      v141[1] = v42;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:2];
      v44 = v43 = v25;
      [(TUIKeyplaneView *)v125 setKeySizeConstraints:v44];

      v25 = v43;
      selfCopy = v125;

      v45 = MEMORY[0x1E696ACD8];
      keySizeConstraints5 = [(TUIKeyplaneView *)v125 keySizeConstraints];
      [v45 activateConstraints:keySizeConstraints5];
    }
  }

  screenTraits = [(TUIKeyplaneView *)selfCopy screenTraits];
  if ([screenTraits idiom] == 3)
  {
    v48 = UIKeyboardAlwaysShowCandidateBarForCurrentInputMode();

    rows += v48;
  }

  else
  {
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  keyRowViews3 = [(TUIKeyplaneView *)selfCopy keyRowViews];
  v51 = [keyRowViews3 count];

  if (rows != v51)
  {
    keyRowConstraints2 = [(TUIKeyplaneView *)selfCopy keyRowConstraints];
    v53 = [keyRowConstraints2 objectForKey:@"TUIBottomRowToKeyplaneConstraint"];

    if ([v53 isActive])
    {
      [v53 setActive:0];
      keyRowConstraints3 = [(TUIKeyplaneView *)selfCopy keyRowConstraints];
      [keyRowConstraints3 removeObjectForKey:@"TUIBottomRowToKeyplaneConstraint"];

      v53 = 0;
    }
  }

  if (rows)
  {
    v55 = 0;
    v56 = 0;
    v133 = v49;
    do
    {
      v132 = v55;
      keyRowViews4 = [(TUIKeyplaneView *)selfCopy keyRowViews];
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v56];
      v59 = [keyRowViews4 objectForKey:v58];

      v60 = v59;
      if (!v59)
      {
        v60 = [TUIKeyplaneRow emptyRowForKeyplane:selfCopy rowNumber:v56];
      }

      [v60 setEdgeToEdge:v25 == 7];
      if (!v25)
      {
        v25 = rows == 1;
      }

      [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (supportsSplit)
      {
        v128 = v25;
        rowsCopy = rows;
        if (v25 == 1)
        {
          splitTransitionLayoutGuides3 = [(TUIKeyplaneView *)selfCopy splitTransitionLayoutGuides];
          v62 = [splitTransitionLayoutGuides3 objectForKey:@"TUIKBSplitGuide_Padding"];

          leftAnchor = [v122 leftAnchor];
          splitLayoutGuide = [v60 splitLayoutGuide];
          leftAnchor2 = [splitLayoutGuide leftAnchor];
          v123 = leftAnchor;
          v120 = v62;
          if (v62)
          {
            v65 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
            v140[0] = v65;
            leftAnchor3 = [v62 leftAnchor];
            splitLayoutGuide2 = [v60 splitLayoutGuide];
            rightAnchor = [splitLayoutGuide2 rightAnchor];
            v69 = [leftAnchor3 constraintEqualToAnchor:rightAnchor];
            v140[1] = v69;
            v70 = v140;
          }

          else
          {
            v65 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
            v139[0] = v65;
            leftAnchor3 = [v122 rightAnchor];
            splitLayoutGuide2 = [v60 splitLayoutGuide];
            rightAnchor = [splitLayoutGuide2 rightAnchor];
            v69 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:rightAnchor constant:30.0];
            v139[1] = v69;
            v70 = v139;
          }

          v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
          [v133 addObjectsFromArray:v77];

          leftAnchor4 = v123;
          selfCopy = v125;
          v74 = v120;
          splitLayoutGuide4 = splitLayoutGuide;
        }

        else
        {
          splitLayoutGuide3 = [v60 splitLayoutGuide];
          widthAnchor2 = [splitLayoutGuide3 widthAnchor];
          widthAnchor3 = [v122 widthAnchor];
          v74 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:1.0];

          v138[0] = v74;
          leftAnchor4 = [v122 leftAnchor];
          splitLayoutGuide4 = [v60 splitLayoutGuide];
          leftAnchor2 = [splitLayoutGuide4 leftAnchor];
          v65 = [leftAnchor4 constraintGreaterThanOrEqualToAnchor:leftAnchor2];
          v138[1] = v65;
          leftAnchor3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:2];
          [v133 addObjectsFromArray:leftAnchor3];
        }

        v25 = v128;
        rows = rowsCopy;
      }

      keyboardContentView2 = [(TUIKeyplaneView *)selfCopy keyboardContentView];
      [keyboardContentView2 addSubview:v60];

      if (!v59)
      {
        [(TUIKeyplaneView *)selfCopy rowsVerticalSpacing];
        v80 = v79;
        [(TUIKeyplaneView *)selfCopy rowInsets];
        v82 = v81;
        v84 = v83;
        v86 = v85;
        topAnchor = [v60 topAnchor];
        v129 = v25;
        rowsCopy2 = rows;
        if (v132)
        {
          bottomAnchor = [v132 bottomAnchor];
          topAnchor2 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v80];
          v136 = topAnchor2;
          v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
          [v133 addObjectsFromArray:v90];
        }

        else
        {
          bottomAnchor = [(TUIKeyplaneView *)selfCopy keyboardContentView];
          topAnchor2 = [bottomAnchor topAnchor];
          v90 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v137 = v90;
          v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
          [v133 addObjectsFromArray:v91];

          selfCopy = v125;
        }

        leftAnchor5 = [v60 leftAnchor];
        keyboardContentView3 = [(TUIKeyplaneView *)selfCopy keyboardContentView];
        leftAnchor6 = [keyboardContentView3 leftAnchor];
        v94 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:v82];
        v135[0] = v94;
        keyboardContentView4 = [(TUIKeyplaneView *)selfCopy keyboardContentView];
        rightAnchor2 = [keyboardContentView4 rightAnchor];
        rightAnchor3 = [v60 rightAnchor];
        v98 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3 constant:v86];
        v135[1] = v98;
        v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
        [v133 addObjectsFromArray:v99];

        selfCopy = v125;
        v25 = v129;
        rows = rowsCopy2;
        if (rowsCopy2 == 1)
        {
          keyboardContentView5 = [(TUIKeyplaneView *)v125 keyboardContentView];
          bottomAnchor2 = [keyboardContentView5 bottomAnchor];
          bottomAnchor3 = [v60 bottomAnchor];
          v103 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v84];

          keyRowConstraints4 = [(TUIKeyplaneView *)v125 keyRowConstraints];
          [keyRowConstraints4 setObject:v103 forKey:@"TUIBottomRowToKeyplaneConstraint"];

          v134 = v103;
          v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
          [v133 addObjectsFromArray:v105];
        }
      }

      currentKeyplane3 = [(TUIKeyplaneView *)selfCopy currentKeyplane];
      [currentKeyplane3 heightMultiplierForRowNumber:v56];
      v108 = v107;

      keyRowConstraints5 = [(TUIKeyplaneView *)selfCopy keyRowConstraints];
      v110 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%li", @"TUIRowHeightConstraint", v56];
      v111 = [keyRowConstraints5 objectForKey:v110];

      if (v111)
      {
        [v111 setActive:0];
      }

      heightAnchor2 = [v60 heightAnchor];
      keySizeReferenceGuide7 = [(TUIKeyplaneView *)selfCopy keySizeReferenceGuide];
      heightAnchor3 = [keySizeReferenceGuide7 heightAnchor];
      v115 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:v108];

      v49 = v133;
      [v133 addObject:v115];
      keyRowConstraints6 = [(TUIKeyplaneView *)selfCopy keyRowConstraints];
      v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%li", @"TUIRowHeightConstraint", v56];
      [keyRowConstraints6 setObject:v115 forKey:v117];

      keyRowViews5 = [(TUIKeyplaneView *)selfCopy keyRowViews];
      v119 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v56];
      [keyRowViews5 setObject:v60 forKey:v119];

      if (v127)
      {
        [v60 setNeedsLayout];
      }

      ++v56;
      v55 = v60;
      --rows;
    }

    while (rows);
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v49];
}

- (void)boundsChangedForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  --self->_keyBoundsChangeCount;
  [(TUIKeyplaneView *)self updateFrameForKey:key];
  if (self->_keyBoundsChangeCount <= 0)
  {
    v4 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412546;
      v6 = objc_opt_class();
      v7 = 2048;
      selfCopy = self;
      _os_log_debug_impl(&dword_18FFDC000, v4, OS_LOG_TYPE_DEBUG, "<%@: %p> Updating keys after bounds update", &v5, 0x16u);
    }

    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
    [(TUIKeyplaneView *)self updateAllTrees];
  }
}

- (void)didTapBiasEscapeButton
{
  currentHandBias = [(TUIKeyplaneView *)self currentHandBias];
  mEMORY[0x1E69DCC00] = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  preferencesActions = [mEMORY[0x1E69DCC00] preferencesActions];
  [preferencesActions setHandBias:0];

  [(TUIKeyplaneView *)self setKeyboardBias:0];
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  [activeInstance updateForHandBiasChange];

  if (currentHandBias)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x1E69DDFA8] object:0 userInfo:0];
  }
}

- (void)updateBottomRowSizingGuideForClass:(int64_t)class
{
  bottomRowSizingGuide = [(TUIKeyplaneView *)self bottomRowSizingGuide];

  if (!bottomRowSizingGuide)
  {
    return;
  }

  if ([(TUIKeyplaneView *)self movingToFloating]|| [(TUIKeyplaneView *)self movingFromFloating])
  {
    v6 = 0.125;
    if (class > 2)
    {
      if (class == 3)
      {
        factory = [(TUIKeyplaneView *)self factory];
        v8 = [factory dynamicFactory] == 0;
        v9 = 1.115;
        v10 = 1.08;
      }

      else
      {
        if (class != 4)
        {
          goto LABEL_19;
        }

        factory = [(TUIKeyplaneView *)self factory];
        v8 = [factory dynamicFactory] == 0;
        v9 = 1.07;
        v10 = 1.04;
      }
    }

    else if (class == 1)
    {
      factory = [(TUIKeyplaneView *)self factory];
      v8 = [factory dynamicFactory] == 0;
      v9 = 0.1;
      v10 = 0.125;
    }

    else
    {
      if (class != 2)
      {
        goto LABEL_19;
      }

      factory = [(TUIKeyplaneView *)self factory];
      v8 = [factory dynamicFactory] == 0;
      v9 = 1.2;
      v10 = 1.07;
    }

    if (v8)
    {
      v6 = v9;
    }

    else
    {
      v6 = v10;
    }
  }

  else
  {
    factory = [(TUIKeyplaneView *)self factory];
    [factory dynamicBottomRowMultiplier];
    v6 = v11;
  }

LABEL_19:
  bottomRowSizingConstraint = [(TUIKeyplaneView *)self bottomRowSizingConstraint];
  [bottomRowSizingConstraint setActive:0];

  bottomRowSizingGuide2 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
  owningView = [bottomRowSizingGuide2 owningView];

  if (!owningView)
  {
    keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
    bottomRowSizingGuide3 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
    [keyboardContentView addLayoutGuide:bottomRowSizingGuide3];
  }

  if ((class - 2) < 3)
  {
    bottomRowSizingGuide4 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
    widthAnchor = [bottomRowSizingGuide4 widthAnchor];
    keySizeReferenceGuide = [(TUIKeyplaneView *)self keySizeReferenceGuide];
    heightAnchor = [keySizeReferenceGuide heightAnchor];
LABEL_25:
    v21 = heightAnchor;
    v22 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v6];
    [(TUIKeyplaneView *)self setBottomRowSizingConstraint:v22];

    goto LABEL_26;
  }

  if (class <= 1)
  {
    bottomRowSizingGuide4 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
    widthAnchor = [bottomRowSizingGuide4 widthAnchor];
    keySizeReferenceGuide = [(TUIKeyplaneView *)self keyboardContentView];
    heightAnchor = [keySizeReferenceGuide widthAnchor];
    goto LABEL_25;
  }

LABEL_26:
  bottomRowSizingConstraint2 = [(TUIKeyplaneView *)self bottomRowSizingConstraint];
  [bottomRowSizingConstraint2 setActive:1];
}

- (void)updateBiasEscapeButtonVisbility:(BOOL)visbility
{
  visbilityCopy = visbility;
  currentHandBias = [(TUIKeyplaneView *)self currentHandBias];
  if (visbilityCopy)
  {
    v6 = currentHandBias;
    if (currentHandBias)
    {
      biasEscapeButton = [(TUIKeyplaneView *)self biasEscapeButton];

      if (!biasEscapeButton)
      {
        plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __51__TUIKeyplaneView_updateBiasEscapeButtonVisbility___block_invoke;
        v42[3] = &unk_1E72D83C8;
        v42[4] = self;
        v39 = [MEMORY[0x1E69DC628] actionWithHandler:v42];
        [plainButtonConfiguration setContentInsets:{0.0, 15.0, 0.0, 15.0}];
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        v10 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_13400];

        [plainButtonConfiguration setBaseForegroundColor:v10];
        v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:2 scale:40.0];
        [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v11];
        v12 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v39];
        [(TUIKeyplaneView *)self setBiasEscapeButton:v12];

        biasEscapeButton2 = [(TUIKeyplaneView *)self biasEscapeButton];
        [biasEscapeButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

        superview = [(TUIKeyplaneView *)self superview];
        biasEscapeButton3 = [(TUIKeyplaneView *)self biasEscapeButton];
        [superview addSubview:biasEscapeButton3];

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __51__TUIKeyplaneView_updateBiasEscapeButtonVisbility___block_invoke_3;
        v41[3] = &unk_1E72D8410;
        v41[4] = self;
        biasEscapeButton4 = [(TUIKeyplaneView *)self biasEscapeButton];
        [biasEscapeButton4 setConfigurationUpdateHandler:v41];

        biasEscapeButton5 = [(TUIKeyplaneView *)self biasEscapeButton];
        topAnchor = [biasEscapeButton5 topAnchor];
        keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
        topAnchor2 = [keyboardContentView topAnchor];
        v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [v21 setActive:1];

        biasEscapeButton6 = [(TUIKeyplaneView *)self biasEscapeButton];
        bottomAnchor = [biasEscapeButton6 bottomAnchor];
        keyboardContentView2 = [(TUIKeyplaneView *)self keyboardContentView];
        bottomAnchor2 = [keyboardContentView2 bottomAnchor];
        v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [v26 setActive:1];
      }

      biasEscapeButton7 = [(TUIKeyplaneView *)self biasEscapeButton];
      [biasEscapeButton7 setNeedsUpdateConfiguration];

      biasEscapeButton8 = [(TUIKeyplaneView *)self biasEscapeButton];
      [biasEscapeButton8 setHidden:0];

      horizontalBiasButtonConstraint = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];

      if (v6 == 1)
      {
        if (!horizontalBiasButtonConstraint)
        {
          biasEscapeButton9 = [(TUIKeyplaneView *)self biasEscapeButton];
          leftAnchor = [biasEscapeButton9 leftAnchor];
          leftAnchor2 = [(TUIKeyplaneView *)self leftAnchor];
          v33 = 1.0;
          v34 = leftAnchor;
LABEL_15:
          v37 = [v34 constraintEqualToSystemSpacingAfterAnchor:leftAnchor2 multiplier:v33];
          [(TUIKeyplaneView *)self setHorizontalBiasButtonConstraint:v37];
        }
      }

      else if (!horizontalBiasButtonConstraint)
      {
        biasEscapeButton9 = [(TUIKeyplaneView *)self rightAnchor];
        leftAnchor = [(TUIKeyplaneView *)self biasEscapeButton];
        leftAnchor2 = [leftAnchor rightAnchor];
        v33 = 1.0;
        v34 = biasEscapeButton9;
        goto LABEL_15;
      }

      horizontalBiasButtonConstraint2 = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];
      [horizontalBiasButtonConstraint2 setActive:1];

      return;
    }
  }

  horizontalBiasButtonConstraint3 = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];

  if (horizontalBiasButtonConstraint3)
  {
    horizontalBiasButtonConstraint4 = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];
    [horizontalBiasButtonConstraint4 setActive:0];

    [(TUIKeyplaneView *)self setHorizontalBiasButtonConstraint:0];
  }

  biasEscapeButton10 = [(TUIKeyplaneView *)self biasEscapeButton];
  [biasEscapeButton10 setHidden:1];
}

void __51__TUIKeyplaneView_updateBiasEscapeButtonVisbility___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [v3 configuration];
  v4 = MEMORY[0x1E69DCAB8];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [*(a1 + 32) currentHandBias];
  v7 = @"right";
  if (v6 == 1)
  {
    v7 = @"left";
  }

  v8 = [v5 stringWithFormat:@"chevron.compact.%@", v7];
  v9 = [v4 systemImageNamed:v8];

  [v10 setImage:v9];
  [v3 setConfiguration:v10];
}

id __51__TUIKeyplaneView_updateBiasEscapeButtonVisbility___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.353 alpha:1.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

- (void)setKeyboardBias:(int64_t)bias
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  if ([currentKeyplane layoutClass] != 1)
  {
    goto LABEL_9;
  }

  currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
  if ([currentKeyplane2 effectsType] == 1)
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  if (([screenTraits orientation] - 1) >= 2)
  {

    goto LABEL_8;
  }

  isFloating = [(TUIKeyplaneView *)self isFloating];

  if (isFloating)
  {
LABEL_10:
    [(TUIKeyplaneView *)self setCurrentHandBias:0];
    selfCopy2 = self;
    v12 = 0;
LABEL_11:
    [(TUIKeyplaneView *)selfCopy2 updateBiasEscapeButtonVisbility:v12];

    [(TUIKeyplaneView *)self updateKeyplaneSpacing];
    return;
  }

  if (bias)
  {
    preferredWidthConstraint = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [preferredWidthConstraint setActive:0];

    v10 = [(TUIKeyplaneView *)self currentHandBias]!= 0;
  }

  else
  {
    v10 = 0;
  }

  if ([(TUIKeyplaneView *)self currentHandBias]== bias)
  {
    v12 = bias != 0;
    selfCopy2 = self;
    goto LABEL_11;
  }

  horizontalBiasButtonConstraint = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];
  [horizontalBiasButtonConstraint setActive:0];

  [(TUIKeyplaneView *)self setHorizontalBiasButtonConstraint:0];
  [(TUIKeyplaneView *)self setCurrentHandBias:bias];
  [(TUIKeyplaneView *)self updateBiasEscapeButtonVisbility:bias != 0];
  [(TUIKeyplaneView *)self updateKeyplaneSpacing];
  if (v10)
  {
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__TUIKeyplaneView_setKeyboardBias___block_invoke;
    v14[3] = &unk_1E72D83A0;
    v14[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v14];
  }

  else
  {
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];

    [(TUIKeyplaneView *)self updateAllTrees];
  }
}

- (void)updateKeysForFloating:(BOOL)floating
{
  floatingCopy = floating;
  v23 = *MEMORY[0x1E69E9840];
  [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
  [(TUIKeyplaneView *)self deactivateKeys];
  [(TUIKeyplaneView *)self setIsFloating:floatingCopy];
  [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
  if (floatingCopy)
  {
    v5 = 1;
  }

  else
  {
    currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
    layoutClass = [currentKeyplane layoutClass];

    if (layoutClass == 4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  allKeys = [keyRowViews allKeys];

  v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        keyRowViews2 = [(TUIKeyplaneView *)self keyRowViews];
        v16 = [keyRowViews2 objectForKey:v14];

        factory = [(TUIKeyplaneView *)self factory];
        [v16 updateKeysInRowWithStyle:v5 factory:factory];
      }

      v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(TUIKeyplaneView *)self updateBottomRowSizingGuide];
  [(TUIKeyplaneView *)self updateAllTrees];
  [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
}

- (void)transitionToKeyplane:(id)keyplane override:(BOOL)override
{
  keyplaneCopy = keyplane;
  if (!override && [(TUIKeyplaneView *)self isInSizeTransition])
  {
    currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
    v8 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", keyplaneCopy, [currentKeyplane currentVariantType]);

    if ([v8 layoutClass] == 1)
    {
      [(TUIKeyplaneView *)self setFloatingKeyplaneForTransition:v8];
    }

    else
    {
      [(TUIKeyplaneView *)self setFullKeyplaneForTransition:v8];
    }
  }

  isFloating = [(TUIKeyplaneView *)self isFloating];
  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  isFloating2 = [screenTraits isFloating];

  if (self->_keyplane == keyplaneCopy)
  {
    if (isFloating == isFloating2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_storeStrong(&self->_keyplane, keyplane);
    currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];

    if (currentKeyplane2)
    {
      currentKeyplane3 = [(TUIKeyplaneView *)self currentKeyplane];
      v14 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", keyplaneCopy, [currentKeyplane3 currentVariantType]);
      [(TUIKeyplaneView *)self setCurrentKeyplane:v14];
    }
  }

  screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
  -[TUIKeyplaneView updateKeysForFloating:](self, "updateKeysForFloating:", [screenTraits2 isFloating]);

LABEL_12:
}

- (void)setKeyplaneForAutomation:(id)automation
{
  automationCopy = automation;
  [(TUIKeyplaneView *)self createContentViewsIfNeeded];
  if (self->_keyplane)
  {
    keyRowViews = [(TUIKeyplaneView *)self keyRowViews];

    if (!keyRowViews)
    {
      keyplane = self->_keyplane;
      self->_keyplane = 0;
    }
  }

  [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
  currentKBLayoutInfo = [(TUIKeyplaneView *)self currentKBLayoutInfo];
  [automationCopy updateFlickKeycapOnKeysWithLayoutInfo:currentKBLayoutInfo];

  v8 = self->_keyplane;
  self->_keyplane = automationCopy;
  v9 = automationCopy;

  v11 = [TUIKeyplane keyplaneFromKBTree:self->_keyplane withType:0];

  [(TUIKeyplaneView *)self setCurrentHandBias:0];
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  [(TUIKeyplaneView *)self compareKeyplane:currentKeyplane toKeyplane:v11];

  [(TUIKeyplaneView *)self updateKeyplaneSpacing];
}

- (void)setKeyplane:(id)keyplane override:(BOOL)override
{
  overrideCopy = override;
  v61 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  [(TUIKeyplaneView *)self createContentViewsIfNeeded];
  if (self->_keyplane)
  {
    keyRowViews = [(TUIKeyplaneView *)self keyRowViews];

    if (!keyRowViews)
    {
      keyplane = self->_keyplane;
      self->_keyplane = 0;
    }
  }

  renderingContext = [(TUIKeyplaneView *)self renderingContext];
  keyboardType = [renderingContext keyboardType];

  if (keyboardType != 126)
  {
LABEL_11:
    if (!overrideCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  factory = [(TUIKeyplaneView *)self factory];
  if ([factory dynamicFactory])
  {

    goto LABEL_8;
  }

  screenTraits = [(TUIKeyplaneView *)self screenTraits];
  isFloating = [screenTraits isFloating];

  if (isFloating)
  {
LABEL_8:
    name = [(UIKBTree *)keyplaneCopy name];
    v16 = [TUIKeyplane layoutClassFromKeyplaneName:name];

    if (v16 == 1)
    {
      keyboardType = 0;
    }

    else
    {
      keyboardType = 126;
    }

    goto LABEL_11;
  }

  keyboardType = 126;
  if (!overrideCopy)
  {
LABEL_12:
    if ([(TUIKeyplaneView *)self isInSizeTransition])
    {
      [(UIKBTree *)keyplaneCopy updateFlickKeycapOnKeys];
      objc_storeStrong(&self->_keyplane, keyplane);
      currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
      v18 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", keyplaneCopy, [currentKeyplane currentVariantType]);

      if ([v18 layoutClass] == 1)
      {
        [(TUIKeyplaneView *)self setFloatingKeyplaneForTransition:v18];
      }

      else
      {
        [(TUIKeyplaneView *)self setFullKeyplaneForTransition:v18];
      }

      goto LABEL_51;
    }
  }

LABEL_16:
  v58 = keyplaneCopy;
  v57 = [TUIKeyplane keyplaneFromKBTree:keyplaneCopy withType:keyboardType];
  isGestureKeyplane = self->_isGestureKeyplane;
  mEMORY[0x1E69DCC00] = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  preferencesActions = [mEMORY[0x1E69DCC00] preferencesActions];
  v22 = *MEMORY[0x1E69DDE60];
  v23 = [preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69DDE60]];

  if (isGestureKeyplane != v23)
  {
    mEMORY[0x1E69DCC00]2 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
    preferencesActions2 = [mEMORY[0x1E69DCC00]2 preferencesActions];
    self->_isGestureKeyplane = [preferencesActions2 BOOLForPreferenceKey:v22];
  }

  -[TUIKeyplaneView setIsCurrentlySplit:](self, "setIsCurrentlySplit:", [MEMORY[0x1E69DCBE0] isSplit]);
  v26 = overrideCopy;
  if (self->_keyplane != v58 || (-[TUIKeyplaneView currentKeyplane](self, "currentKeyplane"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v57 needsResetFromKeyplane:v33], v33, (v34 & 1) != 0) || overrideCopy || isGestureKeyplane != v23)
  {
    v27 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(UIKBTree *)v58 name];
      *buf = 138477827;
      v60 = name2;
      _os_log_impl(&dword_18FFDC000, v27, OS_LOG_TYPE_DEFAULT, "Setting dynamic keyplane: %{private}@", buf, 0xCu);
    }

    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
    currentKBLayoutInfo = [(TUIKeyplaneView *)self currentKBLayoutInfo];
    [(UIKBTree *)v58 updateFlickKeycapOnKeysWithLayoutInfo:currentKBLayoutInfo];

    visualStyling = [(UIKBTree *)self->_keyplane visualStyling];
    objc_storeStrong(&self->_keyplane, keyplane);
    currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];

    if (currentKeyplane2)
    {
      isFloating2 = 1;
    }

    else
    {
      screenTraits2 = [(TUIKeyplaneView *)self screenTraits];
      -[TUIKeyplaneView setIsFloating:](self, "setIsFloating:", [screenTraits2 isFloating]);

      isFloating2 = [(TUIKeyplaneView *)self isFloating];
      [(TUIKeyplaneView *)self setStandardKeyInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    }

    v35 = v57;
    [(TUIKeyplaneView *)self setCurrentHandBias:0];
    if ([(UIKBTree *)self->_keyplane rendering]!= BYTE2(visualStyling))
    {
      [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
    }

    currentKeyplane3 = [(TUIKeyplaneView *)self currentKeyplane];
    [(TUIKeyplaneView *)self compareKeyplane:currentKeyplane3 toKeyplane:v57];

    if (![(TUIKeyplaneView *)self isInSizeTransition])
    {
      if ([(TUIKeyplaneView *)self isCurrentlySplit])
      {
        currentKeyplane4 = [(TUIKeyplaneView *)self currentKeyplane];
        supportsSplitStyle = [currentKeyplane4 supportsSplitStyle];

        if (supportsSplitStyle)
        {
          [(TUIKeyplaneView *)self prepareForSplitTransition];
          [(TUIKeyplaneView *)self updateSplitProgress:1.0];
          [(TUIKeyplaneView *)self finalLayoutForSplit:1];
          [(TUIKeyplaneView *)self finishSplitTransition];
        }
      }
    }
  }

  else
  {
    isFloating2 = 1;
    v35 = v57;
  }

  [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:[(TUIKeyplaneView *)self isCurrentlySplit]];
  v41 = v40;
  v43 = v42;
  screenTraits3 = [(TUIKeyplaneView *)self screenTraits];
  [screenTraits3 keyboardWidth];
  if (v45 <= 0.0)
  {
    goto LABEL_40;
  }

  if (v26)
  {

LABEL_37:
    [(TUIKeyplaneView *)self updateToSize:v41, v43];
    goto LABEL_41;
  }

  if ([(TUIKeyplaneView *)self isCurrentlySplit]|| [(TUIKeyplaneView *)self isInSizeTransition])
  {
LABEL_40:
  }

  else
  {
    [(TUIKeyplaneView *)self preferredSize];
    v54 = v53;
    v56 = v55;

    if (v41 != v54 || v43 != v56)
    {
      goto LABEL_37;
    }
  }

LABEL_41:
  bottomSpacing = [(TUIKeyplaneView *)self bottomSpacing];
  [bottomSpacing setActive:1];

  trailingTieConstraint = [(TUIKeyplaneView *)self trailingTieConstraint];
  [trailingTieConstraint setActive:1];

  currentKeyplane5 = [(TUIKeyplaneView *)self currentKeyplane];
  if ([currentKeyplane5 layoutClass] != 1)
  {

    goto LABEL_45;
  }

  screenTraits4 = [(TUIKeyplaneView *)self screenTraits];
  isFloating3 = [screenTraits4 isFloating];

  if (isFloating3)
  {
LABEL_45:
    [(TUIKeyplaneView *)self updateKeyplaneSpacing];
    goto LABEL_46;
  }

  mEMORY[0x1E69DCC00]3 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  preferencesActions3 = [mEMORY[0x1E69DCC00]3 preferencesActions];
  -[TUIKeyplaneView setKeyboardBias:](self, "setKeyboardBias:", [preferencesActions3 handBias]);

LABEL_46:
  keyplaneCopy = v58;
  if (isFloating2 || v26)
  {
    [(TUIKeyplaneView *)self updateKeysForFloating:[(TUIKeyplaneView *)self isFloating]];
  }

LABEL_51:
}

- (void)updateKeysForRow:(unint64_t)row withKeys:(id)keys
{
  keysCopy = keys;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:row];
  v8 = [keyRowViews objectForKey:v7];

  if (v8)
  {
    [v8 updateKeysInRowWithData:keysCopy];
  }
}

- (void)updateRowsForTransitionToKeyplane:(id)keyplane
{
  v31 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  numberOfRows = [currentKeyplane numberOfRows];
  if (numberOfRows != [keyplaneCopy numberOfRows])
  {
    goto LABEL_4;
  }

  currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
  doubleHeightKeys = [currentKeyplane2 doubleHeightKeys];
  if ([doubleHeightKeys count] >= 2)
  {

LABEL_4:
LABEL_5:
    [(TUIKeyplaneView *)self resetLayoutAndApplyKeyplane:keyplaneCopy];
    goto LABEL_6;
  }

  doubleHeightKeys2 = [keyplaneCopy doubleHeightKeys];
  v10 = [doubleHeightKeys2 count];

  if (v10 > 1)
  {
    goto LABEL_5;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  allValues = [keyRowViews allValues];

  v13 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v26 + 1) + 8 * v16++) resetRow];
      }

      while (v14 != v16);
      v14 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  storedKeyViews = [(TUIKeyplaneView *)self storedKeyViews];
  [storedKeyViews removeAllObjects];

  v18 = MEMORY[0x1E69DD250];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __53__TUIKeyplaneView_updateRowsForTransitionToKeyplane___block_invoke;
  v23 = &unk_1E72D85E0;
  selfCopy = self;
  v19 = keyplaneCopy;
  v25 = v19;
  [v18 performWithoutAnimation:&v20];
  -[TUIKeyplaneView updateBottomRowSizingGuideForClass:](self, "updateBottomRowSizingGuideForClass:", [v19 layoutClass]);
  [(TUIKeyplaneView *)self updateKeyplaneSpacing];
  if (![(TUIKeyplaneView *)self isInSizeTransition])
  {
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
  }

LABEL_6:
}

void __53__TUIKeyplaneView_updateRowsForTransitionToKeyplane___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) orderedKeysByRow];
  [v1 layoutKeysInRows:v2];
}

- (void)resetLayoutAndApplyKeyplane:(id)keyplane
{
  v42 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  [(TUIKeyplaneView *)self currentKeyplane];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  storedVariantViews = [(TUIKeyplaneView *)self storedVariantViews];
  allValues = [storedVariantViews allValues];

  v7 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v36 + 1) + 8 * i) removeFromSuperview];
      }

      v8 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  storedVariantViews2 = [(TUIKeyplaneView *)self storedVariantViews];
  [storedVariantViews2 removeAllObjects];

  keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
  v13 = [keyRowViews count];
  numberOfRows = [keyplaneCopy numberOfRows];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  keyRowViews2 = [(TUIKeyplaneView *)self keyRowViews];
  allValues2 = [keyRowViews2 allValues];

  v17 = [allValues2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(allValues2);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        [v21 resetRow];
        if (v13 != numberOfRows)
        {
          [v21 removeFromSuperview];
        }
      }

      v18 = [allValues2 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v18);
  }

  storedKeyViews = [(TUIKeyplaneView *)self storedKeyViews];
  [storedKeyViews removeAllObjects];

  if (v13 != numberOfRows)
  {
    keyRowViews3 = [(TUIKeyplaneView *)self keyRowViews];
    [keyRowViews3 removeAllObjects];
  }

  [(TUIKeyplaneView *)self setCurrentKeyplane:keyplaneCopy];
  v24 = MEMORY[0x1E69DD250];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __47__TUIKeyplaneView_resetLayoutAndApplyKeyplane___block_invoke;
  v29 = &unk_1E72D85E0;
  selfCopy = self;
  v31 = keyplaneCopy;
  v25 = keyplaneCopy;
  [v24 performWithoutAnimation:&v26];
  if (![(TUIKeyplaneView *)self isInSizeTransition:v26])
  {
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
  }
}

void __47__TUIKeyplaneView_resetLayoutAndApplyKeyplane___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutRows:{objc_msgSend(*(a1 + 40), "numberOfRows")}];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) orderedKeysByRow];
  [v2 layoutKeysInRows:v3];
}

- (void)compareKeyplane:(id)keyplane toKeyplane:(id)toKeyplane
{
  v26 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  toKeyplaneCopy = toKeyplane;
  [(TUIKeyplaneView *)self deactivateKeys];
  if (!keyplaneCopy || [keyplaneCopy needsResetFromKeyplane:toKeyplaneCopy])
  {
    if (([toKeyplaneCopy supportsSplitStyle] & 1) != 0 || (-[TUIKeyplaneView currentKeyplane](self, "currentKeyplane"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "supportsSplitStyle"), v8, v9))
    {
      if (([keyplaneCopy hasSimilarLayoutToKeyplane:toKeyplaneCopy] & 1) == 0)
      {
        splitSpacing = [(TUIKeyplaneView *)self splitSpacing];
        [splitSpacing setActive:0];

        [(TUIKeyplaneView *)self setSplitSpacing:0];
        rightSplitWidth = [(TUIKeyplaneView *)self rightSplitWidth];
        [rightSplitWidth setActive:0];

        [(TUIKeyplaneView *)self setRightSplitWidth:0];
        leftSplitWidth = [(TUIKeyplaneView *)self leftSplitWidth];
        [leftSplitWidth setActive:0];

        [(TUIKeyplaneView *)self setLeftSplitWidth:0];
        keySizeSpacer = [(TUIKeyplaneView *)self keySizeSpacer];
        [keySizeSpacer setActive:0];

        [(TUIKeyplaneView *)self setKeySizeSpacer:0];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        splitTransitionLayoutGuides = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
        allValues = [splitTransitionLayoutGuides allValues];

        v16 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v22;
          do
          {
            v19 = 0;
            do
            {
              if (*v22 != v18)
              {
                objc_enumerationMutation(allValues);
              }

              [(TUIKeyplaneView *)self removeLayoutGuide:*(*(&v21 + 1) + 8 * v19++)];
            }

            while (v17 != v19);
            v17 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v17);
        }

        splitTransitionLayoutGuides2 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
        [splitTransitionLayoutGuides2 removeAllObjects];
      }
    }

    [(TUIKeyplaneView *)self resetLayoutAndApplyKeyplane:toKeyplaneCopy];
  }
}

- (void)prepareForDisplay
{
  displayedType = [(TUIKeyplaneView *)self displayedType];
  unhashedName = [(UIKBTree *)self->_keyplane unhashedName];
  v5 = [displayedType isEqualToString:unhashedName];

  if ((v5 & 1) == 0)
  {

    [(TUIKeyplaneView *)self createContentViewsIfNeeded];
  }
}

- (void)removeFromSuperview
{
  [(TUIKeyplaneView *)self deactivateKeys];
  biasEscapeButton = [(TUIKeyplaneView *)self biasEscapeButton];
  [biasEscapeButton removeFromSuperview];

  [(TUIKeyplaneView *)self setBiasEscapeButton:0];
  v4.receiver = self;
  v4.super_class = TUIKeyplaneView;
  [(TUIKeyplaneView *)&v4 removeFromSuperview];
}

- (id)keyplaneFromTree:(id)tree size:(CGSize)size controlKeyType:(int64_t)type
{
  height = size.height;
  width = size.width;
  treeCopy = tree;
  height = [[TUIKeyplaneView alloc] initWithFrame:treeCopy keyplane:0.0, 0.0, width, height];

  return height;
}

- (TUIKeyplaneView)initWithFrame:(CGRect)frame keyplane:(id)keyplane
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  v23.receiver = self;
  v23.super_class = TUIKeyplaneView;
  height = [(TUIKeyplaneView *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storedKeyViews = height->_storedKeyViews;
    height->_storedKeyViews = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storedVariantViews = height->_storedVariantViews;
    height->_storedVariantViews = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    delayedDeactivationKeys = height->_delayedDeactivationKeys;
    height->_delayedDeactivationKeys = v16;

    objc_storeStrong(&height->_keyplane, keyplane);
    mEMORY[0x1E69DCC00] = [MEMORY[0x1E69DCC00] sharedPreferencesController];
    preferencesActions = [mEMORY[0x1E69DCC00] preferencesActions];
    height->_currentHandBias = [preferencesActions handBias];

    height->_isCurrentlySplit = [MEMORY[0x1E69DCBE0] isSplit];
    mEMORY[0x1E69DCC00]2 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
    preferencesActions2 = [mEMORY[0x1E69DCC00]2 preferencesActions];
    height->_isGestureKeyplane = [preferencesActions2 BOOLForPreferenceKey:*MEMORY[0x1E69DDE60]];

    height->_dismissingKeyboardMenu = 0;
    height->_keyBoundsChangeCount = 0;
    [(TUIKeyplaneView *)height setUserInteractionEnabled:0];
  }

  return height;
}

+ (Class)selectorViewClassForKey:(id)key forRenderingContext:(id)context
{
  keyCopy = key;
  contextCopy = context;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([contextCopy isColorAdaptiveNonLinearCarplayKeyboard] & 1) == 0)
  {
    backingTree = [keyCopy backingTree];
    [backingTree interactionType];
  }

  v8 = objc_opt_class();

  return v8;
}

+ (CGSize)keyplaneSizeForLayout:(id)layout screenTraits:(id)traits keyboardType:(int64_t)type
{
  traitsCopy = traits;
  layoutCopy = layout;
  [traitsCopy keyboardScreenReferenceSize];
  v8 = [TUIKeyplane layoutClassFromScreenDimensions:?];
  v9 = MEMORY[0x193AE8220](layoutCopy);

  [TUIKeyplane sizeFromScreenTraits:traitsCopy layout:v9 layoutClass:v8];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)updateTreeForAutomation
{
  if (self->_keyplane)
  {
    keyRowViews = [(TUIKeyplaneView *)self keyRowViews];
    v4 = [keyRowViews count];

    if (v4)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__TUIKeyplaneView_Testing__updateTreeForAutomation__block_invoke;
      v10[3] = &unk_1E72D83A0;
      v10[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
      keys = [(UIKBTree *)self->_keyplane keys];
      v6 = [keys count];
      if (v6)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          v9 = [keys objectAtIndex:i];
          [(TUIKeyplaneView *)self updateFrameForKey:v9];
        }
      }
    }
  }
}

- (void)generateFactoryForKeyplane:(id)keyplane landscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  keyplaneCopy = keyplane;
  [(TUIKeyplaneView *)self setStandardKeyInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  name = [keyplaneCopy name];
  v7 = [TUIKeyplane layoutClassFromKeyplaneName:name];

  if (self->_screenTraits)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 68;
    if (!landscapeCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = MEMORY[0x1E69DCB68];
  window = [(TUIKeyplaneView *)self window];
  screen = [window screen];
  v13 = [v10 traitsWithScreen:screen orientation:1];
  screenTraits = self->_screenTraits;
  self->_screenTraits = v13;

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 == 1)
  {
    [(UIKBScreenTraits *)self->_screenTraits keyboardWidth];
    if (v8 <= 375.0)
    {
      v9 = 85;
    }

    else
    {
      v9 = 86;
    }

    if (!landscapeCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = 65;
  if (landscapeCopy)
  {
LABEL_11:
    v15 = MEMORY[0x1E69DCB68];
    window2 = [(TUIKeyplaneView *)self window];
    screen2 = [window2 screen];
    v18 = [v15 traitsWithScreen:screen2 orientation:4];
    v19 = self->_screenTraits;
    self->_screenTraits = v18;
  }

LABEL_12:
  v20 = [keyplaneCopy visualStyling] & 0xFFFFFFFFFFFFFF00;
  [keyplaneCopy setVisualStyling:v9 | v20];
  v21 = MEMORY[0x1E69DCB60];
  defaultConfig = [MEMORY[0x1E69DCB48] defaultConfig];
  v23 = [v21 renderingContextForRenderConfig:defaultConfig];
  renderingContext = self->_renderingContext;
  self->_renderingContext = v23;

  v25 = [MEMORY[0x1E69DCB50] factoryForVisualStyle:v9 | v20 renderingContext:self->_renderingContext];
  screen3 = [(UIKBScreenTraits *)self->_screenTraits screen];
  [screen3 scale];
  [v25 setScale:?];

  [v25 setStretchFactor:{1.0, 1.0}];
  layoutName = [keyplaneCopy layoutName];
  LODWORD(v20) = [layoutName isEqualToString:@"Thai-24-Key"];

  [v25 setAllowsPaddles:v20 ^ 1];
  [v25 setDynamicFactory:!landscapeCopy];
  factory = self->_factory;
  self->_factory = v25;
}

- (void)updateToSpecifiedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  sizeRatioConstraint = [(TUIKeyplaneView *)self sizeRatioConstraint];
  [sizeRatioConstraint setActive:0];

  heightConstraint = [(TUIKeyplaneView *)self heightConstraint];
  [heightConstraint setActive:0];

  preferredWidthConstraint = [(TUIKeyplaneView *)self preferredWidthConstraint];
  [preferredWidthConstraint setActive:0];

  keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
  heightAnchor = [keyboardContentView heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:height];
  [(TUIKeyplaneView *)self setHeightConstraint:v11];

  keyboardContentView2 = [(TUIKeyplaneView *)self keyboardContentView];
  widthAnchor = [keyboardContentView2 widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:width];
  [(TUIKeyplaneView *)self setPreferredWidthConstraint:v14];

  heightConstraint2 = [(TUIKeyplaneView *)self heightConstraint];
  [heightConstraint2 setActive:1];

  preferredWidthConstraint2 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  [preferredWidthConstraint2 setActive:1];

  [(TUIKeyplaneView *)self setPreferredSize:width, height];
}

- (void)updateVariantSelectorFramesForKey:(id)key
{
  keyCopy = key;
  v4 = [(TUIKeyplaneView *)self viewForBaseKey:?];
  popupMenu = [v4 popupMenu];

  if (!popupMenu)
  {
    v6 = [(TUIKeyplaneView *)self cacheIdentifierForKey:keyCopy withState:16];
    [keyCopy setState:16];
    v7 = [TUIKey keyFromKBTree:keyCopy];
    keyplane = [(TUIKeyplaneView *)self keyplane];
    [v7 setKeyplane:keyplane];

    currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
    currentKeyplane2 = [(TUIKeyplaneView *)self currentKeyplane];
    [v7 setStyle:{objc_msgSend(currentKeyplane, "keyStyleForLayoutClass:", objc_msgSend(currentKeyplane2, "layoutClass"))}];

    v11 = [(TUIKeyplaneView *)self variantViewForKey:v7 cacheID:v6];
    v12 = v11;
    if (v11)
    {
      superview = [v11 superview];

      if (!superview)
      {
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        keyboardContentView = [(TUIKeyplaneView *)self keyboardContentView];
        [keyboardContentView addSubview:v12];

        [v12 updateVariantsIfNeededForKey:keyCopy];
        [(TUIKeyplaneView *)self presentSelectorView:v12 fromBaseKey:v4];
        keyboardContentView2 = [(TUIKeyplaneView *)self keyboardContentView];
        [keyboardContentView2 layoutIfNeeded];
      }

      cellViewsInSubtreeOrder = [v12 cellViewsInSubtreeOrder];
      v17 = [cellViewsInSubtreeOrder count];
      subtrees = [keyCopy subtrees];
      v19 = [subtrees count];

      if (v17 == v19)
      {
        subtrees2 = [keyCopy subtrees];
        v21 = [subtrees2 count];

        if (v21)
        {
          v22 = 0;
          do
          {
            v23 = [cellViewsInSubtreeOrder objectAtIndex:v22];
            keyboardContentView3 = [(TUIKeyplaneView *)self keyboardContentView];
            [v23 frame];
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v32 = v31;
            superview2 = [v23 superview];
            [keyboardContentView3 convertRect:superview2 fromView:{v26, v28, v30, v32}];
            v35 = v34;
            v37 = v36;
            v39 = v38;
            v41 = v40;

            subtrees3 = [keyCopy subtrees];
            v43 = [subtrees3 objectAtIndex:v22];
            [v43 setFrame:{v35, v37, v39, v41}];

            subtrees4 = [keyCopy subtrees];
            v45 = [subtrees4 objectAtIndex:v22];
            [v45 setPaddedFrame:{v35, v37, v39, v41}];

            ++v22;
            subtrees5 = [keyCopy subtrees];
            v47 = [subtrees5 count];
          }

          while (v22 < v47);
        }
      }

      [v12 removeFromSuperview];
    }
  }
}

- (double)totalSplitSizeForRow:(unint64_t)row
{
  currentKeyplane = [(TUIKeyplaneView *)self currentKeyplane];
  rowSizes = [currentKeyplane rowSizes];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:row];
  v7 = [rowSizes objectForKey:v6];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (BOOL)_shouldUseUnifiedKeyView:(id)view
{
  viewCopy = view;
  v4 = [viewCopy displayType] == 8 || objc_msgSend(viewCopy, "interactionType") == 9 || objc_msgSend(viewCopy, "interactionType") == 15 || objc_msgSend(viewCopy, "interactionType") == 13;

  return v4;
}

- (id)cacheIdentifierForKey:(id)key withState:(int)state
{
  v4 = *&state;
  keyCopy = key;
  if (objc_opt_respondsToSelector())
  {
    [keyCopy dynamicCacheName];
  }

  else
  {
    [keyCopy name];
  }
  v7 = ;
  overrideDisplayString = [keyCopy overrideDisplayString];
  if (overrideDisplayString)
  {
    v9 = overrideDisplayString;
    v10 = [(TUIKeyplaneView *)self _shouldUseUnifiedKeyView:keyCopy];

    if (!v10)
    {
      name = [keyCopy name];
      overrideDisplayString2 = [keyCopy overrideDisplayString];
      v13 = [name stringByAppendingFormat:@"_%@", overrideDisplayString2];

      v7 = v13;
    }
  }

  if ((v4 & 0xFFFFFFFB) == 0x10)
  {
    v14 = [v7 stringByAppendingFormat:@"_%i", v4];

    v7 = v14;
  }

  return v7;
}

- (id)keyViewForKey:(id)key
{
  keyCopy = key;
  backingTree = [keyCopy backingTree];
  backingTree2 = [keyCopy backingTree];
  v7 = -[TUIKeyplaneView cacheIdentifierForKey:withState:](self, "cacheIdentifierForKey:withState:", backingTree, [backingTree2 state]);

  storedKeyViews = [(TUIKeyplaneView *)self storedKeyViews];
  v9 = [storedKeyViews objectForKey:v7];

  if (!v9)
  {
    keyplane = [(TUIKeyplaneView *)self keyplane];
    [keyCopy setKeyplane:keyplane];

    [keyCopy setStyle:{-[TUIKeyplaneView keyLayoutStyle](self, "keyLayoutStyle")}];
    v9 = [objc_alloc(-[TUIKeyplaneView preferredKeyViewClass](self "preferredKeyViewClass"))];
    [v9 setLayoutDelegate:self];
    storedKeyViews2 = [(TUIKeyplaneView *)self storedKeyViews];
    [storedKeyViews2 setObject:v9 forKey:v7];
  }

  factory = [(TUIKeyplaneView *)self factory];
  [v9 setFactory:factory];

  keyplaneRenderConfig = [(TUIKeyplaneView *)self keyplaneRenderConfig];
  [v9 setRenderConfig:keyplaneRenderConfig];

  return v9;
}

+ (id)updateDynamicKeyplane:(id)keyplane usingSize:(CGSize)size isLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  height = size.height;
  width = size.width;
  v16 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  if ([keyplaneCopy type] == 2)
  {
    height = [[TUIKeyplaneView alloc] initWithFrame:keyplaneCopy keyplane:0.0, 0.0, width, height];
    [(TUIKeyplaneView *)height generateFactoryForKeyplane:keyplaneCopy landscape:landscapeCopy];
    [(TUIKeyplaneView *)height setKeyplaneForAutomation:keyplaneCopy];
    [(TUIKeyplaneView *)height updateToSpecifiedSize:width, height];
    [(TUIKeyplaneView *)height updateTreeForAutomation];
    v10 = keyplaneCopy;
  }

  else
  {
    v11 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      name = [keyplaneCopy name];
      v14 = 138412290;
      v15 = name;
      _os_log_error_impl(&dword_18FFDC000, v11, OS_LOG_TYPE_ERROR, "Error: %@ is not a keyplane", &v14, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)updateDynamicKeyboard:(id)keyboard usingSize:(CGSize)size isLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  height = size.height;
  width = size.width;
  v27 = *MEMORY[0x1E69E9840];
  keyboardCopy = keyboard;
  if ([keyboardCopy type] == 2)
  {
    height = [TUIKeyplaneView updateDynamicKeyplane:keyboardCopy usingSize:landscapeCopy isLandscape:width, height];
  }

  else if ([keyboardCopy type] == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    subtrees = [keyboardCopy subtrees];
    v11 = [subtrees countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      height2 = 0;
      v14 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(subtrees);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 type] == 2)
          {
            if (!height2)
            {
              height2 = [[TUIKeyplaneView alloc] initWithFrame:v16 keyplane:0.0, 0.0, width, height];
            }

            [(TUIKeyplaneView *)height2 generateFactoryForKeyplane:v16 landscape:landscapeCopy];
            [(TUIKeyplaneView *)height2 setKeyplaneForAutomation:v16];
            [(TUIKeyplaneView *)height2 updateToSpecifiedSize:width, height];
            [(TUIKeyplaneView *)height2 updateTreeForAutomation];
          }
        }

        v12 = [subtrees countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    else
    {
      height2 = 0;
    }

    height = keyboardCopy;
  }

  else
  {
    v17 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      name = [keyboardCopy name];
      *buf = 138412290;
      v26 = name;
      _os_log_error_impl(&dword_18FFDC000, v17, OS_LOG_TYPE_ERROR, "Error: %@ is not a keyboard", buf, 0xCu);
    }

    height = 0;
  }

  return height;
}

+ (id)dynamicKeyboardForName:(id)name size:(CGSize)size isLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v9 = +[TUIKeyboardLayoutFactory sharedKeyboardFactory];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dynamic-%@", nameCopy];
  v11 = [v9 keyboardWithName:nameCopy inCache:0];

  if (v11 && [v11 type] == 1)
  {
    v23 = v11;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    subtrees = [v11 subtrees];
    v13 = [subtrees countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      height = 0;
      v17 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(subtrees);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          if ([v19 type] == 2)
          {
            if (!height)
            {
              height = [[TUIKeyplaneView alloc] initWithFrame:v19 keyplane:0.0, 0.0, width, height];
              v20 = v19;

              v15 = v20;
            }

            [(TUIKeyplaneView *)height generateFactoryForKeyplane:v19 landscape:landscapeCopy];
            [(TUIKeyplaneView *)height setKeyplaneForAutomation:v19];
            [(TUIKeyplaneView *)height updateToSpecifiedSize:width, height];
            [(TUIKeyplaneView *)height updateTreeForAutomation];
          }
        }

        v14 = [subtrees countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      height = 0;
    }

    v11 = v23;
    v21 = v23;
  }

  else
  {
    height = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(&height->super.super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = nameCopy;
      _os_log_error_impl(&dword_18FFDC000, &height->super.super.super, OS_LOG_TYPE_ERROR, "Error: Specified name %@ did not return a keyboard", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

+ (id)keyplaneViewForLayout:(id)layout size:(CGSize)size isLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  height = size.height;
  width = size.width;
  v16 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  if (([layoutCopy dynamicLayout] & 1) == 0)
  {
    v10 = _TUIKeyplaneViewLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    name = [layoutCopy name];
    v14 = 138412290;
    v15 = name;
    v12 = "Error: %@ is not a dynamic layout";
LABEL_12:
    _os_log_error_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_ERROR, v12, &v14, 0xCu);

    goto LABEL_7;
  }

  if ([layoutCopy type] == 2)
  {
    height = [[TUIKeyplaneView alloc] initWithFrame:layoutCopy keyplane:0.0, 0.0, width, height];
    [(TUIKeyplaneView *)height generateFactoryForKeyplane:layoutCopy landscape:landscapeCopy];
    [(TUIKeyplaneView *)height setKeyplaneForAutomation:layoutCopy];
    [(TUIKeyplaneView *)height updateToSpecifiedSize:width, height];
    [(TUIKeyplaneView *)height updateTreeForAutomation];
    goto LABEL_8;
  }

  v10 = _TUIKeyplaneViewLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    name = [layoutCopy name];
    v14 = 138412290;
    v15 = name;
    v12 = "Error: %@ is not a keyplane";
    goto LABEL_12;
  }

LABEL_7:

  height = 0;
LABEL_8:

  return height;
}

+ (id)keyplaneViewForKeyboard:(id)keyboard size:(CGSize)size isLandscape:(BOOL)landscape displayKeyplane:(unint64_t)keyplane
{
  landscapeCopy = landscape;
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x1E69E9840];
  keyboardCopy = keyboard;
  v11 = +[TUIKeyboardLayoutFactory sharedKeyboardFactory];
  keyboardCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dynamic-%@", keyboardCopy];
  v13 = [v11 keyboardWithName:keyboardCopy inCache:0];

  if (v13)
  {
    if ([v13 type] == 2)
    {
      height = [TUIKeyplaneView keyplaneViewForLayout:v13 size:landscapeCopy isLandscape:width, height];
    }

    else
    {
      subtrees = [v13 subtrees];
      v17 = [subtrees count] - 1;

      if (v17 < keyplane)
      {
        subtrees2 = [v13 subtrees];
        keyplane = [subtrees2 count] - 1;
      }

      subtrees3 = [v13 subtrees];
      v20 = [subtrees3 count];

      height = 0;
      if (v20)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          subtrees4 = [v13 subtrees];
          v23 = [subtrees4 objectAtIndex:v21];

          if ([v23 type] == 2)
          {
            if (!height)
            {
              height = [[TUIKeyplaneView alloc] initWithFrame:v23 keyplane:0.0, 0.0, width, height];
              v24 = v23;

              v20 = v24;
            }

            if (keyplane == v21)
            {
              v25 = v23;

              v20 = v25;
            }

            [(TUIKeyplaneView *)height generateFactoryForKeyplane:v23 landscape:landscapeCopy];
            [(TUIKeyplaneView *)height setKeyplaneForAutomation:v23];
            [(TUIKeyplaneView *)height updateToSpecifiedSize:width, height];
            [(TUIKeyplaneView *)height updateTreeForAutomation];
          }

          ++v21;
          subtrees5 = [v13 subtrees];
          v27 = [subtrees5 count];
        }

        while (v21 < v27);
      }

      [(TUIKeyplaneView *)height setKeyplane:v20];
      [(TUIKeyplaneView *)height updateTreeForAutomation];
    }
  }

  else
  {
    v15 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = keyboardCopy;
      _os_log_error_impl(&dword_18FFDC000, v15, OS_LOG_TYPE_ERROR, "Error: Specified name %@ did not return a keyboard", buf, 0xCu);
    }

    height = 0;
  }

  return height;
}

@end