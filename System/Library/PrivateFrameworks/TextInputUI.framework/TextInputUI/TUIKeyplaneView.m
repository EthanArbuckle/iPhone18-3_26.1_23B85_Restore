@interface TUIKeyplaneView
+ (CGSize)keyplaneSizeForLayout:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5;
+ (Class)selectorViewClassForKey:(id)a3 forRenderingContext:(id)a4;
+ (id)dynamicKeyboardForName:(id)a3 size:(CGSize)a4 isLandscape:(BOOL)a5;
+ (id)keyplaneViewForKeyboard:(id)a3 size:(CGSize)a4 isLandscape:(BOOL)a5 displayKeyplane:(unint64_t)a6;
+ (id)keyplaneViewForLayout:(id)a3 size:(CGSize)a4 isLandscape:(BOOL)a5;
+ (id)updateDynamicKeyboard:(id)a3 usingSize:(CGSize)a4 isLandscape:(BOOL)a5;
+ (id)updateDynamicKeyplane:(id)a3 usingSize:(CGSize)a4 isLandscape:(BOOL)a5;
- (BOOL)_shouldAllowKey:(id)a3;
- (BOOL)_shouldUseUnifiedKeyView:(id)a3;
- (BOOL)_showDebugBackdrop;
- (BOOL)isInSizeTransition;
- (BOOL)isSplit;
- (BOOL)supportsSplit;
- (CGRect)updateFrameForKey:(id)a3;
- (CGSize)idealKeySizeforLayoutType:(int64_t)a3;
- (CGSize)leftSplitSize;
- (CGSize)preferredFloatingSize;
- (CGSize)preferredSize;
- (CGSize)rightSplitSize;
- (CGSize)sizeForDockedLayoutClass;
- (CGSize)sizeForFloatingLayoutClass;
- (CGSize)sizeForVisualState:(int64_t)a3;
- (CGSize)sizeFromScreenTraitsAndClass;
- (CGSize)sizeFromScreenTraitsAndClassWithSplitHeight:(BOOL)a3;
- (CGSize)splitSizeForRightSide:(BOOL)a3;
- (CGSize)transitionFloatingSize;
- (CGSize)transitionFullSize;
- (CGSize)transitionMiddleSize;
- (CGSize)unsplitSize;
- (Class)preferredKeyViewClass;
- (NSString)description;
- (TUIKeyplaneView)initWithFrame:(CGRect)a3 keyplane:(id)a4;
- (UIEdgeInsets)keycapInsets;
- (UIEdgeInsets)keyplaneInsets;
- (UIEdgeInsets)rowInsets;
- (UIEdgeInsets)standardKeyInsets;
- (UIKBRenderFactory)factory;
- (double)fullHeightForDockedKeyboard;
- (double)rowsVerticalSpacing;
- (double)totalSplitSizeForRow:(unint64_t)a3;
- (id)cacheIdentifierForKey:(id)a3 withState:(int)a4;
- (id)cachedVariantViewForTree:(id)a3 state:(int)a4;
- (id)currentKBLayoutInfo;
- (id)hitTestVariantKeyAtPoint:(CGPoint)a3;
- (id)keyViewForKey:(id)a3;
- (id)keyViewForTree:(id)a3;
- (id)keyplaneFromTree:(id)a3 size:(CGSize)a4 controlKeyType:(int64_t)a5;
- (id)keyplaneRenderConfig;
- (id)renderConfigForCurrentTraitCollection;
- (id)variantViewForKey:(id)a3 cacheID:(id)a4;
- (id)viewForBaseKey:(id)a3;
- (int64_t)keyLayoutStyle;
- (void)_generateFactoryIfNeeded;
- (void)_generateRenderingContextIfNeeded;
- (void)_regenerateFactoryPreservingUpdates:(BOOL)a3;
- (void)_updateRenderingContext;
- (void)addKeyToDelayedDeactivationSet:(id)a3;
- (void)animatingTransitionFromState:(int64_t)a3 toState:(int64_t)a4 animationType:(int64_t)a5 totalDuration:(double)a6;
- (void)boundsChangedForKey:(id)a3;
- (void)changingSelectedVariantForKey:(id)a3 atPoint:(CGPoint)a4 isDragging:(BOOL)a5;
- (void)compareKeyplane:(id)a3 toKeyplane:(id)a4;
- (void)createContentViewsIfNeeded;
- (void)createSplitLayoutIfNeeded;
- (void)deactivateAdaptiveKey:(id)a3;
- (void)deactivateKey:(id)a3 previousState:(int)a4;
- (void)deactivateKeys;
- (void)didTapBiasEscapeButton;
- (void)dimKeys:(id)a3;
- (void)finalLayoutForSplit:(BOOL)a3;
- (void)finishFloatingTransitionWithState:(int64_t)a3 animationType:(int64_t)a4;
- (void)finishSplitTransition;
- (void)finishedSelectingVariantForKey:(id)a3 atPoint:(CGPoint)a4;
- (void)finishedTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5;
- (void)generateFactoryForKeyplane:(id)a3 landscape:(BOOL)a4;
- (void)layoutKeysInRows:(id)a3;
- (void)layoutRows:(unint64_t)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForFloatingTransition;
- (void)prepareForSplitTransition;
- (void)prepareForTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5;
- (void)presentSelectorView:(id)a3 fromBaseKey:(id)a4;
- (void)removeFromSuperview;
- (void)removeKeyFromDelayedDeactivationSet:(id)a3;
- (void)resetLayoutAndApplyKeyplane:(id)a3;
- (void)setKeyboardBias:(int64_t)a3;
- (void)setKeyplane:(id)a3 override:(BOOL)a4;
- (void)setKeyplaneForAutomation:(id)a3;
- (void)setOverrideScreenTraits:(id)a3;
- (void)setRenderConfig:(id)a3;
- (void)setRenderingContext:(id)a3;
- (void)setState:(int)a3 forKey:(id)a4;
- (void)switchToFloatingTransitionLayoutClass:(int64_t)a3 interactive:(BOOL)a4;
- (void)tappedToDismissSelector;
- (void)transitionToKeyplane:(id)a3 override:(BOOL)a4;
- (void)transitionWillFinishWithProgress:(double)a3 completion:(id)a4;
- (void)transitioningToState:(int64_t)a3 animationType:(int64_t)a4 completionPercentage:(double)a5;
- (void)updateAllTrees;
- (void)updateBiasEscapeButtonVisbility:(BOOL)a3;
- (void)updateBottomRowSizingGuide;
- (void)updateBottomRowSizingGuideForClass:(int64_t)a3;
- (void)updateFloatingTransitionForPercentComplete:(double)a3;
- (void)updateKeyplaneSpacing;
- (void)updateKeysForFloating:(BOOL)a3;
- (void)updateKeysForRow:(unint64_t)a3 withKeys:(id)a4;
- (void)updateRowsForTransitionToKeyplane:(id)a3;
- (void)updateSplitProgress:(double)a3;
- (void)updateToSize:(CGSize)a3;
- (void)updateToSpecifiedSize:(CGSize)a3;
- (void)updateTreeForAutomation;
- (void)updateVariantSelectorFramesForKey:(id)a3;
@end

@implementation TUIKeyplaneView

- (void)createContentViewsIfNeeded
{
  v72[6] = *MEMORY[0x1E69E9840];
  v3 = [(TUIKeyplaneView *)self keyboardContentView];

  if (!v3)
  {
    v4 = objc_alloc_init(TUIKeyboardContentView);
    [(TUIKeyplaneView *)self setKeyboardContentView:v4];

    v5 = [(TUIKeyplaneView *)self keyboardContentView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(TUIKeyplaneView *)self keyboardContentView];
    [v6 setUserInteractionEnabled:0];

    v7 = [(TUIKeyplaneView *)self keyboardContentView];
    [(TUIKeyplaneView *)self addSubview:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [v8 setIdentifier:@"TUIKeyplane.left"];
    [(TUIKeyplaneView *)self addLayoutGuide:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [v9 setIdentifier:@"TUIKeyplane.right"];
    [(TUIKeyplaneView *)self addLayoutGuide:v9];
    v10 = [v8 widthAnchor];
    v11 = [v10 constraintEqualToConstant:0.0];
    [(TUIKeyplaneView *)self setLeftSpacing:v11];

    v12 = [v9 widthAnchor];
    v13 = [v12 constraintEqualToConstant:0.0];
    [(TUIKeyplaneView *)self setRightSpacing:v13];

    v14 = [(TUIKeyplaneView *)self keyboardContentView];
    v15 = [v14 topAnchor];
    v16 = [(TUIKeyplaneView *)self topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:8.0];
    [(TUIKeyplaneView *)self setTopSpacing:v17];

    v18 = [(TUIKeyplaneView *)self bottomAnchor];
    v19 = [(TUIKeyplaneView *)self keyboardContentView];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [(TUIKeyplaneView *)self setBottomSpacing:v21];

    v22 = [v9 rightAnchor];
    v23 = [(TUIKeyplaneView *)self rightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];
    [(TUIKeyplaneView *)self setTrailingTieConstraint:v24];

    v67 = [(TUIKeyplaneView *)self topSpacing];
    v72[0] = v67;
    v66 = [(TUIKeyplaneView *)self keyboardContentView];
    v65 = [v66 leftAnchor];
    v64 = [v8 rightAnchor];
    v63 = [v65 constraintEqualToAnchor:v64 constant:0.0];
    v72[1] = v63;
    v69 = v8;
    v62 = [v8 leftAnchor];
    v25 = [(TUIKeyplaneView *)self leftAnchor];
    v26 = [v62 constraintEqualToAnchor:v25];
    v72[2] = v26;
    v68 = v9;
    v27 = [v9 leftAnchor];
    v28 = [(TUIKeyplaneView *)self keyboardContentView];
    v29 = [v28 rightAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:0.0];
    v72[3] = v30;
    v31 = [(TUIKeyplaneView *)self leftSpacing];
    v72[4] = v31;
    v32 = [(TUIKeyplaneView *)self rightSpacing];
    v72[5] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:6];

    [MEMORY[0x1E696ACD8] activateConstraints:v33];
    v34 = [(TUIKeyplaneView *)self screenTraits];

    if (v34)
    {
      v35 = [(TUIKeyplaneView *)self screenTraits];
      v36 = [(TUIKeyplaneView *)self keyplane];
      v37 = [v36 layoutName];
      v38 = [(TUIKeyplaneView *)self keyplane];
      v39 = [v38 name];
      [TUIKeyplane sizeFromScreenTraits:v35 layout:v37 layoutClass:[TUIKeyplane layoutClassFromKeyplaneName:v39]];
      v41 = v40;
      v43 = v42;
    }

    else
    {
      v44 = [(TUIKeyplaneView *)self screenTraits];
      if (v44)
      {
        v45 = [(TUIKeyplaneView *)self screenTraits];
        [v45 keyboardScreenReferenceSize];
        v41 = v46;
        v48 = v47;
      }

      else
      {
        v45 = [(TUIKeyplaneView *)self window];
        v49 = [v45 screen];
        [v49 bounds];
        v41 = v50;
        v48 = v51;
      }

      v52 = [(TUIKeyplaneView *)self screenTraits];
      if (v52)
      {
        v53 = [(TUIKeyplaneView *)self screenTraits];
        v54 = [v53 isKeyboardMinorEdgeWidth] ^ 1;
      }

      else
      {
        v54 = v41 > v48;
      }

      v55 = [TUIKeyplane layoutClassFromScreenDimensions:v41, v48];
      [TUIKeyplane sizeBasisForLayoutClass:v55];
      v35 = [(TUIKeyplaneView *)self keyplane];
      v36 = [v35 layoutName];
      [TUIKeyplane baseHeightForLayout:v36 layoutClass:v55 landscape:v54];
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
    v60 = [MEMORY[0x1E69DC888] systemPurpleColor];
    v61 = [v60 colorWithAlphaComponent:0.2];
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
    v9 = [(TUIKeyplaneView *)self layoutReadyForTreeUpdate];
    v10 = @"Skip update";
    *buf = 138413058;
    v13 = v5;
    v14 = 2048;
    if (v9)
    {
      v10 = @"Layout ready";
    }

    v15 = self;
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

  v4 = [(TUIKeyplaneView *)self currentKeyplane];
  self->_keyBoundsChangeCount = [v4 numberOfKeys];
}

- (UIEdgeInsets)keycapInsets
{
  [(TUIKeyplaneView *)self standardKeyInsets];
  v4.f64[1] = v3;
  v6.f64[1] = v5;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *MEMORY[0x1E69DDCE0]), vceqq_f64(v6, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v11 = [(TUIKeyplaneView *)self keyplane];
    v12 = [v11 layoutName];

    if (([v12 isEqualToString:@"QWERTY-Arabic"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"AZERTY-Arabic"))
    {
      v13 = [(TUIKeyplaneView *)self factory];
      [v13 dynamicInsetsForNumberOfRows:4];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
    }

    else
    {
      v13 = [(TUIKeyplaneView *)self factory];
      v22 = [(TUIKeyplaneView *)self currentKeyplane];
      [v13 dynamicInsetsForNumberOfRows:{objc_msgSend(v22, "numberOfRows")}];
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
    v14 = [(TUIKeyplaneView *)self keyRowViews];
    if ([v14 count] && !-[TUIKeyplaneView movingToFloating](self, "movingToFloating"))
    {
      v3 = [(TUIKeyplaneView *)self movingFromFloating];

      if (!v3)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __33__TUIKeyplaneView_updateAllTrees__block_invoke;
        aBlock[3] = &unk_1E72D8438;
        aBlock[4] = self;
        v4 = _Block_copy(aBlock);
        v5 = [(TUIKeyplaneView *)self keyboardContentView];
        [v5 bounds];
        IsEmpty = CGRectIsEmpty(v23);

        if (!IsEmpty)
        {
          [(TUIKeyplaneView *)self setStandardKeyInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
        }

        v7 = [(UIKBTree *)self->_keyplane keys];
        if ([(TUIKeyplaneView *)self layoutReadyForTreeUpdate])
        {
          v8 = [(TUIKeyplaneView *)self keyRowViews];
          v9 = [v8 objectForKey:&unk_1F03D8E88];

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
              v20 = self;
              _os_log_debug_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_DEBUG, "<%@: %p> Updating keys", buf, 0x16u);
            }

            v4[2](v4, v7);
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
            v20 = self;
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
  v3 = [(TUIKeyplaneView *)self screenTraits];
  v4 = [v3 idiom];

  if (v4 == 3)
  {
    [(UIKBRenderFactory *)self->_factory setDynamicFactory:0];
  }

  else
  {
    v5 = [(TUIKeyplaneView *)self screenTraits];
    if ([v5 isKeyboardMinorEdgeWidth])
    {
      [(UIKBRenderFactory *)self->_factory setDynamicFactory:1];
    }

    else
    {
      v6 = [(TUIKeyplaneView *)self screenTraits];
      v7 = ([v6 isFloating] & 1) != 0 || -[TUIKeyplaneView currentHandBias](self, "currentHandBias") != 0;
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
    v4 = [(UIKBTree *)self->_keyplane visualStyling];
    v5 = v4;
    v6 = v4 & 0xFFFFFFFF00000000;
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
    v9 = [(TUIKeyplaneView *)self renderingContext];
    [v9 setHandBias:0];

    if ([(UIKBScreenTraits *)self->_screenTraits idiom]== 3)
    {
      v8 = v8 & 0xFFFFFFC0 | 3;
    }

    else
    {
      v8 = v8;
    }

    v10 = MEMORY[0x1E69DCB50];
    v11 = [(TUIKeyplaneView *)self renderingContext];
    v12 = [v10 factoryForVisualStyle:v6 | v8 renderingContext:v11];
    v13 = self->_factory;
    self->_factory = v12;

    v14 = [(TUIKeyplaneView *)self screenTraits];
    v15 = [v14 screen];
    [v15 scale];
    [(UIKBRenderFactory *)self->_factory setScale:?];

    v16 = UIKeyboardGetCurrentInputMode();
    [(UIKBRenderFactory *)self->_factory setPreferStringKeycapOverImage:UIKeyboardUIPreferStringOverImageForInputMode()];

    [(UIKBRenderFactory *)self->_factory setStretchFactor:1.0, 1.0];
    v17 = [(TUIKeyplaneView *)self screenTraits];
    [v17 stretchFactor];
    if (v18 != 1.0)
    {
      v19 = [(TUIKeyplaneView *)self screenTraits];
      [v19 stretchFactor];
      if (v20 <= 0.0)
      {
      }

      else
      {
        v21 = [(TUIKeyplaneView *)self screenTraits];
        v22 = [v21 isFloating];

        if (v22)
        {
LABEL_14:
          v23 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
          -[UIKBRenderFactory setAllowsPaddles:](self->_factory, "setAllowsPaddles:", [v23 BOOLForPreferenceKey:*MEMORY[0x1E69D97F0]]);

          factory = self->_factory;
          goto LABEL_15;
        }

        v17 = [(TUIKeyplaneView *)self screenTraits];
        [v17 stretchFactor];
        [(UIKBRenderFactory *)self->_factory setStretchFactor:?];
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  if ([(UIKBRenderFactory *)factory allowsPaddles])
  {
    v24 = [(UIKBTree *)self->_keyplane layoutName];
    v25 = [v24 isEqualToString:@"Thai-24-Key"];

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
  v11 = [(TUIKeyplaneView *)self topSpacing];
  [v11 setConstant:v4];

  v12 = [(TUIKeyplaneView *)self leftSpacing];
  [v12 setConstant:v6];

  v13 = [(TUIKeyplaneView *)self bottomSpacing];
  [v13 setConstant:v8];

  v14 = [(TUIKeyplaneView *)self rightSpacing];
  [v14 setConstant:v10];
}

- (UIEdgeInsets)keyplaneInsets
{
  v3 = MEMORY[0x1E69DDCE0];
  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = [(TUIKeyplaneView *)self currentKeyplane];
  v8 = [v7 effectsType];

  if (v8 == 1)
  {
    v9 = *(v3 + 8);
  }

  else
  {
    [(TUIKeyplaneView *)self keycapInsets];
    v9 = v14;
    v15 = [(TUIKeyplaneView *)self screenTraits];
    v16 = [v15 isKeyboardMinorEdgeWidth];

    if (v16)
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
    v24 = [(TUIKeyplaneView *)self currentKeyplane];
    v25 = [v24 layoutClass];

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        if (v21 + -3.0 >= 0.0)
        {
          v5 = v21 + -3.0;
        }

        else
        {
          v5 = 0.0;
        }

        if (v16)
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

      else if (v25 == 4)
      {
        if (v16)
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
          v30 = [(TUIKeyplaneView *)self screenTraits];
          v31 = [v30 isKeyboardMinorEdgeWidth];

          if (v31)
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
        v52 = [(TUIKeyplaneView *)self trailingTieConstraint];
        [v52 setConstant:v51];
      }
    }

    else if (v25 == 1)
    {
      v32 = [MEMORY[0x1E69DCBE0] activeInstance];
      v33 = [v32 textInputTraits];
      [v33 keyboardType];
      if (UIKeyboardTypeIsNumberPad())
      {
        v34 = [(TUIKeyplaneView *)self screenTraits];
        v35 = [v34 isInPopover];

        if (v35)
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
        v42 = 0;
      }

      else
      {
        v41 = [(TUIKeyplaneView *)self screenTraits];
        v42 = [v41 isKeyboardMinorEdgeWidth];
      }

      v43 = [(TUIKeyplaneView *)self screenTraits];
      v44 = [v43 idiom];

      if (v44 == 3)
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
          if (!v16)
          {
            v45 = 16.0;
          }

          if (v42)
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
          if (v42)
          {
            v46 = 2.0;
          }

          else
          {
            v46 = 1.0;
          }

          [(TUIKeyplaneView *)self keycapInsets];
          v5 = v46 - v47;
          if ((([(TUIKeyplaneView *)self currentHandBias]!= 0) & v16) == 0)
          {
            if (v16)
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

      v53 = [(TUIKeyplaneView *)self screenTraits];
      v54 = [v53 idiom];
      v55 = 5.0;
      if (v42)
      {
        v55 = 0.0;
      }

      if (v16)
      {
        v55 = 7.0;
      }

      if (v54 != 3)
      {
        v4 = v55;
      }

      if ((([(TUIKeyplaneView *)self currentHandBias]!= 0) & v16) == 1)
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
        v63 = [(TUIKeyplaneView *)self trailingTieConstraint];
        [v63 setConstant:v62];
      }

      v6 = v58;
    }

    else if (v25 == 2)
    {
      if (v21 + -3.0 >= 0.0)
      {
        v5 = v21 + -3.0;
      }

      else
      {
        v5 = 0.0;
      }

      if (v16)
      {
        v4 = 7.0;
      }

      else
      {
        v4 = 10.0;
      }

      [(TUIKeyplaneView *)self keycapInsets];
      v27 = v26;
      v28 = [(TUIKeyplaneView *)self trailingTieConstraint];
      [v28 setConstant:v27];

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
  v3 = [(TUIKeyplaneView *)self supportsSplit];
  if (v3)
  {
    v3 = [(TUIKeyplaneView *)self isCurrentlySplit];
    if (v3)
    {
      LOBYTE(v3) = ![(TUIKeyplaneView *)self isInSplitTransition];
    }
  }

  return v3;
}

- (BOOL)supportsSplit
{
  v2 = [(TUIKeyplaneView *)self currentKeyplane];
  v3 = [v2 layoutClass] == 2;

  return v3;
}

- (id)keyplaneRenderConfig
{
  renderConfig = self->_renderConfig;
  if (!renderConfig)
  {
    v4 = [(TUIKeyplaneView *)self renderConfigForCurrentTraitCollection];
    v5 = self->_renderConfig;
    self->_renderConfig = v4;

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
  v4 = [(NSMutableDictionary *)self->_delayedDeactivationKeys allValues];
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(TUIKeyplaneView *)self setState:2 forKey:*(*(&v35 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [(TUIKeyplaneView *)self storedKeyViews];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * j);
        v15 = [v14 key];
        v16 = [v15 state];

        if (v16 == 16 || v16 == 4)
        {
          v2 = [v14 key];
          v18 = [v2 avoidAutoDeactivation] ^ 1;
        }

        else
        {
          v18 = 0;
        }

        if (v16 == 16 || v16 == 4)
        {
        }

        if (v18)
        {
          v20 = [v14 key];
          [(TUIKeyplaneView *)self setState:2 forKey:v20];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v11);
  }

  v21 = [(TUIKeyplaneView *)self activeKey];

  if (v21)
  {
    v22 = [(TUIKeyplaneView *)self activeKey];
    v23 = [(TUIKeyplaneView *)self activeKey];
    v24 = [v23 backingTree];
    v25 = [(TUIKeyplaneView *)self cacheIdentifierForKey:v24 withState:16];
    v26 = [(TUIKeyplaneView *)self variantViewForKey:v22 cacheID:v25];

    if (v26)
    {
      [v26 bounds];
      if (!CGRectIsEmpty(v42))
      {
        v27 = [(TUIKeyplaneView *)self activeKey];
        v28 = [v27 backingTree];
        [v28 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];

        v29 = [(TUIKeyplaneView *)self activeKey];
        v30 = [v29 backingTree];
        [(TUIKeyplaneView *)self setState:2 forKey:v30];
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

  v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:@"ShowCrescendoBackdrop"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (id)currentKBLayoutInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCB38]);
  v4 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v3 setIsAutoShifted:{objc_msgSend(v4, "isAutoShifted")}];

  v5 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v3 setIsShiftLocked:{objc_msgSend(v5, "isShiftLocked")}];

  v6 = [MEMORY[0x1E69DCBE0] activeInstance];
  v7 = [v6 textInputTraits];
  [v3 setTextInputTraits:v7];

  v8 = [(TUIKeyplaneView *)self screenTraits];
  [v3 setScreenTraits:v8];

  return v3;
}

- (void)_updateRenderingContext
{
  v3 = [MEMORY[0x1E69DCBE0] activeInstance];
  v4 = [v3 textInputTraits];
  -[UIKBRenderingContext setKeyboardType:](self->_renderingContext, "setKeyboardType:", [v4 keyboardType]);

  v6 = [(TUIKeyplaneView *)self screenTraits];
  if (v6)
  {
    v5 = [(TUIKeyplaneView *)self screenTraits];
    -[UIKBRenderingContext setIsFloating:](self->_renderingContext, "setIsFloating:", [v5 isFloating]);
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
    v4 = [(TUIKeyplaneView *)self keyplaneRenderConfig];
    v5 = [v3 renderingContextForRenderConfig:v4];
    renderingContext = self->_renderingContext;
    self->_renderingContext = v5;
  }

  [(TUIKeyplaneView *)self _updateRenderingContext];
}

- (UIEdgeInsets)rowInsets
{
  v2 = [(TUIKeyplaneView *)self currentKeyplane];
  v3 = [v2 effectsType];

  v4 = 0.0;
  v5 = 24.0;
  if (v3 != 1)
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
  v3 = [(TUIKeyplaneView *)self currentKeyplane];
  v4 = [v3 keyLayoutStyle];

  if (v4 == -1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
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
  v2 = [(TUIKeyplaneView *)self currentKeyplane];
  v3 = [v2 effectsType];

  result = 0.0;
  if (v3 == 1)
  {
    return 12.0;
  }

  return result;
}

- (Class)preferredKeyViewClass
{
  v2 = [(TUIKeyplaneView *)self currentKeyplane];
  [v2 effectsType];

  v3 = objc_opt_class();

  return v3;
}

- (void)updateBottomRowSizingGuide
{
  v3 = [(TUIKeyplaneView *)self currentKeyplane];
  -[TUIKeyplaneView updateBottomRowSizingGuideForClass:](self, "updateBottomRowSizingGuideForClass:", [v3 layoutClass]);
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
  v5 = [(TUIKeyplaneView *)self keyplane];
  v6 = [v5 name];
  if ([(TUIKeyplaneView *)self isFloating])
  {
    [(TUIKeyplaneView *)self preferredFloatingSize];
  }

  else
  {
    [(TUIKeyplaneView *)self preferredSize];
  }

  v9 = NSStringFromCGSize(*&v7);
  v10 = [(TUIKeyplaneView *)self currentKeyplane];
  v11 = [v3 stringWithFormat:@"<%@: %p> name = %@ preferredSize = %@; currentKeyplane = %@", v4, self, v6, v9, v10];;

  return v11;
}

- (void)updateToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v69 = *MEMORY[0x1E69E9840];
  if (![(TUIKeyplaneView *)self movingToFloating]&& ![(TUIKeyplaneView *)self movingFromFloating]&& width > 0.0 && height > 0.0)
  {
    v6 = [(TUIKeyplaneView *)self factory];
    [v6 scale];
    v8 = v7;

    if (v8 > 0.0)
    {
      v9 = [(TUIKeyplaneView *)self factory];
      [v9 scale];
      v11 = ceil(height * v10);
      v12 = [(TUIKeyplaneView *)self factory];
      [v12 scale];
      height = v11 / v13;

      v14 = [(TUIKeyplaneView *)self factory];
      [v14 scale];
      v16 = ceil(width * v15);
      v17 = [(TUIKeyplaneView *)self factory];
      [v17 scale];
      width = v16 / v18;
    }

    if (-[TUIKeyplaneView isFloating](self, "isFloating") && (-[TUIKeyplaneView currentKeyplane](self, "currentKeyplane"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 supportsFloatingStyle], v19, v20))
    {
      v21 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [v21 setActive:0];

      v22 = [(TUIKeyplaneView *)self heightConstraint];
      [v22 setActive:0];

      v23 = [(TUIKeyplaneView *)self preferredWidthConstraint];
      [v23 setConstant:width];

      v24 = [(TUIKeyplaneView *)self preferredWidthConstraint];
      [v24 setActive:0];

      v25 = [(TUIKeyplaneView *)self keyboardContentView];
      v26 = [v25 heightAnchor];
      v27 = [(TUIKeyplaneView *)self keyboardContentView];
      v28 = [v27 widthAnchor];
      v29 = [v26 constraintEqualToAnchor:v28 multiplier:height / width];
      [(TUIKeyplaneView *)self setSizeRatioConstraint:v29];

      v30 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [v30 setIdentifier:@"TUIKeyplane.sizeRatio"];

      v31 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [v31 setActive:1];

      v32 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v32 bounds];
      [(TUIKeyplaneView *)self setMaximumWidth:v33];
    }

    else
    {
      v34 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [v34 setActive:0];

      v35 = [(TUIKeyplaneView *)self heightConstraint];

      if (!v35)
      {
        v36 = [(TUIKeyplaneView *)self keyboardContentView];
        v37 = [v36 heightAnchor];
        v38 = [v37 constraintEqualToConstant:height];
        [(TUIKeyplaneView *)self setHeightConstraint:v38];

        v39 = [(TUIKeyplaneView *)self heightConstraint];
        [v39 setIdentifier:@"TUIKeyplane.height"];
      }

      v40 = [(TUIKeyplaneView *)self preferredWidthConstraint];

      if (!v40)
      {
        v41 = [(TUIKeyplaneView *)self keyboardContentView];
        v42 = [v41 widthAnchor];
        v43 = [v42 constraintEqualToConstant:width];
        [(TUIKeyplaneView *)self setPreferredWidthConstraint:v43];

        v44 = [(TUIKeyplaneView *)self preferredWidthConstraint];
        [v44 setIdentifier:@"TUIKeyplane.width"];
      }

      v45 = [(TUIKeyplaneView *)self screenTraits];
      v46 = [v45 idiom];

      if (v46 != 3)
      {
        v47 = [(TUIKeyplaneView *)self preferredWidthConstraint];
        LODWORD(v48) = 1144750080;
        [v47 setPriority:v48];
      }

      v49 = [(TUIKeyplaneView *)self heightConstraint];
      [v49 setActive:1];

      v32 = [(TUIKeyplaneView *)self preferredWidthConstraint];
      [v32 setActive:1];
    }

    v50 = [(TUIKeyplaneView *)self heightConstraint];
    [v50 setConstant:height];

    v51 = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [v51 setConstant:width];

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
          v60 = [(TUIKeyplaneView *)self isCurrentlySplit];
          v59 = @"docked";
          if (v60)
          {
            v59 = @"split";
          }
        }

        v61 = 138413058;
        v62 = v57;
        v63 = 2048;
        v64 = self;
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

- (CGSize)idealKeySizeforLayoutType:(int64_t)a3
{
  v4 = [(TUIKeyplaneView *)self currentKeyplane];
  v5 = [v4 effectsType];

  v6 = 60.0;
  v7 = 102.0;
  if (a3 != 7)
  {
    v7 = 60.0;
  }

  if (v5 != 1)
  {
    v7 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)sizeFromScreenTraitsAndClassWithSplitHeight:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIKeyplaneView *)self screenTraits];
  v6 = [(TUIKeyplaneView *)self keyplane];
  v7 = [v6 layoutName];
  v8 = [(TUIKeyplaneView *)self currentKeyplane];
  +[TUIKeyplane sizeFromScreenTraits:layout:layoutClass:](TUIKeyplane, "sizeFromScreenTraits:layout:layoutClass:", v5, v7, [v8 layoutClass]);
  v10 = v9;
  v12 = v11;

  if (v3)
  {
    v13 = [(TUIKeyplaneView *)self currentKeyplane];
    v14 = [v13 supportsSplitStyle];

    if (v14)
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
  v3 = [(TUIKeyplaneView *)self screenTraits];
  v4 = [(TUIKeyplaneView *)self keyplane];
  v5 = [v4 layoutName];
  v6 = [(TUIKeyplaneView *)self currentKeyplane];
  +[TUIKeyplane sizeFromScreenTraits:layout:layoutClass:](TUIKeyplane, "sizeFromScreenTraits:layout:layoutClass:", v3, v5, [v6 layoutClass]);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)splitSizeForRightSide:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 280.0;
  }

  else
  {
    v5 = 266.0;
  }

  v6 = [(TUIKeyplaneView *)self currentKeyplane];

  if (v6)
  {
    v7 = [(TUIKeyplaneView *)self currentKeyplane];
    [v7 finalSplitSizeForRightSide:v3];
    v5 = v8;

    v9 = [(TUIKeyplaneView *)self currentKeyplane];
    [v9 finalHeightForSplitKeyboard];
    v11 = v10;
  }

  else
  {
    v11 = 205.0;
  }

  v12 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  v13 = [v12 preferencesActions];
  [v13 rivenSizeFactor:v5];
  v15 = v14;
  v16 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  v17 = [v16 preferencesActions];
  [v17 rivenSizeFactor:v11];
  v19 = v18;

  v20 = v15;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)finalLayoutForSplit:(BOOL)a3
{
  v3 = a3;
  v37 = *MEMORY[0x1E69E9840];
  if ([(TUIKeyplaneView *)self isCurrentlySplit]!= a3)
  {
    [(TUIKeyplaneView *)self setIsCurrentlySplit:v3];
  }

  [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(TUIKeyplaneView *)self keyRowViews];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v32 + 1) + 8 * i) toggleConstraintsForSplit:v3];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  if (v3)
  {
    [(TUIKeyplaneView *)self leftSplitSize];
    v12 = v11;
    [(TUIKeyplaneView *)self rightSplitSize];
    v14 = vabdd_f64(v12, v13) + 20.0;
    v15 = [(TUIKeyplaneView *)self keySizeSpacer];
    [v15 setConstant:v14];

    v16 = [(TUIKeyplaneView *)self splitSpacing];
    [v16 setActive:0];

    [(TUIKeyplaneView *)self leftSplitSize];
    v18 = v17;
    v19 = [(TUIKeyplaneView *)self leftSplitWidth];
    [v19 setConstant:v18];

    [(TUIKeyplaneView *)self rightSplitSize];
    v21 = v20;
    v22 = [(TUIKeyplaneView *)self rightSplitWidth];
    [v22 setConstant:v21];

    v23 = [(TUIKeyplaneView *)self leftSplitWidth];
    [v23 setActive:1];

    v24 = [(TUIKeyplaneView *)self rightSplitWidth];
    [v24 setActive:1];

    [(TUIKeyplaneView *)self leftSplitSize];
  }

  else
  {
    v26 = [(TUIKeyplaneView *)self keySizeSpacer];
    [v26 setConstant:0.0];

    v27 = [(TUIKeyplaneView *)self splitSpacing];
    [v27 setActive:1];

    v28 = [(TUIKeyplaneView *)self leftSplitWidth];
    [v28 setActive:0];

    v29 = [(TUIKeyplaneView *)self rightSplitWidth];
    [v29 setActive:0];

    [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:0];
    [(TUIKeyplaneView *)self setUnsplitSize:?];
    [(TUIKeyplaneView *)self unsplitSize];
  }

  v30 = v25;
  v31 = [(TUIKeyplaneView *)self heightConstraint];
  [v31 setConstant:v30];
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
  v9 = [(TUIKeyplaneView *)self bottomSpacing];
  [v9 setActive:1];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(TUIKeyplaneView *)self keyRowViews];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        [(TUIKeyplaneView *)self splitTransitionProgress];
        [v16 updateKeysForTransitionProgress:?];
        [v16 updateKeysForTransition:0];
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }

  if ([(TUIKeyplaneView *)self isCurrentlySplit])
  {
    v17 = [(TUIKeyplaneView *)self currentKeyplane];
    -[TUIKeyplaneView updateBottomRowSizingGuideForClass:](self, "updateBottomRowSizingGuideForClass:", [v17 layoutClass]);
  }

  [(TUIKeyplaneView *)self setNeedsLayout];
  [(TUIKeyplaneView *)self updateToSize:v6, v8];
}

- (void)transitionWillFinishWithProgress:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(TUIKeyplaneView *)self splitTransitionProgress];
  v8 = vabdd_f64(a3, v7) / 3.0;
  [(TUIKeyplaneView *)self finalLayoutForSplit:a3 != 0.0];
  [(TUIKeyplaneView *)self setSplitTransitionProgress:a3];
  v9 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__TUIKeyplaneView_transitionWillFinishWithProgress_completion___block_invoke;
  v13[3] = &unk_1E72D84B0;
  v13[4] = self;
  *&v13[5] = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__TUIKeyplaneView_transitionWillFinishWithProgress_completion___block_invoke_2;
  v11[3] = &unk_1E72D8570;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
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

- (void)updateSplitProgress:(double)a3
{
  v83 = *MEMORY[0x1E69E9840];
  if (a3 == 0.0 || a3 == 1.0)
  {
    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:[(TUIKeyplaneView *)self isInSplitTransition]^ 1];
    if (a3 == 0.0)
    {
      v6 = [(TUIKeyplaneView *)self leftSplitWidth];
      v7 = [v6 isActive];

      if (v7)
      {
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v8 = [(TUIKeyplaneView *)self keyRowViews];
        v9 = [v8 allValues];

        v10 = [v9 countByEnumeratingWithState:&v76 objects:v82 count:16];
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
                objc_enumerationMutation(v9);
              }

              [*(*(&v76 + 1) + 8 * i) toggleConstraintsForSplit:0];
            }

            v11 = [v9 countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v11);
        }

        v14 = [(TUIKeyplaneView *)self keySizeSpacer];
        [v14 setConstant:0.0];

        v15 = [(TUIKeyplaneView *)self splitSpacing];
        [v15 setActive:1];

        v16 = [(TUIKeyplaneView *)self leftSplitWidth];
        [v16 setActive:0];

        v17 = [(TUIKeyplaneView *)self rightSplitWidth];
        [v17 setActive:0];

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
      v23 = [(TUIKeyplaneView *)self keyRowViews];
      v24 = [v23 allValues];

      v25 = [v24 countByEnumeratingWithState:&v71 objects:v81 count:16];
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
              objc_enumerationMutation(v24);
            }

            [*(*(&v71 + 1) + 8 * j) toggleConstraintsForSplit:1];
          }

          v26 = [v24 countByEnumeratingWithState:&v71 objects:v81 count:16];
        }

        while (v26);
      }

      v29 = [(TUIKeyplaneView *)self splitSpacing];
      [v29 setActive:0];

      v30 = [(TUIKeyplaneView *)self leftSplitWidth];
      [v30 setActive:1];

      v31 = [(TUIKeyplaneView *)self rightSplitWidth];
      [v31 setActive:1];

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

  v32 = 0.0;
  if (a3 >= 0.0)
  {
    v32 = a3;
  }

  if (a3 <= 1.0)
  {
    v33 = v32;
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
  v42 = [(TUIKeyplaneView *)self leftSplitWidth];
  [v42 setConstant:v41];

  [(TUIKeyplaneView *)self rightSplitSize];
  v44 = v43 + v39 * 0.5 * (1.0 - v33);
  v45 = [(TUIKeyplaneView *)self rightSplitWidth];
  [v45 setConstant:v44];

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

  v51 = [(TUIKeyplaneView *)self keySizeSpacer];
  [v51 setConstant:v50];

  [(TUIKeyplaneView *)self unsplitSize];
  v53 = v52;
  [(TUIKeyplaneView *)self leftSplitSize];
  v55 = v33 * (v53 - v54);
  [(TUIKeyplaneView *)self unsplitSize];
  v57 = v56 - v55;
  v58 = [(TUIKeyplaneView *)self heightConstraint];
  [v58 setConstant:v57];

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
  v59 = [(TUIKeyplaneView *)self keyRowViews];
  v60 = [v59 allValues];

  v61 = [v60 countByEnumeratingWithState:&v65 objects:v80 count:16];
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
          objc_enumerationMutation(v60);
        }

        [*(*(&v65 + 1) + 8 * k) updateKeysForTransitionProgress:v33];
      }

      v62 = [v60 countByEnumeratingWithState:&v65 objects:v80 count:16];
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
    v9 = [(TUIKeyplaneView *)self isCurrentlySplit];
    [(TUIKeyplaneView *)self leftSplitSize];
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8 + v10;
    }

    v12 = [(TUIKeyplaneView *)self isCurrentlySplit];
    [(TUIKeyplaneView *)self rightSplitSize];
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v8 + v13;
    }

    v15 = [(TUIKeyplaneView *)self leftSplitWidth];
    [v15 setConstant:v11];

    v16 = [(TUIKeyplaneView *)self rightSplitWidth];
    [v16 setConstant:v14];

    [(TUIKeyplaneView *)self leftSplitSize];
    v18 = v17;
    [(TUIKeyplaneView *)self rightSplitSize];
    v20 = vabdd_f64(v18, v19) + 20.0;
    [(TUIKeyplaneView *)self splitTransitionProgress];
    v22 = v21 * v20;
    v23 = [(TUIKeyplaneView *)self keySizeSpacer];
    [v23 setConstant:v22];

    v24 = [(TUIKeyplaneView *)self keySizeSpacer];
    LODWORD(v25) = 1148829696;
    [v24 setPriority:v25];

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
    v28 = [(TUIKeyplaneView *)self keyRowViews];
    v29 = [v28 allValues];

    v30 = [v29 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(v29);
          }

          [*(*(&v39 + 1) + 8 * i) updateKeysForTransition:1 startStyle:v27 endStyle:v26];
        }

        v31 = [v29 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v31);
    }

    v34 = [(TUIKeyplaneView *)self bottomSpacing];
    [v34 setActive:0];

    v35 = [(TUIKeyplaneView *)self splitSpacing];
    [v35 setActive:0];

    v36 = [(TUIKeyplaneView *)self keySizeSpacer];
    [v36 setActive:1];

    v37 = [(TUIKeyplaneView *)self leftSplitWidth];
    [v37 setActive:1];

    v38 = [(TUIKeyplaneView *)self rightSplitWidth];
    [v38 setActive:1];

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
    v3 = [(TUIKeyplaneView *)self leftSplitWidth];
    if (v3)
    {
      v4 = v3;
      v5 = [(TUIKeyplaneView *)self rightSplitWidth];
      if (v5)
      {
        v6 = v5;
        v7 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
        v8 = [v7 count];

        if (v8)
        {
          return;
        }
      }

      else
      {
      }
    }

    v9 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];

    if (!v9)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      [(TUIKeyplaneView *)self setSplitTransitionLayoutGuides:v10];
    }

    v11 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
    v12 = [v11 objectForKey:@"TUIKBSplitGuide_Middle"];

    v13 = v12 == 0;
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v12 setIdentifier:@"TUIKBSplitGuide_Middle"];
      v14 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
      [v14 setObject:v12 forKey:@"TUIKBSplitGuide_Middle"];
    }

    [(TUIKeyplaneView *)self addLayoutGuide:v12];
    v15 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
    v16 = [v15 objectForKey:@"TUIKBSplitGuide_Left"];

    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v16 setIdentifier:@"TUIKBSplitGuide_Left"];
      v17 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
      [v17 setObject:v16 forKey:@"TUIKBSplitGuide_Left"];

      v13 = 1;
    }

    [(TUIKeyplaneView *)self addLayoutGuide:v16];
    v18 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
    v19 = [v18 objectForKey:@"TUIKBSplitGuide_Right"];

    if (!v19)
    {
      v19 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v19 setIdentifier:@"TUIKBSplitGuide_Right"];
      v20 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
      [v20 setObject:v19 forKey:@"TUIKBSplitGuide_Right"];

      v13 = 1;
    }

    [(TUIKeyplaneView *)self addLayoutGuide:v19];
    v21 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
    v22 = [v21 objectForKey:@"TUIKBSplitGuide_Padding"];

    if (!v22)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v22 setIdentifier:@"TUIKBSplitGuide_Padding"];
      v23 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
      [v23 setObject:v22 forKey:@"TUIKBSplitGuide_Padding"];
    }

    [(TUIKeyplaneView *)self addLayoutGuide:v22];
    if (v13)
    {
      v54 = MEMORY[0x1E696ACD8];
      v60 = [v16 leftAnchor];
      v59 = [(TUIKeyplaneView *)self leftAnchor];
      v58 = [v60 constraintEqualToAnchor:v59];
      v62[0] = v58;
      v57 = [v12 leftAnchor];
      v56 = [v16 rightAnchor];
      v55 = [v57 constraintEqualToAnchor:v56];
      v62[1] = v55;
      v53 = [v22 leftAnchor];
      v52 = [v19 leftAnchor];
      v51 = [v53 constraintEqualToAnchor:v52];
      v62[2] = v51;
      v50 = [v12 rightAnchor];
      v24 = [v22 rightAnchor];
      v25 = [v50 constraintEqualToAnchor:v24 constant:0.0];
      v62[3] = v25;
      [(TUIKeyplaneView *)self rightAnchor];
      v26 = v61 = v12;
      v27 = [v19 rightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
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
    v36 = [(TUIKeyplaneView *)self isCurrentlySplit];
    [(TUIKeyplaneView *)self leftSplitSize];
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35 + v37;
    }

    v39 = [(TUIKeyplaneView *)self isCurrentlySplit];
    [(TUIKeyplaneView *)self rightSplitSize];
    if (v39)
    {
      v41 = v40;
    }

    else
    {
      v41 = v35 + v40;
    }

    v42 = [v22 widthAnchor];
    v43 = [v42 constraintEqualToConstant:0.0];
    [(TUIKeyplaneView *)self setKeySizeSpacer:v43];

    v44 = [v12 widthAnchor];
    v45 = [v44 constraintEqualToConstant:0.0];
    [(TUIKeyplaneView *)self setSplitSpacing:v45];

    v46 = [v16 widthAnchor];
    v47 = [v46 constraintEqualToConstant:v38];
    [(TUIKeyplaneView *)self setLeftSplitWidth:v47];

    v48 = [v19 widthAnchor];
    v49 = [v48 constraintEqualToConstant:v41];
    [(TUIKeyplaneView *)self setRightSplitWidth:v49];
  }
}

- (void)finishFloatingTransitionWithState:(int64_t)a3 animationType:(int64_t)a4
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke;
  aBlock[3] = &unk_1E72D84B0;
  aBlock[4] = self;
  aBlock[5] = a3;
  v7 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__TUIKeyplaneView_finishFloatingTransitionWithState_animationType___block_invoke_2;
  v16[3] = &unk_1E72D84D8;
  v16[4] = self;
  v8 = _Block_copy(v16);
  v9 = v8;
  if (a3 == 4 || !a4)
  {
    (*(v8 + 2))(v8, a3);
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
    v13 = a3;
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

- (void)switchToFloatingTransitionLayoutClass:(int64_t)a3 interactive:(BOOL)a4
{
  v4 = a4;
  v62 = *MEMORY[0x1E69E9840];
  v7 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
  v8 = [v7 layoutClass];

  if (v8 == a3)
  {
    v9 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
    if (v9)
    {
      v10 = v9;
      v11 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
      v12 = [v11 layoutClass];
      v13 = [(TUIKeyplaneView *)self activeTransitionLayoutClass];

      if (v12 != v13)
      {
        v14 = [(TUIKeyplaneView *)self currentKeyplane];
        v15 = [v14 keyStyleForLayoutClass:{-[TUIKeyplaneView activeTransitionLayoutClass](self, "activeTransitionLayoutClass")}];

        v16 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
        v17 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
        v18 = [v16 keyStyleForLayoutClass:{objc_msgSend(v17, "layoutClass")}];

        v19 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
        [(TUIKeyplaneView *)self updateRowsForTransitionToKeyplane:v19];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v20 = [(TUIKeyplaneView *)self keyRowViews];
        v21 = [v20 allValues];

        v22 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
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
                objc_enumerationMutation(v21);
              }

              [*(*(&v56 + 1) + 8 * i) updateKeysForTransition:1 startStyle:v15 endStyle:v18];
            }

            v23 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
          }

          while (v23);
        }

        v26 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
        -[TUIKeyplaneView setActiveTransitionLayoutClass:](self, "setActiveTransitionLayoutClass:", [v26 layoutClass]);

        [(TUIKeyplaneView *)self updateKeyplaneSpacing];
        if (v4)
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
    v29 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
    v30 = [v29 layoutClass];

    if (v30 == a3)
    {
      v31 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
      if (v31)
      {
        v32 = v31;
        v33 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
        v34 = [v33 layoutClass];
        v35 = [(TUIKeyplaneView *)self activeTransitionLayoutClass];

        if (v34 != v35)
        {
          v36 = [(TUIKeyplaneView *)self currentKeyplane];
          v37 = [v36 keyStyleForLayoutClass:{-[TUIKeyplaneView activeTransitionLayoutClass](self, "activeTransitionLayoutClass")}];

          v38 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
          v39 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
          v40 = [v38 keyStyleForLayoutClass:{objc_msgSend(v39, "layoutClass")}];

          v41 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
          [(TUIKeyplaneView *)self updateRowsForTransitionToKeyplane:v41];

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v42 = [(TUIKeyplaneView *)self keyRowViews];
          v43 = [v42 allValues];

          v44 = [v43 countByEnumeratingWithState:&v51 objects:v60 count:16];
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
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v51 + 1) + 8 * j);
                [v48 updateKeysForTransition:1 startStyle:v37 endStyle:v40];
                [v48 toggleConstraintsForSplit:0];
              }

              v45 = [v43 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v45);
          }

          v49 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
          -[TUIKeyplaneView setActiveTransitionLayoutClass:](self, "setActiveTransitionLayoutClass:", [v49 layoutClass]);

          [(TUIKeyplaneView *)self updateKeyplaneSpacing];
          if (v4)
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

- (void)updateFloatingTransitionForPercentComplete:(double)a3
{
  v55 = *MEMORY[0x1E69E9840];
  [(TUIKeyplaneView *)self transitionFloatingSize];
  v5 = a3;
  if (a3 <= 0.5)
  {
    v5 = (a3 + -0.3) / 0.4;
  }

  v6 = 0.0;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  if (v5 <= 1.0)
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
    v28 = [(TUIKeyplaneView *)self heightConstraint];
    [v28 setConstant:v27];

    v29 = [(TUIKeyplaneView *)self sizeRatioConstraint];
    v30 = [v29 isActive];

    if (v30)
    {
      v31 = [(TUIKeyplaneView *)self sizeRatioConstraint];
      [v31 setActive:0];
    }

    v32 = [(TUIKeyplaneView *)self heightConstraint];
    v33 = [v32 isActive];

    if ((v33 & 1) == 0)
    {
      v25 = [(TUIKeyplaneView *)self heightConstraint];
      goto LABEL_22;
    }
  }

  else
  {
    v20 = [(TUIKeyplaneView *)self heightConstraint];
    v21 = [v20 isActive];

    if (v21)
    {
      v22 = [(TUIKeyplaneView *)self heightConstraint];
      [v22 setActive:0];
    }

    v23 = [(TUIKeyplaneView *)self sizeRatioConstraint];
    v24 = [v23 isActive];

    if ((v24 & 1) == 0)
    {
      v25 = [(TUIKeyplaneView *)self sizeRatioConstraint];
LABEL_22:
      v34 = v25;
      [v25 setActive:1];
    }
  }

  if (a3 >= 0.4)
  {
    if (a3 <= 0.5)
    {
      goto LABEL_28;
    }

    v35 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];
  }

  else
  {
    v35 = [(TUIKeyplaneView *)self floatingKeyplaneForTransition];
  }

  v36 = v35;
  -[TUIKeyplaneView switchToFloatingTransitionLayoutClass:interactive:](self, "switchToFloatingTransitionLayoutClass:interactive:", [v35 layoutClass], vabdd_f64(v9, v7) < 0.25);

LABEL_28:
  v37 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  v38 = [v37 isActive];

  if ((v38 & 1) == 0)
  {
    v39 = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [v39 setActive:1];
  }

  v40 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  [v40 constant];
  v42 = v15 - v41;

  v43 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  [v43 setConstant:v15];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v44 = [(TUIKeyplaneView *)self keyRowViews];
  v45 = [v44 allValues];

  v46 = [v45 countByEnumeratingWithState:&v50 objects:v54 count:16];
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
          objc_enumerationMutation(v45);
        }

        [*(*(&v50 + 1) + 8 * i) updateKeysForTransitionProgress:a3];
      }

      v47 = [v45 countByEnumeratingWithState:&v50 objects:v54 count:16];
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
  v3 = [(TUIKeyplaneView *)self currentKeyplane];
  -[TUIKeyplaneView setActiveTransitionLayoutClass:](self, "setActiveTransitionLayoutClass:", [v3 layoutClass]);

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
  v12 = [(TUIKeyplaneView *)self keyRowViews];
  v13 = [v12 allValues];

  v14 = [v13 countByEnumeratingWithState:&v59 objects:v64 count:16];
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
          objc_enumerationMutation(v13);
        }

        [*(*(&v59 + 1) + 8 * v17++) updateKeysForTransition:1];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v15);
  }

  v18 = [(TUIKeyplaneView *)self sizeRatioConstraint];
  v19 = [v18 isActive];

  if (v19)
  {
    v20 = [(TUIKeyplaneView *)self sizeRatioConstraint];
    [v20 setActive:0];
  }

  v21 = [(TUIKeyplaneView *)self keyboardContentView];
  v22 = [v21 heightAnchor];
  v23 = [(TUIKeyplaneView *)self keyboardContentView];
  v24 = [v23 widthAnchor];
  [(TUIKeyplaneView *)self transitionFullSize];
  v26 = v25;
  [(TUIKeyplaneView *)self transitionFullSize];
  v28 = [v22 constraintEqualToAnchor:v24 multiplier:v26 / v27];
  [(TUIKeyplaneView *)self setSizeRatioConstraint:v28];

  v29 = [(TUIKeyplaneView *)self heightConstraint];
  LODWORD(v22) = [v29 isActive];

  if (v22)
  {
    v30 = [(TUIKeyplaneView *)self heightConstraint];
    [v30 setActive:0];
  }

  v31 = [(TUIKeyplaneView *)self keyboardContentView];
  v32 = [v31 heightAnchor];
  v33 = [v32 constraintEqualToConstant:v11];
  [(TUIKeyplaneView *)self setHeightConstraint:v33];

  v34 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  LODWORD(v32) = [v34 isActive];

  if (v32)
  {
    v35 = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [v35 setActive:0];
  }

  v36 = [(TUIKeyplaneView *)self keyboardContentView];
  v37 = [v36 widthAnchor];
  if ([(TUIKeyplaneView *)self movingToFloating])
  {
    v38 = v5;
  }

  else
  {
    v38 = v9;
  }

  v39 = [v37 constraintEqualToConstant:v38];
  [(TUIKeyplaneView *)self setPreferredWidthConstraint:v39];

  v40 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  v41 = 1;
  [v40 setActive:1];

  [(TUIKeyplaneView *)self setIsFloating:1];
  v42 = [(TUIKeyplaneView *)self screenTraits];
  [v42 bounds];
  v45 = [TUIKeyplane layoutClassFromScreenDimensions:v43, v44];

  if ([(TUIKeyplaneView *)self movingToFloating])
  {
    v46 = [(TUIKeyplaneView *)self currentKeyplane];
    v41 = [v46 keyLayoutStyle];
  }

  if ([(TUIKeyplaneView *)self movingToFloating])
  {
    v47 = 1;
  }

  else
  {
    v48 = [(TUIKeyplaneView *)self currentKeyplane];
    v47 = [v48 keyStyleForLayoutClass:v45];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v49 = [(TUIKeyplaneView *)self keyRowViews];
  v50 = [v49 allValues];

  v51 = [v50 countByEnumeratingWithState:&v55 objects:v63 count:16];
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
          objc_enumerationMutation(v50);
        }

        [*(*(&v55 + 1) + 8 * v54++) updateKeysForTransition:1 startStyle:v41 endStyle:v47];
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v52);
  }
}

- (CGSize)sizeForFloatingLayoutClass
{
  v3 = [MEMORY[0x1E69DCB68] traitsForPopoverEmulatingWidth:1 minorEdge:1 orientation:1 idiom:320.0];
  v4 = [(TUIKeyplaneView *)self keyplane];
  v5 = [v4 layoutName];
  [TUIKeyplane sizeFromScreenTraits:v3 layout:v5 layoutClass:1];
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
  v3 = [(TUIKeyplaneView *)self screenTraits];
  [v3 bounds];
  v6 = [TUIKeyplane layoutClassFromScreenDimensions:v4, v5];

  v7 = [(TUIKeyplaneView *)self keyplane];
  v8 = [v7 layoutName];
  v9 = [(TUIKeyplaneView *)self screenTraits];
  +[TUIKeyplane baseHeightForLayout:layoutClass:landscape:](TUIKeyplane, "baseHeightForLayout:layoutClass:landscape:", v8, v6, ([v9 orientation] - 3) < 2);
  v11 = v10;

  v12 = [(TUIKeyplaneView *)self screenTraits];
  [v12 bounds];
  v14 = v13;

  v15 = v14;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)finishedTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5
{
  v8 = [(TUIKeyplaneView *)self isInSplitTransition:a3];
  if (a3 == 4 || v8)
  {
    v9 = 0.0;
    if (a3 == 4)
    {
      [(TUIKeyplaneView *)self setIsFloating:0, 0.0];
      [(TUIKeyplaneView *)self setMovingToFloating:0];
      [(TUIKeyplaneView *)self setMovingFromFloating:0];
      v9 = 1.0;
    }

    [(TUIKeyplaneView *)self updateSplitProgress:v9];
    [(TUIKeyplaneView *)self finishSplitTransition];
  }

  if (a3 == 3 || (a4 - 7) < 2 || [(TUIKeyplaneView *)self movingToFloating]|| [(TUIKeyplaneView *)self movingFromFloating])
  {
    [(TUIKeyplaneView *)self finishFloatingTransitionWithState:a3 animationType:a4];
  }

  if (!a4)
  {
    [(TUIKeyplaneView *)self setIsFloating:a3 == 3];
    [(TUIKeyplaneView *)self setIsCurrentlySplit:a3 == 4];
    [(TUIKeyplaneView *)self setMovingToFloating:0];

    [(TUIKeyplaneView *)self setMovingFromFloating:0];
  }
}

- (void)transitioningToState:(int64_t)a3 animationType:(int64_t)a4 completionPercentage:(double)a5
{
  if ((a4 - 7) > 1)
  {
    if (a3 == 4)
    {
      if (![(TUIKeyplaneView *)self isInSplitTransition])
      {
        [(TUIKeyplaneView *)self prepareForSplitTransition];
      }

      [(TUIKeyplaneView *)self updateSplitProgress:a5];
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

    [(TUIKeyplaneView *)self updateFloatingTransitionForPercentComplete:a5];
  }
}

- (void)animatingTransitionFromState:(int64_t)a3 toState:(int64_t)a4 animationType:(int64_t)a5 totalDuration:(double)a6
{
  if (a3 != a4 && a5)
  {
    if (a4 == 4)
    {
      if (a3 == 3)
      {
        [(TUIKeyplaneView *)self prepareForFloatingTransition];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke;
        v32[3] = &unk_1E72D83A0;
        v32[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:32 delay:v32 options:0 animations:a6 / 3.0 completion:0.0];
        v8 = MEMORY[0x1E69DD250];
        v9 = a6 * 0.5;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_2;
        v31[3] = &unk_1E72D83A0;
        v31[4] = self;
        v10 = v31;
        v11 = a6 * 0.5;
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
      if (a3 == 4)
      {
        if (a4 != 3)
        {
          [(TUIKeyplaneView *)self prepareForSplitTransition];
          v8 = MEMORY[0x1E69DD250];
          v20 = MEMORY[0x1E69E9820];
          v21 = 3221225472;
          v22 = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_5;
          v23 = &unk_1E72D83A0;
          v24 = self;
          v15 = MEMORY[0x1E69E9820];
          v16 = 3221225472;
          v17 = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_6;
          v18 = &unk_1E72D8488;
          v19 = self;
          v11 = 0.0;
          v10 = &v20;
          v13 = &v15;
          v9 = a6;
          goto LABEL_19;
        }

        v12 = a6 * 0.5;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_3;
        v30[3] = &unk_1E72D83A0;
        v30[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:32 delay:v30 options:0 animations:a6 * 0.5 completion:0.0];
        v8 = MEMORY[0x1E69DD250];
        v25 = MEMORY[0x1E69E9820];
        v26 = 3221225472;
        v27 = __84__TUIKeyplaneView_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_4;
        v28 = &unk_1E72D83A0;
        v29 = self;
        v10 = &v25;
        v9 = v12;
        v11 = v12;
LABEL_9:
        v13 = 0;
LABEL_19:
        [v8 animateWithDuration:32 delay:v10 options:v13 animations:v9 completion:{v11, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29}];
        return;
      }

      if (a5 == 8)
      {
        [(TUIKeyplaneView *)self setMovingFromFloating:1];
        v14 = 1.0;
      }

      else
      {
        if (a5 != 7)
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

- (void)prepareForTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5
{
  v8 = [(TUIKeyplaneView *)self isFloating:a3];
  if (a3 == 3 && v8)
  {
    [(TUIKeyplaneView *)self sizeForFloatingLayoutClass];
    [(TUIKeyplaneView *)self setTransitionFloatingSize:?];
    [(TUIKeyplaneView *)self sizeForDockedLayoutClass];
    [(TUIKeyplaneView *)self setTransitionFullSize:?];
    [(TUIKeyplaneView *)self setMovingToFloating:0];

    [(TUIKeyplaneView *)self setMovingFromFloating:0];
    return;
  }

  if (!a4)
  {
    return;
  }

  [(TUIKeyplaneView *)self deactivateKeys];
  if (a3 != 3 && (a4 - 7) > 1)
  {
    v9 = [(TUIKeyplaneView *)self sizeRatioConstraint];
    [v9 setActive:0];

    v10 = [(TUIKeyplaneView *)self heightConstraint];
    [v10 setActive:1];

    v11 = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [v11 setActive:1];

    goto LABEL_24;
  }

  if ([(TUIKeyplaneView *)self isCurrentlySplit]|| [(TUIKeyplaneView *)self isInSplitTransition])
  {
    [(TUIKeyplaneView *)self updateSplitProgress:0.0];
    [(TUIKeyplaneView *)self finishSplitTransition];
  }

  if (a3 != 3)
  {
    [(TUIKeyplaneView *)self setFloatingTransitionProgress:0.0];
    [(TUIKeyplaneView *)self setMovingFromFloating:1];
    v15 = [(TUIKeyplaneView *)self currentKeyplane];
    if ([v15 supportsSplitStyle])
    {
      v16 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];

      if (v16)
      {
LABEL_20:
        keyplane = self->_keyplane;
        v14 = [(TUIKeyplaneView *)self currentKeyplane];
        v18 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", keyplane, [v14 currentVariantType]);
        [(TUIKeyplaneView *)self setFloatingKeyplaneForTransition:v18];
LABEL_22:

        goto LABEL_23;
      }

      v15 = [(TUIKeyplaneView *)self currentKeyplane];
      [(TUIKeyplaneView *)self setFullKeyplaneForTransition:v15];
    }

    goto LABEL_20;
  }

  [(TUIKeyplaneView *)self setFloatingTransitionProgress:1.0];
  [(TUIKeyplaneView *)self setMovingToFloating:1];
  v12 = [(TUIKeyplaneView *)self currentKeyplane];
  v13 = [v12 supportsFloatingStyle];

  if (!v13)
  {
    v19 = self->_keyplane;
    v14 = [(TUIKeyplaneView *)self currentKeyplane];
    v18 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", v19, [v14 currentVariantType]);
    [(TUIKeyplaneView *)self setFullKeyplaneForTransition:v18];
    goto LABEL_22;
  }

  v14 = [(TUIKeyplaneView *)self currentKeyplane];
  [(TUIKeyplaneView *)self setFloatingKeyplaneForTransition:v14];
LABEL_23:

  [(TUIKeyplaneView *)self prepareForFloatingTransition];
LABEL_24:
  if (a3 == 4)
  {
    v20 = [(TUIKeyplaneView *)self currentKeyplane];
    v21 = [v20 supportsSplitStyle];

    if (v21)
    {
      if ([(TUIKeyplaneView *)self isFloating])
      {
        [(TUIKeyplaneView *)self setIsFloating:0];
        [(TUIKeyplaneView *)self setMovingFromFloating:1];
        [(TUIKeyplaneView *)self setMovingToFloating:0];
      }

      v22 = [(TUIKeyplaneView *)self fullKeyplaneForTransition];

      if (!v22)
      {
        v23 = [(TUIKeyplaneView *)self currentKeyplane];
        [(TUIKeyplaneView *)self setFullKeyplaneForTransition:v23];
      }
    }

    [(TUIKeyplaneView *)self setIsInSplitTransition:0];
  }
}

- (CGSize)sizeForVisualState:(int64_t)a3
{
  if (a3 == 3)
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

- (CGRect)updateFrameForKey:(id)a3
{
  v4 = a3;
  [v4 paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(TUIKeyplaneView *)self viewForKey:v4];
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
        [v4 paddedFrame];
        v89 = v23;
        v90 = v22;
        v87 = v25;
        v88 = v24;
        v26 = [(TUIKeyplaneView *)self keyRowViews];
        v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "rowNumber")}];
        v28 = [v26 objectForKey:v27];

        v29 = [v13 superview];
        v30 = v29;
        if (v29 == v28)
        {
        }

        else
        {
          v31 = [v13 superview];
          v32 = [(TUIKeyplaneView *)self keyboardContentView];
          v33 = v32;
          if (v31 != v32)
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
              [v4 setFrame:{v86, v85, v18, v19}];
              [v4 setPaddedFrame:{v6, v8, v10, v12}];
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
                v74 = [(TUIKeyplaneView *)self renderConfig];
                v75 = [v74 colorAdaptiveBackground];

                if (v75)
                {
                  [v13 setNeedsDisplay];
                  [v13 prepareForDisplay];
                }
              }

              goto LABEL_39;
            }

            [v4 paddedFrame];
            if (CGRectEqualToRect(v91, *MEMORY[0x1E695F058]) || ([v4 frame], v80 = v51, objc_msgSend(v13, "frame"), v52 = v80, v80 != v53))
            {
              [v4 setFrame:{v86, v85, v18, v19}];
              [v4 setPaddedFrame:{v6, v8, v10, v12}];
            }

            v54 = [(TUIKeyplaneView *)self currentKeyplane];
            v55 = [v4 name];
            v56 = [v54 keysForName:v55];

            if ([v56 count] < 2)
            {
LABEL_32:

              goto LABEL_33;
            }

            v57 = [v56 firstObject];
            v58 = [v56 lastObject];
            v59 = [v4 isEqual:v57];
            v60 = v58;
            if ((v59 & 1) == 0 && (v61 = [v4 isEqual:v58], v60 = v57, !v61) || (-[TUIKeyplaneView viewForKey:](self, "viewForKey:", v60), (v62 = objc_claimAutoreleasedReturnValue()) == 0))
            {
LABEL_31:

              goto LABEL_32;
            }

            v81 = v62;
            v84 = [v13 shapeWhenMergedWithKey:v62 insets:{v41, v44, v83, v82}];
            v63 = [v84 isEmpty];
            v64 = [(TUIKeyplaneView *)self currentKeyplane];
            v65 = [v64 isGridLayout];
            v66 = v65;
            if (v63)
            {
              if (!v65)
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

              [v57 setFrame:{v86, v85, v18, v19}];
              [v57 setPaddedFrame:{v6, v8, v10, v12}];
              [v58 setFrame:{v86, v85, v18, v19}];
              v69 = v58;
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
                [v57 setShape:v84];
                [v58 setShape:v84];
                goto LABEL_30;
              }

              v68 = v84;
              [v84 frame];
              [v57 setFrame:?];
              [v84 paddedFrame];
              [v57 setPaddedFrame:?];
              [v84 frame];
              [v58 setFrame:?];
              [v84 paddedFrame];
              v69 = v58;
            }

            [v69 setPaddedFrame:{v70, v71, v72, v73}];
            goto LABEL_30;
          }

          v34 = [(TUIKeyplaneView *)self currentHandBias];

          if (!v34)
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

- (void)setOverrideScreenTraits:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_screenTraits == v5)
  {
    [(TUIKeyplaneView *)self _generateFactoryIfNeeded];
  }

  else
  {
    objc_storeStrong(&self->_screenTraits, a3);
    factory = self->_factory;
    self->_factory = 0;

    [(TUIKeyplaneView *)self _generateFactoryIfNeeded];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [(TUIKeyplaneView *)self keyRowViews];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [(TUIKeyplaneView *)self keyLayoutStyle];
          v15 = [(TUIKeyplaneView *)self factory];
          [v13 updateKeysInRowWithStyle:v14 factory:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }
  }

  [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:[(TUIKeyplaneView *)self isCurrentlySplit]];
  v17 = v16;
  v19 = v18;
  v20 = [(TUIKeyplaneView *)self currentKeyplane];
  if (!v20 || [(TUIKeyplaneView *)self isInSizeTransition]|| ([(TUIKeyplaneView *)self preferredSize], v17 == v22) && v19 == v21)
  {
  }

  else
  {
    v23 = [(TUIKeyplaneView *)self screenTraits];
    [v23 keyboardWidth];
    v25 = v24;

    if (v25 > 0.0)
    {
      [(TUIKeyplaneView *)self updateToSize:v17, v19];
    }
  }
}

- (void)_regenerateFactoryPreservingUpdates:(BOOL)a3
{
  v28 = *MEMORY[0x1E69E9840];
  factory = self->_factory;
  if (factory && a3)
  {
    v5 = [(UIKBRenderFactory *)factory preferStringKeycapOverImage];
    v6 = [(UIKBRenderFactory *)self->_factory allowsPaddles];
    [(UIKBRenderFactory *)self->_factory stretchFactor];
    v8 = v7;
    v10 = v9;
    v11 = self->_factory;
    self->_factory = 0;

    [(TUIKeyplaneView *)self _generateFactoryIfNeeded];
    [(UIKBRenderFactory *)self->_factory setPreferStringKeycapOverImage:v5];
    [(UIKBRenderFactory *)self->_factory setAllowsPaddles:v6];
    if ([(UIKBRenderFactory *)self->_factory allowsPaddles])
    {
      v12 = [(UIKBTree *)self->_keyplane layoutName];
      v13 = [v12 isEqualToString:@"Thai-24-Key"];

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
    v14 = [(TUIKeyplaneView *)self keyRowViews];
    v15 = [v14 allValues];

    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          v21 = [(TUIKeyplaneView *)self keyLayoutStyle];
          v22 = [(TUIKeyplaneView *)self factory];
          [v20 updateKeysInRowWithStyle:v21 factory:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)setRenderingContext:(id)a3
{
  v8 = a3;
  v5 = [v8 isFloating];
  v6 = [(UIKBRenderingContext *)self->_renderingContext isFloating];
  objc_storeStrong(&self->_renderingContext, a3);
  [(TUIKeyplaneView *)self _generateRenderingContextIfNeeded];
  if (v5 == v6 && (factory = self->_factory) != 0)
  {
    [(UIKBRenderFactory *)factory setRenderingContext:self->_renderingContext];
  }

  else
  {
    [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
  }
}

- (void)setRenderConfig:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  renderConfig = self->_renderConfig;
  if (!renderConfig)
  {
    LOBYTE(v7) = 1;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = [(TUIKeyplaneView *)self renderConfigForCurrentTraitCollection];
    goto LABEL_6;
  }

  v6 = [(UIKBRenderConfig *)renderConfig lightKeyboard];
  v7 = v6 ^ [v4 lightKeyboard];
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = v4;
LABEL_6:
  v9 = self->_renderConfig;
  self->_renderConfig = v8;

  v10 = [(TUIKeyplaneView *)self keyplane];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if ([v4 usesCompactKeycapsFont])
    {
      v12 = [(TUIKeyplaneView *)self keyplane];
      v13 = [v12 isKanaKeyboard];

      if (v13)
      {
        [v4 setUsesCompactKeycapsFont:0];
        v14 = [(UIKBRenderConfig *)self->_renderConfig usesCompactKeycapsFont];
        v7 = v14 ^ [v4 usesCompactKeycapsFont];
      }
    }
  }

  v15 = [(UIKBRenderFactory *)self->_factory renderingContext];

  if (v15)
  {
    v16 = self->_renderConfig;
    v17 = [(UIKBRenderFactory *)self->_factory renderingContext];
    [v17 setRenderConfig:v16];
  }

  else
  {
    v17 = [MEMORY[0x1E69DCB60] renderingContextForRenderConfig:self->_renderConfig];
    v18 = [(TUIKeyplaneView *)self screenTraits];
    if (v18)
    {
      v19 = [(TUIKeyplaneView *)self screenTraits];
      [v17 setIsFloating:{objc_msgSend(v19, "isFloating")}];
    }

    else
    {
      [v17 setIsFloating:{-[UIKBTree isFloating](self->_keyplane, "isFloating")}];
    }

    [(UIKBRenderFactory *)self->_factory setRenderingContext:v17];
  }

  if (((v4 != 0) & v7) == 1)
  {
    [(TUIKeyplaneView *)self setNeedsDisplay];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = [(TUIKeyplaneView *)self keyRowViews];
  v21 = [v20 allValues];

  v22 = [v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v26 setRenderConfig:self->_renderConfig];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v23);
  }
}

- (id)renderConfigForCurrentTraitCollection
{
  v2 = [(TUIKeyplaneView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
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

- (id)viewForBaseKey:(id)a3
{
  v4 = [(TUIKeyplaneView *)self cacheIdentifierForKey:a3 withState:2];
  v5 = [(TUIKeyplaneView *)self storedKeyViews];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)keyViewForTree:(id)a3
{
  v4 = a3;
  v5 = -[TUIKeyplaneView cacheIdentifierForKey:withState:](self, "cacheIdentifierForKey:withState:", v4, [v4 state]);
  v6 = [(TUIKeyplaneView *)self storedKeyViews];
  v7 = [v6 objectForKey:v5];

  if ([v4 displayTypeHint] == 10 && !v7)
  {
    v8 = [(TUIKeyplaneView *)self cacheIdentifierForKey:v4 withState:4];

    v9 = [(TUIKeyplaneView *)self storedKeyViews];
    v7 = [v9 objectForKey:v8];

    v5 = v8;
  }

  return v7;
}

- (id)cachedVariantViewForTree:(id)a3 state:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(TUIKeyplaneView *)self cacheIdentifierForKey:v6 withState:v4];
  v8 = [(TUIKeyplaneView *)self storedVariantViews];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = [(TUIKeyplaneView *)self factory];
    v11 = [(TUIKeyplaneView *)self keyplane];
    v12 = [v10 traitsForKey:v6 onKeyplane:v11];

    [v9 setRenderTraits:v12];
    v13 = [(TUIKeyplaneView *)self renderConfig];
    [v9 updateBackgroundMaterialsForRenderConfig:v13];

    [v9 setTouchesForwardingView:self];
  }

  return v9;
}

- (id)variantViewForKey:(id)a3 cacheID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = [v6 backingTree];
    v9 = [v6 backingTree];
    v7 = -[TUIKeyplaneView cacheIdentifierForKey:withState:](self, "cacheIdentifierForKey:withState:", v8, [v9 state]);
  }

  v10 = [(TUIKeyplaneView *)self storedVariantViews];
  v11 = [v10 objectForKey:v7];

  v12 = [(TUIKeyplaneView *)self factory];
  v13 = [v6 backingTree];
  v14 = [(TUIKeyplaneView *)self keyplane];
  v15 = [v12 traitsForKey:v13 onKeyplane:v14];

  if (v11)
  {
    [v11 setRenderTraits:v15];
  }

  else
  {
    v16 = objc_opt_class();
    v17 = [(TUIKeyplaneView *)self renderingContext];
    v18 = [v16 selectorViewClassForKey:v6 forRenderingContext:v17];

    v19 = [v18 variantSelectorType];
    if ((v19 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      v21 = [(TUIKeyplaneView *)self currentKeyplane];
      [v21 updateVariantOrderForKey:v6 withVariantSelectorType:v20];
    }

    v11 = [[v18 alloc] initWithKey:v6 renderTraits:v15];
    v22 = [(TUIKeyplaneView *)self storedVariantViews];
    [v22 setObject:v11 forKey:v7];
  }

  v23 = [(TUIKeyplaneView *)self renderConfig];
  [v11 updateBackgroundMaterialsForRenderConfig:v23];

  [v11 setTouchesForwardingView:self];

  return v11;
}

- (BOOL)_shouldAllowKey:(id)a3
{
  v4 = a3;
  if (![v4 visible])
  {
    goto LABEL_6;
  }

  v5 = [(UIKBTree *)self->_keyplane keys];
  if (![v5 containsObject:v4])
  {
    v6 = [v4 parentKey];

    if (v6)
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

- (void)removeKeyFromDelayedDeactivationSet:(id)a3
{
  v8 = a3;
  if (v8 && [(NSMutableDictionary *)self->_delayedDeactivationKeys count])
  {
    v4 = [(TUIKeyplaneView *)self currentKeyplane];
    v5 = [v4 effectsType];

    if (v5 == 1)
    {
      [v8 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    delayedDeactivationKeys = self->_delayedDeactivationKeys;
    v7 = [v8 name];
    [(NSMutableDictionary *)delayedDeactivationKeys removeObjectForKey:v7];
  }
}

- (void)addKeyToDelayedDeactivationSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = 59000000;
    if ([v4 displayTypeHint] == 10)
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
    v12 = [v5 name];
    [(NSMutableDictionary *)delayedDeactivationKeys setObject:v5 forKey:v12];

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

- (void)deactivateAdaptiveKey:(id)a3
{
  v4 = a3;
  [(TUIKeyplaneView *)self setState:2 forKey:v4];
  [(TUIKeyplaneView *)self removeKeyFromDelayedDeactivationSet:v4];
  -[TUIKeyplaneView deactivateKey:previousState:](self, "deactivateKey:previousState:", v4, [v4 state]);
}

- (void)dimKeys:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TUIKeyplaneView *)self storedKeyViews];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) dimKeyUsingOpacities:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)hitTestVariantKeyAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TUIKeyplaneView *)self activeKey];
  v7 = [v6 backingTree];
  v8 = [v7 state];

  if (v8 == 16)
  {
    v9 = [v6 backingTree];
    v10 = [(TUIKeyplaneView *)self cachedVariantViewForTree:v9];

    v11 = [v10 superview];
    if (v11 && (v12 = v11, [v10 bounds], IsEmpty = CGRectIsEmpty(v17), v12, !IsEmpty) && (-[TUIKeyplaneView convertPoint:toView:](self, "convertPoint:toView:", v10, x, y), objc_msgSend(v10, "pointInside:withEvent:", 0)))
    {
      v14 = [v6 backingTree];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)finishedSelectingVariantForKey:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v17 = a3;
  if ([v17 interactionType] == 9)
  {
    [(TUIKeyplaneView *)self removeKeyFromDelayedDeactivationSet:v17];
  }

  else
  {
    v7 = [(TUIKeyplaneView *)self activeKey];
    v8 = [v7 backingTree];

    v9 = [(TUIKeyplaneView *)self activeKey];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 state];

      if (v11 == 16)
      {
        v12 = [(TUIKeyplaneView *)self activeKey];
        v13 = [(TUIKeyplaneView *)self cacheIdentifierForKey:v8 withState:16];
        v14 = [(TUIKeyplaneView *)self variantViewForKey:v12 cacheID:v13];

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
              [v8 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
              [(TUIKeyplaneView *)self setState:2 forKey:v8];
            }
          }
        }
      }
    }

    if (([v8 isEqual:v17] & 1) == 0 && objc_msgSend(v8, "state") == 16)
    {
      v15 = [(TUIKeyplaneView *)self cachedVariantViewForTree:v17];
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
            [v17 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
            [(TUIKeyplaneView *)self setState:2 forKey:v17];
          }
        }
      }
    }
  }
}

- (void)changingSelectedVariantForKey:(id)a3 atPoint:(CGPoint)a4 isDragging:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v29 = a3;
  v9 = [(TUIKeyplaneView *)self activeKey];
  v10 = [v9 backingTree];

  v11 = [(TUIKeyplaneView *)self activeKey];
  if (v11)
  {
    v12 = v11;
    v13 = [v10 state];

    if (v13 == 16)
    {
      v14 = [(TUIKeyplaneView *)self activeKey];
      v15 = [(TUIKeyplaneView *)self cacheIdentifierForKey:v10 withState:16];
      v16 = [(TUIKeyplaneView *)self variantViewForKey:v14 cacheID:v15];

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
      v21 = [(TUIKeyplaneView *)self currentKeyplane];
      if ([v21 effectsType] == 1 && a5)
      {
      }

      else
      {
        v22 = [v16 pointInside:0 withEvent:{v18, v20}];

        if ((v22 & 1) == 0)
        {
          [v10 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
          [(TUIKeyplaneView *)self setState:2 forKey:v10];
          goto LABEL_11;
        }
      }

      [v16 updateSelectorForPoint:{v18, v20}];
LABEL_11:
    }
  }

  if ([v10 state] == 16 && (objc_msgSend(v10, "isEqual:", v29) & 1) == 0)
  {
    v23 = [(TUIKeyplaneView *)self cachedVariantViewForTree:v29];
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
          [v29 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
          [(TUIKeyplaneView *)self setState:2 forKey:v29];
        }
      }
    }
  }
}

- (void)tappedToDismissSelector
{
  v3 = [(TUIKeyplaneView *)self activeKey];
  v4 = [v3 backingTree];

  if (!-[TUIKeyplaneView dismissingKeyboardMenu](self, "dismissingKeyboardMenu") && [v4 interactionType] == 9)
  {
    v5 = [(TUIKeyplaneView *)self viewForBaseKey:v4];
    v6 = [v5 popupMenu];

    if (v6)
    {
      v7 = [(TUIKeyplaneView *)self activeKey];
      v8 = [(TUIKeyplaneView *)self cacheIdentifierForKey:v4 withState:16];
      v9 = [(TUIKeyplaneView *)self variantViewForKey:v7 cacheID:v8];

      v10 = [(TUIKeyplaneView *)self activeVariantViews];
      [v10 removeObject:v9];

      [(TUIKeyplaneView *)self setDismissingKeyboardMenu:1];
      [(TUIKeyplaneView *)self removeKeyFromDelayedDeactivationSet:v4];
      [(TUIKeyplaneView *)self setState:2 forKey:v4];
      v11 = MEMORY[0x1E69DD250];
      v12 = [(TUIKeyplaneView *)self currentKeyplane];
      if ([v12 layoutClass] == 1)
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
      [(TUIKeyplaneView *)self setState:2 forKey:v4];
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

- (void)presentSelectorView:(id)a3 fromBaseKey:(id)a4
{
  v59[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v6 superview];

      if (v9)
      {
        v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v53 = [v6 baseKeyLayoutGuide];
        v49 = [v53 topAnchor];
        v48 = [v8 topAnchor];
        v47 = [v49 constraintEqualToAnchor:v48];
        v59[0] = v47;
        v46 = [v6 baseKeyLayoutGuide];
        v45 = [v46 leftAnchor];
        v44 = [v8 leftAnchor];
        [(TUIKeyplaneView *)self keycapInsets];
        v43 = [v45 constraintEqualToAnchor:v44 constant:v10];
        v59[1] = v43;
        v11 = [v8 bottomAnchor];
        [v6 baseKeyLayoutGuide];
        v12 = v56 = v8;
        v13 = [v12 bottomAnchor];
        [(TUIKeyplaneView *)self keycapInsets];
        v15 = [v11 constraintEqualToAnchor:v13 constant:v14];
        v59[2] = v15;
        v16 = [v56 rightAnchor];
        v17 = [v6 baseKeyLayoutGuide];
        v18 = [v17 rightAnchor];
        v19 = self;
        v20 = v18;
        v51 = v19;
        [(TUIKeyplaneView *)v19 keycapInsets];
        v22 = [v16 constraintEqualToAnchor:v20 constant:v21];
        v59[3] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
        [v55 addObjectsFromArray:v23];

        v8 = v56;
        v24 = [v56 popupMenu];

        if (v24)
        {
          [(TUIKeyplaneView *)v51 setDismissingKeyboardMenu:0];
          v25 = [v56 popupMenu];
          [v25 setAlpha:1.0];
          [v6 setAlpha:1.0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v6;
            [v25 _cornerRadius];
            if (v27 > 0.0)
            {
              v28 = [MEMORY[0x1E696B098] valueWithCGSize:{v27, v27}];
              [v26 setCornerRadiusOverride:v28];
            }
          }

          [v25 frame];
          if (v29 < 0.0)
          {
            [v25 frame];
            [v25 setFrame:0.0];
          }

          [v6 setPopupDelegate:v51];
          v30 = [(TUIKeyplaneView *)v51 window];
          v31 = [v30 rootViewController];
          v32 = [v31 view];
          [v32 bringSubviewToFront:v25];

          v50 = [v6 leadingAnchor];
          v33 = [v25 leadingAnchor];
          v54 = [v50 constraintEqualToAnchor:v33];
          v58[0] = v54;
          v34 = [v6 topAnchor];
          v35 = [v25 topAnchor];
          v52 = v34;
          v36 = [v34 constraintEqualToAnchor:v35];
          v58[1] = v36;
          v37 = [v6 trailingAnchor];
          v38 = [v25 trailingAnchor];
          v39 = [v37 constraintEqualToAnchor:v38];
          v58[2] = v39;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
          v41 = v55;
          [v55 addObjectsFromArray:v40];

          v42 = v50;
          v8 = v56;
        }

        else
        {
          v25 = [v6 leadingAnchor];
          v42 = [(TUIKeyplaneView *)v51 keyboardContentView];
          v33 = [v42 leadingAnchor];
          v54 = [v25 constraintGreaterThanOrEqualToAnchor:v33];
          v57[0] = v54;
          v52 = [(TUIKeyplaneView *)v51 keyboardContentView];
          v35 = [v52 trailingAnchor];
          v36 = [v6 trailingAnchor];
          v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36];
          v57[1] = v37;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
          v41 = v55;
          [v55 addObjectsFromArray:v38];
        }

        [MEMORY[0x1E696ACD8] activateConstraints:v41];
      }
    }
  }
}

- (void)deactivateKey:(id)a3 previousState:(int)a4
{
  v4 = [(TUIKeyplaneView *)self viewForKey:a3, *&a4];
  [v4 setNeedsDisplay];
}

- (void)setState:(int)a3 forKey:(id)a4
{
  v4 = *&a3;
  v97 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 state];
  [v6 setState:v4];
  v8 = -[TUIKeyplaneView cacheIdentifierForKey:withState:](self, "cacheIdentifierForKey:withState:", v6, [v6 state]);
  if (v4 > 0x14 || ((1 << v4) & 0x110010) == 0)
  {
    [(TUIKeyplaneView *)self removeKeyFromDelayedDeactivationSet:v6];
  }

  v82 = [(TUIKeyplaneView *)self viewForKey:v6];
  if ([v82 layoutShape] == 2)
  {
    v9 = [(TUIKeyplaneView *)self currentKeyplane];
    v10 = [v6 name];
    v11 = [v9 keysForName:v10];

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
  v20 = [(TUIKeyplaneView *)self currentKeyplane];
  v85 = [v20 effectsType];

  v84 = v7;
  v83 = v8;
  v81 = v19;
  if (v4 == 4 && [v6 interactionType] == 2)
  {
    v21 = [(TUIKeyplaneView *)self currentKeyplane];
    if ([v21 supportsPaddles])
    {
      v22 = [(TUIKeyplaneView *)self factory];
      v23 = [v22 allowsPaddles];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v86 = self;
  v24 = [(TUIKeyplaneView *)self activeVariantViews];
  v25 = [v24 copy];

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
        v31 = [v30 associatedTree];
        v32 = [v31 state];

        if ((v23 & 1) != 0 || (v4 | 4) == 0x14 || v85 != 1)
        {
          v33 = [v30 associatedTree];

          if (v33 != v6)
          {
            if (v32 == 16 || v32 == 4)
            {
              v35 = [v30 associatedTree];
              [v35 setState:2];
            }

            [v30 removeFromSuperview];
            v36 = [(TUIKeyplaneView *)v86 activeVariantViews];
            [v36 removeObject:v30];
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

  v38 = [(TUIKeyplaneView *)v86 activeKey];
  v39 = v84;
  v41 = v82;
  v40 = v83;
  if (v38)
  {
    v42 = v38;
    v43 = [(TUIKeyplaneView *)v86 dismissingKeyboardMenu];

    v44 = v4 != 20 && v84 == v4;
    v45 = !v44;
    if (!v43 && v45)
    {
      if ([v6 selectedVariantIndex] != 0x7FFFFFFFFFFFFFFFLL || v4 <= 0x14 && ((1 << v4) & 0x110100) != 0 || (v84 != 1 ? (v80 = v4 == 2) : (v80 = 0), v80 || v84 == 4))
      {
        v46 = [(TUIKeyplaneView *)v86 activeKey];
        v47 = [v46 backingTree];
        v48 = [(TUIKeyplaneView *)v86 cachedVariantViewForTree:v47 state:v84];

        v49 = [v48 superview];

        if (v49)
        {
          [v48 removeFromSuperview];
        }

        v50 = [(TUIKeyplaneView *)v86 activeVariantViews];
        [v50 removeObject:v48];

        if (v84)
        {
          [(TUIKeyplaneView *)v86 setActiveKey:0];
        }
      }
    }
  }

  if ((v23 & 1) == 0 && (v4 | 4) != 0x14)
  {
    if (v82)
    {
      v41 = v82;
      v73 = v41;
    }

    else
    {
      v77 = [TUIKey keyFromKBTree:v6];
      v78 = [(TUIKeyplaneView *)v86 keyplane];
      [v77 setKeyplane:v78];

      [v77 setStyle:{-[TUIKeyplaneView keyLayoutStyle](v86, "keyLayoutStyle")}];
      v73 = [objc_alloc(-[TUIKeyplaneView preferredKeyViewClass](v86 "preferredKeyViewClass"))];
      v79 = [(TUIKeyplaneView *)v86 storedKeyViews];
      [v79 setObject:v73 forKey:v83];
    }

LABEL_88:
    v75 = [(TUIKeyplaneView *)v86 keyplaneRenderConfig];
    [v73 setRenderConfig:v75];

    v76 = [(TUIKeyplaneView *)v86 factory];
    [v73 setFactory:v76];

    v74 = v73;
    goto LABEL_89;
  }

  if (!v82)
  {
    v41 = [(TUIKeyplaneView *)v86 viewForBaseKey:v6];
  }

  v51 = [TUIKey keyFromKBTree:v6];
  v52 = [(TUIKeyplaneView *)v86 keyplane];
  [v51 setKeyplane:v52];

  v53 = [(TUIKeyplaneView *)v86 currentKeyplane];
  v54 = [(TUIKeyplaneView *)v86 currentKeyplane];
  [v51 setStyle:{objc_msgSend(v53, "keyStyleForLayoutClass:", objc_msgSend(v54, "layoutClass"))}];

  v55 = [(TUIKeyplaneView *)v86 variantViewForKey:v51 cacheID:v83];
  [(TUIKeyplaneView *)v86 setActiveKey:v51];
  v56 = [(TUIKeyplaneView *)v86 window];
  v57 = [v56 rootViewController];
  v58 = [v57 view];

  if (v55)
  {
    if (v58)
    {
      v59 = [v55 superview];

      if (!v59)
      {
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        if (objc_opt_respondsToSelector())
        {
          v60 = [v58 _containerForKeyplaneViews];
          v61 = v60;
          if (v60)
          {
            v62 = v60;
          }

          else
          {
            v62 = v58;
          }

          v63 = v62;

          v58 = v63;
        }

        [v58 addSubview:v55];
        v64 = [v41 popupMenu];

        v65 = !v81;
        if (v64)
        {
          v65 = 1;
        }

        if ((v65 & 1) == 0)
        {
          [v55 updateVariantsIfNeededForKey:v6];
        }

        [(TUIKeyplaneView *)v86 presentSelectorView:v55 fromBaseKey:v41];
        v66 = [(TUIKeyplaneView *)v86 activeVariantViews];

        if (!v66)
        {
          v67 = [MEMORY[0x1E695DF70] array];
          [(TUIKeyplaneView *)v86 setActiveVariantViews:v67];
        }

        v68 = [(TUIKeyplaneView *)v86 activeVariantViews];
        [v68 addObject:v55];

        [v55 layoutIfNeeded];
      }
    }
  }

  v69 = [MEMORY[0x1E69DCBE0] activeInstance];
  v70 = [v69 textInputTraits];
  if ([v70 isSecureTextEntry])
  {
    v71 = 18;
  }

  else
  {
    v71 = 0;
  }

  v72 = [v55 layer];
  [v72 setDisableUpdateMask:v71];

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

- (void)layoutKeysInRows:(id)a3
{
  v134[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUIKeyplaneView *)self keyRowViews];
  if (!v5 || (v6 = v5, -[TUIKeyplaneView keyRowViews](self, "keyRowViews"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v9 = objc_msgSend(v4, "count"), v7, v6, v8 < v9))
  {
    -[TUIKeyplaneView layoutRows:](self, "layoutRows:", [v4 count]);
  }

  v10 = [(TUIKeyplaneView *)self currentKeyplane];
  if ([v10 isGridLayout])
  {
    v11 = 7;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(TUIKeyplaneView *)self bottomRowSizingGuide];

  if (v12)
  {
    v13 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
    v14 = [v13 owningView];

    if (v14)
    {
      goto LABEL_12;
    }

    v15 = [(TUIKeyplaneView *)self bottomRowSizingConstraint];
    [v15 setActive:0];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(TUIKeyplaneView *)self setBottomRowSizingGuide:v15];
  }

  v16 = [(TUIKeyplaneView *)self keyboardContentView];
  v17 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
  [v16 addLayoutGuide:v17];

LABEL_12:
  v18 = [(TUIKeyplaneView *)self screenTraits];
  if ([v18 idiom] == 3)
  {
    v19 = UIKeyboardAlwaysShowCandidateBarForCurrentInputMode();

    if (v19)
    {
      v20 = [v4 mutableCopy];
      v21 = [(TUIKeyplaneView *)self currentKeyplane];
      v22 = [v21 candidateBarKeyFromKeyplane:self->_keyplane];

      v134[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:1];
      [v20 insertObject:v23 atIndex:0];

      v4 = v20;
    }
  }

  else
  {
  }

  v24 = [MEMORY[0x1E695DF90] dictionary];
  v109 = [MEMORY[0x1E695DF70] array];
  v25 = [(TUIKeyplaneView *)self keyplane];
  v26 = [v25 name];
  v88 = [v26 containsString:@"Korean10Key"];

  if ([v4 count])
  {
    v27 = 0;
    v89 = v4;
    v97 = self;
    v98 = v24;
    do
    {
      v28 = [(TUIKeyplaneView *)self keyRowViews];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
      v30 = [v28 objectForKey:v29];

      v96 = [v4 objectAtIndex:v27];
      v31 = [v4 count] - 1;
      v32 = [(TUIKeyplaneView *)self currentKeyplane];
      v33 = v32;
      if (v27 != v31 || v11 == 7)
      {
        v37 = [v32 effectsType];

        if (v37 == 1)
        {
          v36 = [(TUIKeyplaneView *)self keySizeReferenceGuide];
        }

        else
        {
          v38 = objc_alloc_init(MEMORY[0x1E69DCC20]);
          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Row%liSizingGuide", v27];
          v93 = v38;
          [v38 setIdentifier:v39];

          if (((v27 == [v4 count] - 1) & v88) == 1)
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

            v4 = v89;
          }

          v36 = v93;
        }
      }

      else
      {
        v34 = [(TUIKeyplaneView *)self currentKeyplane];
        v35 = [v33 variantTypeIncludesSpaceBar:{objc_msgSend(v34, "currentVariantType")}];

        if (v35)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        v36 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
        [(TUIKeyplaneView *)self updateBottomRowSizingGuide];
      }

      [v30 layoutRowWithKeys:v96 guide:v36 type:v11];
      if ([v24 count])
      {
        v92 = v11;
        v94 = v36;
        v90 = v27;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        obj = v24;
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
              v49 = [v48 doubleHeightKeysForRow];
              v50 = [v49 countByEnumeratingWithState:&v114 objects:v131 count:16];
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
                      objc_enumerationMutation(v49);
                    }

                    v54 = *(*(&v114 + 1) + 8 * j);
                    v55 = [v54 key];
                    v56 = [v55 representedString];
                    v57 = [v56 isEqualToString:v47];

                    if (v57)
                    {
                      v58 = [v54 bottomAnchor];
                      v59 = [v30 bottomAnchor];
                      v60 = [v58 constraintEqualToAnchor:v59];
                      v130 = v60;
                      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
                      [v109 addObjectsFromArray:v61];
                    }
                  }

                  v51 = [v49 countByEnumeratingWithState:&v114 objects:v131 count:16];
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

        self = v97;
        v24 = v98;
        v4 = v89;
        v27 = v90;
        v11 = v92;
        v36 = v94;
      }

      if (v11 == 7 && [v30 rowHasDoubleHeightKeys])
      {
        v95 = v36;
        v91 = v27;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v100 = [v30 doubleHeightKeysForRow];
        obja = [v100 countByEnumeratingWithState:&v110 objects:v129 count:16];
        if (obja)
        {
          v102 = *v111;
          do
          {
            for (k = 0; k != obja; k = k + 1)
            {
              if (*v111 != v102)
              {
                objc_enumerationMutation(v100);
              }

              v63 = *(*(&v110 + 1) + 8 * k);
              v64 = [v63 key];
              v65 = [v64 representedString];

              v66 = [v24 objectForKey:v65];
              v67 = [v63 topAnchor];
              if (v66)
              {
                v68 = [v66 topAnchor];
                [v67 constraintEqualToAnchor:v68];
                v106 = v67;
                v69 = v66;
                v71 = v70 = v65;
                v128[0] = v71;
                [v63 bottomAnchor];
                v72 = v108 = v63;
                v73 = [v30 bottomAnchor];
                v74 = [v72 constraintEqualToAnchor:v73];
                v128[1] = v74;
                v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
                [v109 addObjectsFromArray:v75];

                v24 = v98;
                v65 = v70;
                v66 = v69;

                [v98 removeObjectForKey:v65];
                [v108 setHidden:1];
              }

              else
              {
                v76 = [v30 topAnchor];
                v77 = [v67 constraintEqualToAnchor:v76];
                v127 = v77;
                v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
                [v109 addObjectsFromArray:v78];

                [v24 setObject:v30 forKey:v65];
                v79 = [(TUIKeyplaneView *)v97 currentKeyplane];
                v80 = [v79 effectsType];

                if (v80 == 1)
                {
                  v81 = [v63 heightAnchor];
                  v82 = [v81 constraintEqualToConstant:132.0];
                  v126 = v82;
                  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v126 count:1];
                  [v109 addObjectsFromArray:v83];
                }
              }
            }

            obja = [v100 countByEnumeratingWithState:&v110 objects:v129 count:16];
          }

          while (obja);
        }

        v27 = v91;
        v11 = 7;
        v36 = v95;
        v4 = v89;
        self = v97;
      }

      if ([(TUIKeyplaneView *)self supportsSplit]&& ![(TUIKeyplaneView *)self isInSizeTransition])
      {
        [v30 toggleConstraintsForSplit:{-[TUIKeyplaneView isCurrentlySplit](self, "isCurrentlySplit")}];
      }

      ++v27;
    }

    while (v27 < [v4 count]);
  }

  v84 = [(TUIKeyplaneView *)self keyRowConstraints];
  v85 = [v84 objectForKey:@"TUIDoubleHeightConstraints"];

  if (v85)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:v85];
    v86 = [(TUIKeyplaneView *)self keyRowConstraints];
    [v86 removeObjectForKey:@"TUIDoubleHeightConstraints"];
  }

  if ([v109 count])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:v109];
    v87 = [(TUIKeyplaneView *)self keyRowConstraints];
    [v87 setObject:v109 forKey:@"TUIDoubleHeightConstraints"];
  }

  [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
  [(TUIKeyplaneView *)self setNeedsLayout];
}

- (void)layoutRows:(unint64_t)a3
{
  v4 = self;
  v141[2] = *MEMORY[0x1E69E9840];
  v5 = [(TUIKeyplaneView *)self keySizeReferenceGuide];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(TUIKeyplaneView *)v4 setKeySizeReferenceGuide:v6];

    v7 = [(TUIKeyplaneView *)v4 keySizeReferenceGuide];
    [v7 setIdentifier:@"TUIKeyplaneKeySizingGuide"];
  }

  v8 = [(TUIKeyplaneView *)v4 keySizeReferenceGuide];
  v9 = [v8 owningView];

  if (!v9)
  {
    v10 = MEMORY[0x1E696ACD8];
    v11 = [(TUIKeyplaneView *)v4 keySizeConstraints];
    [v10 deactivateConstraints:v11];

    [(TUIKeyplaneView *)v4 setKeySizeConstraints:0];
    v12 = [(TUIKeyplaneView *)v4 keyboardContentView];
    v13 = [(TUIKeyplaneView *)v4 keySizeReferenceGuide];
    [v12 addLayoutGuide:v13];
  }

  v14 = [(TUIKeyplaneView *)v4 keyRowViews];
  v127 = [v14 count] == 0;

  v15 = [(TUIKeyplaneView *)v4 keyRowViews];

  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(TUIKeyplaneView *)v4 setKeyRowViews:v16];

    v127 = 1;
  }

  v17 = [(TUIKeyplaneView *)v4 keyRowConstraints];

  if (!v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(TUIKeyplaneView *)v4 setKeyRowConstraints:v18];

    v127 = 1;
  }

  v126 = [(TUIKeyplaneView *)v4 supportsSplit];
  if (v126)
  {
    v19 = [(TUIKeyplaneView *)v4 splitTransitionLayoutGuides];
    v20 = [v19 objectForKey:@"TUIKBSplitGuide_Middle"];

    v122 = v20;
    if (!v20)
    {
      [(TUIKeyplaneView *)v4 createSplitLayoutIfNeeded];
      v21 = [(TUIKeyplaneView *)v4 splitTransitionLayoutGuides];
      v122 = [v21 objectForKey:@"TUIKBSplitGuide_Middle"];
    }

    v22 = [(TUIKeyplaneView *)v4 isCurrentlySplit];
    v23 = [(TUIKeyplaneView *)v4 splitSpacing];
    [v23 setActive:!v22];
  }

  else
  {
    v122 = 0;
  }

  v24 = [(TUIKeyplaneView *)v4 currentKeyplane];
  if ([v24 isGridLayout])
  {
    v25 = 7;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(TUIKeyplaneView *)v4 currentKeyplane];
  v27 = [v26 effectsType];

  v125 = v4;
  if (v27 == 1)
  {
    [(TUIKeyplaneView *)v4 idealKeySizeforLayoutType:v25];
    v29 = v28;
    v31 = v30;
    v32 = [(TUIKeyplaneView *)v4 keySizeConstraints];

    if (v32)
    {
      v33 = [(TUIKeyplaneView *)v4 keySizeConstraints];
      v34 = [v33 objectAtIndexedSubscript:0];
      [v34 setConstant:v29];

      v35 = [(TUIKeyplaneView *)v4 keySizeConstraints];
      v36 = [v35 objectAtIndexedSubscript:1];
      [v36 setConstant:v31];
    }

    else
    {
      v37 = [(TUIKeyplaneView *)v4 keySizeReferenceGuide];
      v38 = [v37 widthAnchor];
      v39 = [v38 constraintEqualToConstant:v29];
      v141[0] = v39;
      v40 = [(TUIKeyplaneView *)v4 keySizeReferenceGuide];
      v41 = [v40 heightAnchor];
      v42 = [v41 constraintEqualToConstant:v31];
      v141[1] = v42;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:2];
      v44 = v43 = v25;
      [(TUIKeyplaneView *)v125 setKeySizeConstraints:v44];

      v25 = v43;
      v4 = v125;

      v45 = MEMORY[0x1E696ACD8];
      v46 = [(TUIKeyplaneView *)v125 keySizeConstraints];
      [v45 activateConstraints:v46];
    }
  }

  v47 = [(TUIKeyplaneView *)v4 screenTraits];
  if ([v47 idiom] == 3)
  {
    v48 = UIKeyboardAlwaysShowCandidateBarForCurrentInputMode();

    a3 += v48;
  }

  else
  {
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = [(TUIKeyplaneView *)v4 keyRowViews];
  v51 = [v50 count];

  if (a3 != v51)
  {
    v52 = [(TUIKeyplaneView *)v4 keyRowConstraints];
    v53 = [v52 objectForKey:@"TUIBottomRowToKeyplaneConstraint"];

    if ([v53 isActive])
    {
      [v53 setActive:0];
      v54 = [(TUIKeyplaneView *)v4 keyRowConstraints];
      [v54 removeObjectForKey:@"TUIBottomRowToKeyplaneConstraint"];

      v53 = 0;
    }
  }

  if (a3)
  {
    v55 = 0;
    v56 = 0;
    v133 = v49;
    do
    {
      v132 = v55;
      v57 = [(TUIKeyplaneView *)v4 keyRowViews];
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v56];
      v59 = [v57 objectForKey:v58];

      v60 = v59;
      if (!v59)
      {
        v60 = [TUIKeyplaneRow emptyRowForKeyplane:v4 rowNumber:v56];
      }

      [v60 setEdgeToEdge:v25 == 7];
      if (!v25)
      {
        v25 = a3 == 1;
      }

      [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (v126)
      {
        v128 = v25;
        v130 = a3;
        if (v25 == 1)
        {
          v61 = [(TUIKeyplaneView *)v4 splitTransitionLayoutGuides];
          v62 = [v61 objectForKey:@"TUIKBSplitGuide_Padding"];

          v63 = [v122 leftAnchor];
          v121 = [v60 splitLayoutGuide];
          v64 = [v121 leftAnchor];
          v123 = v63;
          v120 = v62;
          if (v62)
          {
            v65 = [v63 constraintEqualToAnchor:v64];
            v140[0] = v65;
            v66 = [v62 leftAnchor];
            v67 = [v60 splitLayoutGuide];
            v68 = [v67 rightAnchor];
            v69 = [v66 constraintEqualToAnchor:v68];
            v140[1] = v69;
            v70 = v140;
          }

          else
          {
            v65 = [v63 constraintEqualToAnchor:v64 constant:0.0];
            v139[0] = v65;
            v66 = [v122 rightAnchor];
            v67 = [v60 splitLayoutGuide];
            v68 = [v67 rightAnchor];
            v69 = [v66 constraintGreaterThanOrEqualToAnchor:v68 constant:30.0];
            v139[1] = v69;
            v70 = v139;
          }

          v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
          [v133 addObjectsFromArray:v77];

          v75 = v123;
          v4 = v125;
          v74 = v120;
          v76 = v121;
        }

        else
        {
          v71 = [v60 splitLayoutGuide];
          v72 = [v71 widthAnchor];
          v73 = [v122 widthAnchor];
          v74 = [v72 constraintEqualToAnchor:v73 multiplier:1.0];

          v138[0] = v74;
          v75 = [v122 leftAnchor];
          v76 = [v60 splitLayoutGuide];
          v64 = [v76 leftAnchor];
          v65 = [v75 constraintGreaterThanOrEqualToAnchor:v64];
          v138[1] = v65;
          v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:2];
          [v133 addObjectsFromArray:v66];
        }

        v25 = v128;
        a3 = v130;
      }

      v78 = [(TUIKeyplaneView *)v4 keyboardContentView];
      [v78 addSubview:v60];

      if (!v59)
      {
        [(TUIKeyplaneView *)v4 rowsVerticalSpacing];
        v80 = v79;
        [(TUIKeyplaneView *)v4 rowInsets];
        v82 = v81;
        v84 = v83;
        v86 = v85;
        v87 = [v60 topAnchor];
        v129 = v25;
        v131 = a3;
        if (v132)
        {
          v88 = [v132 bottomAnchor];
          v89 = [v87 constraintEqualToAnchor:v88 constant:v80];
          v136 = v89;
          v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
          [v133 addObjectsFromArray:v90];
        }

        else
        {
          v88 = [(TUIKeyplaneView *)v4 keyboardContentView];
          v89 = [v88 topAnchor];
          v90 = [v87 constraintEqualToAnchor:v89];
          v137 = v90;
          v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
          [v133 addObjectsFromArray:v91];

          v4 = v125;
        }

        v124 = [v60 leftAnchor];
        v92 = [(TUIKeyplaneView *)v4 keyboardContentView];
        v93 = [v92 leftAnchor];
        v94 = [v124 constraintEqualToAnchor:v93 constant:v82];
        v135[0] = v94;
        v95 = [(TUIKeyplaneView *)v4 keyboardContentView];
        v96 = [v95 rightAnchor];
        v97 = [v60 rightAnchor];
        v98 = [v96 constraintEqualToAnchor:v97 constant:v86];
        v135[1] = v98;
        v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
        [v133 addObjectsFromArray:v99];

        v4 = v125;
        v25 = v129;
        a3 = v131;
        if (v131 == 1)
        {
          v100 = [(TUIKeyplaneView *)v125 keyboardContentView];
          v101 = [v100 bottomAnchor];
          v102 = [v60 bottomAnchor];
          v103 = [v101 constraintEqualToAnchor:v102 constant:v84];

          v104 = [(TUIKeyplaneView *)v125 keyRowConstraints];
          [v104 setObject:v103 forKey:@"TUIBottomRowToKeyplaneConstraint"];

          v134 = v103;
          v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
          [v133 addObjectsFromArray:v105];
        }
      }

      v106 = [(TUIKeyplaneView *)v4 currentKeyplane];
      [v106 heightMultiplierForRowNumber:v56];
      v108 = v107;

      v109 = [(TUIKeyplaneView *)v4 keyRowConstraints];
      v110 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%li", @"TUIRowHeightConstraint", v56];
      v111 = [v109 objectForKey:v110];

      if (v111)
      {
        [v111 setActive:0];
      }

      v112 = [v60 heightAnchor];
      v113 = [(TUIKeyplaneView *)v4 keySizeReferenceGuide];
      v114 = [v113 heightAnchor];
      v115 = [v112 constraintEqualToAnchor:v114 multiplier:v108];

      v49 = v133;
      [v133 addObject:v115];
      v116 = [(TUIKeyplaneView *)v4 keyRowConstraints];
      v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%li", @"TUIRowHeightConstraint", v56];
      [v116 setObject:v115 forKey:v117];

      v118 = [(TUIKeyplaneView *)v4 keyRowViews];
      v119 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v56];
      [v118 setObject:v60 forKey:v119];

      if (v127)
      {
        [v60 setNeedsLayout];
      }

      ++v56;
      v55 = v60;
      --a3;
    }

    while (a3);
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v49];
}

- (void)boundsChangedForKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  --self->_keyBoundsChangeCount;
  [(TUIKeyplaneView *)self updateFrameForKey:a3];
  if (self->_keyBoundsChangeCount <= 0)
  {
    v4 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412546;
      v6 = objc_opt_class();
      v7 = 2048;
      v8 = self;
      _os_log_debug_impl(&dword_18FFDC000, v4, OS_LOG_TYPE_DEBUG, "<%@: %p> Updating keys after bounds update", &v5, 0x16u);
    }

    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
    [(TUIKeyplaneView *)self updateAllTrees];
  }
}

- (void)didTapBiasEscapeButton
{
  v3 = [(TUIKeyplaneView *)self currentHandBias];
  v4 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  v5 = [v4 preferencesActions];
  [v5 setHandBias:0];

  [(TUIKeyplaneView *)self setKeyboardBias:0];
  v6 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v6 updateForHandBiasChange];

  if (v3)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:*MEMORY[0x1E69DDFA8] object:0 userInfo:0];
  }
}

- (void)updateBottomRowSizingGuideForClass:(int64_t)a3
{
  v5 = [(TUIKeyplaneView *)self bottomRowSizingGuide];

  if (!v5)
  {
    return;
  }

  if ([(TUIKeyplaneView *)self movingToFloating]|| [(TUIKeyplaneView *)self movingFromFloating])
  {
    v6 = 0.125;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v7 = [(TUIKeyplaneView *)self factory];
        v8 = [v7 dynamicFactory] == 0;
        v9 = 1.115;
        v10 = 1.08;
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_19;
        }

        v7 = [(TUIKeyplaneView *)self factory];
        v8 = [v7 dynamicFactory] == 0;
        v9 = 1.07;
        v10 = 1.04;
      }
    }

    else if (a3 == 1)
    {
      v7 = [(TUIKeyplaneView *)self factory];
      v8 = [v7 dynamicFactory] == 0;
      v9 = 0.1;
      v10 = 0.125;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_19;
      }

      v7 = [(TUIKeyplaneView *)self factory];
      v8 = [v7 dynamicFactory] == 0;
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
    v7 = [(TUIKeyplaneView *)self factory];
    [v7 dynamicBottomRowMultiplier];
    v6 = v11;
  }

LABEL_19:
  v12 = [(TUIKeyplaneView *)self bottomRowSizingConstraint];
  [v12 setActive:0];

  v13 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
  v14 = [v13 owningView];

  if (!v14)
  {
    v15 = [(TUIKeyplaneView *)self keyboardContentView];
    v16 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
    [v15 addLayoutGuide:v16];
  }

  if ((a3 - 2) < 3)
  {
    v17 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
    v18 = [v17 widthAnchor];
    v19 = [(TUIKeyplaneView *)self keySizeReferenceGuide];
    v20 = [v19 heightAnchor];
LABEL_25:
    v21 = v20;
    v22 = [v18 constraintEqualToAnchor:v20 multiplier:v6];
    [(TUIKeyplaneView *)self setBottomRowSizingConstraint:v22];

    goto LABEL_26;
  }

  if (a3 <= 1)
  {
    v17 = [(TUIKeyplaneView *)self bottomRowSizingGuide];
    v18 = [v17 widthAnchor];
    v19 = [(TUIKeyplaneView *)self keyboardContentView];
    v20 = [v19 widthAnchor];
    goto LABEL_25;
  }

LABEL_26:
  v23 = [(TUIKeyplaneView *)self bottomRowSizingConstraint];
  [v23 setActive:1];
}

- (void)updateBiasEscapeButtonVisbility:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIKeyplaneView *)self currentHandBias];
  if (v3)
  {
    v6 = v5;
    if (v5)
    {
      v7 = [(TUIKeyplaneView *)self biasEscapeButton];

      if (!v7)
      {
        v8 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __51__TUIKeyplaneView_updateBiasEscapeButtonVisbility___block_invoke;
        v42[3] = &unk_1E72D83C8;
        v42[4] = self;
        v39 = [MEMORY[0x1E69DC628] actionWithHandler:v42];
        [v8 setContentInsets:{0.0, 15.0, 0.0, 15.0}];
        v9 = [MEMORY[0x1E69DC888] whiteColor];
        v10 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_13400];

        [v8 setBaseForegroundColor:v10];
        v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:2 scale:40.0];
        [v8 setPreferredSymbolConfigurationForImage:v11];
        v12 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v8 primaryAction:v39];
        [(TUIKeyplaneView *)self setBiasEscapeButton:v12];

        v13 = [(TUIKeyplaneView *)self biasEscapeButton];
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

        v14 = [(TUIKeyplaneView *)self superview];
        v15 = [(TUIKeyplaneView *)self biasEscapeButton];
        [v14 addSubview:v15];

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __51__TUIKeyplaneView_updateBiasEscapeButtonVisbility___block_invoke_3;
        v41[3] = &unk_1E72D8410;
        v41[4] = self;
        v16 = [(TUIKeyplaneView *)self biasEscapeButton];
        [v16 setConfigurationUpdateHandler:v41];

        v17 = [(TUIKeyplaneView *)self biasEscapeButton];
        v18 = [v17 topAnchor];
        v19 = [(TUIKeyplaneView *)self keyboardContentView];
        v20 = [v19 topAnchor];
        v21 = [v18 constraintEqualToAnchor:v20];
        [v21 setActive:1];

        v22 = [(TUIKeyplaneView *)self biasEscapeButton];
        v23 = [v22 bottomAnchor];
        v24 = [(TUIKeyplaneView *)self keyboardContentView];
        v25 = [v24 bottomAnchor];
        v26 = [v23 constraintEqualToAnchor:v25];
        [v26 setActive:1];
      }

      v27 = [(TUIKeyplaneView *)self biasEscapeButton];
      [v27 setNeedsUpdateConfiguration];

      v28 = [(TUIKeyplaneView *)self biasEscapeButton];
      [v28 setHidden:0];

      v29 = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];

      if (v6 == 1)
      {
        if (!v29)
        {
          v30 = [(TUIKeyplaneView *)self biasEscapeButton];
          v31 = [v30 leftAnchor];
          v32 = [(TUIKeyplaneView *)self leftAnchor];
          v33 = 1.0;
          v34 = v31;
LABEL_15:
          v37 = [v34 constraintEqualToSystemSpacingAfterAnchor:v32 multiplier:v33];
          [(TUIKeyplaneView *)self setHorizontalBiasButtonConstraint:v37];
        }
      }

      else if (!v29)
      {
        v30 = [(TUIKeyplaneView *)self rightAnchor];
        v31 = [(TUIKeyplaneView *)self biasEscapeButton];
        v32 = [v31 rightAnchor];
        v33 = 1.0;
        v34 = v30;
        goto LABEL_15;
      }

      v38 = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];
      [v38 setActive:1];

      return;
    }
  }

  v35 = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];

  if (v35)
  {
    v36 = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];
    [v36 setActive:0];

    [(TUIKeyplaneView *)self setHorizontalBiasButtonConstraint:0];
  }

  v40 = [(TUIKeyplaneView *)self biasEscapeButton];
  [v40 setHidden:1];
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

- (void)setKeyboardBias:(int64_t)a3
{
  v5 = [(TUIKeyplaneView *)self currentKeyplane];
  if ([v5 layoutClass] != 1)
  {
    goto LABEL_9;
  }

  v6 = [(TUIKeyplaneView *)self currentKeyplane];
  if ([v6 effectsType] == 1)
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v7 = [(TUIKeyplaneView *)self screenTraits];
  if (([v7 orientation] - 1) >= 2)
  {

    goto LABEL_8;
  }

  v8 = [(TUIKeyplaneView *)self isFloating];

  if (v8)
  {
LABEL_10:
    [(TUIKeyplaneView *)self setCurrentHandBias:0];
    v11 = self;
    v12 = 0;
LABEL_11:
    [(TUIKeyplaneView *)v11 updateBiasEscapeButtonVisbility:v12];

    [(TUIKeyplaneView *)self updateKeyplaneSpacing];
    return;
  }

  if (a3)
  {
    v9 = [(TUIKeyplaneView *)self preferredWidthConstraint];
    [v9 setActive:0];

    v10 = [(TUIKeyplaneView *)self currentHandBias]!= 0;
  }

  else
  {
    v10 = 0;
  }

  if ([(TUIKeyplaneView *)self currentHandBias]== a3)
  {
    v12 = a3 != 0;
    v11 = self;
    goto LABEL_11;
  }

  v13 = [(TUIKeyplaneView *)self horizontalBiasButtonConstraint];
  [v13 setActive:0];

  [(TUIKeyplaneView *)self setHorizontalBiasButtonConstraint:0];
  [(TUIKeyplaneView *)self setCurrentHandBias:a3];
  [(TUIKeyplaneView *)self updateBiasEscapeButtonVisbility:a3 != 0];
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

- (void)updateKeysForFloating:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
  [(TUIKeyplaneView *)self deactivateKeys];
  [(TUIKeyplaneView *)self setIsFloating:v3];
  [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TUIKeyplaneView *)self currentKeyplane];
    v7 = [v6 layoutClass];

    if (v7 == 4)
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
  v8 = [(TUIKeyplaneView *)self keyRowViews];
  v9 = [v8 allKeys];

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

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(TUIKeyplaneView *)self keyRowViews];
        v16 = [v15 objectForKey:v14];

        v17 = [(TUIKeyplaneView *)self factory];
        [v16 updateKeysInRowWithStyle:v5 factory:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(TUIKeyplaneView *)self updateBottomRowSizingGuide];
  [(TUIKeyplaneView *)self updateAllTrees];
  [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:1];
}

- (void)transitionToKeyplane:(id)a3 override:(BOOL)a4
{
  v16 = a3;
  if (!a4 && [(TUIKeyplaneView *)self isInSizeTransition])
  {
    v7 = [(TUIKeyplaneView *)self currentKeyplane];
    v8 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", v16, [v7 currentVariantType]);

    if ([v8 layoutClass] == 1)
    {
      [(TUIKeyplaneView *)self setFloatingKeyplaneForTransition:v8];
    }

    else
    {
      [(TUIKeyplaneView *)self setFullKeyplaneForTransition:v8];
    }
  }

  v9 = [(TUIKeyplaneView *)self isFloating];
  v10 = [(TUIKeyplaneView *)self screenTraits];
  v11 = [v10 isFloating];

  if (self->_keyplane == v16)
  {
    if (v9 == v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_storeStrong(&self->_keyplane, a3);
    v12 = [(TUIKeyplaneView *)self currentKeyplane];

    if (v12)
    {
      v13 = [(TUIKeyplaneView *)self currentKeyplane];
      v14 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", v16, [v13 currentVariantType]);
      [(TUIKeyplaneView *)self setCurrentKeyplane:v14];
    }
  }

  v15 = [(TUIKeyplaneView *)self screenTraits];
  -[TUIKeyplaneView updateKeysForFloating:](self, "updateKeysForFloating:", [v15 isFloating]);

LABEL_12:
}

- (void)setKeyplaneForAutomation:(id)a3
{
  v4 = a3;
  [(TUIKeyplaneView *)self createContentViewsIfNeeded];
  if (self->_keyplane)
  {
    v5 = [(TUIKeyplaneView *)self keyRowViews];

    if (!v5)
    {
      keyplane = self->_keyplane;
      self->_keyplane = 0;
    }
  }

  [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
  v7 = [(TUIKeyplaneView *)self currentKBLayoutInfo];
  [v4 updateFlickKeycapOnKeysWithLayoutInfo:v7];

  v8 = self->_keyplane;
  self->_keyplane = v4;
  v9 = v4;

  v11 = [TUIKeyplane keyplaneFromKBTree:self->_keyplane withType:0];

  [(TUIKeyplaneView *)self setCurrentHandBias:0];
  v10 = [(TUIKeyplaneView *)self currentKeyplane];
  [(TUIKeyplaneView *)self compareKeyplane:v10 toKeyplane:v11];

  [(TUIKeyplaneView *)self updateKeyplaneSpacing];
}

- (void)setKeyplane:(id)a3 override:(BOOL)a4
{
  v4 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [(TUIKeyplaneView *)self createContentViewsIfNeeded];
  if (self->_keyplane)
  {
    v8 = [(TUIKeyplaneView *)self keyRowViews];

    if (!v8)
    {
      keyplane = self->_keyplane;
      self->_keyplane = 0;
    }
  }

  v10 = [(TUIKeyplaneView *)self renderingContext];
  v11 = [v10 keyboardType];

  if (v11 != 126)
  {
LABEL_11:
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v12 = [(TUIKeyplaneView *)self factory];
  if ([v12 dynamicFactory])
  {

    goto LABEL_8;
  }

  v13 = [(TUIKeyplaneView *)self screenTraits];
  v14 = [v13 isFloating];

  if (v14)
  {
LABEL_8:
    v15 = [(UIKBTree *)v7 name];
    v16 = [TUIKeyplane layoutClassFromKeyplaneName:v15];

    if (v16 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 126;
    }

    goto LABEL_11;
  }

  v11 = 126;
  if (!v4)
  {
LABEL_12:
    if ([(TUIKeyplaneView *)self isInSizeTransition])
    {
      [(UIKBTree *)v7 updateFlickKeycapOnKeys];
      objc_storeStrong(&self->_keyplane, a3);
      v17 = [(TUIKeyplaneView *)self currentKeyplane];
      v18 = +[TUIKeyplane keyplaneFromKBTree:withType:](TUIKeyplane, "keyplaneFromKBTree:withType:", v7, [v17 currentVariantType]);

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
  v58 = v7;
  v57 = [TUIKeyplane keyplaneFromKBTree:v7 withType:v11];
  isGestureKeyplane = self->_isGestureKeyplane;
  v20 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  v21 = [v20 preferencesActions];
  v22 = *MEMORY[0x1E69DDE60];
  v23 = [v21 BOOLForPreferenceKey:*MEMORY[0x1E69DDE60]];

  if (isGestureKeyplane != v23)
  {
    v24 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
    v25 = [v24 preferencesActions];
    self->_isGestureKeyplane = [v25 BOOLForPreferenceKey:v22];
  }

  -[TUIKeyplaneView setIsCurrentlySplit:](self, "setIsCurrentlySplit:", [MEMORY[0x1E69DCBE0] isSplit]);
  v26 = v4;
  if (self->_keyplane != v58 || (-[TUIKeyplaneView currentKeyplane](self, "currentKeyplane"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v57 needsResetFromKeyplane:v33], v33, (v34 & 1) != 0) || v4 || isGestureKeyplane != v23)
  {
    v27 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(UIKBTree *)v58 name];
      *buf = 138477827;
      v60 = v28;
      _os_log_impl(&dword_18FFDC000, v27, OS_LOG_TYPE_DEFAULT, "Setting dynamic keyplane: %{private}@", buf, 0xCu);
    }

    [(TUIKeyplaneView *)self setLayoutReadyForTreeUpdate:0];
    v29 = [(TUIKeyplaneView *)self currentKBLayoutInfo];
    [(UIKBTree *)v58 updateFlickKeycapOnKeysWithLayoutInfo:v29];

    v30 = [(UIKBTree *)self->_keyplane visualStyling];
    objc_storeStrong(&self->_keyplane, a3);
    v31 = [(TUIKeyplaneView *)self currentKeyplane];

    if (v31)
    {
      v32 = 1;
    }

    else
    {
      v36 = [(TUIKeyplaneView *)self screenTraits];
      -[TUIKeyplaneView setIsFloating:](self, "setIsFloating:", [v36 isFloating]);

      v32 = [(TUIKeyplaneView *)self isFloating];
      [(TUIKeyplaneView *)self setStandardKeyInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    }

    v35 = v57;
    [(TUIKeyplaneView *)self setCurrentHandBias:0];
    if ([(UIKBTree *)self->_keyplane rendering]!= BYTE2(v30))
    {
      [(TUIKeyplaneView *)self _regenerateFactoryPreservingUpdates:0];
    }

    v37 = [(TUIKeyplaneView *)self currentKeyplane];
    [(TUIKeyplaneView *)self compareKeyplane:v37 toKeyplane:v57];

    if (![(TUIKeyplaneView *)self isInSizeTransition])
    {
      if ([(TUIKeyplaneView *)self isCurrentlySplit])
      {
        v38 = [(TUIKeyplaneView *)self currentKeyplane];
        v39 = [v38 supportsSplitStyle];

        if (v39)
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
    v32 = 1;
    v35 = v57;
  }

  [(TUIKeyplaneView *)self sizeFromScreenTraitsAndClassWithSplitHeight:[(TUIKeyplaneView *)self isCurrentlySplit]];
  v41 = v40;
  v43 = v42;
  v44 = [(TUIKeyplaneView *)self screenTraits];
  [v44 keyboardWidth];
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
  v46 = [(TUIKeyplaneView *)self bottomSpacing];
  [v46 setActive:1];

  v47 = [(TUIKeyplaneView *)self trailingTieConstraint];
  [v47 setActive:1];

  v48 = [(TUIKeyplaneView *)self currentKeyplane];
  if ([v48 layoutClass] != 1)
  {

    goto LABEL_45;
  }

  v49 = [(TUIKeyplaneView *)self screenTraits];
  v50 = [v49 isFloating];

  if (v50)
  {
LABEL_45:
    [(TUIKeyplaneView *)self updateKeyplaneSpacing];
    goto LABEL_46;
  }

  v51 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  v52 = [v51 preferencesActions];
  -[TUIKeyplaneView setKeyboardBias:](self, "setKeyboardBias:", [v52 handBias]);

LABEL_46:
  v7 = v58;
  if (v32 || v26)
  {
    [(TUIKeyplaneView *)self updateKeysForFloating:[(TUIKeyplaneView *)self isFloating]];
  }

LABEL_51:
}

- (void)updateKeysForRow:(unint64_t)a3 withKeys:(id)a4
{
  v9 = a4;
  v6 = [(TUIKeyplaneView *)self keyRowViews];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    [v8 updateKeysInRowWithData:v9];
  }
}

- (void)updateRowsForTransitionToKeyplane:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUIKeyplaneView *)self currentKeyplane];
  v6 = [v5 numberOfRows];
  if (v6 != [v4 numberOfRows])
  {
    goto LABEL_4;
  }

  v7 = [(TUIKeyplaneView *)self currentKeyplane];
  v8 = [v7 doubleHeightKeys];
  if ([v8 count] >= 2)
  {

LABEL_4:
LABEL_5:
    [(TUIKeyplaneView *)self resetLayoutAndApplyKeyplane:v4];
    goto LABEL_6;
  }

  v9 = [v4 doubleHeightKeys];
  v10 = [v9 count];

  if (v10 > 1)
  {
    goto LABEL_5;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [(TUIKeyplaneView *)self keyRowViews];
  v12 = [v11 allValues];

  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v12);
        }

        [*(*(&v26 + 1) + 8 * v16++) resetRow];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v17 = [(TUIKeyplaneView *)self storedKeyViews];
  [v17 removeAllObjects];

  v18 = MEMORY[0x1E69DD250];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __53__TUIKeyplaneView_updateRowsForTransitionToKeyplane___block_invoke;
  v23 = &unk_1E72D85E0;
  v24 = self;
  v19 = v4;
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

- (void)resetLayoutAndApplyKeyplane:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(TUIKeyplaneView *)self currentKeyplane];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(TUIKeyplaneView *)self storedVariantViews];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v36 + 1) + 8 * i) removeFromSuperview];
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  v11 = [(TUIKeyplaneView *)self storedVariantViews];
  [v11 removeAllObjects];

  v12 = [(TUIKeyplaneView *)self keyRowViews];
  v13 = [v12 count];
  v14 = [v4 numberOfRows];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [(TUIKeyplaneView *)self keyRowViews];
  v16 = [v15 allValues];

  v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        [v21 resetRow];
        if (v13 != v14)
        {
          [v21 removeFromSuperview];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v18);
  }

  v22 = [(TUIKeyplaneView *)self storedKeyViews];
  [v22 removeAllObjects];

  if (v13 != v14)
  {
    v23 = [(TUIKeyplaneView *)self keyRowViews];
    [v23 removeAllObjects];
  }

  [(TUIKeyplaneView *)self setCurrentKeyplane:v4];
  v24 = MEMORY[0x1E69DD250];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __47__TUIKeyplaneView_resetLayoutAndApplyKeyplane___block_invoke;
  v29 = &unk_1E72D85E0;
  v30 = self;
  v31 = v4;
  v25 = v4;
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

- (void)compareKeyplane:(id)a3 toKeyplane:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(TUIKeyplaneView *)self deactivateKeys];
  if (!v6 || [v6 needsResetFromKeyplane:v7])
  {
    if (([v7 supportsSplitStyle] & 1) != 0 || (-[TUIKeyplaneView currentKeyplane](self, "currentKeyplane"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "supportsSplitStyle"), v8, v9))
    {
      if (([v6 hasSimilarLayoutToKeyplane:v7] & 1) == 0)
      {
        v10 = [(TUIKeyplaneView *)self splitSpacing];
        [v10 setActive:0];

        [(TUIKeyplaneView *)self setSplitSpacing:0];
        v11 = [(TUIKeyplaneView *)self rightSplitWidth];
        [v11 setActive:0];

        [(TUIKeyplaneView *)self setRightSplitWidth:0];
        v12 = [(TUIKeyplaneView *)self leftSplitWidth];
        [v12 setActive:0];

        [(TUIKeyplaneView *)self setLeftSplitWidth:0];
        v13 = [(TUIKeyplaneView *)self keySizeSpacer];
        [v13 setActive:0];

        [(TUIKeyplaneView *)self setKeySizeSpacer:0];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v14 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
        v15 = [v14 allValues];

        v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
                objc_enumerationMutation(v15);
              }

              [(TUIKeyplaneView *)self removeLayoutGuide:*(*(&v21 + 1) + 8 * v19++)];
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v17);
        }

        v20 = [(TUIKeyplaneView *)self splitTransitionLayoutGuides];
        [v20 removeAllObjects];
      }
    }

    [(TUIKeyplaneView *)self resetLayoutAndApplyKeyplane:v7];
  }
}

- (void)prepareForDisplay
{
  v3 = [(TUIKeyplaneView *)self displayedType];
  v4 = [(UIKBTree *)self->_keyplane unhashedName];
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {

    [(TUIKeyplaneView *)self createContentViewsIfNeeded];
  }
}

- (void)removeFromSuperview
{
  [(TUIKeyplaneView *)self deactivateKeys];
  v3 = [(TUIKeyplaneView *)self biasEscapeButton];
  [v3 removeFromSuperview];

  [(TUIKeyplaneView *)self setBiasEscapeButton:0];
  v4.receiver = self;
  v4.super_class = TUIKeyplaneView;
  [(TUIKeyplaneView *)&v4 removeFromSuperview];
}

- (id)keyplaneFromTree:(id)a3 size:(CGSize)a4 controlKeyType:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [[TUIKeyplaneView alloc] initWithFrame:v7 keyplane:0.0, 0.0, width, height];

  return v8;
}

- (TUIKeyplaneView)initWithFrame:(CGRect)a3 keyplane:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = TUIKeyplaneView;
  v11 = [(TUIKeyplaneView *)&v23 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storedKeyViews = v11->_storedKeyViews;
    v11->_storedKeyViews = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storedVariantViews = v11->_storedVariantViews;
    v11->_storedVariantViews = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    delayedDeactivationKeys = v11->_delayedDeactivationKeys;
    v11->_delayedDeactivationKeys = v16;

    objc_storeStrong(&v11->_keyplane, a4);
    v18 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
    v19 = [v18 preferencesActions];
    v11->_currentHandBias = [v19 handBias];

    v11->_isCurrentlySplit = [MEMORY[0x1E69DCBE0] isSplit];
    v20 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
    v21 = [v20 preferencesActions];
    v11->_isGestureKeyplane = [v21 BOOLForPreferenceKey:*MEMORY[0x1E69DDE60]];

    v11->_dismissingKeyboardMenu = 0;
    v11->_keyBoundsChangeCount = 0;
    [(TUIKeyplaneView *)v11 setUserInteractionEnabled:0];
  }

  return v11;
}

+ (Class)selectorViewClassForKey:(id)a3 forRenderingContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 isColorAdaptiveNonLinearCarplayKeyboard] & 1) == 0)
  {
    v7 = [v5 backingTree];
    [v7 interactionType];
  }

  v8 = objc_opt_class();

  return v8;
}

+ (CGSize)keyplaneSizeForLayout:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  [v6 keyboardScreenReferenceSize];
  v8 = [TUIKeyplane layoutClassFromScreenDimensions:?];
  v9 = MEMORY[0x193AE8220](v7);

  [TUIKeyplane sizeFromScreenTraits:v6 layout:v9 layoutClass:v8];
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
    v3 = [(TUIKeyplaneView *)self keyRowViews];
    v4 = [v3 count];

    if (v4)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__TUIKeyplaneView_Testing__updateTreeForAutomation__block_invoke;
      v10[3] = &unk_1E72D83A0;
      v10[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
      v5 = [(UIKBTree *)self->_keyplane keys];
      v6 = [v5 count];
      if (v6)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          v9 = [v5 objectAtIndex:i];
          [(TUIKeyplaneView *)self updateFrameForKey:v9];
        }
      }
    }
  }
}

- (void)generateFactoryForKeyplane:(id)a3 landscape:(BOOL)a4
{
  v4 = a4;
  v29 = a3;
  [(TUIKeyplaneView *)self setStandardKeyInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v6 = [v29 name];
  v7 = [TUIKeyplane layoutClassFromKeyplaneName:v6];

  if (self->_screenTraits)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 68;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = MEMORY[0x1E69DCB68];
  v11 = [(TUIKeyplaneView *)self window];
  v12 = [v11 screen];
  v13 = [v10 traitsWithScreen:v12 orientation:1];
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

    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = 65;
  if (v4)
  {
LABEL_11:
    v15 = MEMORY[0x1E69DCB68];
    v16 = [(TUIKeyplaneView *)self window];
    v17 = [v16 screen];
    v18 = [v15 traitsWithScreen:v17 orientation:4];
    v19 = self->_screenTraits;
    self->_screenTraits = v18;
  }

LABEL_12:
  v20 = [v29 visualStyling] & 0xFFFFFFFFFFFFFF00;
  [v29 setVisualStyling:v9 | v20];
  v21 = MEMORY[0x1E69DCB60];
  v22 = [MEMORY[0x1E69DCB48] defaultConfig];
  v23 = [v21 renderingContextForRenderConfig:v22];
  renderingContext = self->_renderingContext;
  self->_renderingContext = v23;

  v25 = [MEMORY[0x1E69DCB50] factoryForVisualStyle:v9 | v20 renderingContext:self->_renderingContext];
  v26 = [(UIKBScreenTraits *)self->_screenTraits screen];
  [v26 scale];
  [v25 setScale:?];

  [v25 setStretchFactor:{1.0, 1.0}];
  v27 = [v29 layoutName];
  LODWORD(v20) = [v27 isEqualToString:@"Thai-24-Key"];

  [v25 setAllowsPaddles:v20 ^ 1];
  [v25 setDynamicFactory:!v4];
  factory = self->_factory;
  self->_factory = v25;
}

- (void)updateToSpecifiedSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TUIKeyplaneView *)self sizeRatioConstraint];
  [v6 setActive:0];

  v7 = [(TUIKeyplaneView *)self heightConstraint];
  [v7 setActive:0];

  v8 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  [v8 setActive:0];

  v9 = [(TUIKeyplaneView *)self keyboardContentView];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:height];
  [(TUIKeyplaneView *)self setHeightConstraint:v11];

  v12 = [(TUIKeyplaneView *)self keyboardContentView];
  v13 = [v12 widthAnchor];
  v14 = [v13 constraintEqualToConstant:width];
  [(TUIKeyplaneView *)self setPreferredWidthConstraint:v14];

  v15 = [(TUIKeyplaneView *)self heightConstraint];
  [v15 setActive:1];

  v16 = [(TUIKeyplaneView *)self preferredWidthConstraint];
  [v16 setActive:1];

  [(TUIKeyplaneView *)self setPreferredSize:width, height];
}

- (void)updateVariantSelectorFramesForKey:(id)a3
{
  v48 = a3;
  v4 = [(TUIKeyplaneView *)self viewForBaseKey:?];
  v5 = [v4 popupMenu];

  if (!v5)
  {
    v6 = [(TUIKeyplaneView *)self cacheIdentifierForKey:v48 withState:16];
    [v48 setState:16];
    v7 = [TUIKey keyFromKBTree:v48];
    v8 = [(TUIKeyplaneView *)self keyplane];
    [v7 setKeyplane:v8];

    v9 = [(TUIKeyplaneView *)self currentKeyplane];
    v10 = [(TUIKeyplaneView *)self currentKeyplane];
    [v7 setStyle:{objc_msgSend(v9, "keyStyleForLayoutClass:", objc_msgSend(v10, "layoutClass"))}];

    v11 = [(TUIKeyplaneView *)self variantViewForKey:v7 cacheID:v6];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 superview];

      if (!v13)
      {
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        v14 = [(TUIKeyplaneView *)self keyboardContentView];
        [v14 addSubview:v12];

        [v12 updateVariantsIfNeededForKey:v48];
        [(TUIKeyplaneView *)self presentSelectorView:v12 fromBaseKey:v4];
        v15 = [(TUIKeyplaneView *)self keyboardContentView];
        [v15 layoutIfNeeded];
      }

      v16 = [v12 cellViewsInSubtreeOrder];
      v17 = [v16 count];
      v18 = [v48 subtrees];
      v19 = [v18 count];

      if (v17 == v19)
      {
        v20 = [v48 subtrees];
        v21 = [v20 count];

        if (v21)
        {
          v22 = 0;
          do
          {
            v23 = [v16 objectAtIndex:v22];
            v24 = [(TUIKeyplaneView *)self keyboardContentView];
            [v23 frame];
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v33 = [v23 superview];
            [v24 convertRect:v33 fromView:{v26, v28, v30, v32}];
            v35 = v34;
            v37 = v36;
            v39 = v38;
            v41 = v40;

            v42 = [v48 subtrees];
            v43 = [v42 objectAtIndex:v22];
            [v43 setFrame:{v35, v37, v39, v41}];

            v44 = [v48 subtrees];
            v45 = [v44 objectAtIndex:v22];
            [v45 setPaddedFrame:{v35, v37, v39, v41}];

            ++v22;
            v46 = [v48 subtrees];
            v47 = [v46 count];
          }

          while (v22 < v47);
        }
      }

      [v12 removeFromSuperview];
    }
  }
}

- (double)totalSplitSizeForRow:(unint64_t)a3
{
  v4 = [(TUIKeyplaneView *)self currentKeyplane];
  v5 = [v4 rowSizes];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (BOOL)_shouldUseUnifiedKeyView:(id)a3
{
  v3 = a3;
  v4 = [v3 displayType] == 8 || objc_msgSend(v3, "interactionType") == 9 || objc_msgSend(v3, "interactionType") == 15 || objc_msgSend(v3, "interactionType") == 13;

  return v4;
}

- (id)cacheIdentifierForKey:(id)a3 withState:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v6 dynamicCacheName];
  }

  else
  {
    [v6 name];
  }
  v7 = ;
  v8 = [v6 overrideDisplayString];
  if (v8)
  {
    v9 = v8;
    v10 = [(TUIKeyplaneView *)self _shouldUseUnifiedKeyView:v6];

    if (!v10)
    {
      v11 = [v6 name];
      v12 = [v6 overrideDisplayString];
      v13 = [v11 stringByAppendingFormat:@"_%@", v12];

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

- (id)keyViewForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 backingTree];
  v6 = [v4 backingTree];
  v7 = -[TUIKeyplaneView cacheIdentifierForKey:withState:](self, "cacheIdentifierForKey:withState:", v5, [v6 state]);

  v8 = [(TUIKeyplaneView *)self storedKeyViews];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v10 = [(TUIKeyplaneView *)self keyplane];
    [v4 setKeyplane:v10];

    [v4 setStyle:{-[TUIKeyplaneView keyLayoutStyle](self, "keyLayoutStyle")}];
    v9 = [objc_alloc(-[TUIKeyplaneView preferredKeyViewClass](self "preferredKeyViewClass"))];
    [v9 setLayoutDelegate:self];
    v11 = [(TUIKeyplaneView *)self storedKeyViews];
    [v11 setObject:v9 forKey:v7];
  }

  v12 = [(TUIKeyplaneView *)self factory];
  [v9 setFactory:v12];

  v13 = [(TUIKeyplaneView *)self keyplaneRenderConfig];
  [v9 setRenderConfig:v13];

  return v9;
}

+ (id)updateDynamicKeyplane:(id)a3 usingSize:(CGSize)a4 isLandscape:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 type] == 2)
  {
    v9 = [[TUIKeyplaneView alloc] initWithFrame:v8 keyplane:0.0, 0.0, width, height];
    [(TUIKeyplaneView *)v9 generateFactoryForKeyplane:v8 landscape:v5];
    [(TUIKeyplaneView *)v9 setKeyplaneForAutomation:v8];
    [(TUIKeyplaneView *)v9 updateToSpecifiedSize:width, height];
    [(TUIKeyplaneView *)v9 updateTreeForAutomation];
    v10 = v8;
  }

  else
  {
    v11 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 name];
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_18FFDC000, v11, OS_LOG_TYPE_ERROR, "Error: %@ is not a keyplane", &v14, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)updateDynamicKeyboard:(id)a3 usingSize:(CGSize)a4 isLandscape:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 type] == 2)
  {
    v9 = [TUIKeyplaneView updateDynamicKeyplane:v8 usingSize:v5 isLandscape:width, height];
  }

  else if ([v8 type] == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v8 subtrees];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 type] == 2)
          {
            if (!v13)
            {
              v13 = [[TUIKeyplaneView alloc] initWithFrame:v16 keyplane:0.0, 0.0, width, height];
            }

            [(TUIKeyplaneView *)v13 generateFactoryForKeyplane:v16 landscape:v5];
            [(TUIKeyplaneView *)v13 setKeyplaneForAutomation:v16];
            [(TUIKeyplaneView *)v13 updateToSpecifiedSize:width, height];
            [(TUIKeyplaneView *)v13 updateTreeForAutomation];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v9 = v8;
  }

  else
  {
    v17 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [v8 name];
      *buf = 138412290;
      v26 = v19;
      _os_log_error_impl(&dword_18FFDC000, v17, OS_LOG_TYPE_ERROR, "Error: %@ is not a keyboard", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)dynamicKeyboardForName:(id)a3 size:(CGSize)a4 isLandscape:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = +[TUIKeyboardLayoutFactory sharedKeyboardFactory];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dynamic-%@", v8];
  v11 = [v9 keyboardWithName:v10 inCache:0];

  if (v11 && [v11 type] == 1)
  {
    v23 = v11;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [v11 subtrees];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      v17 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          if ([v19 type] == 2)
          {
            if (!v16)
            {
              v16 = [[TUIKeyplaneView alloc] initWithFrame:v19 keyplane:0.0, 0.0, width, height];
              v20 = v19;

              v15 = v20;
            }

            [(TUIKeyplaneView *)v16 generateFactoryForKeyplane:v19 landscape:v5];
            [(TUIKeyplaneView *)v16 setKeyplaneForAutomation:v19];
            [(TUIKeyplaneView *)v16 updateToSpecifiedSize:width, height];
            [(TUIKeyplaneView *)v16 updateTreeForAutomation];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v11 = v23;
    v21 = v23;
  }

  else
  {
    v16 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(&v16->super.super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_error_impl(&dword_18FFDC000, &v16->super.super.super, OS_LOG_TYPE_ERROR, "Error: Specified name %@ did not return a keyboard", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

+ (id)keyplaneViewForLayout:(id)a3 size:(CGSize)a4 isLandscape:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (([v8 dynamicLayout] & 1) == 0)
  {
    v10 = _TUIKeyplaneViewLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = [v8 name];
    v14 = 138412290;
    v15 = v11;
    v12 = "Error: %@ is not a dynamic layout";
LABEL_12:
    _os_log_error_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_ERROR, v12, &v14, 0xCu);

    goto LABEL_7;
  }

  if ([v8 type] == 2)
  {
    v9 = [[TUIKeyplaneView alloc] initWithFrame:v8 keyplane:0.0, 0.0, width, height];
    [(TUIKeyplaneView *)v9 generateFactoryForKeyplane:v8 landscape:v5];
    [(TUIKeyplaneView *)v9 setKeyplaneForAutomation:v8];
    [(TUIKeyplaneView *)v9 updateToSpecifiedSize:width, height];
    [(TUIKeyplaneView *)v9 updateTreeForAutomation];
    goto LABEL_8;
  }

  v10 = _TUIKeyplaneViewLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v8 name];
    v14 = 138412290;
    v15 = v11;
    v12 = "Error: %@ is not a keyplane";
    goto LABEL_12;
  }

LABEL_7:

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)keyplaneViewForKeyboard:(id)a3 size:(CGSize)a4 isLandscape:(BOOL)a5 displayKeyplane:(unint64_t)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = +[TUIKeyboardLayoutFactory sharedKeyboardFactory];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dynamic-%@", v10];
  v13 = [v11 keyboardWithName:v12 inCache:0];

  if (v13)
  {
    if ([v13 type] == 2)
    {
      v14 = [TUIKeyplaneView keyplaneViewForLayout:v13 size:v7 isLandscape:width, height];
    }

    else
    {
      v16 = [v13 subtrees];
      v17 = [v16 count] - 1;

      if (v17 < a6)
      {
        v18 = [v13 subtrees];
        a6 = [v18 count] - 1;
      }

      v19 = [v13 subtrees];
      v20 = [v19 count];

      v14 = 0;
      if (v20)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = [v13 subtrees];
          v23 = [v22 objectAtIndex:v21];

          if ([v23 type] == 2)
          {
            if (!v14)
            {
              v14 = [[TUIKeyplaneView alloc] initWithFrame:v23 keyplane:0.0, 0.0, width, height];
              v24 = v23;

              v20 = v24;
            }

            if (a6 == v21)
            {
              v25 = v23;

              v20 = v25;
            }

            [(TUIKeyplaneView *)v14 generateFactoryForKeyplane:v23 landscape:v7];
            [(TUIKeyplaneView *)v14 setKeyplaneForAutomation:v23];
            [(TUIKeyplaneView *)v14 updateToSpecifiedSize:width, height];
            [(TUIKeyplaneView *)v14 updateTreeForAutomation];
          }

          ++v21;
          v26 = [v13 subtrees];
          v27 = [v26 count];
        }

        while (v21 < v27);
      }

      [(TUIKeyplaneView *)v14 setKeyplane:v20];
      [(TUIKeyplaneView *)v14 updateTreeForAutomation];
    }
  }

  else
  {
    v15 = _TUIKeyplaneViewLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_error_impl(&dword_18FFDC000, v15, OS_LOG_TYPE_ERROR, "Error: Specified name %@ did not return a keyboard", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

@end