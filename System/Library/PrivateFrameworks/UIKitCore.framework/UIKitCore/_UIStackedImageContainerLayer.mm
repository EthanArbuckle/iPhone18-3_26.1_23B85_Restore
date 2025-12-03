@interface _UIStackedImageContainerLayer
+ (CGSize)_scaledSizeForSize:(CGSize)size focusSizeIncrease:(double)increase selectionStyle:(int64_t)style;
+ (id)_layerStackObservingKeys;
- (BOOL)_aspectMatchesLayerStack;
- (BOOL)_effectiveAdjustMotionForSize;
- (BOOL)_hasPotentialSolariumImpact;
- (BOOL)_isEligibleFor3DTransforms;
- (BOOL)_radiosityEnabled;
- (BOOL)_shouldHaveNonOpaqueShadowFromLayerStack;
- (CATransform3D)_fixedFrameImageLayersTransformForDepth:(SEL)depth fudgeFactor:(double)factor;
- (CATransform3D)_imageLayersScaleTransformForCurrentState;
- (CATransform3D)_perspectiveTransformForCurrentState;
- (CATransform3D)_rotationTransformForCurrentFocusDirection;
- (CATransform3D)_scaleTransform3DForCurrentState;
- (CGImage)_cgImageForLayeredImage:(id)image;
- (CGPoint)_layerStackToDisplayScaleFactor;
- (CGPoint)focusDirection;
- (CGRect)_currentStackLayoutBounds;
- (CGRect)_cursorBounds;
- (CGRect)_displayFrameForModelFrame:(CGRect)frame;
- (CGRect)_expandedStackLayoutBounds;
- (CGRect)_positionAndSizeForLayerImage:(id)image;
- (CGSize)_focusCursorInsetSizeForSize:(CGSize)size;
- (CGSize)_roundedBoundsSize;
- (CGSize)_scaledSizeForCurrentState;
- (CGVector)_imageLayersScaleAmountsForCurrentState;
- (CGVector)_scaleAmountsForCurrentState;
- (_UIStackedImageContainerLayer)init;
- (double)_deepestParallaxDepthWithOverlayDepth:(BOOL)depth;
- (double)_effectiveScaleSizeIncrease;
- (double)_focusedScaleFactorForCurrentBounds;
- (double)_focusedShadowRadius;
- (double)_getShadowOpacity;
- (double)_idleModeFocusSizeOffset;
- (double)_parallaxDepthAtIndex:(int64_t)index;
- (double)_unfocusedShadowRadius;
- (id)_contentLayers;
- (id)_layerAboveImageLayers;
- (id)_layerBelowTitles;
- (id)_layerForBackgroundEffects;
- (id)_layerForInnerParallaxTransform;
- (id)_preferredLayoutDelegateForLayer:(id)layer;
- (id)_randomImage;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)maskedOverlayView;
- (id)unmaskedOverlayView;
- (id)viewForBackgroundEffects;
- (unint64_t)_primaryControlStateForState:(unint64_t)state;
- (void)_applyFocusDirectionTransformWithAnimationCoordinator:(id)coordinator;
- (void)_layoutRadiosityLayer;
- (void)_layoutSublayer:(id)sublayer inSuperlayerWithBounds:(CGRect)bounds layoutPosition:(int64_t)position;
- (void)_layoutSublayer:(id)sublayer withBounds:(CGRect)bounds position:(CGPoint)position;
- (void)_removeLayerFromSuperlayer:(id)superlayer;
- (void)_resetAnimatingToNormalState;
- (void)_setControlState:(unint64_t)state animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator completion:(id)completion;
- (void)_setDefaultParallaxLayerDepths;
- (void)_setFlatImage:(id)image;
- (void)_setFocusDirection:(CGPoint)direction duration:(double)duration;
- (void)_setIdleModeFocusSizeOffset:(double)offset;
- (void)_setImageStackContentsGravity:(id)gravity;
- (void)_setLayerStack:(id)stack;
- (void)_setLayerStackInflated:(BOOL)inflated seed:(unint64_t)seed;
- (void)_setOverlayLayer:(id)layer;
- (void)_setParallaxImages:(id)images;
- (void)_setParallaxLayerDepths:(id)depths;
- (void)_setSelectionStyle:(int64_t)style;
- (void)_setUnmaskedOverlayLayer:(id)layer;
- (void)_setupFrontmostTransformLayers;
- (void)_showImageLayers;
- (void)_updateContentProviderLayerFocusDirection;
- (void)_updateCornerRadiusFromConfig;
- (void)_updateFocusKeylineStrokeScale;
- (void)_updateFocusKeylineStrokeTranslation:(CGPoint)translation;
- (void)_updateFullBleedImageLayers;
- (void)_updateImageLayerFilterChains;
- (void)_updateImageLayerFilterValues;
- (void)_updateImageLayersContainerMaskingAndBounds;
- (void)_updateInnerParallaxTransform;
- (void)_updateLayer:(id)layer isHidden:(BOOL)hidden;
- (void)_updateLayerForSelectionWithAnimationCoordinator:(id)coordinator;
- (void)_updateMarkerLayerIfPresent;
- (void)_updateMaskScaleTransform;
- (void)_updateNonOpaqueShadowStateFromLayerStack;
- (void)_updateNormalImageLayers;
- (void)_updateOverlayContainerLayerHierarchy:(BOOL)hierarchy;
- (void)_updateOverlayLayerTransforms;
- (void)_updateOverlayLayout;
- (void)_updatePerspective;
- (void)_updateRadiosityFromLayerStack;
- (void)_updateRotationAndTranslation:(id)translation;
- (void)_updateShadowBounds;
- (void)_updateShadowLayerVisibility;
- (void)_updateShadowPositionWithOffset:(CGPoint)offset;
- (void)_updateShadowWithCATransaction:(BOOL)transaction;
- (void)_updateSingleLayerNoMaskFromLayerStack;
- (void)_updateSpecularLayerVisibility;
- (void)_updateSpecularTransform;
- (void)_wrapImageLayerHierarchyInViews;
- (void)_wrapLayerInView:(id)view;
- (void)dealloc;
- (void)layoutSublayers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAllAnimations;
- (void)setBounds:(CGRect)bounds;
- (void)setConfiguration:(id)configuration;
- (void)setContentsScale:(double)scale;
- (void)setLayerStack:(id)stack;
- (void)setMaskedOverlayView:(id)view;
- (void)setRasterizationScale:(double)scale;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator;
- (void)setUnmaskedOverlayView:(id)view;
@end

@implementation _UIStackedImageContainerLayer

- (_UIStackedImageContainerLayer)init
{
  v5.receiver = self;
  v5.super_class = _UIStackedImageContainerLayer;
  v2 = [(_UIStackedImageContainerLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIStackedImageContainerLayer *)v2 setDelegate:v2];
  }

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_configuration)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    _layerStackObservingKeys = [objc_opt_class() _layerStackObservingKeys];
    v4 = [_layerStackObservingKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(_layerStackObservingKeys);
          }

          [(_UIStackedImageConfiguration *)self->_configuration removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:@"__layerStackObservingContext"];
        }

        while (v5 != v7);
        v5 = [_layerStackObservingKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8.receiver = self;
  v8.super_class = _UIStackedImageContainerLayer;
  [(_UIStackedImageContainerLayer *)&v8 dealloc];
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  v8 = keyCopy;
  if (layerCopy == self && [keyCopy isEqualToString:@"sublayers"])
  {
    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_10;
  }

  if (self->_shadowLayer != layerCopy)
  {
    goto LABEL_5;
  }

  if (self->_nonOpaqueShadow)
  {
    if (![v8 hasPrefix:@"shadow"] || (objc_msgSend(MEMORY[0x1E6979318], "animationWithKeyPath:", v8), (null = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_5:
      if (_CASupportsAnimationForKey(v8))
      {
        null = [MEMORY[0x1E6979318] animationWithKeyPath:v8];
        v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
        [null setTimingFunction:v10];
      }

      else
      {
        null = 0;
      }
    }
  }

  else
  {
    if (-[_UIStackedImageConfiguration useSeparateUnfocusedShadowImage](self->_configuration, "useSeparateUnfocusedShadowImage") || ![v8 isEqualToString:@"contentsScale"])
    {
      goto LABEL_5;
    }

    null = [MEMORY[0x1E6979318] animationWithKeyPath:v8];
    [(CALayer *)self->_shadowLayer contentsScale];
    v14 = v13;
    [(_UIStackedImageContainerLayer *)self contentsScale];
    if (v14 <= v15)
    {
      LODWORD(v15) = 0.75;
      v16 = 0.0;
      LODWORD(v17) = 0.5;
      LODWORD(v18) = 0.5;
    }

    else
    {
      v15 = 0.0;
      LODWORD(v16) = 0.75;
      LODWORD(v17) = 0.5;
      LODWORD(v18) = 1.0;
    }

    v19 = [MEMORY[0x1E69793D0] functionWithControlPoints:v15 :v16 :v17 :v18];
    [null setTimingFunction:v19];

    if (!null)
    {
      goto LABEL_5;
    }
  }

  [null setFillMode:*MEMORY[0x1E69797D8]];
  if (([(_UIStackedImageContainerLayer *)layerCopy hasBeenCommitted]& 1) == 0)
  {
    v11 = [(_UIStackedImageContainerLayer *)layerCopy valueForKey:v8];
    [null setFromValue:v11];
  }

LABEL_10:

  return null;
}

- (void)removeAllAnimations
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _UIStackedImageContainerLayer;
  [(_UIStackedImageContainerLayer *)&v13 removeAllAnimations];
  [(CALayer *)self->_imageLayersContainer removeAllAnimations];
  [(CATransformLayer *)self->_imageBackgroundEffectScaleTransformLayer removeAllAnimations];
  [(CALayer *)self->_imagePrePerspectiveRotationBackgroundEffectContainer removeAllAnimations];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_imageLayers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * i) removeAllAnimations];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  [(CALayer *)self->_flatLayer removeAllAnimations];
  [(CALayer *)self->_flatMaskLayer removeAllAnimations];
  [(CALayer *)self->_maskLayer removeAllAnimations];
  [(CALayer *)self->_radiosityLayer removeAllAnimations];
  [(CALayer *)self->_selectedPlaceholderLayer removeAllAnimations];
  [(CALayer *)self->_shadowLayer removeAllAnimations];
  [(CALayer *)self->_unfocusedShadowLayer removeAllAnimations];
  [(_UIFocusSpecularHighlightLayer *)self->_specularLayer removeAllAnimations];
  [(CALayer *)self->_cursorLayer removeAllAnimations];
  [(CALayer *)self->_cursorLayerContainer removeAllAnimations];
  [(CALayer *)self->_focusKeylineStrokeLayer removeAllAnimations];
  [(CALayer *)self->_overlayLayer removeAllAnimations];
  [(CALayer *)self->_overlayContainerLayer removeAllAnimations];
  [(CALayer *)self->_unmaskedOverlayLayer removeAllAnimations];
  [(CALayer *)self->_unmaskedOverlayContainerLayer removeAllAnimations];
  [(CATransformLayer *)self->_imagePrePerspectiveRotationParallaxTransformLayer removeAllAnimations];
  [(CATransformLayer *)self->_imagePerspectiveTransformLayer removeAllAnimations];
  [(CATransformLayer *)self->_imageRotationTransformLayer removeAllAnimations];
  imagePostPerspectiveRotationBackgroundEffectContainer = self->_imagePostPerspectiveRotationBackgroundEffectContainer;
  if (imagePostPerspectiveRotationBackgroundEffectContainer)
  {
    [(CALayer *)imagePostPerspectiveRotationBackgroundEffectContainer removeAllAnimations];
  }

  [(CATransformLayer *)self->_imagePostPerspectiveRotationParallaxTransformLayer removeAllAnimations];
  [(CATransformLayer *)self->_maskPerspectiveTransformLayer removeAllAnimations];
  [(CATransformLayer *)self->_maskRotationTransformLayer removeAllAnimations];
  [(CATransformLayer *)self->_unmaskedOverlayPerspectiveTransformLayer removeAllAnimations];
  [(CATransformLayer *)self->_unmaskedOverlayRotationTransformLayer removeAllAnimations];
  [(CATransformLayer *)self->_cursorRotationTransformLayer removeAllAnimations];
  [(CALayer *)self->_frontmostPerspectiveTransformLayer removeAllAnimations];
  [(CATransformLayer *)self->_frontmostRotationTransformLayer removeAllAnimations];
}

- (void)setContentsScale:(double)scale
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UIStackedImageContainerLayer;
  [(_UIStackedImageContainerLayer *)&v14 setContentsScale:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _contentLayers = [(_UIStackedImageContainerLayer *)self _contentLayers];
  v6 = [_contentLayers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(_contentLayers);
        }

        [*(*(&v10 + 1) + 8 * v9++) setContentsScale:scale];
      }

      while (v7 != v9);
      v7 = [_contentLayers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(_UIStackedImageContainerLayer *)self _updateShadowWithCATransaction:1];
}

- (void)setRasterizationScale:(double)scale
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UIStackedImageContainerLayer;
  [(_UIStackedImageContainerLayer *)&v14 setRasterizationScale:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _contentLayers = [(_UIStackedImageContainerLayer *)self _contentLayers];
  v6 = [_contentLayers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(_contentLayers);
        }

        [*(*(&v10 + 1) + 8 * v9++) setRasterizationScale:scale];
      }

      while (v7 != v9);
      v7 = [_contentLayers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(CALayer *)self->_shadowLayer setRasterizationScale:scale];
  [(CALayer *)self->_unfocusedShadowLayer setRasterizationScale:scale];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_UIStackedImageContainerLayer *)self bounds];
  v9 = v8;
  v11 = v10;
  v45.receiver = self;
  v45.super_class = _UIStackedImageContainerLayer;
  [(_UIStackedImageContainerLayer *)&v45 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    v13 = _UIInternalPreferenceUsesDefault(algn_1ED48B908, @"UISolariumStackedImageContainerDefaultRotationX", _UIInternalPreferenceUpdateDouble);
    v14 = *&qword_1ED48B910;
    if (v13)
    {
      v14 = 0.08;
    }

    v44 = v14;
    v15 = _UIInternalPreferenceUsesDefault(algn_1ED48B918, @"UISolariumStackedImageContainerDefaultRotationY", _UIInternalPreferenceUpdateDouble);
    v16 = *&qword_1ED48B920;
    if (v15)
    {
      v16 = 0.08;
    }

    v43 = v16;
    v17 = _UIInternalPreferenceUsesDefault(algn_1ED48B928, @"UISolariumStackedImageContainerDefaultTranslationX", _UIInternalPreferenceUpdateDouble);
    v18 = *&qword_1ED48B930;
    if (v17)
    {
      v18 = 8.0;
    }

    v42 = v18;
    v19 = _UIInternalPreferenceUsesDefault(algn_1ED48B938, @"UISolariumStackedImageContainerDefaultTranslationY", _UIInternalPreferenceUpdateDouble);
    v20 = *&qword_1ED48B940;
    if (v19)
    {
      v20 = 8.0;
    }

    v41 = v20;
    if (_UIInternalPreferenceUsesDefault(algn_1ED48B948, @"UISolariumStackedImageContainerDefaultMaxDepth", _UIInternalPreferenceUpdateDouble))
    {
      v21 = 32.0;
    }

    else
    {
      v21 = *&qword_1ED48B950;
    }

    v22 = 190.0;
    if (_UIInternalPreferenceUsesDefault(algn_1ED48B958, @"UISolariumStackedImageContainerModifyTransformMinWidth", _UIInternalPreferenceUpdateDouble))
    {
      v23 = 190.0;
    }

    else
    {
      v23 = *&qword_1ED48B960;
    }

    v24 = _UIInternalPreferenceUsesDefault(algn_1ED48B968, @"UISolariumStackedImageContainerModifyTransformMaxWidth", _UIInternalPreferenceUpdateDouble);
    v25 = *&qword_1ED48B970;
    if (v24)
    {
      v25 = 720.0;
    }

    v26 = fmax(fmin((width - v23) / (v25 - v23), 1.0), 0.0);
    if (!_UIInternalPreferenceUsesDefault(algn_1ED48B978, @"UISolariumStackedImageContainerModifyTransformMinHeight", _UIInternalPreferenceUpdateDouble))
    {
      v22 = *&qword_1ED48B980;
    }

    v27 = _UIInternalPreferenceUsesDefault(algn_1ED48B988, @"UISolariumStackedImageContainerModifyTransformMaxHeight", _UIInternalPreferenceUpdateDouble);
    v28 = *&qword_1ED48B990;
    if (v27)
    {
      v28 = 720.0;
    }

    v29 = fmax(fmin((height - v22) / (v28 - v22), 1.0), 0.0);
    if (v26 >= v29)
    {
      v30 = v26;
    }

    else
    {
      v30 = v29;
    }

    v31 = _UIInternalPreferenceUsesDefault(&unk_1ED48B8C8, @"UISolariumStackedImageContainerModifyRotationStrength", _UIInternalPreferenceUpdateDouble);
    v32 = *&qword_1ED48B8D0 + -1.0;
    if (v31)
    {
      v32 = -0.875;
    }

    v33 = v26 * v32 + 1.0;
    v34 = v32 * v29 + 1.0;
    v35 = _UIInternalPreferenceUsesDefault(algn_1ED48B8D8, @"UISolariumStackedImageContainerModifyTranslationStrength", _UIInternalPreferenceUpdateDouble);
    v36 = *&qword_1ED48B8E0 + -1.0;
    if (v35)
    {
      v36 = 0.4;
    }

    v37 = v26 * v36 + 1.0;
    v38 = v29 * v36 + 1.0;
    v39 = _UIInternalPreferenceUsesDefault(algn_1ED48B8E8, @"UISolariumStackedImageContainerModifyMaxDepthStrength", _UIInternalPreferenceUpdateDouble);
    v40 = *&qword_1ED48B8F0 + -1.0;
    if (v39)
    {
      v40 = 0.5;
    }

    self->_translationOffset.x = v42 * v37;
    self->_translationOffset.y = v41 * v38;
    self->_rotationAmount.x = v44 * v33;
    self->_rotationAmount.y = v43 * v34;
    self->_maximumParallaxDepth = v21 * (v30 * v40 + 1.0);
    [(_UIStackedImageContainerLayer *)self _setDefaultParallaxLayerDepths];
    [(_UIStackedImageContainerLayer *)self layoutBelowIfNeeded];
    [(_UIStackedImageContainerLayer *)self _updateNonOpaqueShadowStateFromLayerStack];
  }
}

- (void)_layoutSublayer:(id)sublayer inSuperlayerWithBounds:(CGRect)bounds layoutPosition:(int64_t)position
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  sublayerCopy = sublayer;
  superlayer = [sublayerCopy superlayer];
  [superlayer bounds];
  v35 = v12;
  v36 = v13;
  v15 = v14;
  v17 = v16;

  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  v20 = x + width * 0.5;
  v21 = y + height * 0.5;
  superlayer2 = [sublayerCopy superlayer];
  if (superlayer2)
  {
    v33 = v15;
    v34 = v21;
    v23 = v17;
    v24 = height;
    v25 = width;
    v26 = v18;
    v27 = v20;
    v28 = v19;
    v29 = *MEMORY[0x1E695F060];
    v30 = *(MEMORY[0x1E695F060] + 8);

    v32 = v36 == v29;
    v18 = v26;
    width = v25;
    height = v24;
    v31 = v23;
    v21 = v34;
    v32 = v32 && v31 == v30;
    v19 = v28;
    v20 = v27;
    if (!v32)
    {
      v20 = v35 + v36 * 0.5;
      if (position == 1)
      {
        v21 = v33 + v31 * 0.5 + (v31 - v24) * -0.5;
      }

      else
      {
        v21 = v33 + v31 * 0.5;
      }
    }
  }

  [(_UIStackedImageContainerLayer *)self _layoutSublayer:sublayerCopy withBounds:v18 position:v19, width, height, v20, v21];
}

- (void)_layoutSublayer:(id)sublayer withBounds:(CGRect)bounds position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v9 = bounds.origin.y;
  v10 = bounds.origin.x;
  sublayerCopy = sublayer;
  delegate = [sublayerCopy delegate];
  v13 = [(_UIStackedImageContainerLayer *)self _preferredLayoutDelegateForLayer:sublayerCopy];
  [sublayerCopy setDelegate:v13];

  if (_IsKindOfUIView(delegate))
  {
    [delegate setBounds:{v10, v9, width, height}];
    [delegate setCenter:{x, y}];
  }

  else
  {
    [sublayerCopy setBounds:{v10, v9, width, height}];
    [sublayerCopy setPosition:{x, y}];
  }

  [sublayerCopy setDelegate:delegate];
}

- (void)layoutSublayers
{
  v51.receiver = self;
  v51.super_class = _UIStackedImageContainerLayer;
  [(_UIStackedImageContainerLayer *)&v51 layoutSublayers];
  [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
  v7 = v6;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = fmax(vabdd_f64(self->_lastLayoutSize.height, v5), vabdd_f64(self->_lastLayoutSize.width, v4));
  selectionStyle = self->_selectionStyle;
  if (v11 < 1.0 && selectionStyle == self->_lastLayoutSelectionStyle)
  {
    if (![(_UIStackedImageContainerLayer *)self _radiosityEnabled])
    {
      goto LABEL_26;
    }
  }

  else
  {
    v50 = v11 >= 1.0;
    self->_lastLayoutSelectionStyle = selectionStyle;
    self->_lastLayoutSize.width = v4;
    self->_lastLayoutSize.height = v5;
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_imageLayersContainer inSuperlayerWithBounds:0 layoutPosition:v7, v3, v4, v5];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_imageBackgroundEffectScaleTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    sublayers = [(CATransformLayer *)self->_imageBackgroundEffectScaleTransformLayer sublayers];
    firstObject = [sublayers firstObject];

    if (firstObject && firstObject != self->_imagePrePerspectiveRotationBackgroundEffectContainer)
    {
      [(_UIStackedImageContainerLayer *)self _layoutSublayer:firstObject inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    }

    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_imagePrePerspectiveRotationBackgroundEffectContainer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    if ([(NSArray *)self->_imageLayers count])
    {
      v15 = 0;
      v16 = *MEMORY[0x1E695EFF8];
      v17 = *(MEMORY[0x1E695EFF8] + 8);
      do
      {
        v18 = [(NSArray *)self->_parallaxImages objectAtIndexedSubscript:v15];
        v19 = [(NSArray *)self->_imageLayers objectAtIndexedSubscript:v15];
        delegate = [v19 delegate];
        v21 = [(_UIStackedImageContainerLayer *)self _preferredLayoutDelegateForLayer:v19];
        [v19 setDelegate:v21];

        [(_UIStackedImageContainerLayer *)self _positionAndSizeForLayerImage:v18];
        v23 = v22;
        v25 = v24;
        [v19 setBounds:{v16, v17}];
        [v19 setPosition:{v23, v25}];
        [v19 setDelegate:delegate];

        ++v15;
      }

      while (v15 < [(NSArray *)self->_imageLayers count]);
    }

    if (self->_selectionStyle == 3)
    {
      [(_UIStackedImageContainerLayer *)self _expandedStackLayoutBounds];
      x = v26;
      y = v28;
      width = v30;
      height = v32;
      v34 = 1;
      v35 = v7;
      v36 = v8;
      v37 = v9;
      v38 = v10;
    }

    else
    {
      v39 = *MEMORY[0x1E695EFF8];
      v40 = *(MEMORY[0x1E695EFF8] + 8);
      [(UINamedLayerStack *)self->_layerStack size];
      [(_UIStackedImageContainerLayer *)self _displayFrameForModelFrame:v39, v40, v41, v42];
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      v34 = 0;
      if (CGRectIsEmpty(v52))
      {
        height = v10;
        width = v9;
        y = v8;
        x = v7;
      }

      v35 = x;
      v36 = y;
      v37 = width;
      v38 = height;
    }

    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_flatMaskLayer inSuperlayerWithBounds:0 layoutPosition:v35, v36, v37, v38];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_flatLayer inSuperlayerWithBounds:v34 layoutPosition:x, y, width, height];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_imagePrePerspectiveRotationParallaxTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_imagePerspectiveTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_imageRotationTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    imagePostPerspectiveRotationBackgroundEffectContainer = self->_imagePostPerspectiveRotationBackgroundEffectContainer;
    if (imagePostPerspectiveRotationBackgroundEffectContainer)
    {
      [(_UIStackedImageContainerLayer *)self _layoutSublayer:imagePostPerspectiveRotationBackgroundEffectContainer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    }

    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_imagePostPerspectiveRotationParallaxTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_maskPerspectiveTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_maskRotationTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_unmaskedOverlayPerspectiveTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_unmaskedOverlayRotationTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_cursorLayerContainer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_cursorRotationTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    cursorLayer = self->_cursorLayer;
    [(_UIStackedImageContainerLayer *)self _cursorBounds];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:cursorLayer inSuperlayerWithBounds:0 layoutPosition:?];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_maskLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_selectedPlaceholderLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_focusKeylineStrokeLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_specularLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    if (!self->_animatingStateChange)
    {
      shadowLayer = self->_shadowLayer;
      v46 = [(_UIStackedImageContainerLayer *)self _preferredLayoutDelegateForLayer:shadowLayer];
      [(CALayer *)shadowLayer setDelegate:v46];

      unfocusedShadowLayer = self->_unfocusedShadowLayer;
      v48 = [(_UIStackedImageContainerLayer *)self _preferredLayoutDelegateForLayer:unfocusedShadowLayer];
      [(CALayer *)unfocusedShadowLayer setDelegate:v48];

      [(_UIStackedImageContainerLayer *)self _updateShadowBounds];
      [(_UIStackedImageContainerLayer *)self _updateShadowPositionWithOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      [(_UIStackedImageContainerLayer *)self _updateShadowWithCATransaction:1];
      [(CALayer *)self->_shadowLayer setDelegate:self];
      [(CALayer *)self->_unfocusedShadowLayer setDelegate:self];
    }

    [(_UIStackedImageContainerLayer *)self _updateOverlayLayout];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_frontmostPerspectiveTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_frontmostRotationTransformLayer inSuperlayerWithBounds:0 layoutPosition:v7, v8, v9, v10];
    if ([(_UIStackedImageContainerLayer *)self _isFocused])
    {
      [(_UIStackedImageContainerLayer *)self _updateLayerForSelection];
    }

    if (![(_UIStackedImageContainerLayer *)self _radiosityEnabled])
    {
      goto LABEL_26;
    }

    if (v50)
    {
LABEL_25:
      disableActions = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [(_UIStackedImageContainerLayer *)self _layoutRadiosityLayer];
      [MEMORY[0x1E6979518] setDisableActions:disableActions];
      self->_radiosityNeedsLayout = 0;
      goto LABEL_26;
    }
  }

  if (self->_radiosityNeedsLayout)
  {
    goto LABEL_25;
  }

LABEL_26:
  [(_UIStackedImageContainerLayer *)self _updateMarkerLayerIfPresent];
}

- (void)_updateOverlayLayout
{
  [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(_UIStackedImageContainerLayer *)self _isFocused]&& self->_selectionStyle == 1 && [(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth])
  {
    [(_UIStackedImageContainerLayer *)self _scaledSizeForCurrentState];
    v8 = v11;
    v10 = v12;
  }

  if (self->_overlayLayer)
  {
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_overlayContainerLayer inSuperlayerWithBounds:0 layoutPosition:v4, v6, v8, v10];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_overlayLayer inSuperlayerWithBounds:0 layoutPosition:v4, v6, v8, v10];
  }

  if (self->_unmaskedOverlayLayer)
  {
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:self->_unmaskedOverlayContainerLayer inSuperlayerWithBounds:0 layoutPosition:v4, v6, v8, v10];
    unmaskedOverlayLayer = self->_unmaskedOverlayLayer;

    [(_UIStackedImageContainerLayer *)self _layoutSublayer:unmaskedOverlayLayer inSuperlayerWithBounds:0 layoutPosition:v4, v6, v8, v10];
  }
}

- (void)_layoutRadiosityLayer
{
  [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contents = [(CALayer *)self->_radiosityLayer contents];

  if (!contents)
  {
    v12 = v8;
    v13 = v10;
    goto LABEL_8;
  }

  v12 = v8 * self->_radiosityImageScale.width;
  v13 = v10 * self->_radiosityImageScale.height;
  [(CALayer *)self->_radiosityLayer bounds];
  if (v12 != v15 || v13 != v14)
  {
    v4 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_8:
    [(CALayer *)self->_radiosityLayer setBounds:v4, v6, v12, v13];
    radiosityLayer = self->_radiosityLayer;
    [(_UIStackedImageConfiguration *)self->_configuration radiosityOffset];

    [(CALayer *)radiosityLayer setPosition:v8 * 0.5, v10 * 0.5 + v18];
  }
}

- (void)_setupFrontmostTransformLayers
{
  [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (!self->_frontmostPerspectiveTransformLayer)
  {
    v11 = objc_alloc_init(MEMORY[0x1E6979398]);
    frontmostPerspectiveTransformLayer = self->_frontmostPerspectiveTransformLayer;
    self->_frontmostPerspectiveTransformLayer = v11;

    [(CALayer *)self->_frontmostPerspectiveTransformLayer setDelegate:self];
    [(CALayer *)self->_frontmostPerspectiveTransformLayer setFrame:v4, v6, v8, v10];
    [(CALayer *)self->_frontmostPerspectiveTransformLayer setZPosition:50.0];
    unmaskedOverlayPerspectiveTransformLayer = self->_unmaskedOverlayPerspectiveTransformLayer;
    if (!unmaskedOverlayPerspectiveTransformLayer)
    {
      unmaskedOverlayPerspectiveTransformLayer = self->_imageLayersContainer;
    }

    [(_UIStackedImageContainerLayer *)self insertSublayer:self->_frontmostPerspectiveTransformLayer above:unmaskedOverlayPerspectiveTransformLayer];
  }

  if (!self->_frontmostRotationTransformLayer)
  {
    v14 = objc_alloc_init(MEMORY[0x1E6979530]);
    frontmostRotationTransformLayer = self->_frontmostRotationTransformLayer;
    self->_frontmostRotationTransformLayer = v14;

    [(CATransformLayer *)self->_frontmostRotationTransformLayer setDelegate:self];
    [(CATransformLayer *)self->_frontmostRotationTransformLayer setFrame:v4, v6, v8, v10];
    v16 = self->_frontmostPerspectiveTransformLayer;
    v17 = self->_frontmostRotationTransformLayer;

    [(CALayer *)v16 addSublayer:v17];
  }
}

- (CGRect)_cursorBounds
{
  [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  if (!CGRectIsEmpty(v22))
  {
    if (self->_selectionStyle == 1 && [(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth])
    {
      scale = self->_scale;
      v8 = 1.0;
    }

    else
    {
      v8 = self->_scale;
      scale = v8;
    }

    CGAffineTransformMakeScale(&v21, v8, scale);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v24 = CGRectApplyAffineTransform(v23, &v21);
    v9 = v24.origin.x;
    v10 = v24.origin.y;
    v11 = v24.size.width;
    v12 = v24.size.height;
    [(_UIStackedImageConfiguration *)self->_configuration focusCursorBorderWidth];
    v14 = v13 * -2.0;
    [(_UIStackedImageConfiguration *)self->_configuration focusCursorBorderWidth];
    v16 = v15 * -2.0;
    v25.origin.x = v9;
    v25.origin.y = v10;
    v25.size.width = v11;
    v25.size.height = v12;
    v26 = CGRectInset(v25, v14, v16);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_currentStackLayoutBounds
{
  [(_UIStackedImageContainerLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_selectionStyle == 3 && ![(_UIStackedImageContainerLayer *)self _isNormal])
  {
    [(_UIStackedImageContainerLayer *)self _expandedStackLayoutBounds];
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_expandedStackLayoutBounds
{
  [(_UIStackedImageContainerLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_selectionStyle == 3)
  {
    [(_UIStackedImageConfiguration *)self->_configuration expansionAmount];
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    v10 = v10 + v11;
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)_preferredLayoutDelegateForLayer:(id)layer
{
  layerCopy = layer;
  delegate = [layerCopy delegate];
  delegate2 = delegate;
  if (!delegate || delegate == self)
  {
    layoutDelegate = self->_layoutDelegate;
    if (layoutDelegate)
    {
      v8 = layoutDelegate;

      delegate2 = v8;
    }

    else
    {
      v9 = [_UIStackedImageLayerDelegate alloc];
      v10 = [(UIView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v11 = self->_layoutDelegate;
      self->_layoutDelegate = v10;

      v12 = self->_layoutDelegate;
      delegate2 = v12;
      if (!v12)
      {
        delegate2 = [layerCopy delegate];
      }
    }
  }

  return delegate2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (context != @"__layerStackObservingContext")
  {
    v18.receiver = self;
    v18.super_class = _UIStackedImageContainerLayer;
    [(_UIStackedImageContainerLayer *)&v18 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
    goto LABEL_9;
  }

  if ([pathCopy isEqualToString:@"selectionStyle"])
  {
    [(_UIStackedImageContainerLayer *)self _setSelectionStyle:[(_UIStackedImageConfiguration *)self->_configuration selectionStyle]];
    goto LABEL_9;
  }

  if (([v11 isEqualToString:@"cornerRadius"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"cornerRadii"))
  {
    [(_UIStackedImageContainerLayer *)self _updateCornerRadiusFromConfig];
LABEL_8:
    [(_UIStackedImageContainerLayer *)self _updateLayerForSelection];
    goto LABEL_9;
  }

  if ([v11 isEqualToString:@"radiosityStrength"])
  {
    if ([(_UIStackedImageContainerLayer *)self _radiosityEnabled]&& !self->_radiosityLayer)
    {
      [(_UIStackedImageContainerLayer *)self _updateRadiosityFromLayerStack];
    }

    radiosityLayer = self->_radiosityLayer;
    [(_UIStackedImageConfiguration *)self->_configuration radiosityStrength];
    *&v13 = v13;
    [(CALayer *)radiosityLayer setOpacity:v13];
  }

  else
  {
    if ([v11 isEqualToString:@"placeholderImage"])
    {
      [(_UIStackedImageContainerLayer *)self _setFlatImage:[(UINamedLayerStack *)self->_layerStack flattenedImage]];
      goto LABEL_9;
    }

    if ([v11 isEqualToString:@"allowsNonOpaqueShadow"])
    {
      [(_UIStackedImageContainerLayer *)self _updateNonOpaqueShadowStateFromLayerStack];
      goto LABEL_9;
    }

    if (([v11 isEqualToString:@"boostBrightness"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"hueShift"))
    {
      [(_UIStackedImageContainerLayer *)self _updateSingleLayerNoMaskFromLayerStack];
      goto LABEL_9;
    }

    if ([v11 isEqualToString:@"focusCursorEnabled"])
    {
      goto LABEL_8;
    }

    if (([v11 isEqualToString:@"specularHighlightHorizontalPositionSensitivity"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"specularHighlightVerticalPositionSensitivity"))
    {
      specularLayer = self->_specularLayer;
      [(_UIStackedImageConfiguration *)self->_configuration specularHighlightHorizontalPositionSensitivity];
      v16 = v15;
      [(_UIStackedImageConfiguration *)self->_configuration specularHighlightVerticalPositionSensitivity];
      [(_UIFocusSpecularHighlightLayer *)specularLayer setFocusSensitivity:v16, v17];
    }

    else if ([v11 isEqualToString:@"expansionAmount"])
    {
      [(_UIStackedImageContainerLayer *)self setNeedsLayout];
    }
  }

LABEL_9:
}

+ (id)_layerStackObservingKeys
{
  if (_MergedGlobals_24_0 != -1)
  {
    dispatch_once(&_MergedGlobals_24_0, &__block_literal_global_719);
  }

  v3 = qword_1EA994A90;

  return v3;
}

- (void)_updateCornerRadiusFromConfig
{
  if ([(_UIStackedImageConfiguration *)self->_configuration flatImageContainsCornerRadius])
  {
    flatImageContainsCornerRadius = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    flatImageContainsCornerRadius = [(UINamedLayerStack *)self->_layerStack flatImageContainsCornerRadius];
  }

  else
  {
    flatImageContainsCornerRadius = 0;
  }

  [(_UIStackedImageConfiguration *)self->_configuration cornerRadius];
  v5 = v4;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  configuration = self->_configuration;
  if (configuration)
  {
    [(_UIStackedImageConfiguration *)configuration cornerRadii];
  }

  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v27 = *(MEMORY[0x1E6979288] + 16);
  v28 = *MEMORY[0x1E6979288];
  v25 = *(MEMORY[0x1E6979288] + 48);
  v26 = *(MEMORY[0x1E6979288] + 32);
  v7 = v5;
  v8 = v5;
  v9 = v5;
  v10 = v5;
  v11 = v5;
  v12 = v5;
  v13 = v5;
  if ((CACornerRadiiEqualToRadii() & 1) == 0)
  {
    v7 = *(&v34 + 1);
    v5 = *&v34;
    v9 = *(&v35 + 1);
    v8 = *&v35;
    v11 = *(&v36 + 1);
    v10 = *&v36;
    v13 = *(&v37 + 1);
    v12 = *&v37;
  }

  [(_UIStackedImageConfiguration *)self->_configuration focusCursorBorderWidth];
  v29 = v14;
  if (flatImageContainsCornerRadius && self->_flatImage)
  {
    flatMaskLayer = self->_flatMaskLayer;
    v30 = v28;
    v31 = v27;
    v32 = v26;
    v33 = v25;
  }

  else
  {
    [(_UIStackedImageConfiguration *)self->_configuration isContinuousCornerRadiusEnabled];
    _setCornerCurveOnLayer(v16 != 0.0, self->_flatMaskLayer);
    flatMaskLayer = self->_flatMaskLayer;
    *&v30 = v5;
    *(&v30 + 1) = v7;
    *&v31 = v8;
    *(&v31 + 1) = v9;
    *&v32 = v10;
    *(&v32 + 1) = v11;
    *&v33 = v12;
    *(&v33 + 1) = v13;
  }

  [(CALayer *)flatMaskLayer setCornerRadii:&v30];
  *&v24 = v10 + v29 + v29;
  *(&v24 + 1) = v11 + v29 + v29;
  *&v23 = v12 + v29 + v29;
  *(&v23 + 1) = v13 + v29 + v29;
  _layerForBackgroundEffects = [(_UIStackedImageContainerLayer *)self _layerForBackgroundEffects];
  [(_UIStackedImageConfiguration *)self->_configuration isContinuousCornerRadiusEnabled];
  _setCornerCurveOnLayer(v18 != 0.0, _layerForBackgroundEffects);
  *&v30 = v5;
  *(&v30 + 1) = v7;
  *&v31 = v8;
  *(&v31 + 1) = v9;
  *&v32 = v10;
  *(&v32 + 1) = v11;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  [_layerForBackgroundEffects setCornerRadii:&v30];
  [(_UIStackedImageConfiguration *)self->_configuration isContinuousCornerRadiusEnabled];
  _setCornerCurveOnLayer(v19 != 0.0, self->_maskLayer);
  maskLayer = self->_maskLayer;
  *&v30 = v5;
  *(&v30 + 1) = v7;
  *&v31 = v8;
  *(&v31 + 1) = v9;
  *&v32 = v10;
  *(&v32 + 1) = v11;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  [(CALayer *)maskLayer setCornerRadii:&v30];
  [(_UIStackedImageConfiguration *)self->_configuration isContinuousCornerRadiusEnabled];
  _setCornerCurveOnLayer(v21 != 0.0, self->_cursorLayer);
  cursorLayer = self->_cursorLayer;
  v30 = v23;
  v31 = v24;
  *&v32 = v5 + v29 + v29;
  *(&v32 + 1) = v7 + v29 + v29;
  *&v33 = v8 + v29 + v29;
  *(&v33 + 1) = v9 + v29 + v29;
  [(CALayer *)cursorLayer setCornerRadii:&v30];
  [(_UIStackedImageContainerLayer *)self _updateMarkerLayerIfPresent];
}

- (void)setConfiguration:(id)configuration
{
  v143 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (![(_UIStackedImageConfiguration *)self->_configuration isEqual:configurationCopy])
  {
    [(_UIStackedImageContainerLayer *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(_UIStackedImageContainerLayer *)self _expandedStackLayoutBounds];
    v130 = v23;
    v131 = v22;
    v128 = v25;
    v129 = v24;
    if (self->_configuration)
    {
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      _layerStackObservingKeys = [objc_opt_class() _layerStackObservingKeys];
      v27 = [_layerStackObservingKeys countByEnumeratingWithState:&v137 objects:v142 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v138;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v138 != v29)
            {
              objc_enumerationMutation(_layerStackObservingKeys);
            }

            [(_UIStackedImageConfiguration *)self->_configuration removeObserver:self forKeyPath:*(*(&v137 + 1) + 8 * i) context:@"__layerStackObservingContext"];
          }

          v28 = [_layerStackObservingKeys countByEnumeratingWithState:&v137 objects:v142 count:16];
        }

        while (v28);
      }
    }

    objc_storeStrong(&self->_configuration, configuration);
    if (self->_configuration)
    {
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      _layerStackObservingKeys2 = [objc_opt_class() _layerStackObservingKeys];
      v32 = [_layerStackObservingKeys2 countByEnumeratingWithState:&v133 objects:v141 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v134;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v134 != v34)
            {
              objc_enumerationMutation(_layerStackObservingKeys2);
            }

            [(_UIStackedImageConfiguration *)self->_configuration addObserver:self forKeyPath:*(*(&v133 + 1) + 8 * j) options:1 context:@"__layerStackObservingContext"];
          }

          v33 = [_layerStackObservingKeys2 countByEnumeratingWithState:&v133 objects:v141 count:16];
        }

        while (v33);
      }
    }

    if (!self->_flatLayer)
    {
      v36 = v7 + v11 * 0.5;
      v37 = v9 + v13 * 0.5;
      disableActions = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:1];
      self->_scale = 1.0;
      [(_UIStackedImageContainerLayer *)self setAllowsGroupOpacity:0];
      [(_UIStackedImageContainerLayer *)self setAllowsEdgeAntialiasing:0];
      mainScreen = [objc_opt_self() mainScreen];
      traitCollection = [mainScreen traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      v127 = disableActions;
      if (userInterfaceStyle == 1000)
      {
        [UIColor colorWithWhite:1.0 alpha:0.3];
      }

      else
      {
        +[UIColor blackColor];
      }
      v42 = ;
      v43 = objc_alloc_init(MEMORY[0x1E6979398]);
      unfocusedShadowLayer = self->_unfocusedShadowLayer;
      self->_unfocusedShadowLayer = v43;

      [(CALayer *)self->_unfocusedShadowLayer setDelegate:self];
      [(CALayer *)self->_unfocusedShadowLayer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_unfocusedShadowLayer setZPosition:-52.0];
      [(CALayer *)self->_unfocusedShadowLayer setBounds:v15, v17, v19, v21];
      [(CALayer *)self->_unfocusedShadowLayer setPosition:v36, v37];
      [(CALayer *)self->_unfocusedShadowLayer setAllowsGroupOpacity:0];
      [(CALayer *)self->_unfocusedShadowLayer setAllowsEdgeAntialiasing:0];
      -[CALayer setShadowColor:](self->_unfocusedShadowLayer, "setShadowColor:", [v42 CGColor]);
      [(_UIStackedImageContainerLayer *)self addSublayer:self->_unfocusedShadowLayer];
      v45 = objc_alloc_init(MEMORY[0x1E6979398]);
      shadowLayer = self->_shadowLayer;
      self->_shadowLayer = v45;

      [(CALayer *)self->_shadowLayer setDelegate:self];
      [(CALayer *)self->_shadowLayer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_shadowLayer setZPosition:-51.0];
      [(CALayer *)self->_shadowLayer setBounds:v15, v17, v19, v21];
      [(CALayer *)self->_shadowLayer setPosition:v36, v37];
      [(CALayer *)self->_shadowLayer setAllowsGroupOpacity:0];
      [(CALayer *)self->_shadowLayer setAllowsEdgeAntialiasing:0];
      -[CALayer setShadowColor:](self->_shadowLayer, "setShadowColor:", [v42 CGColor]);
      [(_UIStackedImageContainerLayer *)self addSublayer:self->_shadowLayer];
      [(_UIStackedImageContainerLayer *)self _updateShadowLayerVisibility];

      v47 = objc_alloc_init(MEMORY[0x1E6979398]);
      cursorLayerContainer = self->_cursorLayerContainer;
      self->_cursorLayerContainer = v47;

      [(CALayer *)self->_cursorLayerContainer setDelegate:self];
      [(CALayer *)self->_cursorLayerContainer setBounds:v15, v17, v19, v21];
      [(CALayer *)self->_cursorLayerContainer setPosition:v36, v37];
      [(_UIStackedImageContainerLayer *)self addSublayer:self->_cursorLayerContainer];
      v49 = objc_alloc_init(MEMORY[0x1E6979530]);
      cursorRotationTransformLayer = self->_cursorRotationTransformLayer;
      self->_cursorRotationTransformLayer = v49;

      [(CATransformLayer *)self->_cursorRotationTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_cursorRotationTransformLayer setFrame:v15, v17, v19, v21];
      [(CALayer *)self->_cursorLayerContainer addSublayer:self->_cursorRotationTransformLayer];
      v51 = objc_alloc_init(MEMORY[0x1E6979398]);
      cursorLayer = self->_cursorLayer;
      self->_cursorLayer = v51;

      [(CALayer *)self->_cursorLayer setDelegate:self];
      [(CALayer *)self->_cursorLayer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_cursorLayer setFrame:v15, v17, v19, v21];
      [(CALayer *)self->_cursorLayer setAllowsGroupOpacity:0];
      [(CALayer *)self->_cursorLayer setAllowsEdgeAntialiasing:0];
      v53 = self->_cursorLayer;
      v54 = +[UIColor whiteColor];
      -[CALayer setBorderColor:](v53, "setBorderColor:", [v54 CGColor]);

      v55 = self->_cursorLayer;
      v56 = [UIColor colorWithWhite:0.0 alpha:0.3];
      -[CALayer setBackgroundColor:](v55, "setBackgroundColor:", [v56 CGColor]);

      v57 = self->_cursorLayer;
      [(_UIStackedImageConfiguration *)self->_configuration focusCursorBorderWidth];
      [(CALayer *)v57 setBorderWidth:?];
      [(CALayer *)self->_cursorLayer setHidden:1];
      [(CATransformLayer *)self->_cursorRotationTransformLayer addSublayer:self->_cursorLayer];
      v58 = *MEMORY[0x1E6979DF0];
      [(_UIStackedImageContainerLayer *)self _setImageStackContentsGravity:*MEMORY[0x1E6979DF0]];
      v59 = objc_alloc_init(MEMORY[0x1E6979398]);
      flatMaskLayer = self->_flatMaskLayer;
      self->_flatMaskLayer = v59;

      [(CALayer *)self->_flatMaskLayer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_flatMaskLayer setBounds:v15, v17, v19, v21];
      [(CALayer *)self->_flatMaskLayer setPosition:v36, v37];
      [(CALayer *)self->_flatMaskLayer setMasksToBounds:1];
      [(CALayer *)self->_flatMaskLayer setAllowsGroupOpacity:0];
      [(CALayer *)self->_flatMaskLayer setAllowsEdgeAntialiasing:0];
      [(_UIStackedImageContainerLayer *)self addSublayer:self->_flatMaskLayer];
      v61 = objc_alloc_init(MEMORY[0x1E6979398]);
      flatLayer = self->_flatLayer;
      self->_flatLayer = v61;

      [(CALayer *)self->_flatLayer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_flatLayer setFrame:v131, v130, v129, v128];
      [(CALayer *)self->_flatLayer setContentsGravity:v58];
      [(CALayer *)self->_flatLayer setAllowsGroupOpacity:0];
      [(CALayer *)self->_flatLayer setAllowsEdgeAntialiasing:0];
      v63 = self->_flatLayer;
      placeholderImage = [(_UIStackedImageConfiguration *)self->_configuration placeholderImage];
      if (placeholderImage)
      {
        v65 = 0;
      }

      else
      {
        if (qword_1EA994AB0 != -1)
        {
          dispatch_once(&qword_1EA994AB0, &__block_literal_global_629);
        }

        v65 = qword_1EA994AA8;
      }

      [(CALayer *)v63 setBackgroundColor:v65, userInterfaceStyle];

      v66 = self->_flatLayer;
      placeholderImage2 = [(_UIStackedImageConfiguration *)self->_configuration placeholderImage];
      -[CALayer setContents:](v66, "setContents:", [placeholderImage2 CGImage]);

      [(CALayer *)self->_flatMaskLayer addSublayer:self->_flatLayer];
      v68 = objc_alloc_init(MEMORY[0x1E6979398]);
      imageLayersContainer = self->_imageLayersContainer;
      self->_imageLayersContainer = v68;

      [(CALayer *)self->_imageLayersContainer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_imageLayersContainer setBounds:v15, v17, v19, v21];
      [(CALayer *)self->_imageLayersContainer setPosition:v36, v37];
      [(CALayer *)self->_imageLayersContainer setAllowsGroupOpacity:0];
      [(CALayer *)self->_imageLayersContainer setAllowsEdgeAntialiasing:0];
      [(CALayer *)self->_imageLayersContainer setHidden:1];
      [(_UIStackedImageContainerLayer *)self addSublayer:self->_imageLayersContainer];
      v70 = objc_alloc_init(MEMORY[0x1E6979530]);
      imageBackgroundEffectScaleTransformLayer = self->_imageBackgroundEffectScaleTransformLayer;
      self->_imageBackgroundEffectScaleTransformLayer = v70;

      [(CATransformLayer *)self->_imageBackgroundEffectScaleTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_imageBackgroundEffectScaleTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_imageBackgroundEffectScaleTransformLayer setFrame:v15, v17, v19, v21];
      [(CATransformLayer *)self->_imageBackgroundEffectScaleTransformLayer setAllowsGroupOpacity:0];
      [(CATransformLayer *)self->_imageBackgroundEffectScaleTransformLayer setAllowsEdgeAntialiasing:0];
      [(CALayer *)self->_imageLayersContainer addSublayer:self->_imageBackgroundEffectScaleTransformLayer];
      v72 = objc_alloc_init(MEMORY[0x1E6979398]);
      imagePrePerspectiveRotationBackgroundEffectContainer = self->_imagePrePerspectiveRotationBackgroundEffectContainer;
      self->_imagePrePerspectiveRotationBackgroundEffectContainer = v72;

      [(CALayer *)self->_imagePrePerspectiveRotationBackgroundEffectContainer setDelegate:self];
      [(CALayer *)self->_imagePrePerspectiveRotationBackgroundEffectContainer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_imagePrePerspectiveRotationBackgroundEffectContainer setFrame:v15, v17, v19, v21];
      [(CALayer *)self->_imagePrePerspectiveRotationBackgroundEffectContainer setAllowsGroupOpacity:0];
      [(CALayer *)self->_imagePrePerspectiveRotationBackgroundEffectContainer setAllowsEdgeAntialiasing:0];
      [(CATransformLayer *)self->_imageBackgroundEffectScaleTransformLayer addSublayer:self->_imagePrePerspectiveRotationBackgroundEffectContainer];
      v74 = objc_alloc_init(MEMORY[0x1E6979530]);
      imagePrePerspectiveRotationParallaxTransformLayer = self->_imagePrePerspectiveRotationParallaxTransformLayer;
      self->_imagePrePerspectiveRotationParallaxTransformLayer = v74;

      [(CATransformLayer *)self->_imagePrePerspectiveRotationParallaxTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_imagePrePerspectiveRotationParallaxTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_imagePrePerspectiveRotationParallaxTransformLayer setFrame:v15, v17, v19, v21];
      [(CALayer *)self->_imagePrePerspectiveRotationBackgroundEffectContainer addSublayer:self->_imagePrePerspectiveRotationParallaxTransformLayer];
      v76 = objc_alloc_init(MEMORY[0x1E6979530]);
      imagePerspectiveTransformLayer = self->_imagePerspectiveTransformLayer;
      self->_imagePerspectiveTransformLayer = v76;

      [(CATransformLayer *)self->_imagePerspectiveTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_imagePerspectiveTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_imagePerspectiveTransformLayer setFrame:v15, v17, v19, v21];
      [(CATransformLayer *)self->_imagePrePerspectiveRotationParallaxTransformLayer addSublayer:self->_imagePerspectiveTransformLayer];
      v78 = objc_alloc_init(MEMORY[0x1E6979530]);
      imageRotationTransformLayer = self->_imageRotationTransformLayer;
      self->_imageRotationTransformLayer = v78;

      [(CATransformLayer *)self->_imageRotationTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_imageRotationTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_imageRotationTransformLayer setFrame:v15, v17, v19, v21];
      [(CATransformLayer *)self->_imagePerspectiveTransformLayer addSublayer:self->_imageRotationTransformLayer];
      if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRendering3DTransformedGlassLayer, @"UISolariumNewStackedImageRendering3DTransformedGlassLayer", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E92C)
      {
        v80 = objc_alloc_init(MEMORY[0x1E6979398]);
        imagePostPerspectiveRotationBackgroundEffectContainer = self->_imagePostPerspectiveRotationBackgroundEffectContainer;
        self->_imagePostPerspectiveRotationBackgroundEffectContainer = v80;

        [(CALayer *)self->_imagePostPerspectiveRotationBackgroundEffectContainer setDelegate:self];
        [(CALayer *)self->_imagePostPerspectiveRotationBackgroundEffectContainer setAnchorPoint:0.5, 0.5];
        [(CALayer *)self->_imagePostPerspectiveRotationBackgroundEffectContainer setFrame:v15, v17, v19, v21];
        [(CALayer *)self->_imagePostPerspectiveRotationBackgroundEffectContainer setAllowsGroupOpacity:0];
        [(CALayer *)self->_imagePostPerspectiveRotationBackgroundEffectContainer setAllowsEdgeAntialiasing:0];
        [(CATransformLayer *)self->_imageRotationTransformLayer addSublayer:self->_imagePostPerspectiveRotationBackgroundEffectContainer];
      }

      v82 = objc_alloc_init(MEMORY[0x1E6979530]);
      imagePostPerspectiveRotationParallaxTransformLayer = self->_imagePostPerspectiveRotationParallaxTransformLayer;
      self->_imagePostPerspectiveRotationParallaxTransformLayer = v82;

      [(CATransformLayer *)self->_imagePostPerspectiveRotationParallaxTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_imagePostPerspectiveRotationParallaxTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_imagePostPerspectiveRotationParallaxTransformLayer setFrame:v15, v17, v19, v21];
      v84 = self->_imagePostPerspectiveRotationBackgroundEffectContainer;
      if (!v84)
      {
        v84 = self->_imageRotationTransformLayer;
      }

      v85 = v84;
      [(CATransformLayer *)v85 addSublayer:self->_imagePostPerspectiveRotationParallaxTransformLayer];
      v86 = objc_alloc_init(MEMORY[0x1E6979398]);
      selectedPlaceholderLayer = self->_selectedPlaceholderLayer;
      self->_selectedPlaceholderLayer = v86;

      [(CALayer *)self->_selectedPlaceholderLayer setDelegate:self];
      [(CALayer *)self->_selectedPlaceholderLayer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_selectedPlaceholderLayer setFrame:v15, v17, v19, v21];
      [(CALayer *)self->_selectedPlaceholderLayer setAllowsGroupOpacity:0];
      [(CALayer *)self->_selectedPlaceholderLayer setContentsGravity:v58];
      v88 = self->_selectedPlaceholderLayer;
      placeholderImage3 = [(_UIStackedImageConfiguration *)self->_configuration placeholderImage];
      v132 = v85;
      if (placeholderImage3)
      {
        v90 = 0;
      }

      else
      {
        if (qword_1EA994AB0 != -1)
        {
          dispatch_once(&qword_1EA994AB0, &__block_literal_global_629);
        }

        v90 = qword_1EA994AA8;
      }

      [(CALayer *)v88 setBackgroundColor:v90];

      v91 = self->_selectedPlaceholderLayer;
      placeholderImage4 = [(_UIStackedImageConfiguration *)self->_configuration placeholderImage];
      -[CALayer setContents:](v91, "setContents:", [placeholderImage4 CGImage]);

      v93 = objc_alloc_init(MEMORY[0x1E6979398]);
      maskLayer = self->_maskLayer;
      self->_maskLayer = v93;

      [(CALayer *)self->_maskLayer setDelegate:self];
      [(CALayer *)self->_maskLayer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_maskLayer setFrame:v15, v17, v19, v21];
      v95 = self->_maskLayer;
      v96 = [UIColor colorWithWhite:0.0 alpha:1.0];
      -[CALayer setBackgroundColor:](v95, "setBackgroundColor:", [v96 CGColor]);

      [(CALayer *)self->_maskLayer setAllowsGroupOpacity:0];
      [(CALayer *)self->_maskLayer setAllowsEdgeAntialiasing:1];
      v97 = objc_alloc_init(MEMORY[0x1E6979530]);
      maskPerspectiveTransformLayer = self->_maskPerspectiveTransformLayer;
      self->_maskPerspectiveTransformLayer = v97;

      [(CATransformLayer *)self->_maskPerspectiveTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_maskPerspectiveTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_maskPerspectiveTransformLayer setFrame:v15, v17, v19, v21];
      [(_UIStackedImageContainerLayer *)self _updateImageLayersContainerMaskingAndBounds];
      v99 = objc_alloc_init(MEMORY[0x1E6979530]);
      maskRotationTransformLayer = self->_maskRotationTransformLayer;
      self->_maskRotationTransformLayer = v99;

      [(CATransformLayer *)self->_maskRotationTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_maskRotationTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_maskRotationTransformLayer setFrame:v15, v17, v19, v21];
      [(CATransformLayer *)self->_maskPerspectiveTransformLayer addSublayer:self->_maskRotationTransformLayer];
      [(CATransformLayer *)self->_maskRotationTransformLayer addSublayer:self->_maskLayer];
      if (v126 == 1000)
      {
        [(_UIStackedImageContainerLayer *)self _setupFrontmostTransformLayers];
        v101 = objc_alloc_init(MEMORY[0x1E6979398]);
        focusKeylineStrokeLayer = self->_focusKeylineStrokeLayer;
        self->_focusKeylineStrokeLayer = v101;

        [(CALayer *)self->_focusKeylineStrokeLayer setAnchorPoint:0.5, 0.5];
        [(CALayer *)self->_focusKeylineStrokeLayer setFrame:v15, v17, v19, v21];
        v103 = self->_focusKeylineStrokeLayer;
        v104 = [UIColor colorWithWhite:1.0 alpha:1.0];
        -[CALayer setBorderColor:](v103, "setBorderColor:", [v104 CGColor]);

        [(CALayer *)self->_focusKeylineStrokeLayer setBorderWidth:2.0];
        [(CALayer *)self->_focusKeylineStrokeLayer setAllowsGroupOpacity:0];
        [(CALayer *)self->_focusKeylineStrokeLayer setHidden:1];
        [(CALayer *)self->_focusKeylineStrokeLayer setDelegate:self];
        [(CATransformLayer *)self->_frontmostRotationTransformLayer addSublayer:self->_focusKeylineStrokeLayer];
      }

      v105 = objc_alloc_init(_UIFocusSpecularHighlightLayer);
      specularLayer = self->_specularLayer;
      self->_specularLayer = v105;

      [(_UIFocusSpecularHighlightLayer *)self->_specularLayer setDelegate:self];
      [(_UIFocusSpecularHighlightLayer *)self->_specularLayer setFrame:v15, v17, v19, v21];
      [(_UIFocusSpecularHighlightLayer *)self->_specularLayer setOpacity:0.0];
      v107 = self->_specularLayer;
      [(_UIStackedImageConfiguration *)self->_configuration specularHighlightHorizontalPositionSensitivity];
      v109 = v108;
      [(_UIStackedImageConfiguration *)self->_configuration specularHighlightVerticalPositionSensitivity];
      [(_UIFocusSpecularHighlightLayer *)v107 setFocusSensitivity:v109, v110];
      v111 = self->_specularLayer;
      [(_UIStackedImageConfiguration *)self->_configuration specularHighlightVerticalPosition];
      [(_UIFocusSpecularHighlightLayer *)v111 setLegacyVerticalPositionOffset:?];
      _layerForImageStackHosting = [(_UIStackedImageContainerLayer *)self _layerForImageStackHosting];
      [_layerForImageStackHosting addSublayer:self->_specularLayer];

      [(_UIStackedImageContainerLayer *)self _updateSpecularLayerVisibility];
      delegate = [(_UIStackedImageContainerLayer *)self delegate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v114 = [[UIView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
        animationView = self->_animationView;
        self->_animationView = v114;

        [delegate addSubview:self->_animationView];
        v116 = 0x1E6979000;
        v117 = v132;
      }

      else
      {
        superlayer = [(_UIStackedImageContainerLayer *)self superlayer];
        delegate2 = [superlayer delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v116 = 0x1E6979000uLL;
        v117 = v132;
        if (isKindOfClass)
        {
          v121 = [[UIView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
          v122 = self->_animationView;
          self->_animationView = v121;

          superlayer2 = [(_UIStackedImageContainerLayer *)self superlayer];
          delegate3 = [superlayer2 delegate];
          [delegate3 addSubview:self->_animationView];
        }
      }

      [(_UIStackedImageContainerLayer *)self contentsScale];
      [(_UIStackedImageContainerLayer *)self setContentsScale:?];
      [(_UIStackedImageContainerLayer *)self rasterizationScale];
      [(_UIStackedImageContainerLayer *)self setRasterizationScale:?];
      v144.origin.x = v15;
      v144.origin.y = v17;
      v144.size.width = v19;
      v144.size.height = v21;
      if (!CGRectIsEmpty(v144))
      {
        [(_UIStackedImageContainerLayer *)self _updateLayerForSelection];
      }

      [*(v116 + 1304) setDisableActions:v127];
    }

    selectionStyle = [configurationCopy selectionStyle];
    if (self->_selectionStyle != selectionStyle)
    {
      [(_UIStackedImageContainerLayer *)self _setSelectionStyle:selectionStyle];
    }

    [(_UIStackedImageContainerLayer *)self _updateCornerRadiusFromConfig];
    [(_UIStackedImageContainerLayer *)self _updateSingleLayerNoMaskFromLayerStack];
  }
}

- (void)setLayerStack:(id)stack
{
  v16 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  [stackCopy size];
  v7 = v6;
  v8 = v5;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = *(__UILogGetCategoryCachedImpl("LayeredImage", &setLayerStack____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218240;
      v13 = v7;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Image has an invalid size. (w: %g, h: %g)", &v12, 0x16u);
    }

    selfCopy2 = self;
    v10 = 0;
  }

  else
  {
    selfCopy2 = self;
    v10 = stackCopy;
  }

  [(_UIStackedImageContainerLayer *)selfCopy2 _setLayerStack:v10];
}

- (void)_setLayerStack:(id)stack
{
  stackCopy = stack;
  if (([(UINamedLayerStack *)self->_layerStack isEqual:?]& 1) == 0)
  {
    disableActions = [MEMORY[0x1E6979518] disableActions];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (self->_animatingToNormalState)
    {
      [(_UIStackedImageContainerLayer *)self _resetAnimatingToNormalState];
    }

    objc_storeStrong(&self->_layerStack, stack);
    if (objc_opt_respondsToSelector())
    {
      v6 = objc_opt_respondsToSelector();
    }

    else
    {
      v6 = 0;
    }

    self->_layerStackSupportsInflation = v6 & 1;
    layers = [(UINamedLayerStack *)self->_layerStack layers];
    firstObject = [layers firstObject];
    imageObj = [firstObject imageObj];
    self->_layerStackInflated = imageObj != 0;

    -[_UIStackedImageContainerLayer _setFlatImage:](self, "_setFlatImage:", [stackCopy flattenedImage]);
    layers2 = [stackCopy layers];
    [(_UIStackedImageContainerLayer *)self _setParallaxImages:layers2];

    if (self->_layerStackSupportsInflation && !self->_layerStackInflated && ![(_UIStackedImageContainerLayer *)self _isNormal]&& !self->_deferredInflationPending)
    {
      [(_UIStackedImageContainerLayer *)self _setLayerStackInflated:1 seed:self->_layerStackInflationSeed];
    }

    [(_UIStackedImageContainerLayer *)self _updateSingleLayerNoMaskFromLayerStack];
    [(_UIStackedImageContainerLayer *)self _updateNonOpaqueShadowStateFromLayerStack];
    [(_UIStackedImageContainerLayer *)self _updateRadiosityFromLayerStack];
    [(_UIStackedImageContainerLayer *)self _updateCornerRadiusFromConfig];
    [(_UIStackedImageContainerLayer *)self setNeedsLayout];
    [MEMORY[0x1E6979518] setDisableActions:disableActions];
  }
}

- (BOOL)_aspectMatchesLayerStack
{
  if (!self->_layerStack)
  {
    return 0;
  }

  [(_UIStackedImageContainerLayer *)self _expandedStackLayoutBounds];
  v4 = v3;
  v6 = v5;
  [(UINamedLayerStack *)self->_layerStack size];
  result = 0;
  if (v8 > 0.0 && v6 > 0.0)
  {
    return vabdd_f64(v7 / v8, v4 / v6) <= 0.01;
  }

  return result;
}

- (double)_effectiveScaleSizeIncrease
{
  if (self->_selectionStyle != 1 && [(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering]&& (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRenderingForceDefaultScaleSizeIncrease, @"UISolariumNewStackedImageRenderingForceDefaultScaleSizeIncrease", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E924)
  {
    return 40.0;
  }

  configuration = self->_configuration;

  [(_UIStackedImageConfiguration *)configuration scaleSizeIncrease];
  return result;
}

- (BOOL)_effectiveAdjustMotionForSize
{
  selectionStyle = self->_selectionStyle;
  if (selectionStyle != 3 && selectionStyle != 0)
  {
    return 0;
  }

  if ([(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering]&& (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRenderingForceAdjustMotionForSize, @"UISolariumNewStackedImageRenderingForceAdjustMotionForSize", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E91C)
  {
    return 1;
  }

  configuration = self->_configuration;

  return [(_UIStackedImageConfiguration *)configuration adjustMotionForSize];
}

- (BOOL)_isEligibleFor3DTransforms
{
  if (![(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering])
  {
    return 1;
  }

  result = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRendering3DTransformsEnabled, @"UISolariumNewStackedImageRendering3DTransformsEnabled", _UIInternalPreferenceUpdateBool);
  if (byte_1EA95E914)
  {
    return 1;
  }

  return result;
}

- (id)_layerForBackgroundEffects
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRendering3DTransformedGlassLayer, @"UISolariumNewStackedImageRendering3DTransformedGlassLayer", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1EA95E92C)
  {
    p_imagePrePerspectiveRotationBackgroundEffectContainer = &self->_imagePrePerspectiveRotationBackgroundEffectContainer;
  }

  else
  {
    p_imagePrePerspectiveRotationBackgroundEffectContainer = &self->_imagePostPerspectiveRotationBackgroundEffectContainer;
    imagePostPerspectiveRotationBackgroundEffectContainer = self->_imagePostPerspectiveRotationBackgroundEffectContainer;
    if (imagePostPerspectiveRotationBackgroundEffectContainer)
    {
      goto LABEL_7;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStackedImageContainerLayer.m" lineNumber:1721 description:@"Missing _imagePostPerspectiveRotationBackgroundEffectContainer"];
  }

  imagePostPerspectiveRotationBackgroundEffectContainer = *p_imagePrePerspectiveRotationBackgroundEffectContainer;
LABEL_7:

  return imagePostPerspectiveRotationBackgroundEffectContainer;
}

- (id)_layerAboveImageLayers
{
  overlayContainerLayer = self->_overlayContainerLayer;
  if (overlayContainerLayer && ([(CALayer *)overlayContainerLayer superlayer], v4 = objc_claimAutoreleasedReturnValue(), [(_UIStackedImageContainerLayer *)self _layerForImageStackHosting], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v4 == v5))
  {
    _layerAboveOverlayContainer = self->_overlayContainerLayer;
  }

  else
  {
    _layerAboveOverlayContainer = [(_UIStackedImageContainerLayer *)self _layerAboveOverlayContainer];
  }

  return _layerAboveOverlayContainer;
}

- (void)_updateSingleLayerNoMaskFromLayerStack
{
  if (![(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering])
  {
    if ([(_UIStackedImageConfiguration *)self->_configuration disableMask])
    {
      v3 = 1;
    }

    else if (self->_selectionStyle)
    {
      v3 = 0;
    }

    else
    {
      layers = [(UINamedLayerStack *)self->_layerStack layers];
      if ([layers count] <= 1 && (-[_UIStackedImageConfiguration cornerRadius](self->_configuration, "cornerRadius"), v5 == 0.0) && !-[_UIStackedImageConfiguration boostBrightness](self->_configuration, "boostBrightness"))
      {
        v3 = ![(_UIStackedImageConfiguration *)self->_configuration hueShift];
      }

      else
      {
        v3 = 0;
      }
    }

    if (self->_singleLayerNoMask != v3)
    {
      self->_singleLayerNoMask = v3;
      [(_UIStackedImageContainerLayer *)self _updateImageLayersContainerMaskingAndBounds];
      singleLayerNoMask = self->_singleLayerNoMask;
      maskPerspectiveTransformLayer = self->_maskPerspectiveTransformLayer;

      [(_UIStackedImageContainerLayer *)self _updateLayer:maskPerspectiveTransformLayer isHidden:singleLayerNoMask];
    }
  }
}

- (void)_updateImageLayersContainerMaskingAndBounds
{
  if (self->_singleLayerNoMask || self->_nonOpaqueShadow)
  {
    imageLayersContainer = self->_imageLayersContainer;
    maskPerspectiveTransformLayer = 0;
LABEL_4:
    [(CALayer *)imageLayersContainer setMask:maskPerspectiveTransformLayer];
    v5 = 0;
    goto LABEL_5;
  }

  _isEligibleForSolariumRendering = [(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering];
  imageLayersContainer = self->_imageLayersContainer;
  if (!_isEligibleForSolariumRendering)
  {
    maskPerspectiveTransformLayer = self->_maskPerspectiveTransformLayer;
    goto LABEL_4;
  }

  [(CALayer *)imageLayersContainer setMask:0];
  v5 = 1;
LABEL_5:
  _layerForBackgroundEffects = [(_UIStackedImageContainerLayer *)self _layerForBackgroundEffects];
  [_layerForBackgroundEffects setMasksToBounds:v5];
}

- (void)_updateShadowLayerVisibility
{
  nonOpaqueShadow = self->_nonOpaqueShadow;
  isHidden = [(CALayer *)self->_shadowLayer isHidden];
  isHidden2 = [(CALayer *)self->_unfocusedShadowLayer isHidden];
  [(_UIStackedImageContainerLayer *)self _updateLayer:self->_shadowLayer isHidden:nonOpaqueShadow];
  [(_UIStackedImageContainerLayer *)self _updateLayer:self->_unfocusedShadowLayer isHidden:nonOpaqueShadow];
  if (!isHidden)
  {
    if (!isHidden2)
    {
      return;
    }

LABEL_6:
    if ([(CALayer *)self->_unfocusedShadowLayer isHidden])
    {
      return;
    }

    goto LABEL_8;
  }

  isHidden3 = [(CALayer *)self->_shadowLayer isHidden];
  if (isHidden3 && isHidden2)
  {
    goto LABEL_6;
  }

  if (isHidden3)
  {
    return;
  }

LABEL_8:

  [(_UIStackedImageContainerLayer *)self _updateShadowWithCATransaction:0];
}

- (BOOL)_shouldHaveNonOpaqueShadowFromLayerStack
{
  histogram[256] = *MEMORY[0x1E69E9840];
  if (![(_UIStackedImageConfiguration *)self->_configuration allowsNonOpaqueShadow])
  {
    return 0;
  }

  layers = [(UINamedLayerStack *)self->_layerStack layers];
  v4 = [layers count];

  if (v4 != 1)
  {
    return 0;
  }

  if (![(_UIStackedImageContainerLayer *)self _aspectMatchesLayerStack])
  {
    return 0;
  }

  flattenedImage = [(UINamedLayerStack *)self->_layerStack flattenedImage];
  if (!flattenedImage)
  {
    return 0;
  }

  v6 = flattenedImage;
  AlphaInfo = CGImageGetAlphaInfo(flattenedImage);
  if (AlphaInfo - 1 > 3)
  {
    return 0;
  }

  v8 = AlphaInfo;
  memset(&srcARGB, 0, sizeof(srcARGB));
  memset(&destA, 0, sizeof(destA));
  memset(&destR, 0, sizeof(destR));
  memset(&destG, 0, sizeof(destG));
  memset(&destB, 0, sizeof(destB));
  BitmapInfo = CGImageGetBitmapInfo(v6);
  BitsPerComponent = CGImageGetBitsPerComponent(v6);
  BitsPerPixel = CGImageGetBitsPerPixel(v6);
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v6);
  v28[0] = BitsPerComponent;
  v28[1] = BitsPerPixel;
  ColorSpace = CGImageGetColorSpace(v6);
  v30 = BitmapInfo;
  v31 = 0;
  Decode = CGImageGetDecode(v6);
  RenderingIntent = CGImageGetRenderingIntent(v6);
  if (MEMORY[0x18CFEAA50](&srcARGB, v28, 0, v6, 0) || MEMORY[0x18CFEAA40](&destA, Height, Width, BitsPerPixel, 0) || MEMORY[0x18CFEAA40](&destR, Height, Width, BitsPerPixel, 0) || MEMORY[0x18CFEAA40](&destG, Height, Width, BitsPerPixel, 0) || MEMORY[0x18CFEAA40](&destB, Height, Width, BitsPerPixel, 0))
  {
    goto LABEL_11;
  }

  v16 = v8 & 5;
  if ((BitmapInfo & 0x100) != 0)
  {
    if (v16 == 1)
    {
      p_destR = &destR;
      p_destG = &destG;
      p_destB = &destB;
      p_destA = &destA;
    }

    else
    {
      p_destR = &destA;
      p_destG = &destR;
      p_destB = &destG;
      p_destA = &destB;
    }

    if (!vImageConvert_ARGBFFFFtoPlanarF(&srcARGB, p_destR, p_destG, p_destB, p_destA, 0) && !vImageHistogramCalculation_PlanarF(&destA, histogram, 0x100u, 0.0, 1.0, 0))
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v16 == 1)
    {
      v17 = &destR;
      v18 = &destG;
      v19 = &destB;
      v20 = &destA;
    }

    else
    {
      v17 = &destA;
      v18 = &destR;
      v19 = &destG;
      v20 = &destB;
    }

    if (!vImageConvert_ARGB8888toPlanar8(&srcARGB, v17, v18, v19, v20, 0) && !vImageHistogramCalculation_Planar8(&destA, histogram, 0))
    {
LABEL_27:
      v25 = 0;
      do
      {
        v26 = histogram[v25];
        v14 = v26 != 0;
        if (v26)
        {
          break;
        }
      }

      while (v25++ != 254);
      goto LABEL_12;
    }
  }

LABEL_11:
  v14 = 0;
LABEL_12:
  free(srcARGB.data);
  free(destA.data);
  free(destR.data);
  free(destG.data);
  free(destB.data);
  return v14;
}

- (void)_updateNonOpaqueShadowStateFromLayerStack
{
  _shouldHaveNonOpaqueShadowFromLayerStack = [(_UIStackedImageContainerLayer *)self _shouldHaveNonOpaqueShadowFromLayerStack];
  if (self->_nonOpaqueShadow != _shouldHaveNonOpaqueShadowFromLayerStack)
  {
    self->_nonOpaqueShadow = _shouldHaveNonOpaqueShadowFromLayerStack;
    [(_UIStackedImageContainerLayer *)self _updateImageLayersContainerMaskingAndBounds];
    [(_UIStackedImageContainerLayer *)self _updateMaskScaleTransform];
    [(_UIStackedImageContainerLayer *)self _updateShadowLayerVisibility];
    [(_UIStackedImageContainerLayer *)self _updateInnerParallaxTransform];
    if (self->_nonOpaqueShadow)
    {
      firstObject = [(NSArray *)self->_imageLayers firstObject];
      contents = [firstObject contents];
      [(CALayer *)self->_maskLayer setContents:contents];

      contentsGravity = [firstObject contentsGravity];
      [(CALayer *)self->_maskLayer setContentsGravity:contentsGravity];

      [(CALayer *)self->_maskLayer setBackgroundColor:0];
      [(_UIFocusSpecularHighlightLayer *)self->_specularLayer setMask:self->_maskPerspectiveTransformLayer];
      [(CALayer *)self->_flatMaskLayer setMasksToBounds:0];
    }

    else
    {
      [(_UIFocusSpecularHighlightLayer *)self->_specularLayer setMask:0];
      [(CALayer *)self->_maskLayer setContents:0];
      v7 = [UIColor colorWithWhite:0.0 alpha:1.0];
      -[CALayer setBackgroundColor:](self->_maskLayer, "setBackgroundColor:", [v7 CGColor]);

      [(CALayer *)self->_flatLayer setShadowOpacity:0.0];
      [(CALayer *)self->_flatMaskLayer setMasksToBounds:1];
    }

    [(_UIStackedImageContainerLayer *)self _updateShadowWithCATransaction:1];
  }
}

- (void)_updateMaskScaleTransform
{
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v14 = *(MEMORY[0x1E69792E8] + 64);
  v15 = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v16 = *(MEMORY[0x1E69792E8] + 96);
  v17 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v10 = *MEMORY[0x1E69792E8];
  v11 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v12 = *(MEMORY[0x1E69792E8] + 32);
  v13 = v6;
  if (!self->_nonOpaqueShadow)
  {
    [(_UIStackedImageContainerLayer *)self _scaleTransform3DForCurrentState];
  }

  if ([(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering])
  {
    v7 = 376;
  }

  else
  {
    v7 = 264;
  }

  v8 = *(&self->super.super.isa + v7);
  v9[4] = v14;
  v9[5] = v15;
  v9[6] = v16;
  v9[7] = v17;
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  [v8 setTransform:v9];
  [(_UIStackedImageContainerLayer *)self _updateSpecularTransform];
}

- (void)_updateRadiosityFromLayerStack
{
  [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _radiosityEnabled = [(_UIStackedImageContainerLayer *)self _radiosityEnabled];
  radiosityLayer = self->_radiosityLayer;
  if (_radiosityEnabled)
  {
    if (!radiosityLayer)
    {
      v13 = objc_alloc_init(MEMORY[0x1E6979398]);
      v14 = self->_radiosityLayer;
      self->_radiosityLayer = v13;

      [(CALayer *)self->_radiosityLayer setAnchorPoint:0.5, 0.5];
      [(CALayer *)self->_radiosityLayer setZPosition:-50.0];
      v15 = self->_radiosityLayer;
      [(_UIStackedImageConfiguration *)self->_configuration radiosityOffset];
      v17 = v16;
      v34.origin.x = v4;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v10;
      v35 = CGRectOffset(v34, 0.0, v17);
      [(CALayer *)v15 setFrame:v35.origin.x, v35.origin.y, v35.size.width, v35.size.height];
      [(CALayer *)self->_radiosityLayer setAllowsGroupOpacity:0];
      [(CALayer *)self->_radiosityLayer setAllowsEdgeAntialiasing:0];
      v18 = self->_radiosityLayer;
      [(_UIStackedImageConfiguration *)self->_configuration radiosityStrength];
      *&v19 = v19;
      [(CALayer *)v18 setOpacity:v19];
      [(CALayer *)self->_radiosityLayer setDelegate:self];
      v20 = self->_radiosityLayer;
      [(_UIStackedImageContainerLayer *)self contentsScale];
      [(CALayer *)v20 setContentsScale:?];
      v21 = self->_radiosityLayer;
      [(_UIStackedImageContainerLayer *)self contentsScale];
      [(CALayer *)v21 setRasterizationScale:?];
      [(_UIStackedImageContainerLayer *)self insertSublayer:self->_radiosityLayer above:self->_shadowLayer];
    }
  }

  else
  {
    [(CALayer *)radiosityLayer removeFromSuperlayer];
    v22 = self->_radiosityLayer;
    self->_radiosityLayer = 0;
  }

  if ([(_UIStackedImageContainerLayer *)self _radiosityEnabled]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    p_radiosityImageScale = &self->_radiosityImageScale;
    self->_radiosityImageScale = *MEMORY[0x1E695F060];
    radiosityImage = [(UINamedLayerStack *)self->_layerStack radiosityImage];
    [(CALayer *)self->_radiosityLayer setContents:radiosityImage];

    if (objc_opt_respondsToSelector())
    {
      [(UINamedLayerStack *)self->_layerStack radiosityImageScale];
      p_radiosityImageScale->width = width;
      self->_radiosityImageScale.height = v26;
    }

    else
    {
      width = p_radiosityImageScale->width;
    }

    if (width == 0.0 || self->_radiosityImageScale.height == 0.0)
    {
      *p_radiosityImageScale = xmmword_18A683CC0;
    }

    [(_UIStackedImageContainerLayer *)self _layoutRadiosityLayer];
  }

  else
  {
    contents = [(CALayer *)self->_radiosityLayer contents];

    if (contents)
    {
      [(CALayer *)self->_radiosityLayer setContents:0];
      self->_radiosityImageScale = *MEMORY[0x1E695F060];
    }
  }

  if ([(_UIStackedImageContainerLayer *)self _radiosityEnabled])
  {
    contents2 = [(CALayer *)self->_radiosityLayer contents];
    if (contents2)
    {
    }

    else if ([(UINamedLayerStack *)self->_layerStack flattenedImage])
    {
      Current = CFAbsoluteTimeGetCurrent();
      self->_radiosityRequestTime = Current;
      v30 = +[_UIRadiosityImageGenerator sharedInstance];
      flattenedImage = [(UINamedLayerStack *)self->_layerStack flattenedImage];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __63___UIStackedImageContainerLayer__updateRadiosityFromLayerStack__block_invoke;
      v32[3] = &unk_1E712BA90;
      *&v32[5] = Current;
      v32[4] = self;
      [v30 imageWithImage:flattenedImage completionHandler:v32];
    }
  }
}

- (void)_setControlState:(unint64_t)state animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator completion:(id)completion
{
  animatedCopy = animated;
  v71[1] = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v12 = [(_UIStackedImageContainerLayer *)self _primaryControlStateForState:state];
  if (self->_controlState == state)
  {
    goto LABEL_59;
  }

  v13 = v12;
  _isHighlighted = [(_UIStackedImageContainerLayer *)self _isHighlighted];
  v15 = state & 8;
  if ((state & 8) == 0)
  {
    state &= 0xFFFFFFFFFFFFFFF6;
  }

  if (_isHighlighted || v13 == 1)
  {
    v19 = (LOBYTE(self->_controlState) >> 3) & 1;
    self->_controlState = state;
    _isHighlighted2 = [(_UIStackedImageContainerLayer *)self _isHighlighted];
    [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
    if (CGRectIsEmpty(v72))
    {
      self->_scale = 1.0;
    }

    else
    {
      [(_UIStackedImageContainerLayer *)self _roundedBoundsSize];
      v22 = v21;
      v24 = v23;
      [(_UIStackedImageContainerLayer *)self _effectiveScaleSizeIncrease];
      [objc_opt_class() _scaledSizeForSize:self->_selectionStyle focusSizeIncrease:v22 selectionStyle:{v24, v25}];
      [(_UIStackedImageContainerLayer *)self _focusCursorInsetSizeForSize:?];
      v27 = v26 / v22;
      v29 = v28 / v24;
      if (v27 < v29)
      {
        v27 = v29;
      }

      self->_scale = v27;
      if (_isHighlighted2)
      {
        [(_UIStackedImageConfiguration *)self->_configuration pressedScaleAdjustment];
        v30 = objc_opt_class();
        [(_UIStackedImageContainerLayer *)self _roundedBoundsSize];
        [v30 _scaledSizeForSize:self->_selectionStyle focusSizeIncrease:? selectionStyle:?];
        [(_UIStackedImageContainerLayer *)self _focusCursorInsetSizeForSize:?];
        v32 = v31 / v22;
        v34 = v33 / v24;
        if (v32 < v34)
        {
          v32 = v34;
        }

        self->_scale = v32;
        if (self->_selectionStyle == 1 && ![(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth])
        {
          [(_UIStackedImageConfiguration *)self->_configuration fullBleedOffset];
          self->_scale = v35 * -0.25 / v24 + 1.0;
        }
      }

      else if (!v13)
      {
        self->_scale = 1.0;
      }
    }

    self->_focusDirection = *MEMORY[0x1E695EFF8];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke;
    v67[3] = &unk_1E70F67F8;
    v69 = v15 >> 3;
    v70 = v19;
    v67[4] = self;
    v39 = coordinatorCopy;
    v68 = v39;
    v40 = _Block_copy(v67);
    if (v39 && animatedCopy)
    {
      [v39 addCoordinatedAnimations:v40 completion:completionCopy];
    }

    else
    {
      [MEMORY[0x1E6979518] begin];
      v41 = MEMORY[0x1E6979518];
      configuration = self->_configuration;
      if (_isHighlighted2)
      {
        [(_UIStackedImageConfiguration *)configuration pressedDuration];
      }

      else
      {
        [(_UIStackedImageConfiguration *)configuration unpressedDuration];
      }

      [v41 setAnimationDuration:?];
      v43 = MEMORY[0x1E6979518];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke_2;
      v65[3] = &unk_1E70F0F78;
      v66 = completionCopy;
      [v43 setCompletionBlock:v65];
      v40[2](v40);
      [MEMORY[0x1E6979518] commit];
    }
  }

  else
  {
    if (v13 != 8)
    {
      if (v13 == 4)
      {
        self->_controlState = state;
        [(_UIStackedImageContainerLayer *)self _showImageLayers];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke_6;
        aBlock[3] = &unk_1E70F35B8;
        aBlock[4] = self;
        v36 = coordinatorCopy;
        v59 = v36;
        v37 = _Block_copy(aBlock);
        v38 = v37;
        if (v36 && animatedCopy)
        {
          [v36 addCoordinatedAnimations:v37 completion:0];
        }

        else
        {
          (*(v37 + 2))(v37);
        }

        goto LABEL_59;
      }

      if (v13)
      {
        goto LABEL_59;
      }
    }

    if (!coordinatorCopy)
    {
      _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
      if (!v13 && _isFocused && animatedCopy)
      {
        v53 = CACurrentMediaTime() - self->_selectionStartTime;
        [(_UIStackedImageConfiguration *)self->_configuration minimumFocusDuration];
        if (v53 < v54)
        {
          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__deselect object:0];
          [(_UIStackedImageConfiguration *)self->_configuration minimumFocusDuration];
          v56 = v55;
          v71[0] = *MEMORY[0x1E695DA28];
          v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
          [(_UIStackedImageContainerLayer *)self performSelector:sel__deselect withObject:0 afterDelay:v57 inModes:v56 - v53];

          goto LABEL_59;
        }
      }

      else if (v13 == 8)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__deselect object:0];
      }
    }

    self->_controlState = state;
    if ([(_UIStackedImageContainerLayer *)self _isFocused])
    {
      [(_UIStackedImageContainerLayer *)self _showImageLayers];
      [(_UIStackedImageContainerLayer *)self _focusedScaleFactorForCurrentBounds];
      v16 = &OBJC_IVAR____UIStackedImageContainerLayer__selectionStartTime;
      self->_scale = v17;
      v18 = CACurrentMediaTime();
    }

    else
    {
      _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
      v18 = 1.13;
      if (!_isSelected)
      {
        v18 = 1.0;
      }

      v16 = &OBJC_IVAR____UIStackedImageContainerLayer__scale;
    }

    *(&self->super.super.isa + *v16) = v18;
    self->_animatingStateChange = 1;
    if (!v13)
    {
      self->_animatingToNormalState = 1;
    }

    disableActions = [MEMORY[0x1E6979518] disableActions];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(_UIStackedImageContainerLayer *)self _updateImageLayerFilterChains];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke_3;
    v64[3] = &unk_1E70F3590;
    v64[4] = self;
    v46 = _Block_copy(v64);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke_4;
    v63[3] = &unk_1E70F3590;
    v63[4] = self;
    v47 = _Block_copy(v63);
    if ([(_UIStackedImageContainerLayer *)self _isNormal])
    {
      v48 = v46;
    }

    else
    {
      v48 = v47;
    }

    v49 = _Block_copy(v48);
    [MEMORY[0x1E6979518] setDisableActions:!animatedCopy];
    if (coordinatorCopy != 0 && animatedCopy)
    {
      objc_initWeak(&location, coordinatorCopy);
      layerStackInflationSeed = self->_layerStackInflationSeed;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke_5;
      v60[3] = &unk_1E712BAB8;
      v60[4] = self;
      v61[1] = layerStackInflationSeed;
      objc_copyWeak(v61, &location);
      v51 = _Block_copy(v60);
      if (+[UIView areAnimationsEnabled])
      {
        [coordinatorCopy addCoordinatedAnimations:v51 completion:v49];
      }

      else
      {
        v51[2](v51);
        v49[2](v49);
      }

      objc_destroyWeak(v61);
      objc_destroyWeak(&location);
    }

    else
    {
      if (self->_layerStackSupportsInflation)
      {
        [(_UIStackedImageContainerLayer *)self _setLayerStackInflated:1 seed:self->_layerStackInflationSeed];
      }

      [MEMORY[0x1E6979518] setCompletionBlock:v49];
      [(_UIStackedImageContainerLayer *)self _updateLayerForSelection];
    }

    [MEMORY[0x1E6979518] setDisableActions:disableActions];
  }

LABEL_59:
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator
{
  v5 = 8;
  if (!selected)
  {
    v5 = 0;
  }

  [(_UIStackedImageContainerLayer *)self setControlState:self->_controlState & 0xFFFFFFFFFFFFFFF7 | v5 animated:animated focusAnimationCoordinator:coordinator];
}

+ (CGSize)_scaledSizeForSize:(CGSize)size focusSizeIncrease:(double)increase selectionStyle:(int64_t)style
{
  [_UIStackedImageConfiguration _scaledSizeForSize:style focusSizeIncrease:size.width selectionStyle:size.height, increase];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_focusCursorInsetSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_UIStackedImageConfiguration *)self->_configuration focusCursorBorderWidth];
  v7 = v6;
  if ([(_UIStackedImageConfiguration *)self->_configuration focusCursorEnabled])
  {
    v8 = fabs(width);
    if (fabs(height) < 2.22044605e-16 || v8 < 2.22044605e-16)
    {
      width = *MEMORY[0x1E695F060];
      height = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v10 = fmin(v7 * 4.0, fmin(width, height));
      if (width <= height)
      {
        v12 = height * v10 / width;
        width = width - v10;
        height = height - v12;
      }

      else
      {
        v11 = width * v10 / height;
        height = height - v10;
        width = width - v11;
      }
    }
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)_scaledSizeForCurrentState
{
  [(_UIStackedImageContainerLayer *)self _effectiveScaleSizeIncrease];
  v4 = v3;
  [(_UIStackedImageContainerLayer *)self _roundedBoundsSize];
  [objc_opt_class() _scaledSizeForSize:self->_selectionStyle focusSizeIncrease:v5 selectionStyle:{v6, v4}];

  [(_UIStackedImageContainerLayer *)self _focusCursorInsetSizeForSize:?];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_roundedBoundsSize
{
  [(_UIStackedImageContainerLayer *)self bounds];
  v3 = round(v2);
  v5 = round(v4);
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)_layerBelowTitles
{
  radiosityLayer = self->_radiosityLayer;
  if (!radiosityLayer)
  {
    radiosityLayer = self->_shadowLayer;
  }

  return radiosityLayer;
}

- (void)_setSelectionStyle:(int64_t)style
{
  selectionStyle = self->_selectionStyle;
  self->_selectionStyle = style;
  if (style == 1)
  {
    [(_UIStackedImageConfiguration *)self->_configuration setTranslationOffset:10.0, 0.0];
    [(_UIStackedImageConfiguration *)self->_configuration setRotationAmount:0.0];
    [(_UIStackedImageConfiguration *)self->_configuration setSpecularOpacity:0.0];
    [(_UIStackedImageConfiguration *)self->_configuration setBoostBrightness:0];
    [(_UIStackedImageConfiguration *)self->_configuration setRadiosityStrength:0.0];
    [(_UIStackedImageConfiguration *)self->_configuration setScaleSizeIncrease:0.0];
  }

  if (selectionStyle != style)
  {

    [(_UIStackedImageContainerLayer *)self setNeedsLayout];
  }
}

- (void)_setImageStackContentsGravity:(id)gravity
{
  v16 = *MEMORY[0x1E69E9840];
  gravityCopy = gravity;
  if (([(NSString *)self->_imageStackContentsGravity isEqual:gravityCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_imageStackContentsGravity, gravity);
    [(CALayer *)self->_flatLayer setContentsGravity:self->_imageStackContentsGravity];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_imageLayers;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          [*(*(&v11 + 1) + 8 * v10++) setContentsGravity:{self->_imageStackContentsGravity, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_setOverlayLayer:(id)layer
{
  layerCopy = layer;
  if (self->_overlayLayer != layerCopy)
  {
    [(_UIStackedImageContainerLayer *)self _removeLayerFromSuperlayer:?];
    [(_UIStackedImageContainerLayer *)self _removeLayerFromSuperlayer:self->_overlayContainerLayer];
    overlayContainerLayer = self->_overlayContainerLayer;
    self->_overlayContainerLayer = 0;

    objc_storeStrong(&self->_overlayLayer, layer);
    overlayLayer = self->_overlayLayer;
    if (overlayLayer)
    {
      delegate = [(CALayer *)overlayLayer delegate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [delegate removeFromSuperview];
      }

      [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(CALayer *)self->_overlayLayer setFrame:?];
      disableActions = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v17 = objc_alloc_init(MEMORY[0x1E6979398]);
      v18 = self->_overlayContainerLayer;
      self->_overlayContainerLayer = v17;

      [(CALayer *)self->_overlayContainerLayer setFrame:v9, v11, v13, v15];
      [(CALayer *)self->_overlayContainerLayer addSublayer:self->_overlayLayer];
      [(CALayer *)self->_overlayContainerLayer setZPosition:0.01];
      [(CALayer *)self->_overlayContainerLayer setDelegate:self];
      if (self->_animatingToNormalState || [(_UIStackedImageContainerLayer *)self _isFocused]|| [(_UIStackedImageContainerLayer *)self _isSelected])
      {
        _layerForImageStackHosting = [(_UIStackedImageContainerLayer *)self _layerForImageStackHosting];
        v20 = self->_overlayContainerLayer;
        _layerAboveOverlayContainer = [(_UIStackedImageContainerLayer *)self _layerAboveOverlayContainer];
        [_layerForImageStackHosting insertSublayer:v20 below:_layerAboveOverlayContainer];
      }

      else
      {
        _layerForImageStackHosting = [(_UIStackedImageContainerLayer *)self _layerForUnfocusedOverlayContainerHosting];
        [_layerForImageStackHosting addSublayer:self->_overlayContainerLayer];
      }

      v22 = CALayerGetDelegate();
      IsKindOfUIView = _IsKindOfUIView(v22);

      if (IsKindOfUIView)
      {
        v24 = CALayerGetDelegate();
        v25 = _IsKindOfUIView(v24);

        if (v25)
        {
          [(_UIStackedImageContainerLayer *)self _wrapImageLayerHierarchyInViews];
          v26 = CALayerGetDelegate();
          if (_IsKindOfUIView(v26))
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          [v27 setAutoresizingMask:18];
          [v27 setTranslatesAutoresizingMaskIntoConstraints:1];
        }
      }

      if ([(_UIStackedImageContainerLayer *)self _isFocused]|| [(_UIStackedImageContainerLayer *)self _isSelected])
      {
        [(_UIStackedImageContainerLayer *)self _applyFocusDirectionTransformWithAnimationCoordinator:0];
      }

      [MEMORY[0x1E6979518] setDisableActions:disableActions];
    }
  }
}

- (void)_wrapImageLayerHierarchyInViews
{
  if (self->_flatLayer)
  {
    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_flatMaskLayer];
    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_flatLayer];
  }

  if (self->_imageLayersContainer)
  {
    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:?];
    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_imageBackgroundEffectScaleTransformLayer];
    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_imagePrePerspectiveRotationBackgroundEffectContainer];
    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_imagePrePerspectiveRotationParallaxTransformLayer];
    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_imagePerspectiveTransformLayer];
    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_imageRotationTransformLayer];
    if (self->_imagePostPerspectiveRotationBackgroundEffectContainer)
    {
      [(_UIStackedImageContainerLayer *)self _wrapLayerInView:?];
    }

    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_imagePostPerspectiveRotationParallaxTransformLayer];
  }

  if (self->_overlayContainerLayer)
  {

    [(_UIStackedImageContainerLayer *)self _wrapLayerInView:?];
  }
}

- (void)_setUnmaskedOverlayLayer:(id)layer
{
  layerCopy = layer;
  if (self->_unmaskedOverlayLayer != layerCopy)
  {
    [(_UIStackedImageContainerLayer *)self _removeLayerFromSuperlayer:?];
    [(_UIStackedImageContainerLayer *)self _removeLayerFromSuperlayer:self->_unmaskedOverlayContainerLayer];
    unmaskedOverlayContainerLayer = self->_unmaskedOverlayContainerLayer;
    self->_unmaskedOverlayContainerLayer = 0;

    [(_UIStackedImageContainerLayer *)self _removeLayerFromSuperlayer:self->_unmaskedOverlayRotationTransformLayer];
    unmaskedOverlayRotationTransformLayer = self->_unmaskedOverlayRotationTransformLayer;
    self->_unmaskedOverlayRotationTransformLayer = 0;

    [(_UIStackedImageContainerLayer *)self _removeLayerFromSuperlayer:self->_unmaskedOverlayPerspectiveTransformLayer];
    unmaskedOverlayPerspectiveTransformLayer = self->_unmaskedOverlayPerspectiveTransformLayer;
    self->_unmaskedOverlayPerspectiveTransformLayer = 0;

    objc_storeStrong(&self->_unmaskedOverlayLayer, layer);
    unmaskedOverlayLayer = self->_unmaskedOverlayLayer;
    if (unmaskedOverlayLayer)
    {
      delegate = [(CALayer *)unmaskedOverlayLayer delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        delegate2 = [(CALayer *)self->_unmaskedOverlayLayer delegate];
        [delegate2 removeFromSuperview];
      }

      [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(CALayer *)self->_unmaskedOverlayLayer setFrame:?];
      disableActions = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v21 = objc_alloc_init(MEMORY[0x1E6979530]);
      v22 = self->_unmaskedOverlayPerspectiveTransformLayer;
      self->_unmaskedOverlayPerspectiveTransformLayer = v21;

      [(CATransformLayer *)self->_unmaskedOverlayPerspectiveTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_unmaskedOverlayPerspectiveTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_unmaskedOverlayPerspectiveTransformLayer setFrame:v13, v15, v17, v19];
      [(_UIStackedImageContainerLayer *)self insertSublayer:self->_unmaskedOverlayPerspectiveTransformLayer above:self->_imageLayersContainer];
      v23 = objc_alloc_init(MEMORY[0x1E6979530]);
      v24 = self->_unmaskedOverlayRotationTransformLayer;
      self->_unmaskedOverlayRotationTransformLayer = v23;

      [(CATransformLayer *)self->_unmaskedOverlayRotationTransformLayer setDelegate:self];
      [(CATransformLayer *)self->_unmaskedOverlayRotationTransformLayer setAnchorPoint:0.5, 0.5];
      [(CATransformLayer *)self->_unmaskedOverlayRotationTransformLayer setFrame:v13, v15, v17, v19];
      [(CATransformLayer *)self->_unmaskedOverlayPerspectiveTransformLayer addSublayer:self->_unmaskedOverlayRotationTransformLayer];
      v25 = objc_alloc_init(MEMORY[0x1E6979398]);
      v26 = self->_unmaskedOverlayContainerLayer;
      self->_unmaskedOverlayContainerLayer = v25;

      [(CALayer *)self->_unmaskedOverlayContainerLayer setFrame:v13, v15, v17, v19];
      [(CALayer *)self->_unmaskedOverlayContainerLayer setZPosition:0.011];
      [(CALayer *)self->_unmaskedOverlayContainerLayer setDelegate:self];
      [(CATransformLayer *)self->_unmaskedOverlayRotationTransformLayer addSublayer:self->_unmaskedOverlayContainerLayer];
      [(CALayer *)self->_unmaskedOverlayContainerLayer addSublayer:self->_unmaskedOverlayLayer];
      v27 = CALayerGetDelegate();
      IsKindOfUIView = _IsKindOfUIView(v27);

      if (IsKindOfUIView)
      {
        v29 = CALayerGetDelegate();
        v30 = _IsKindOfUIView(v29);

        if (v30)
        {
          [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_unmaskedOverlayPerspectiveTransformLayer];
          [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_unmaskedOverlayRotationTransformLayer];
          [(_UIStackedImageContainerLayer *)self _wrapLayerInView:self->_unmaskedOverlayContainerLayer];
          v31 = CALayerGetDelegate();
          if (_IsKindOfUIView(v31))
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          [v32 setAutoresizingMask:18];
          [v32 setTranslatesAutoresizingMaskIntoConstraints:1];
        }
      }

      if ([(_UIStackedImageContainerLayer *)self _isFocused]|| [(_UIStackedImageContainerLayer *)self _isSelected])
      {
        [(_UIStackedImageContainerLayer *)self _applyFocusDirectionTransformWithAnimationCoordinator:0];
      }

      [MEMORY[0x1E6979518] setDisableActions:disableActions];
    }
  }
}

- (void)_removeLayerFromSuperlayer:(id)superlayer
{
  superlayerCopy = superlayer;
  v3 = CALayerGetDelegate();
  if (_IsKindOfUIView(v3))
  {
    if (v3)
    {
      [v3 removeFromSuperview];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [superlayerCopy removeFromSuperlayer];
LABEL_6:
}

- (void)_wrapLayerInView:(id)view
{
  v32 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  delegate = [viewCopy delegate];
  if ((_IsKindOfUIView(delegate) & 1) == 0)
  {
    superlayer = [viewCopy superlayer];
    v8 = CALayerGetDelegate();
    if ((_IsKindOfUIView(v8) & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStackedImageContainerLayer.m" lineNumber:2588 description:@"called _wrapLayerInView: on a layer whose superlayer is not in a view"];
    }

    v26 = superlayer;
    sublayers = [superlayer sublayers];
    v10 = [sublayers indexOfObject:viewCopy];

    isHidden = [viewCopy isHidden];
    v12 = [(UIView *)[_UIStackedImageLayerWrappingView alloc] _initWithLayer:viewCopy];
    if (![(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering])
    {
      [v12 setActionDelegate:delegate];
    }

    [v12 setHidden:isHidden];
    v25 = v8;
    [v8 insertSubview:v12 atIndex:v10];
    sublayers2 = [viewCopy sublayers];
    v14 = [sublayers2 copy];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          delegate2 = [v20 delegate];
          IsKindOfUIView = _IsKindOfUIView(delegate2);

          if (IsKindOfUIView)
          {
            [v20 removeFromSuperlayer];
            v23 = CALayerGetDelegate();
            [v12 insertSubview:v23 atIndex:{objc_msgSend(v15, "indexOfObject:", v20)}];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v17);
    }
  }
}

- (void)_setParallaxLayerDepths:(id)depths
{
  depthsCopy = depths;
  if (![(NSArray *)self->_parallaxLayerDepths isEqualToArray:?])
  {
    v4 = [depthsCopy copy];
    parallaxLayerDepths = self->_parallaxLayerDepths;
    self->_parallaxLayerDepths = v4;

    [(_UIStackedImageContainerLayer *)self _applyFocusDirectionTransform];
  }
}

- (double)_parallaxDepthAtIndex:(int64_t)index
{
  _isEligibleFor3DTransforms = [(_UIStackedImageContainerLayer *)self _isEligibleFor3DTransforms];
  if (index < 0 || !_isEligibleFor3DTransforms || ![(NSArray *)self->_parallaxLayerDepths count])
  {
    return 0.0;
  }

  v6 = [(NSArray *)self->_parallaxLayerDepths count];
  parallaxLayerDepths = self->_parallaxLayerDepths;
  if (v6 <= index)
  {
    [(NSArray *)parallaxLayerDepths lastObject];
  }

  else
  {
    [(NSArray *)parallaxLayerDepths objectAtIndex:index];
  }
  v9 = ;
  [v9 doubleValue];
  v11 = v10;

  return v11;
}

- (double)_deepestParallaxDepthWithOverlayDepth:(BOOL)depth
{
  depthCopy = depth;
  v5 = 0.0;
  if ([(_UIStackedImageContainerLayer *)self _isEligibleFor3DTransforms])
  {
    [(_UIStackedImageContainerLayer *)self _parallaxDepthAtIndex:[(NSArray *)self->_parallaxLayerDepths count]- 1];
    v5 = v6;
    if (depthCopy)
    {
      if ([(NSArray *)self->_imageLayers count]> 1)
      {
        [(_UIStackedImageConfiguration *)self->_configuration overlayDepth];
        v7 = v5 + v8;
      }

      else
      {
        v7 = self->_maximumParallaxDepth * 0.5;
      }

      return fmax(v7, 15.0);
    }
  }

  return v5;
}

- (void)_setDefaultParallaxLayerDepths
{
  maximumParallaxDepth = self->_maximumParallaxDepth;
  v4 = [(NSArray *)self->_parallaxImages count];
  if (v4 < 2)
  {
    v12 = &unk_1EFE2E080;
  }

  else
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    v7 = 0;
    v8 = maximumParallaxDepth / (v5 - 1);
    do
    {
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:v8 * v7];
      [v6 addObject:v9];

      ++v7;
    }

    while (v5 != v7);
    v12 = [v6 copy];
  }

  v10 = [v12 copy];
  parallaxLayerDepths = self->_parallaxLayerDepths;
  self->_parallaxLayerDepths = v10;
}

- (CGImage)_cgImageForLayeredImage:(id)image
{
  imageObj = [image imageObj];
  cGImage = [imageObj CGImage];

  return cGImage;
}

- (void)_setLayerStackInflated:(BOOL)inflated seed:(unint64_t)seed
{
  v45 = *MEMORY[0x1E69E9840];
  if (self->_layerStackSupportsInflation)
  {
    if (inflated)
    {
      self->_deferredInflationPending = 0;
    }

    if (self->_layerStackInflationSeed == seed && self->_layerStackInflated != inflated)
    {
      self->_layerStackInflated = inflated;
      layerStack = self->_layerStack;
      if (inflated)
      {
        [(UINamedLayerStack *)layerStack _inflateLayerStack];
      }

      else
      {
        [(UINamedLayerStack *)layerStack _deflateLayerStack];
      }

      layers = [(UINamedLayerStack *)self->_layerStack layers];
      v8 = [layers copy];
      parallaxImages = self->_parallaxImages;
      self->_parallaxImages = v8;

      v10 = [(NSArray *)self->_parallaxImages count];
      if (v10 != [(NSArray *)self->_imageLayers count])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStackedImageContainerLayer.m" lineNumber:2746 description:@"The number of stack layers changed after inflation / deflation. Please keep the layer count the same and use NULL images for deflated layers"];
      }

      disableActions = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = self->_parallaxImages;
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v41;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v40 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) != 0 && ([v16 contentProvider], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v18 = v17;
              v19 = [(NSArray *)self->_imageLayers objectAtIndexedSubscript:v13];
              sublayers = [v19 sublayers];
              [sublayers makeObjectsPerformSelector:sel_removeFromSuperlayer];

              contentLayer = [v18 contentLayer];
              if (contentLayer)
              {
                [v19 bounds];
                v23 = v22;
                v25 = v24;
                v27 = v26;
                v29 = v28;
                [contentLayer setBounds:?];
                v46.origin.x = v23;
                v46.origin.y = v25;
                v46.size.width = v27;
                v46.size.height = v29;
                MidX = CGRectGetMidX(v46);
                v47.origin.x = v23;
                v47.origin.y = v25;
                v47.size.width = v27;
                v47.size.height = v29;
                [contentLayer setPosition:{MidX, CGRectGetMidY(v47)}];
                [v19 addSublayer:contentLayer];
              }
            }

            else
            {
              v31 = [(_UIStackedImageContainerLayer *)self _cgImageForLayeredImage:v16];
              v18 = [(NSArray *)self->_imageLayers objectAtIndexedSubscript:v13];
              [v18 setContents:v31];
            }

            ++v13;
          }

          v12 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v12);
      }

      if (!inflated)
      {
        firstObject = [(NSArray *)self->_imageLayers firstObject];
        contents = [firstObject contents];

        if (!contents)
        {
          contents2 = [(CALayer *)self->_flatLayer contents];
          firstObject2 = [(NSArray *)self->_imageLayers firstObject];
          [firstObject2 setContents:contents2];
        }
      }

      [MEMORY[0x1E6979518] setDisableActions:disableActions];
    }
  }
}

- (id)_contentLayers
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_flatLayer)
  {
    [array addObject:?];
  }

  if (self->_radiosityLayer)
  {
    [v4 addObject:?];
  }

  if (self->_selectedPlaceholderLayer)
  {
    [v4 addObject:?];
  }

  if (self->_specularLayer)
  {
    [v4 addObject:?];
  }

  if (self->_imageLayers)
  {
    [v4 addObjectsFromArray:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (void)_updateSpecularLayerVisibility
{
  v3 = [(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering]&& (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRenderingSpecularEnabled, @"UISolariumNewStackedImageRenderingSpecularEnabled", _UIInternalPreferenceUpdateBool) & 1) == 0 && !byte_1EA95E8FC;
  specularLayer = self->_specularLayer;

  [(_UIStackedImageContainerLayer *)self _updateLayer:specularLayer isHidden:v3];
}

- (double)_focusedScaleFactorForCurrentBounds
{
  [(_UIStackedImageContainerLayer *)self bounds];
  IsEmpty = CGRectIsEmpty(v12);
  result = 1.0;
  if (!IsEmpty)
  {
    [(_UIStackedImageContainerLayer *)self _roundedBoundsSize];
    v6 = v5;
    v8 = v7;
    [(_UIStackedImageContainerLayer *)self _scaledSizeForCurrentState];
    result = v9 / v6;
    v11 = v10 / v8;
    if (result < v11)
    {
      return v11;
    }
  }

  return result;
}

- (BOOL)_radiosityEnabled
{
  if (![(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering]|| (v3 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRenderingRadiosityEnabled, @"UISolariumNewStackedImageRenderingRadiosityEnabled", _UIInternalPreferenceUpdateBool), result = 0, (v3 & 1) == 0) && byte_1EA95E904)
  {
    [(_UIStackedImageConfiguration *)self->_configuration radiosityStrength];
    return fabs(v5) >= 2.22044605e-16;
  }

  return result;
}

- (CGPoint)_layerStackToDisplayScaleFactor
{
  [(UINamedLayerStack *)self->_layerStack size];
  v4 = v3;
  v6 = v5;
  [(_UIStackedImageContainerLayer *)self _roundedBoundsSize];
  v9 = v4 == 0.0 || v7 == 0.0;
  v10 = v4 / v7;
  if (v9)
  {
    v10 = 1.0;
  }

  v11 = v6 == 0.0 || v8 == 0.0;
  v12 = v6 / v8;
  if (v11)
  {
    v12 = 1.0;
  }

  result.y = v12;
  result.x = v10;
  return result;
}

- (CGRect)_displayFrameForModelFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_UIStackedImageContainerLayer *)self _layerStackToDisplayScaleFactor];
  v8 = width / v7;
  v9 = floor(x / v7);
  v10 = floor(v8);
  v12 = floor(height / v11);
  v13 = floor(y / v11);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v13;
  result.origin.x = v9;
  return result;
}

- (CGRect)_positionAndSizeForLayerImage:(id)image
{
  [image frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v8 * 0.5;
  v13 = v10 * 0.5;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  _imageStackContentsGravity = [(_UIStackedImageContainerLayer *)self _imageStackContentsGravity];
  v16 = [_imageStackContentsGravity isEqualToString:*MEMORY[0x1E6979DF0]];

  if (has_internal_diagnostics)
  {
    if ((v16 & 1) == 0)
    {
      v34 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v34, OS_LOG_TYPE_FAULT, "_UIStackedImageContainerLayer: only ResizeAspectFill is supported for image stacks", buf, 2u);
      }
    }
  }

  else if ((v16 & 1) == 0)
  {
    v35 = *(__UILogGetCategoryCachedImpl("Assert", &_positionAndSizeForLayerImage____s_category) + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "_UIStackedImageContainerLayer: only ResizeAspectFill is supported for image stacks", v36, 2u);
    }
  }

  v17 = v5 + v12;
  v18 = v7 + v13;
  v19 = floor(v9);
  v20 = floor(v11);
  [(_UIStackedImageContainerLayer *)self _expandedStackLayoutBounds];
  v22 = v21;
  v24 = v23;
  [(UINamedLayerStack *)self->_layerStack size];
  if (v25 > 0.0 && v26 > 0.0 && v22 > 0.0 && v24 > 0.0)
  {
    v27 = v25 / v22;
    v28 = v26 / v24;
    if (v25 / v22 >= v26 / v24)
    {
      v29 = v26 / v24;
    }

    else
    {
      v29 = v25 / v22;
    }

    v17 = v17 / v29;
    v18 = v18 / v29;
    v19 = v19 / v29;
    v20 = v20 / v29;
    if (v25 / v22 < v26 / v24)
    {
      v18 = v18 + round((v26 / v28 - v26 / v27) * 0.5);
    }

    else
    {
      v17 = v17 + round((v25 / v27 - v25 / v28) * 0.5);
    }
  }

  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)_applyFocusDirectionTransformWithAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
  _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
  _isHighlighted = [(_UIStackedImageContainerLayer *)self _isHighlighted];
  [(_UIStackedImageContainerLayer *)self _updateMaskScaleTransform];
  if (!self->_nonOpaqueShadow && self->_selectionStyle == 1 && [(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth])
  {
    if (_isHighlighted)
    {
      v8 = 1.0 - (self->_scale + -1.0);
      CATransform3DMakeScale(&v35, v8, v8, 1.0);
      overlayContainerLayer = self->_overlayContainerLayer;
      v34 = v35;
      [(CALayer *)overlayContainerLayer setTransform:&v34];
      CATransform3DMakeScale(&v33, v8, v8, 1.0);
      unmaskedOverlayContainerLayer = self->_unmaskedOverlayContainerLayer;
      v34 = v33;
      [(CALayer *)unmaskedOverlayContainerLayer setTransform:&v34];
    }

    else
    {
      v11 = self->_overlayContainerLayer;
      v30 = *(MEMORY[0x1E69792E8] + 80);
      *&v34.m31 = *(MEMORY[0x1E69792E8] + 64);
      v31 = *&v34.m31;
      *&v34.m33 = v30;
      v28 = *(MEMORY[0x1E69792E8] + 112);
      *&v34.m41 = *(MEMORY[0x1E69792E8] + 96);
      v29 = *&v34.m41;
      *&v34.m43 = v28;
      v26 = *(MEMORY[0x1E69792E8] + 16);
      *&v34.m11 = *MEMORY[0x1E69792E8];
      v27 = *&v34.m11;
      *&v34.m13 = v26;
      v24 = *(MEMORY[0x1E69792E8] + 48);
      *&v34.m21 = *(MEMORY[0x1E69792E8] + 32);
      v25 = *&v34.m21;
      *&v34.m23 = v24;
      [(CALayer *)v11 setTransform:&v34];
      v12 = self->_unmaskedOverlayContainerLayer;
      *&v34.m31 = v31;
      *&v34.m33 = v30;
      *&v34.m41 = v29;
      *&v34.m43 = v28;
      *&v34.m11 = v27;
      *&v34.m13 = v26;
      *&v34.m21 = v25;
      *&v34.m23 = v24;
      [(CALayer *)v12 setTransform:&v34];
      [(_UIStackedImageContainerLayer *)self _updateOverlayLayout];
    }
  }

  if (![(CALayer *)self->_selectedPlaceholderLayer isHidden])
  {
    memset(&v34, 0, sizeof(v34));
    [(_UIStackedImageContainerLayer *)self _imageLayersScaleTransformForCurrentState];
    if (self->_selectionStyle == 1 && [(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth]&& (_isFocused || _isSelected || _isHighlighted))
    {
      CATransform3DMakeScale(&v32, self->_scale, self->_scale, 1.0);
      v34 = v32;
    }

    selectedPlaceholderLayer = self->_selectedPlaceholderLayer;
    v32 = v34;
    [(CALayer *)selectedPlaceholderLayer setTransform:&v32];
  }

  if ([(_UIStackedImageConfiguration *)self->_configuration focusCursorEnabled])
  {
    cursorLayer = self->_cursorLayer;
    [(_UIStackedImageContainerLayer *)self _cursorBounds];
    [(_UIStackedImageContainerLayer *)self _layoutSublayer:cursorLayer inSuperlayerWithBounds:0 layoutPosition:?];
  }

  [(_UIStackedImageContainerLayer *)self _updatePerspective];
  [(_UIStackedImageContainerLayer *)self _updateRotationAndTranslation:coordinatorCopy];

  [(_UIStackedImageContainerLayer *)self _updateFocusKeylineStrokeScale];
  if (_isFocused || _isHighlighted || _isSelected)
  {
    if (self->_selectionStyle == 1 && [(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth])
    {
      radiosityLayer = self->_radiosityLayer;
      scale = self->_scale;
      v17 = 1.0;
      v18 = 1.0;
    }

    else
    {
      radiosityLayer = self->_radiosityLayer;
      v17 = self->_scale;
      v18 = 1.0;
      scale = v17;
    }

    CATransform3DMakeScale(&v34, v17, scale, v18);
    v19 = radiosityLayer;
  }

  else
  {
    v19 = self->_radiosityLayer;
    v20 = *(MEMORY[0x1E69792E8] + 80);
    *&v34.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v34.m33 = v20;
    v21 = *(MEMORY[0x1E69792E8] + 112);
    *&v34.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v34.m43 = v21;
    v22 = *(MEMORY[0x1E69792E8] + 16);
    *&v34.m11 = *MEMORY[0x1E69792E8];
    *&v34.m13 = v22;
    v23 = *(MEMORY[0x1E69792E8] + 48);
    *&v34.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v34.m23 = v23;
  }

  [(CALayer *)v19 setTransform:&v34];
  [(_UIStackedImageContainerLayer *)self _updateFullBleedImageLayers];
  [(_UIStackedImageContainerLayer *)self _updateNormalImageLayers];
  [(_UIStackedImageContainerLayer *)self _updateContentProviderLayerFocusDirection];
  [(_UIStackedImageContainerLayer *)self _updateShadowWithCATransaction:1];
  [(_UIStackedImageContainerLayer *)self _updateImageLayerFilterValues];
}

- (void)_updateOverlayContainerLayerHierarchy:(BOOL)hierarchy
{
  if (!self->_overlayContainerLayer)
  {
    return;
  }

  if (hierarchy)
  {
    _layerForImageStackHosting = [(_UIStackedImageContainerLayer *)self _layerForImageStackHosting];
    _layerAboveOverlayContainer = [(_UIStackedImageContainerLayer *)self _layerAboveOverlayContainer];
    v5 = CALayerGetDelegate();
    IsKindOfUIView = _IsKindOfUIView(v5);

    if (IsKindOfUIView && (CALayerGetDelegate(), v7 = objc_claimAutoreleasedReturnValue(), v8 = _IsKindOfUIView(v7), v7, v8))
    {
      v9 = CALayerGetDelegate();
      v10 = CALayerGetDelegate();
      sublayers = [_layerForImageStackHosting sublayers];
      v12 = [sublayers indexOfObject:_layerAboveOverlayContainer];
      if ([sublayers indexOfObject:self->_overlayContainerLayer] != v12 - 1)
      {
        [v10 insertSubview:v9 atIndex:v12];
      }
    }

    else
    {
      [_layerForImageStackHosting insertSublayer:self->_overlayContainerLayer below:_layerAboveOverlayContainer];
    }
  }

  else
  {
    _layerForImageStackHosting = [(_UIStackedImageContainerLayer *)self _layerForUnfocusedOverlayContainerHosting];
    v13 = CALayerGetDelegate();
    v14 = _IsKindOfUIView(v13);

    if (!v14 || (CALayerGetDelegate(), v15 = objc_claimAutoreleasedReturnValue(), v16 = _IsKindOfUIView(v15), v15, !v16))
    {
      [_layerForImageStackHosting addSublayer:self->_overlayContainerLayer];
      goto LABEL_15;
    }

    _layerAboveOverlayContainer = CALayerGetDelegate();
    v17 = CALayerGetDelegate();
    [_layerAboveOverlayContainer addSubview:v17];
  }

LABEL_15:
}

- (void)_showImageLayers
{
  disableActions = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(_UIStackedImageContainerLayer *)self _updateLayer:self->_flatLayer isHidden:1];
  [(_UIStackedImageContainerLayer *)self _updateLayer:self->_imageLayersContainer isHidden:0];
  if (![(NSArray *)self->_parallaxImages count])
  {
    _layerForImageStackHosting = [(_UIStackedImageContainerLayer *)self _layerForImageStackHosting];
    selectedPlaceholderLayer = self->_selectedPlaceholderLayer;
    _layerAboveImageLayers = [(_UIStackedImageContainerLayer *)self _layerAboveImageLayers];
    [_layerForImageStackHosting insertSublayer:selectedPlaceholderLayer below:_layerAboveImageLayers];
  }

  [(_UIStackedImageContainerLayer *)self _updateOverlayContainerLayerHierarchy:1];
  v7 = MEMORY[0x1E6979518];

  [v7 setDisableActions:disableActions];
}

- (void)_updateLayer:(id)layer isHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  layerCopy = layer;
  v5 = CALayerGetDelegate();
  if (_IsKindOfUIView(v5))
  {
    if (v5)
    {
      [v5 setHidden:hiddenCopy];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [layerCopy setHidden:hiddenCopy];
LABEL_6:
}

- (double)_idleModeFocusSizeOffset
{
  v2 = *(__UILogGetCategoryCachedImpl("LayeredImage", &_idleModeFocusSizeOffset___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "FocusedIdle mode is no longer supported.", v4, 2u);
  }

  return 0.0;
}

- (unint64_t)_primaryControlStateForState:(unint64_t)state
{
  v3 = state & 4;
  if ((state & 8) != 0)
  {
    v3 = 8;
  }

  if (state)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)_resetAnimatingToNormalState
{
  self->_animatingToNormalState = 0;
  if ([(_UIStackedImageContainerLayer *)self _isNormal])
  {
    disableActions = [MEMORY[0x1E6979518] disableActions];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(_UIStackedImageContainerLayer *)self _updateLayer:self->_flatLayer isHidden:0];
    [(_UIStackedImageContainerLayer *)self _updateLayer:self->_imageLayersContainer isHidden:1];
    [(CALayer *)self->_selectedPlaceholderLayer removeFromSuperlayer];
    [(_UIStackedImageContainerLayer *)self _updateOverlayContainerLayerHierarchy:0];
    [(CALayer *)self->_shadowLayer removeAllAnimations];
    [(CALayer *)self->_shadowLayer clearHasBeenCommitted];
    [(CALayer *)self->_unfocusedShadowLayer removeAllAnimations];
    [(CALayer *)self->_unfocusedShadowLayer clearHasBeenCommitted];
    [(CALayer *)self->_radiosityLayer removeAllAnimations];
    [(CALayer *)self->_radiosityLayer clearHasBeenCommitted];
    [(CALayer *)self->_overlayContainerLayer removeAllAnimations];
    [(CALayer *)self->_overlayContainerLayer clearHasBeenCommitted];
    [(CALayer *)self->_unmaskedOverlayContainerLayer removeAllAnimations];
    [(CALayer *)self->_unmaskedOverlayContainerLayer clearHasBeenCommitted];
    [(_UIStackedImageContainerLayer *)self _applyFocusDirectionTransform];
    [(_UIStackedImageContainerLayer *)self _setLayerStackInflated:0 seed:self->_layerStackInflationSeed++];
    v4 = MEMORY[0x1E6979518];

    [v4 setDisableActions:disableActions];
  }
}

- (void)_setFlatImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (self->_flatImage != imageCopy || !imageCopy && (-[CALayer contents](self->_flatLayer, "contents"), v10 = objc_claimAutoreleasedReturnValue(), -[_UIStackedImageConfiguration placeholderImage](self->_configuration, "placeholderImage"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 CGImage], v11, v10, v10 != v12))
  {
    objc_storeStrong(&self->_flatImage, image);
    contents = [(CALayer *)self->_flatLayer contents];
    flatImage = self->_flatImage;
    if (flatImage)
    {
      cGImage = flatImage;
    }

    else
    {
      placeholderImage = [(_UIStackedImageConfiguration *)self->_configuration placeholderImage];
      cGImage = [placeholderImage CGImage];
    }

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __47___UIStackedImageContainerLayer__setFlatImage___block_invoke;
    v28 = &unk_1E70F35B8;
    selfCopy = self;
    v14 = cGImage;
    v30 = v14;
    v15 = _Block_copy(&v25);
    if (contents)
    {
      v16 = [(_UIStackedImageConfiguration *)self->_configuration placeholderImage:v25];
      if (contents == [v16 CGImage])
      {
        v17 = self->_flatImage;

        if (v14 == v17)
        {
          if (+[UIView areAnimationsEnabled])
          {
            currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
            currentMode = [currentRunLoop currentMode];
            v20 = [currentMode isEqualToString:@"UITrackingRunLoopMode"];

            if ((v20 & 1) == 0)
            {
              [MEMORY[0x1E6979518] animationDuration];
              v23 = v22;
              disableActions = [MEMORY[0x1E6979518] disableActions];
              [MEMORY[0x1E6979518] setDisableActions:0];
              [MEMORY[0x1E6979518] setAnimationDuration:0.35];
              v15[2](v15);
              [MEMORY[0x1E6979518] setDisableActions:disableActions];
              [MEMORY[0x1E6979518] setAnimationDuration:v23];
              goto LABEL_15;
            }
          }
        }
      }

      else
      {
      }
    }

    disableActions2 = [MEMORY[0x1E6979518] disableActions];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v15[2](v15);
    [MEMORY[0x1E6979518] setDisableActions:disableActions2];
LABEL_15:
  }
}

- (void)_setIdleModeFocusSizeOffset:(double)offset
{
  v3 = *(__UILogGetCategoryCachedImpl("LayeredImage", &_setIdleModeFocusSizeOffset____s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "FocusedIdle mode is no longer supported.", v4, 2u);
  }
}

- (id)_randomImage
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (qword_1EA994AA0 != -1)
  {
    dispatch_once(&qword_1EA994AA0, &__block_literal_global_245);
  }

  v3 = MEMORY[0x1E696B098];
  [(UINamedLayerStack *)self->_layerStack size];
  v4 = [v3 valueWithCGSize:?];
  v5 = [qword_1EA994A98 objectForKey:v4];
  if (!v5)
  {
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    [(UINamedLayerStack *)self->_layerStack size];
    v9 = v8;
    v11 = v10;
    v12 = [MEMORY[0x1E695F648] filterWithName:@"CIRandomGenerator"];
    outputImage = [v12 outputImage];

    v20 = @"inputRectangle";
    v14 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v9 W:v11];
    v21[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v16 = [outputImage imageByApplyingFilter:@"CICrop" withInputParameters:v15];

    v17 = [[UIImage alloc] initWithCIImage:v16];
    _UIGraphicsBeginImageContextWithOptions(0, 0, v9, v11, 1.0);
    [(UIImage *)v17 drawInRect:0 blendMode:v6 alpha:v7, v9, v11, 0.25];
    v18 = _UIGraphicsGetImageFromCurrentImageContext(0);

    UIGraphicsEndImageContext();
    v5 = objc_alloc_init(_UIStackedImageSimpleImage);
    [(_UIStackedImageSimpleImage *)v5 setName:@"noise"];
    [(_UIStackedImageSimpleImage *)v5 setFrame:v6, v7, v9, v11];
    [(_UIStackedImageSimpleImage *)v5 setOpacity:1.0];
    [(_UIStackedImageSimpleImage *)v5 setBlendMode:0];
    [(_UIStackedImageSimpleImage *)v5 setImageObj:v18];
    [qword_1EA994A98 setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_setParallaxImages:(id)images
{
  imagesCopy = images;
  if (![(NSArray *)self->_parallaxImages isEqualToArray:imagesCopy])
  {
    maximumParallaxImages = [(_UIStackedImageConfiguration *)self->_configuration maximumParallaxImages];
    if ([imagesCopy count] > maximumParallaxImages)
    {
      NSLog(&cfstr_ImageStacksWit.isa, maximumParallaxImages);
      v6 = [imagesCopy subarrayWithRange:{0, maximumParallaxImages}];

      imagesCopy = v6;
    }

    if (!_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceMaxParallaxLayers, @"ForceMaxParallaxLayers", _UIInternalPreferenceUpdateBool) && byte_1EA95E934 && imagesCopy)
    {
      v7 = [imagesCopy mutableCopy];
      v8 = v7;
      while ([v7 count] < maximumParallaxImages)
      {
        _randomImage = [(_UIStackedImageContainerLayer *)self _randomImage];
        [v8 addObject:_randomImage];

        v7 = v8;
      }
    }

    else
    {
      v8 = imagesCopy;
    }

    [(NSArray *)self->_imageLayers makeObjectsPerformSelector:sel_setContents_ withObject:0];
    [(NSArray *)self->_imageLayers makeObjectsPerformSelector:sel_removeFromSuperlayer];
    v39 = v8;
    v10 = [v8 copy];
    parallaxImages = self->_parallaxImages;
    self->_parallaxImages = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_parallaxImages, "count")}];
    _layerForImageStackHosting = [(_UIStackedImageContainerLayer *)self _layerForImageStackHosting];
    _layerAboveImageLayers = [(_UIStackedImageContainerLayer *)self _layerAboveImageLayers];
    v40 = v12;
    if ([(NSArray *)self->_parallaxImages count])
    {
      v13 = 0;
      do
      {
        v14 = [(NSArray *)self->_parallaxImages objectAtIndex:v13];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __52___UIStackedImageContainerLayer__setParallaxImages___block_invoke;
        aBlock[3] = &unk_1E712BAE0;
        aBlock[4] = self;
        v15 = v14;
        v44 = v15;
        v45 = v13;
        v16 = _Block_copy(aBlock);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v15 contentProvider], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v18 = v17;
          v19 = objc_alloc_init(MEMORY[0x1E6979530]);
          v16[2](v16, v19, v13);
          contentLayer = [v18 contentLayer];
          if (contentLayer)
          {
            [v19 bounds];
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            [contentLayer setBounds:?];
            v46.origin.x = v22;
            v46.origin.y = v24;
            v46.size.width = v26;
            v46.size.height = v28;
            MidX = CGRectGetMidX(v46);
            v47.origin.x = v22;
            v47.origin.y = v24;
            v47.size.width = v26;
            v47.size.height = v28;
            [contentLayer setPosition:{MidX, CGRectGetMidY(v47)}];
            [v19 addSublayer:contentLayer];
          }

          v12 = v40;
        }

        else
        {
          v19 = objc_alloc_init(MEMORY[0x1E6979398]);
          v16[2](v16, v19, v13);
          [v19 setContents:{-[_UIStackedImageContainerLayer _cgImageForLayeredImage:](self, "_cgImageForLayeredImage:", v15)}];
        }

        [_layerForImageStackHosting insertSublayer:v19 below:_layerAboveImageLayers];
        [v12 addObject:v19];

        ++v13;
      }

      while (v13 < [(NSArray *)self->_parallaxImages count]);
    }

    v30 = [v12 copy];
    imageLayers = self->_imageLayers;
    self->_imageLayers = v30;

    if (self->_layerStackSupportsInflation)
    {
      firstObject = [(NSArray *)self->_imageLayers firstObject];
      contents = [firstObject contents];

      if (!contents)
      {
        contents2 = [(CALayer *)self->_flatLayer contents];
        firstObject2 = [(NSArray *)self->_imageLayers firstObject];
        [firstObject2 setContents:contents2];
      }
    }

    if ([(NSArray *)self->_parallaxImages count])
    {
      [(CALayer *)self->_selectedPlaceholderLayer removeFromSuperlayer];
      imagesCopy = v39;
      v36 = v40;
      v38 = _layerAboveImageLayers;
      v37 = _layerForImageStackHosting;
    }

    else
    {
      v38 = _layerAboveImageLayers;
      v37 = _layerForImageStackHosting;
      [_layerForImageStackHosting insertSublayer:self->_selectedPlaceholderLayer below:_layerAboveImageLayers];
      imagesCopy = v39;
      v36 = v40;
    }

    [(_UIStackedImageContainerLayer *)self _setDefaultParallaxLayerDepths];
    [(_UIStackedImageContainerLayer *)self _updateImageLayerFilterChains];
    [(_UIStackedImageContainerLayer *)self _applyFocusDirectionTransform];
  }
}

- (void)_setFocusDirection:(CGPoint)direction duration:(double)duration
{
  y = direction.y;
  x = direction.x;
  if (![(_UIStackedImageContainerLayer *)self _isNormal])
  {
    v8 = fmax(fmin(x, 1.0), -1.0);
    v9 = fmax(fmin(y, 1.0), -1.0);
    if ((vabdd_f64(self->_focusDirection.x, v8) > 0.00000011920929 || vabdd_f64(self->_focusDirection.y, v9) > 0.00000011920929) && ![(_UIStackedImageContainerLayer *)self _isHighlighted])
    {
      self->_focusDirection.x = v8;
      self->_focusDirection.y = v9;
      [MEMORY[0x1E6979518] animationDuration];
      v11 = v10;
      [MEMORY[0x1E6979518] setAnimationDuration:duration];
      [(_UIStackedImageContainerLayer *)self _updateRotationAndTranslation:0];
      v12 = MEMORY[0x1E6979518];

      [v12 setAnimationDuration:v11];
    }
  }
}

- (CGVector)_imageLayersScaleAmountsForCurrentState
{
  if ([(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering])
  {
    v3 = 1.0;
    v4 = 1.0;
  }

  else
  {

    [(_UIStackedImageContainerLayer *)self _scaleAmountsForCurrentState];
  }

  result.dy = v4;
  result.dx = v3;
  return result;
}

- (CGVector)_scaleAmountsForCurrentState
{
  _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
  _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
  _isHighlighted = [(_UIStackedImageContainerLayer *)self _isHighlighted];
  if (_isFocused)
  {
    if (self->_selectionStyle == 1)
    {
      fullBleedCenteredGrowth = [(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth];
      v7 = 1.0;
      if (fullBleedCenteredGrowth)
      {
        scale = self->_scale;
      }

      else
      {
        scale = 1.0;
      }

      goto LABEL_12;
    }

LABEL_9:
    v7 = self->_scale;
    scale = v7;
    goto LABEL_12;
  }

  v7 = 1.0;
  scale = 1.0;
  if (!_isSelected && !_isHighlighted)
  {
    goto LABEL_12;
  }

  if (self->_selectionStyle != 1)
  {
    goto LABEL_9;
  }

  v9 = [(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth:1.0];
  scale = self->_scale;
  if (v9)
  {
    v7 = 1.0 - (scale + -1.0);
  }

  else
  {
    v7 = self->_scale;
  }

LABEL_12:
  result.dy = scale;
  result.dx = v7;
  return result;
}

- (CATransform3D)_scaleTransform3DForCurrentState
{
  [(_UIStackedImageContainerLayer *)self _scaleAmountsForCurrentState];

  return [(_UIStackedImageContainerLayer *)self _scaleTransform3DForScaleAmounts:?];
}

- (CATransform3D)_imageLayersScaleTransformForCurrentState
{
  [(_UIStackedImageContainerLayer *)self _imageLayersScaleAmountsForCurrentState];

  return [(_UIStackedImageContainerLayer *)self _scaleTransform3DForScaleAmounts:?];
}

- (CATransform3D)_rotationTransformForCurrentFocusDirection
{
  result = [(_UIStackedImageContainerLayer *)self _isEligibleFor3DTransforms];
  if ((result & 1) == 0)
  {
    v10 = MEMORY[0x1E69792E8];
    v11 = *(MEMORY[0x1E69792E8] + 80);
    *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
    *&retstr->m33 = v11;
    v12 = v10[7];
    *&retstr->m41 = v10[6];
    *&retstr->m43 = v12;
    v13 = v10[1];
    *&retstr->m11 = *v10;
    *&retstr->m13 = v13;
    v14 = v10[2];
    v15 = v10[3];
LABEL_5:
    *&retstr->m21 = v14;
    *&retstr->m23 = v15;
    return result;
  }

  _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
  [(_UIStackedImageConfiguration *)self->_configuration rotationAmount];
  x = v7;
  result = [(_UIStackedImageContainerLayer *)self _effectiveAdjustMotionForSize];
  if (result)
  {
    x = self->_rotationAmount.x;
    y = self->_rotationAmount.y;
  }

  else
  {
    y = x;
  }

  v16 = MEMORY[0x1E69792E8];
  v17 = *(MEMORY[0x1E69792E8] + 64);
  v18 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = v17;
  *&retstr->m33 = v18;
  v19 = v16[6];
  v20 = v16[7];
  *&retstr->m41 = v19;
  *&retstr->m43 = v20;
  v21 = *v16;
  v22 = v16[1];
  *&retstr->m11 = *v16;
  *&retstr->m13 = v22;
  v23 = v16[2];
  v24 = v16[3];
  *&retstr->m21 = v23;
  *&retstr->m23 = v24;
  if (_isFocused && self->_selectionStyle != 1)
  {
    p_focusDirection = &self->_focusDirection;
    v26 = y * p_focusDirection->y;
    *&v36.m31 = v17;
    *&v36.m33 = v18;
    *&v36.m41 = v19;
    *&v36.m43 = v20;
    *&v36.m11 = v21;
    *&v36.m13 = v22;
    *&v36.m21 = v23;
    *&v36.m23 = v24;
    CATransform3DRotate(retstr, &v36, v26, 1.0, 0.0, 0.0);
    v27 = -(p_focusDirection->x * x);
    v28 = *&retstr->m33;
    *&v35.m31 = *&retstr->m31;
    *&v35.m33 = v28;
    v29 = *&retstr->m43;
    *&v35.m41 = *&retstr->m41;
    *&v35.m43 = v29;
    v30 = *&retstr->m13;
    *&v35.m11 = *&retstr->m11;
    *&v35.m13 = v30;
    v31 = *&retstr->m23;
    *&v35.m21 = *&retstr->m21;
    *&v35.m23 = v31;
    result = CATransform3DRotate(&v36, &v35, v27, 0.0, 1.0, 0.0);
    v32 = *&v36.m33;
    *&retstr->m31 = *&v36.m31;
    *&retstr->m33 = v32;
    v33 = *&v36.m43;
    *&retstr->m41 = *&v36.m41;
    *&retstr->m43 = v33;
    v34 = *&v36.m13;
    *&retstr->m11 = *&v36.m11;
    *&retstr->m13 = v34;
    v14 = *&v36.m21;
    v15 = *&v36.m23;
    goto LABEL_5;
  }

  return result;
}

- (CATransform3D)_perspectiveTransformForCurrentState
{
  result = [(_UIStackedImageContainerLayer *)self _isEligibleFor3DTransforms];
  if (result)
  {
    _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
    _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
    result = [(_UIStackedImageContainerLayer *)self _isHighlighted];
    v8 = MEMORY[0x1E69792E8];
    v9 = *(MEMORY[0x1E69792E8] + 80);
    *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
    *&retstr->m33 = v9;
    v10 = v8[7];
    *&retstr->m41 = v8[6];
    *&retstr->m43 = v10;
    v11 = v8[1];
    *&retstr->m11 = *v8;
    *&retstr->m13 = v11;
    v12 = v8[3];
    *&retstr->m21 = v8[2];
    *&retstr->m23 = v12;
    if (_isFocused || ((_isSelected | result)) && self->_selectionStyle != 1)
    {
      result = [(_UIStackedImageConfiguration *)self->_configuration zDepth];
      retstr->m34 = -1.0 / v13;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69792E8];
    v15 = *(MEMORY[0x1E69792E8] + 80);
    *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
    *&retstr->m33 = v15;
    v16 = v14[7];
    *&retstr->m41 = v14[6];
    *&retstr->m43 = v16;
    v17 = v14[1];
    *&retstr->m11 = *v14;
    *&retstr->m13 = v17;
    v18 = v14[3];
    *&retstr->m21 = v14[2];
    *&retstr->m23 = v18;
  }

  return result;
}

- (void)_updatePerspective
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  [(_UIStackedImageContainerLayer *)self _perspectiveTransformForCurrentState];
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  [(CATransformLayer *)self->_imagePerspectiveTransformLayer setTransform:&v3];
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  [(CATransformLayer *)self->_maskPerspectiveTransformLayer setTransform:&v3];
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  [(CATransformLayer *)self->_unmaskedOverlayPerspectiveTransformLayer setTransform:&v3];
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  [(CALayer *)self->_frontmostPerspectiveTransformLayer setSublayerTransform:&v3];
  if ([(_UIStackedImageConfiguration *)self->_configuration focusCursorEnabled])
  {
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    v3 = v11;
    v4 = v12;
    v5 = v13;
    v6 = v14;
    [(CALayer *)self->_cursorLayerContainer setSublayerTransform:&v3];
  }
}

- (void)_updateRotationAndTranslation:(id)translation
{
  translationCopy = translation;
  _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
  _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
  _isHighlighted = [(_UIStackedImageContainerLayer *)self _isHighlighted];
  [(_UIStackedImageConfiguration *)self->_configuration translationOffset];
  x = v8;
  y = v10;
  if ([(_UIStackedImageContainerLayer *)self _effectiveAdjustMotionForSize])
  {
    x = self->_translationOffset.x;
    y = self->_translationOffset.y;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  [(_UIStackedImageContainerLayer *)self _rotationTransformForCurrentFocusDirection];
  v47 = v55;
  v48 = v56;
  v49 = v57;
  v50 = v58;
  v43 = v51;
  v44 = v52;
  v45 = v53;
  v46 = v54;
  [(CATransformLayer *)self->_imageRotationTransformLayer setTransform:&v43];
  v47 = v55;
  v48 = v56;
  v49 = v57;
  v50 = v58;
  v43 = v51;
  v44 = v52;
  v45 = v53;
  v46 = v54;
  [(CATransformLayer *)self->_maskRotationTransformLayer setTransform:&v43];
  v47 = v55;
  v48 = v56;
  v49 = v57;
  v50 = v58;
  v43 = v51;
  v44 = v52;
  v45 = v53;
  v46 = v54;
  [(CATransformLayer *)self->_unmaskedOverlayRotationTransformLayer setTransform:&v43];
  v47 = v55;
  v48 = v56;
  v49 = v57;
  v50 = v58;
  v43 = v51;
  v44 = v52;
  v45 = v53;
  v46 = v54;
  [(CATransformLayer *)self->_frontmostRotationTransformLayer setTransform:&v43];
  if ([(_UIStackedImageConfiguration *)self->_configuration focusCursorEnabled])
  {
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    [(CATransformLayer *)self->_cursorRotationTransformLayer setTransform:&v43];
  }

  [(_UIStackedImageContainerLayer *)self bounds];
  v14 = v13 + v12 * 0.5;
  v17 = v16 + v15 * 0.5;
  [(_UIStackedImageConfiguration *)self->_configuration radiosityOffset];
  v19 = v17 + v18;
  if (_isFocused)
  {
    v20 = x * self->_focusDirection.x;
    v21 = v17 + y * self->_focusDirection.y;
    if (self->_selectionStyle == 1)
    {
      v22 = v17 + v18;
      if (![(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth])
      {
        [(_UIStackedImageConfiguration *)self->_configuration fullBleedOffset];
        v21 = v21 + v23;
      }

      v19 = v22;
    }

    v24 = v14 + v20;
    v25 = x * self->_focusDirection.x * 1.5;
    v41 = v14 + v25;
    v26 = y * self->_focusDirection.y * 1.5;
    v19 = v19 + v26;
  }

  else
  {
    v25 = *MEMORY[0x1E695EFF8];
    v26 = *(MEMORY[0x1E695EFF8] + 8);
    v24 = v14;
    v21 = v17;
    v41 = v14;
  }

  v42 = v19;
  if ((_isSelected || _isHighlighted) && self->_selectionStyle == 1 && ![(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth])
  {
    [(_UIStackedImageConfiguration *)self->_configuration fullBleedOffset];
    v21 = v21 + v27;
  }

  [(_UIStackedImageContainerLayer *)self _updateFocusKeylineStrokeTranslation:x, y];
  [MEMORY[0x1E6979518] animationDuration];
  v40 = v28;
  if ([(_UIStackedImageContainerLayer *)self _isNormal])
  {
    [(_UIStackedImageConfiguration *)self->_configuration repositionUnselectionDuration];
    if (translationCopy)
    {
      [translationCopy _unfocusingRepositionAnimationDuration];
    }

    else
    {
      v31 = v29;
      +[UIView inheritedAnimationDuration];
      if (v32 <= 0.0)
      {
LABEL_22:
        [MEMORY[0x1E6979518] setAnimationDuration:v31];
        goto LABEL_23;
      }

      +[UIView inheritedAnimationDuration];
    }

    v31 = v30;
    goto LABEL_22;
  }

LABEL_23:
  superlayer = [(CALayer *)self->_unmaskedOverlayContainerLayer superlayer];
  [superlayer bounds];
  v36 = v35 + v34 * 0.5;
  v39 = v38 + v37 * 0.5;

  [(CALayer *)self->_flatMaskLayer setPosition:v24, v21];
  [(CALayer *)self->_imageLayersContainer setPosition:v24, v21];
  [(CALayer *)self->_unmaskedOverlayContainerLayer setPosition:v24 + v36 - v14, v21 + v39 - v17];
  [(CALayer *)self->_cursorLayerContainer setPosition:v24, v21];
  [(_UIStackedImageContainerLayer *)self _updateShadowPositionWithOffset:v25, v26];
  [(CALayer *)self->_radiosityLayer setPosition:v41, v42];
  if ([(_UIStackedImageContainerLayer *)self _isNormal])
  {
    [MEMORY[0x1E6979518] setAnimationDuration:v40];
  }

  [(_UIStackedImageContainerLayer *)self _updateInnerParallaxTransform];
  [(_UIStackedImageContainerLayer *)self _updateOverlayLayerTransforms];
  [(_UIStackedImageContainerLayer *)self _updateFullBleedImageLayers];
  [(_UIFocusSpecularHighlightLayer *)self->_specularLayer updateForFocusDirection:_isFocused isFocused:self->_focusDirection.x, self->_focusDirection.y];
  [(_UIStackedImageContainerLayer *)self _updateContentProviderLayerFocusDirection];
  [(_UIStackedImageContainerLayer *)self _updateImageLayerFilterValues];
}

- (void)_updateInnerParallaxTransform
{
  _layerForInnerParallaxTransform = [(_UIStackedImageContainerLayer *)self _layerForInnerParallaxTransform];
  selectionStyle = self->_selectionStyle;
  if ([(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering]&& (selectionStyle - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
    if (_UIInternalPreferenceUsesDefault(algn_1ED48B958, @"UISolariumStackedImageContainerModifyTransformMinWidth", _UIInternalPreferenceUpdateDouble))
    {
      v6 = 190.0;
    }

    else
    {
      v6 = *&qword_1ED48B960;
    }

    if (_UIInternalPreferenceUsesDefault(algn_1ED48B968, @"UISolariumStackedImageContainerModifyTransformMaxWidth", _UIInternalPreferenceUpdateDouble))
    {
      v7 = 720.0;
    }

    else
    {
      v7 = *&qword_1ED48B970;
    }

    v8 = _UIInternalPreferenceUsesDefault(algn_1ED48B8F8, @"UISolariumStackedImageContainerModifyInnerParallaxScaleStrength", _UIInternalPreferenceUpdateDouble);
    v9 = *&qword_1ED48B900 + -1.0;
    if (_UIInternalPreferenceUsesDefault(&unk_1ED48B898, @"UISolariumNewStackedImageRenderingInnerParallaxScale", _UIInternalPreferenceUpdateDouble))
    {
      v10 = 1.01;
    }

    else
    {
      v10 = *&qword_1ED48B8A0;
    }

    [(CALayer *)self->_imageLayersContainer bounds];
    v13 = v11;
    v14 = v12;
    if (v11 >= v12)
    {
      v15 = v11;
    }

    else
    {
      v15 = v12;
    }

    v16 = fmax(fmin((v15 - v6) / (v7 - v6), 1.0), 0.0);
    v17 = -0.005;
    if (!v8)
    {
      v17 = v9;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62___UIStackedImageContainerLayer__updateInnerParallaxTransform__block_invoke;
    aBlock[3] = &__block_descriptor_41_e22_d32__0d8_CGPoint_dd_16l;
    v18 = v10 * (v17 * v16 + 1.0);
    v39 = _isFocused;
    *&aBlock[4] = v18;
    v19 = _Block_copy(aBlock);
    v20 = v19[2](self->_focusDirection.x, self->_focusDirection.x, self->_focusDirection.y);
    v21 = (v19[2])(v19, self->_focusDirection.y, self->_focusDirection.x, self->_focusDirection.y);
    v22 = _UIInternalPreferenceUsesDefault(algn_1ED48B8A8, @"UISolariumNewStackedImageRenderingInnerParallaxAdditionalTranslation", _UIInternalPreferenceUpdateDouble);
    v23 = *&qword_1ED48B8B0;
    if (v22)
    {
      v23 = -1.0;
    }

    y = self->_focusDirection.y;
    v25 = self->_focusDirection.x * (fmax(v13 * (v18 + -1.0) * 0.5, 0.0) + v23);
    v26 = *(MEMORY[0x1E69792E8] + 80);
    *&v40.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v40.m33 = v26;
    v27 = (fmax(v14 * (v18 + -1.0) * 0.5, 0.0) + v23) * y;
    v28 = *(MEMORY[0x1E69792E8] + 112);
    *&v40.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v40.m43 = v28;
    v29 = *(MEMORY[0x1E69792E8] + 16);
    *&v40.m11 = *MEMORY[0x1E69792E8];
    *&v40.m13 = v29;
    v30 = *(MEMORY[0x1E69792E8] + 48);
    *&v40.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v40.m23 = v30;
    *&v37.m31 = *&v40.m31;
    *&v37.m33 = v26;
    *&v37.m41 = *&v40.m41;
    *&v37.m43 = v28;
    *&v37.m11 = *&v40.m11;
    *&v37.m13 = v29;
    *&v37.m21 = *&v40.m21;
    *&v37.m23 = v30;
    CATransform3DScale(&v40, &v37, v20, v21, 1.0);
    v36 = v40;
    CATransform3DTranslate(&v37, &v36, v25, v27, 0.0);
    v40 = v37;
    _layerForInnerParallaxTransform2 = [(_UIStackedImageContainerLayer *)self _layerForInnerParallaxTransform];
    v37 = v40;
    [_layerForInnerParallaxTransform2 setTransform:&v37];
  }

  else
  {
    if (_layerForInnerParallaxTransform)
    {
      [_layerForInnerParallaxTransform transform];
    }

    else
    {
      memset(&v40, 0, sizeof(v40));
    }

    if (!CATransform3DIsIdentity(&v40))
    {
      v32 = *(MEMORY[0x1E69792E8] + 80);
      *&v40.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v40.m33 = v32;
      v33 = *(MEMORY[0x1E69792E8] + 112);
      *&v40.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v40.m43 = v33;
      v34 = *(MEMORY[0x1E69792E8] + 16);
      *&v40.m11 = *MEMORY[0x1E69792E8];
      *&v40.m13 = v34;
      v35 = *(MEMORY[0x1E69792E8] + 48);
      *&v40.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v40.m23 = v35;
      [_layerForInnerParallaxTransform setTransform:&v40];
    }
  }
}

- (id)_layerForInnerParallaxTransform
{
  v3 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRendering3DTransformedGlassLayer, @"UISolariumNewStackedImageRendering3DTransformedGlassLayer", _UIInternalPreferenceUpdateBool);
  if (byte_1EA95E92C)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 == 0;
  v6 = 25;
  if (!v5)
  {
    v6 = 21;
  }

  v7 = *(&self->super.super.isa + OBJC_IVAR____UIStackedImageContainerLayer__configuration[v6]);

  return v7;
}

- (void)_updateFocusKeylineStrokeTranslation:(CGPoint)translation
{
  if (self->_focusKeylineStrokeLayer)
  {
    y = translation.y;
    x = translation.x;
    [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
    v6 = v16.origin.x;
    v7 = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    v10 = CGRectGetWidth(v16) * 0.5;
    v17.origin.x = v6;
    v17.origin.y = v7;
    v17.size.width = width;
    v17.size.height = height;
    v11 = CGRectGetHeight(v17) * 0.5;
    v12 = v10 + x * self->_focusDirection.x;
    v13 = v11 + y * self->_focusDirection.y;
    focusKeylineStrokeLayer = self->_focusKeylineStrokeLayer;

    [(CALayer *)focusKeylineStrokeLayer setPosition:v12, v13];
  }
}

- (void)_updateFocusKeylineStrokeScale
{
  if (self->_focusKeylineStrokeLayer)
  {
    memset(&v5, 0, sizeof(v5));
    CATransform3DMakeScale(&v5, self->_scale, self->_scale, 1.0);
    focusKeylineStrokeLayer = self->_focusKeylineStrokeLayer;
    v4 = v5;
    [(CALayer *)focusKeylineStrokeLayer setTransform:&v4];
    [(CALayer *)self->_focusKeylineStrokeLayer setBorderWidth:2.0 / self->_scale];
  }
}

- (CATransform3D)_fixedFrameImageLayersTransformForDepth:(SEL)depth fudgeFactor:(double)factor
{
  [(_UIStackedImageConfiguration *)self->_configuration zDepth];
  v10 = (1.0 - factor / v9) * a5;
  _isEligibleFor3DTransforms = [(_UIStackedImageContainerLayer *)self _isEligibleFor3DTransforms];
  if (_isEligibleFor3DTransforms)
  {
    factorCopy = factor;
  }

  else
  {
    factorCopy = 0.0;
  }

  if (_isEligibleFor3DTransforms)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1.0;
  }

  [(_UIStackedImageContainerLayer *)self _imageLayersScaleAmountsForCurrentState];
  memset(&v19, 0, sizeof(v19));
  [(_UIStackedImageContainerLayer *)self _scaleTransform3DForScaleAmounts:v14 * v13, v15 * v13];
  CATransform3DMakeTranslation(&a, 0.0, 0.0, factorCopy);
  v17 = v19;
  return CATransform3DConcat(retstr, &a, &v17);
}

- (void)_updateNormalImageLayers
{
  if (self->_selectionStyle != 1)
  {
    v50 = v7;
    v51 = v6;
    v52 = v5;
    v53 = v4;
    v54 = v2;
    v55 = v3;
    _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
    _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
    _isHighlighted = [(_UIStackedImageContainerLayer *)self _isHighlighted];
    memset(&v49, 0, sizeof(v49));
    [(_UIStackedImageContainerLayer *)self _imageLayersScaleTransformForCurrentState];
    v12 = [(NSArray *)self->_imageLayers count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = _isFocused || _isHighlighted;
      v44 = _isFocused || _isHighlighted;
      v43 = v12;
      do
      {
        v16 = [(NSArray *)self->_imageLayers objectAtIndex:v14];
        v17 = [(NSArray *)self->_parallaxImages objectAtIndexedSubscript:v14];
        if (objc_opt_respondsToSelector())
        {
          fixedFrame = [v17 fixedFrame];
          v19 = fixedFrame;
          if (!v15)
          {
            v36 = fixedFrame ^ 1;
            if (!_isSelected)
            {
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          [(_UIStackedImageContainerLayer *)self _parallaxDepthAtIndex:v14];
          v21 = v20;
          memset(&v48, 0, sizeof(v48));
          if (v19)
          {
            [(_UIStackedImageContainerLayer *)self _fixedFrameImageLayersTransformForDepth:v20 fudgeFactor:1.035];
            goto LABEL_11;
          }
        }

        else
        {
          if (!v15)
          {
            v36 = 1;
            if (!_isSelected)
            {
LABEL_21:
              v39 = *(MEMORY[0x1E69792E8] + 80);
              *&v48.m31 = *(MEMORY[0x1E69792E8] + 64);
              *&v48.m33 = v39;
              v40 = *(MEMORY[0x1E69792E8] + 112);
              *&v48.m41 = *(MEMORY[0x1E69792E8] + 96);
              *&v48.m43 = v40;
              v41 = *(MEMORY[0x1E69792E8] + 16);
              *&v48.m11 = *MEMORY[0x1E69792E8];
              *&v48.m13 = v41;
              v37 = *(MEMORY[0x1E69792E8] + 32);
              v38 = *(MEMORY[0x1E69792E8] + 48);
              goto LABEL_22;
            }

LABEL_19:
            *&v48.m31 = *&v49.m31;
            *&v48.m33 = *&v49.m33;
            *&v48.m41 = *&v49.m41;
            *&v48.m43 = *&v49.m43;
            *&v48.m11 = *&v49.m11;
            *&v48.m13 = *&v49.m13;
            v37 = *&v49.m21;
            v38 = *&v49.m23;
LABEL_22:
            *&v48.m21 = v37;
            *&v48.m23 = v38;
            if ((v36 & 1) == 0)
            {
              [(_UIStackedImageContainerLayer *)self _parallaxDepthAtIndex:v14];
              v47 = v48;
              CATransform3DTranslate(&v48, &v47, 0.0, 0.0, v42);
            }

            v47 = v48;
            [v16 setTransform:&v47];
            goto LABEL_25;
          }

          [(_UIStackedImageContainerLayer *)self _parallaxDepthAtIndex:v14];
          v21 = v22;
          memset(&v48, 0, sizeof(v48));
        }

        CATransform3DMakeTranslation(&a, 0.0, 0.0, v21);
        b = v49;
        CATransform3DConcat(&v47, &a, &b);
        v48 = v47;
LABEL_11:
        [v16 position];
        v24 = v23;
        v26 = v25;
        firstObject = [(NSArray *)self->_imageLayers firstObject];
        [firstObject position];
        v29 = v28 - v24;
        v31 = v30 - v26;
        CATransform3DMakeTranslation(&a, v29, v31, 0.0);
        b = v48;
        CATransform3DConcat(&v47, &b, &a);
        v48 = v47;
        a = v47;
        CATransform3DTranslate(&v47, &a, -v29, -v31, 0.0);
        v48 = v47;
        v32 = [(CATransformLayer *)self->_imagePerspectiveTransformLayer animationForKey:@"transform"];
        if (v32 && [MEMORY[0x1E6979518] disableActions] && (objc_msgSend(v16, "hasBeenCommitted") & 1) == 0)
        {
          v33 = [(_UIStackedImageContainerLayer *)self actionForLayer:v16 forKey:@"transform"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v32 beginTime];
            [v33 setBeginTime:?];
            [v32 duration];
            [v33 setDuration:?];
            v47 = v48;
            [MEMORY[0x1E696B098] valueWithCATransform3D:&v47];
            v35 = v34 = _isSelected;
            [v33 setToValue:v35];

            _isSelected = v34;
            v13 = v43;
            [v16 addAnimation:v33 forKey:@"transform"];
          }
        }

        v47 = v48;
        [v16 setTransform:&v47];

        v15 = v44;
LABEL_25:

        ++v14;
      }

      while (v13 != v14);
    }
  }
}

- (void)_updateFullBleedImageLayers
{
  if (self->_selectionStyle == 1)
  {
    v69 = v11;
    v70 = v10;
    v71 = v9;
    v72 = v8;
    v73 = v7;
    v74 = v6;
    v75 = v5;
    v76 = v4;
    v77 = v2;
    v78 = v3;
    _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
    _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
    _isHighlighted = [(_UIStackedImageContainerLayer *)self _isHighlighted];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    [(_UIStackedImageContainerLayer *)self _imageLayersScaleTransformForCurrentState];
    v14 = [(NSArray *)self->_imageLayers count];
    v15 = v14 - 1;
    if (v14 - 1 <= 1)
    {
      v15 = 1;
    }

    if (v14)
    {
      v16 = v14;
      v17 = 0;
      v18 = 0.064 / v15;
      v19 = _isFocused || _isHighlighted;
      v55 = 20.0 / v14;
      v20 = MEMORY[0x1E69792E8];
      v54 = 10.0 / v14;
      do
      {
        v21 = [(NSArray *)self->_imageLayers objectAtIndex:v17];
        v22 = v21;
        if (v19)
        {
          v23 = v18 * v17 + 1.031;
          [v21 position];
          v25 = v24;
          v27 = v26;
          firstObject = [(NSArray *)self->_imageLayers firstObject];
          [firstObject position];
          v30 = v29;
          v32 = v31;
          if (_isHighlighted)
          {
            fullBleedCenteredGrowth = [(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth];
            scale = self->_scale;
            v35 = v23 * scale;
            v36 = v23 * (1.0 - (scale + -1.0));
            if (fullBleedCenteredGrowth)
            {
              v23 = v36;
            }

            else
            {
              v23 = v35;
            }
          }

          [(CALayer *)self->_imageLayersContainer bounds];
          v38 = v37;
          v39 = v20[5];
          *&v60.m31 = v20[4];
          *&v60.m33 = v39;
          v40 = v20[7];
          *&v60.m41 = v20[6];
          *&v60.m43 = v40;
          v41 = v20[1];
          *&v60.m11 = *v20;
          *&v60.m13 = v41;
          v42 = v20[3];
          *&v60.m21 = v20[2];
          *&v60.m23 = v42;
          v43 = [(NSArray *)self->_parallaxImages objectAtIndex:v17];
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v43 fixedFrame] & 1) == 0)
          {
            v44 = v30 - v25;
            v45 = v32 - v27;
            if (![(_UIStackedImageConfiguration *)self->_configuration fullBleedCenteredGrowth])
            {
              v45 = v45 + v38 * 0.61 + v38 * -0.5;
            }

            v46 = (v17 + 1);
            v47 = v55 * v46 * self->_focusDirection.x;
            v48 = v54 * v46 * self->_focusDirection.y;
            CATransform3DMakeTranslation(&v60, v44, v45, 0.0);
            v58 = v60;
            CATransform3DScale(&v59, &v58, v23, v23, 1.0);
            v60 = v59;
            v58 = v59;
            CATransform3DTranslate(&v59, &v58, v47 - v44, v48 - v45, 0.0);
            v60 = v59;
            [v22 setTransform:&v59];
          }
        }

        else
        {
          if (_isSelected)
          {
            *&v60.m31 = v65;
            *&v60.m33 = v66;
            *&v60.m41 = v67;
            *&v60.m43 = v68;
            *&v60.m11 = v61;
            *&v60.m13 = v62;
            v49 = v63;
            v50 = v64;
          }

          else
          {
            v51 = v20[5];
            *&v60.m31 = v20[4];
            *&v60.m33 = v51;
            v52 = v20[7];
            *&v60.m41 = v20[6];
            *&v60.m43 = v52;
            v53 = v20[1];
            *&v60.m11 = *v20;
            *&v60.m13 = v53;
            v49 = v20[2];
            v50 = v20[3];
          }

          *&v60.m21 = v49;
          *&v60.m23 = v50;
          *&v59.m31 = *&v60.m31;
          *&v59.m33 = *&v60.m33;
          *&v59.m41 = *&v60.m41;
          *&v59.m43 = *&v60.m43;
          *&v59.m11 = *&v60.m11;
          *&v59.m13 = *&v60.m13;
          *&v59.m21 = v49;
          *&v59.m23 = v50;
          [v21 setTransform:&v59];
        }

        ++v17;
      }

      while (v16 != v17);
    }
  }
}

- (void)_updateOverlayLayerTransforms
{
  _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
  _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
  _isHighlighted = [(_UIStackedImageContainerLayer *)self _isHighlighted];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  [(_UIStackedImageContainerLayer *)self _scaleTransform3DForCurrentState];
  memset(&v43, 0, sizeof(v43));
  [(_UIStackedImageContainerLayer *)self _imageLayersScaleTransformForCurrentState];
  overlayLayer = self->_overlayLayer;
  if (self->_selectionStyle == 1)
  {
    if (overlayLayer)
    {
      if (_isSelected)
      {
        *&v42.m31 = *&v43.m31;
        *&v42.m33 = *&v43.m33;
        *&v42.m41 = *&v43.m41;
        *&v42.m43 = *&v43.m43;
        *&v42.m11 = *&v43.m11;
        *&v42.m13 = *&v43.m13;
        v7 = *&v43.m21;
        v8 = *&v43.m23;
      }

      else
      {
        v20 = *(MEMORY[0x1E69792E8] + 80);
        *&v42.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v42.m33 = v20;
        v21 = *(MEMORY[0x1E69792E8] + 112);
        *&v42.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v42.m43 = v21;
        v22 = *(MEMORY[0x1E69792E8] + 16);
        *&v42.m11 = *MEMORY[0x1E69792E8];
        *&v42.m13 = v22;
        v7 = *(MEMORY[0x1E69792E8] + 32);
        v8 = *(MEMORY[0x1E69792E8] + 48);
      }

      *&v42.m21 = v7;
      *&v42.m23 = v8;
      overlayContainerLayer = self->_overlayContainerLayer;
      *&a.m31 = *&v42.m31;
      *&a.m33 = *&v42.m33;
      *&a.m41 = *&v42.m41;
      *&a.m43 = *&v42.m43;
      *&a.m11 = *&v42.m11;
      *&a.m13 = *&v42.m13;
      *&a.m21 = v7;
      *&a.m23 = v8;
      [(CALayer *)overlayContainerLayer setTransform:&a];
    }

    if (self->_unmaskedOverlayLayer)
    {
      if (_isSelected)
      {
        *&v42.m31 = v48;
        *&v42.m33 = v49;
        *&v42.m41 = v50;
        *&v42.m43 = v51;
        *&v42.m11 = v44;
        *&v42.m13 = v45;
        v24 = v46;
        v25 = v47;
      }

      else
      {
        v26 = *(MEMORY[0x1E69792E8] + 80);
        *&v42.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v42.m33 = v26;
        v27 = *(MEMORY[0x1E69792E8] + 112);
        *&v42.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v42.m43 = v27;
        v28 = *(MEMORY[0x1E69792E8] + 16);
        *&v42.m11 = *MEMORY[0x1E69792E8];
        *&v42.m13 = v28;
        v24 = *(MEMORY[0x1E69792E8] + 32);
        v25 = *(MEMORY[0x1E69792E8] + 48);
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (overlayLayer)
    {
      overlayFixedFrame = [(_UIStackedImageConfiguration *)self->_configuration overlayFixedFrame];
      [(_UIStackedImageContainerLayer *)self _deepestParallaxDepthWithOverlayDepth:1];
      v11 = v10;
      v12 = *(MEMORY[0x1E69792E8] + 64);
      v13 = *(MEMORY[0x1E69792E8] + 80);
      *&v42.m31 = v12;
      *&v42.m33 = v13;
      v14 = *(MEMORY[0x1E69792E8] + 96);
      v15 = *(MEMORY[0x1E69792E8] + 112);
      *&v42.m41 = v14;
      *&v42.m43 = v15;
      v16 = *MEMORY[0x1E69792E8];
      v17 = *(MEMORY[0x1E69792E8] + 16);
      *&v42.m11 = *MEMORY[0x1E69792E8];
      *&v42.m13 = v17;
      v18 = *(MEMORY[0x1E69792E8] + 32);
      v19 = *(MEMORY[0x1E69792E8] + 48);
      *&v42.m21 = v18;
      *&v42.m23 = v19;
      if (_isFocused || _isHighlighted)
      {
        if (overlayFixedFrame)
        {
          [(_UIStackedImageContainerLayer *)self _fixedFrameImageLayersTransformForDepth:v11 fudgeFactor:1.015];
        }

        else
        {
          CATransform3DMakeTranslation(&a, 0.0, 0.0, v11);
          v40 = v43;
          CATransform3DConcat(&v42, &a, &v40);
        }
      }

      else if (_isSelected)
      {
        v42 = v43;
      }

      else if (overlayFixedFrame)
      {
        *&a.m31 = v12;
        *&a.m33 = v13;
        *&a.m41 = v14;
        *&a.m43 = v15;
        *&a.m11 = v16;
        *&a.m13 = v17;
        *&a.m21 = v18;
        *&a.m23 = v19;
        CATransform3DTranslate(&v42, &a, 0.0, 0.0, v11);
      }

      v29 = self->_overlayContainerLayer;
      a = v42;
      [(CALayer *)v29 setTransform:&a];
    }

    if (self->_unmaskedOverlayLayer)
    {
      v30 = _isFocused || _isHighlighted || _isSelected;
      if (v30)
      {
        *&v42.m31 = v48;
        *&v42.m33 = v49;
        *&v42.m41 = v50;
        *&v42.m43 = v51;
        *&v42.m11 = v44;
        *&v42.m13 = v45;
        v31 = v46;
        v32 = v47;
      }

      else
      {
        v33 = *(MEMORY[0x1E69792E8] + 80);
        *&v42.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v42.m33 = v33;
        v34 = *(MEMORY[0x1E69792E8] + 112);
        *&v42.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v42.m43 = v34;
        v35 = *(MEMORY[0x1E69792E8] + 16);
        *&v42.m11 = *MEMORY[0x1E69792E8];
        *&v42.m13 = v35;
        v31 = *(MEMORY[0x1E69792E8] + 32);
        v32 = *(MEMORY[0x1E69792E8] + 48);
      }

      *&v42.m21 = v31;
      *&v42.m23 = v32;
      [(_UIStackedImageContainerLayer *)self _deepestParallaxDepthWithOverlayDepth:1];
      CATransform3DMakeTranslation(&a, 0.0, 0.0, v36);
      v40 = v42;
      CATransform3DConcat(&v42, &a, &v40);
      if (!v30)
      {
        goto LABEL_29;
      }

      [(_UIStackedImageConfiguration *)self->_configuration unmaskedOverlayScaleFactor];
      if (fabs(v37 + -1.0) < 2.22044605e-16)
      {
        goto LABEL_29;
      }

      [(_UIStackedImageConfiguration *)self->_configuration unmaskedOverlayScaleFactor];
      v40 = v42;
      CATransform3DScale(&a, &v40, v38, v38, 1.0);
      *&v42.m31 = *&a.m31;
      *&v42.m33 = *&a.m33;
      *&v42.m41 = *&a.m41;
      *&v42.m43 = *&a.m43;
      *&v42.m11 = *&a.m11;
      *&v42.m13 = *&a.m13;
      v24 = *&a.m21;
      v25 = *&a.m23;
LABEL_28:
      *&v42.m21 = v24;
      *&v42.m23 = v25;
LABEL_29:
      unmaskedOverlayContainerLayer = self->_unmaskedOverlayContainerLayer;
      a = v42;
      [(CALayer *)unmaskedOverlayContainerLayer setTransform:&a];
    }
  }
}

- (void)_updateContentProviderLayerFocusDirection
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_imageLayers count])
  {
    v3 = 0;
    v4 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
    do
    {
      v5 = [(NSArray *)self->_imageLayers objectAtIndex:v3];
      layers = [*(&self->super.super.isa + v4[404]) layers];
      v7 = [layers objectAtIndex:v3];

      if (objc_opt_respondsToSelector())
      {
        contentProvider = [v7 contentProvider];

        if (contentProvider)
        {
          v16 = v7;
          v17 = v5;
          v18 = v3;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          sublayers = [v5 sublayers];
          v10 = [sublayers countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v21;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(sublayers);
                }

                v14 = *(*(&v20 + 1) + 8 * i);
                focusDirection = self->_focusDirection;
                v15 = [MEMORY[0x1E696B098] valueWithBytes:&focusDirection objCType:"{CGPoint=dd}"];
                [v14 setValue:v15 forKey:@"focusDirection"];
              }

              v11 = [sublayers countByEnumeratingWithState:&v20 objects:v24 count:16];
            }

            while (v11);
          }

          v7 = v16;
          v5 = v17;
          v3 = v18;
          v4 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
        }
      }

      ++v3;
    }

    while (v3 < [(NSArray *)self->_imageLayers count]);
  }
}

- (void)_updateImageLayerFilterChains
{
  if (![(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering]|| (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRenderingFiltersEnabled, @"UISolariumNewStackedImageRenderingFiltersEnabled", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E90C)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(_UIStackedImageConfiguration *)self->_configuration boostBrightness]&& [(_UIStackedImageContainerLayer *)self _isFocused])
    {
      v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979848]];
      [v3 setValue:&unk_1EFE2F0D8 forKey:@"inputAmount"];
      [v3 setName:@"brightness"];
      [v5 addObject:v3];
    }

    if ([(_UIStackedImageConfiguration *)self->_configuration hueShift]&& [(_UIStackedImageContainerLayer *)self _isFocused])
    {
      v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979868]];
      [v4 setValue:&unk_1EFE2F0D8 forKey:@"inputAngle"];
      [v4 setName:@"hue"];
      [v5 addObject:v4];
    }

    [(CALayer *)self->_imageLayersContainer setFilters:v5];
  }
}

- (void)_updateImageLayerFilterValues
{
  if (![(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering]|| (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISolariumNewStackedImageRenderingFiltersEnabled, @"UISolariumNewStackedImageRenderingFiltersEnabled", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E90C)
  {
    _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
    if ([(_UIStackedImageConfiguration *)self->_configuration boostBrightness])
    {
      v4 = !_isFocused;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = self->_focusDirection.y * 0.05;
      if (fabs(v5) < 0.01)
      {
        v5 = 0.0;
      }

      imageLayersContainer = self->_imageLayersContainer;
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
      [(CALayer *)imageLayersContainer setValue:v7 forKeyPath:@"filters.brightness.inputAmount"];
    }

    if ([(_UIStackedImageConfiguration *)self->_configuration hueShift]&& _isFocused)
    {
      v8 = self->_focusDirection.x * -0.15;
      if (fabs(v8) < 0.01)
      {
        v8 = 0.0;
      }

      v9 = self->_imageLayersContainer;
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      [(CALayer *)v9 setValue:v10 forKeyPath:@"filters.hue.inputAngle"];
    }
  }
}

- (void)_updateSpecularTransform
{
  _isHighlighted = [(_UIStackedImageContainerLayer *)self _isFocused]|| [(_UIStackedImageContainerLayer *)self _isHighlighted];
  [(_UIStackedImageContainerLayer *)self _scaleAmountsForCurrentState];
  v5 = v4;
  v7 = v6;
  v8 = 0.0;
  if ([(_UIStackedImageContainerLayer *)self _isEligibleFor3DTransforms]&& !self->_nonOpaqueShadow && !self->_singleLayerNoMask)
  {
    v8 = self->_maximumParallaxDepth * 1.3;
  }

  [(_UIFocusSpecularHighlightLayer *)self->_specularLayer setFocusBaseScaleAmounts:v5, v7];
  [(_UIFocusSpecularHighlightLayer *)self->_specularLayer setFocusSpecularDepth:v8];
  [(_UIFocusSpecularHighlightLayer *)self->_specularLayer setAppliesFocusDirectionToContentsRect:[(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering]^ 1];
  specularLayer = self->_specularLayer;

  [(_UIFocusSpecularHighlightLayer *)specularLayer updateTransformWithFocused:_isHighlighted];
}

- (void)_updateLayerForSelectionWithAnimationCoordinator:(id)coordinator
{
  v4 = MEMORY[0x1E6979518];
  coordinatorCopy = coordinator;
  [v4 animationDuration];
  v7 = v6;
  _isFocused = [(_UIStackedImageContainerLayer *)self _isFocused];
  configuration = self->_configuration;
  if (_isFocused)
  {
    [(_UIStackedImageConfiguration *)configuration layerSelectionDuration];
  }

  else
  {
    [(_UIStackedImageConfiguration *)configuration layerUnselectionDuration];
  }

  v11 = v10;
  if (coordinatorCopy || (+[UIView inheritedAnimationDuration], v12 > 0.0))
  {
    +[UIView inheritedAnimationDuration];
    v11 = v13;
  }

  [MEMORY[0x1E6979518] setAnimationDuration:v11];
  self->_selectionDuration = v11;
  if (self->_selectionStyle == 3)
  {
    v14 = CALayerGetDelegate();
    IsKindOfUIView = _IsKindOfUIView(v14);

    if (IsKindOfUIView)
    {
      v16 = CALayerGetDelegate();
      [v16 setNeedsLayout];
      [v16 layoutIfNeeded];
    }

    else
    {
      [(_UIStackedImageContainerLayer *)self setNeedsLayout];
      [(_UIStackedImageContainerLayer *)self layoutIfNeeded];
    }
  }

  if ([(_UIStackedImageContainerLayer *)self _isFocused])
  {
    [(_UIStackedImageContainerLayer *)self _focusedScaleFactorForCurrentBounds];
    self->_scale = v17;
    self->_focusDirection = *MEMORY[0x1E695EFF8];
    specularLayer = self->_specularLayer;
    [(_UIStackedImageConfiguration *)self->_configuration specularOpacity];
    *&v19 = v19;
    v20 = specularLayer;
  }

  else
  {
    _isSelected = [(_UIStackedImageContainerLayer *)self _isSelected];
    v22 = 1.13;
    if (!_isSelected)
    {
      v22 = 1.0;
    }

    self->_scale = v22;
    self->_focusDirection = *MEMORY[0x1E695EFF8];
    v20 = self->_specularLayer;
    v19 = 0.0;
  }

  [(_UIFocusSpecularHighlightLayer *)v20 setOpacity:v19];
  [(_UIStackedImageContainerLayer *)self _updateSpecularTransform];
  [(_UIStackedImageContainerLayer *)self _applyFocusDirectionTransformWithAnimationCoordinator:coordinatorCopy];

  [MEMORY[0x1E6979518] setAnimationDuration:v7];
  if (self->_cursorLayer)
  {
    [MEMORY[0x1E6979518] animationDuration];
    v24 = v23;
    [MEMORY[0x1E6979518] setAnimationDuration:0.0];
    if ([(_UIStackedImageContainerLayer *)self _isFocused])
    {
      v25 = [(_UIStackedImageConfiguration *)self->_configuration focusCursorEnabled]^ 1;
    }

    else
    {
      v25 = 1;
    }

    [(_UIStackedImageContainerLayer *)self _updateLayer:self->_cursorLayer isHidden:v25];
    [MEMORY[0x1E6979518] setAnimationDuration:v24];
  }

  if (self->_focusKeylineStrokeLayer)
  {
    [MEMORY[0x1E6979518] animationDuration];
    v27 = v26;
    [MEMORY[0x1E6979518] setAnimationDuration:0.0];
    focusKeylineStrokeLayer = self->_focusKeylineStrokeLayer;
    if ([(_UIStackedImageContainerLayer *)self _isFocused])
    {
      v29 = 0;
    }

    else
    {
      v29 = [(_UIStackedImageConfiguration *)self->_configuration focusCursorEnabled]^ 1;
    }

    [(_UIStackedImageContainerLayer *)self _updateLayer:focusKeylineStrokeLayer isHidden:v29];
    v30 = MEMORY[0x1E6979518];

    [v30 setAnimationDuration:v27];
  }
}

- (double)_focusedShadowRadius
{
  selectionStyle = self->_selectionStyle;
  if ((selectionStyle - 1) < 2)
  {
    configuration = self->_configuration;

    [(_UIStackedImageConfiguration *)configuration fullBleedFocusedShadowRadius];
  }

  else if (selectionStyle == 3 || selectionStyle == 0)
  {
    _isHighlighted = [(_UIStackedImageContainerLayer *)self _isHighlighted];
    v6 = self->_configuration;
    if (_isHighlighted)
    {

      [(_UIStackedImageConfiguration *)v6 defaultHighlightedShadowRadius];
    }

    else
    {

      [(_UIStackedImageConfiguration *)v6 defaultFocusedShadowRadius];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStackedImageContainerLayer.m" lineNumber:4396 description:@"unknown selection style"];

    return 0.0;
  }

  return result;
}

- (double)_unfocusedShadowRadius
{
  selectionStyle = self->_selectionStyle;
  if ((selectionStyle - 2) < 2)
  {
LABEL_4:
    configuration = self->_configuration;

    [(_UIStackedImageConfiguration *)configuration defaultUnfocusedShadowRadius];
    return result;
  }

  if (selectionStyle != 1)
  {
    if (selectionStyle)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStackedImageContainerLayer.m" lineNumber:4416 description:@"unknown selection style"];

      return 0.0;
    }

    goto LABEL_4;
  }

  v6 = self->_configuration;

  [(_UIStackedImageConfiguration *)v6 fullBleedUnfocusedShadowRadius];
  return result;
}

- (double)_getShadowOpacity
{
  if ([(_UIStackedImageContainerLayer *)self _isFocused]|| [(_UIStackedImageContainerLayer *)self _isHighlighted])
  {
    selectionStyle = self->_selectionStyle;
    if ((selectionStyle - 1) < 2)
    {
      [(_UIStackedImageConfiguration *)self->_configuration fullBleedFocusedShadowOpacity];
    }

    else
    {
      if (selectionStyle != 3 && selectionStyle != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = currentHandler;
        v18 = a2;
        selfCopy2 = self;
        v20 = 4448;
LABEL_27:
        [currentHandler handleFailureInMethod:v18 object:selfCopy2 file:@"_UIStackedImageContainerLayer.m" lineNumber:v20 description:@"unknown selection style"];

        return 0.0;
      }

      [(_UIStackedImageConfiguration *)self->_configuration defaultFocusedShadowOpacity];
      v7 = v6;
      if (![(_UIStackedImageContainerLayer *)self _isHighlighted])
      {
LABEL_13:
        if ([(_UIStackedImageConfiguration *)self->_configuration focusCursorEnabled])
        {
          [(_UIStackedImageConfiguration *)self->_configuration focusCursorShadowOpacityAdjustment];
          return v7 + v9;
        }

        return v7;
      }

      [(_UIStackedImageConfiguration *)self->_configuration defaultHighlightedShadowOpacity];
    }

    v7 = v8;
    goto LABEL_13;
  }

  mainScreen = [objc_opt_self() mainScreen];
  traitCollection = [mainScreen traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v13 = self->_selectionStyle;
  if ((v13 - 2) < 2)
  {
LABEL_18:
    v7 = 0.0;
    if (userInterfaceStyle != 1000)
    {
      configuration = self->_configuration;

      [(_UIStackedImageConfiguration *)configuration defaultUnfocusedShadowOpacity];
      return result;
    }

    return v7;
  }

  if (v13 != 1)
  {
    if (v13)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = currentHandler;
      v18 = a2;
      selfCopy2 = self;
      v20 = 4469;
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v7 = 0.0;
  if (userInterfaceStyle == 1000)
  {
    return v7;
  }

  v21 = self->_configuration;

  [(_UIStackedImageConfiguration *)v21 fullBleedUnfocusedShadowOpacity];
  return result;
}

- (void)_updateShadowBounds
{
  [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
  if (self->_nonOpaqueShadow)
  {
    return;
  }

  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  _isFocused = [(_UIStackedImageContainerLayer *)self _isHighlighted]|| [(_UIStackedImageContainerLayer *)self _isFocused];
  if ([(_UIStackedImageConfiguration *)self->_configuration useSeparateUnfocusedShadowImage]&& !_isFocused)
  {
    [(_UIStackedImageContainerLayer *)self _unfocusedShadowRadius];
    v13 = v12 + v12;
    v14 = -(v12 + v12);
    v77.origin.x = v7;
    v77.origin.y = v8;
    v77.size.width = v9;
    v77.size.height = v10;
    v78 = CGRectInset(v77, v14, v14);
    v15 = v78.size.width + -4.0;
    v16 = v78.size.height + -2.0;
    selectionStyle = self->_selectionStyle;
    v18 = selectionStyle > 3 || selectionStyle == 1;
    if (!v18 && [(_UIStackedImageContainerLayer *)self _isSelected])
    {
      v15 = v15 * 1.13;
      v16 = v16 * 1.13;
    }

    v19 = *MEMORY[0x1E695EFF8];
    v20 = *(MEMORY[0x1E695EFF8] + 8);
    isSelected = [(_UIStackedImageContainerLayer *)self isSelected];
    configuration = self->_configuration;
    if (isSelected)
    {
      [(_UIStackedImageConfiguration *)configuration defaultSelectedShadowVerticalOffset];
    }

    else
    {
      [(_UIStackedImageConfiguration *)configuration defaultUnfocusedShadowVerticalOffset];
    }

    v39 = v23;
    v40 = *(MEMORY[0x1E69792E8] + 80);
    *&v76.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v76.m33 = v40;
    v66 = v40;
    v67 = *&v76.m31;
    v41 = v40;
    v42 = *(MEMORY[0x1E69792E8] + 112);
    *&v76.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v76.m43 = v42;
    v72 = v42;
    v73 = *&v76.m41;
    v43 = *(MEMORY[0x1E69792E8] + 16);
    *&v76.m11 = *MEMORY[0x1E69792E8];
    *&v76.m13 = v43;
    v69 = v43;
    v70 = *&v76.m11;
    v71 = *(MEMORY[0x1E69792E8] + 32);
    v68 = *(MEMORY[0x1E69792E8] + 48);
    *&v76.m21 = v71;
    *&v76.m23 = v68;
    *&v75.m31 = *&v76.m31;
    *&v75.m33 = v41;
    *&v75.m41 = *&v76.m41;
    *&v75.m43 = v42;
    *&v75.m11 = *&v76.m11;
    *&v75.m13 = v43;
    *&v75.m21 = v71;
    *&v75.m23 = v68;
    CATransform3DTranslate(&v76, &v75, 0.0, v23, 0.0);
    unfocusedShadowLayer = self->_unfocusedShadowLayer;
    v75 = v76;
    [(CALayer *)unfocusedShadowLayer setTransform:&v75];
    [(CALayer *)self->_unfocusedShadowLayer setBounds:v19, v20, v15, v16];
    *&v75.m31 = v67;
    *&v75.m33 = v66;
    *&v75.m41 = v73;
    *&v75.m43 = v72;
    *&v75.m11 = v70;
    *&v75.m13 = v69;
    *&v75.m21 = v71;
    *&v75.m23 = v68;
    [(_UIStackedImageConfiguration *)self->_configuration defaultFocusedShadowVerticalOffset];
    *&v74.m31 = v67;
    *&v74.m33 = v66;
    *&v74.m41 = v73;
    *&v74.m43 = v72;
    *&v74.m11 = v70;
    *&v74.m13 = v69;
    *&v74.m21 = v71;
    *&v74.m23 = v68;
    CATransform3DTranslate(&v75, &v74, 0.0, (v39 + v45) * 0.5, 0.0);
    shadowLayer = self->_shadowLayer;
    v74 = v75;
    [(CALayer *)shadowLayer setTransform:&v74];
    [(_UIStackedImageContainerLayer *)self _focusedShadowRadius];
    v48 = (v47 + v47 - v13) * -0.5;
    v82.origin.x = v19;
    v82.origin.y = v20;
    v82.size.width = v15;
    v82.size.height = v16;
    v83 = CGRectInset(v82, v48, v48);
    [(CALayer *)self->_shadowLayer setBounds:v83.origin.x, v83.origin.y, v83.size.width, v83.size.height];
    return;
  }

  if ([(_UIStackedImageContainerLayer *)self _isHighlighted])
  {
    [(_UIStackedImageContainerLayer *)self _focusedShadowRadius];
    scale = self->_scale;
    v79.size.width = v9 * scale;
    v79.size.height = v10 * scale;
    v25 = round(v7 + (v9 - v9 * scale) * 0.5);
    v79.origin.y = round(v8 + (v10 - v10 * scale) * 0.5);
    v27 = v26 * -2.0;
    v79.origin.x = v25;
    v80 = CGRectInset(v79, v27, v27);
    v28 = v80.size.width + -8.0;
    v29 = -4.0;
  }

  else
  {
    if (![(_UIStackedImageContainerLayer *)self _isFocused])
    {
      [(_UIStackedImageContainerLayer *)self _unfocusedShadowRadius];
      v50 = v49 * -2.0;
      v84.origin.x = v7;
      v84.origin.y = v8;
      v84.size.width = v9;
      v84.size.height = v10;
      v85 = CGRectInset(v84, v50, v50);
      v28 = v85.size.width + -4.0;
      v35 = v85.size.height + -2.0;
      v51 = self->_selectionStyle;
      v52 = v51 > 3 || v51 == 1;
      if (!v52 && [(_UIStackedImageContainerLayer *)self _isSelected])
      {
        v28 = v28 * 1.13;
        v35 = v35 * 1.13;
      }

      goto LABEL_20;
    }

    [(_UIStackedImageContainerLayer *)self _focusedShadowRadius];
    v31 = v30;
    [(_UIStackedImageContainerLayer *)self _scaledSizeForCurrentState];
    v81.size.width = v32;
    v81.size.height = v33;
    v81.origin.x = round(v7 + (v9 - v32) * 0.5);
    v81.origin.y = round(v8 + (v10 - v33) * 0.5);
    v80 = CGRectInset(v81, v31 * -2.0, v31 * -2.0);
    v28 = v34 + -12.0;
    v29 = -6.0;
  }

  v35 = v80.size.height + v29;
LABEL_20:
  v36 = *MEMORY[0x1E695EFF8];
  v37 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(_UIStackedImageContainerLayer *)self _isHighlighted])
  {
    [(_UIStackedImageConfiguration *)self->_configuration defaultHighlightedShadowVerticalOffset];
  }

  else if ([(_UIStackedImageContainerLayer *)self _isFocused])
  {
    [(_UIStackedImageConfiguration *)self->_configuration defaultFocusedShadowVerticalOffset];
  }

  else
  {
    isSelected2 = [(_UIStackedImageContainerLayer *)self isSelected];
    v54 = self->_configuration;
    if (isSelected2)
    {
      [(_UIStackedImageConfiguration *)v54 defaultSelectedShadowVerticalOffset];
    }

    else
    {
      [(_UIStackedImageConfiguration *)v54 defaultUnfocusedShadowVerticalOffset];
    }
  }

  v55 = *(MEMORY[0x1E69792E8] + 80);
  *&v76.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v76.m33 = v55;
  v56 = *(MEMORY[0x1E69792E8] + 112);
  *&v76.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v76.m43 = v56;
  v57 = *(MEMORY[0x1E69792E8] + 16);
  *&v76.m11 = *MEMORY[0x1E69792E8];
  *&v76.m13 = v57;
  v58 = *(MEMORY[0x1E69792E8] + 48);
  *&v76.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v76.m23 = v58;
  *&v75.m31 = *&v76.m31;
  *&v75.m33 = v55;
  *&v75.m41 = *&v76.m41;
  *&v75.m43 = v56;
  *&v75.m11 = *&v76.m11;
  *&v75.m13 = v57;
  *&v75.m21 = *&v76.m21;
  *&v75.m23 = v58;
  CATransform3DTranslate(&v76, &v75, 0.0, v38, 0.0);
  v59 = self->_shadowLayer;
  v75 = v76;
  [(CALayer *)v59 setTransform:&v75];
  [(CALayer *)self->_shadowLayer setBounds:v36, v37, v28, v35];
  [(_UIStackedImageContainerLayer *)self contentsScale];
  v61 = v60;
  if (![(_UIStackedImageContainerLayer *)self _isFocused]&& ![(_UIStackedImageContainerLayer *)self _isHighlighted])
  {
    [(_UIStackedImageContainerLayer *)self _focusedShadowRadius];
    v63 = v62;
    [(_UIStackedImageContainerLayer *)self _unfocusedShadowRadius];
    if (v64 > 0.0)
    {
      v61 = v61 * (v63 / v64);
    }
  }

  [(CALayer *)self->_shadowLayer contentsScale];
  if (v61 != v65)
  {
    [(CALayer *)self->_shadowLayer setContentsScale:v61];
  }
}

- (void)_updateShadowPositionWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(_UIStackedImageContainerLayer *)self _currentStackLayoutBounds];
  v6 = v15.origin.x;
  v7 = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v10 = CGRectGetWidth(v15) * 0.5;
  v16.origin.x = v6;
  v16.origin.y = v7;
  v16.size.width = width;
  v16.size.height = height;
  v11 = x + v10;
  v12 = y + CGRectGetHeight(v16) * 0.5;
  [(CALayer *)self->_shadowLayer setPosition:v11, v12];
  unfocusedShadowLayer = self->_unfocusedShadowLayer;

  [(CALayer *)unfocusedShadowLayer setPosition:v11, v12];
}

- (void)_updateShadowWithCATransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  [(_UIStackedImageContainerLayer *)self bounds];
  if (self->_nonOpaqueShadow)
  {
    if ([(_UIStackedImageContainerLayer *)self _isHighlighted])
    {
      [(_UIStackedImageContainerLayer *)self _focusedShadowRadius];
      v10 = v9;
      [(_UIStackedImageConfiguration *)self->_configuration defaultHighlightedShadowVerticalOffset];
    }

    else if ([(_UIStackedImageContainerLayer *)self _isFocused])
    {
      [(_UIStackedImageContainerLayer *)self _focusedShadowRadius];
      v10 = v34;
      [(_UIStackedImageConfiguration *)self->_configuration defaultFocusedShadowVerticalOffset];
    }

    else if ([(_UIStackedImageContainerLayer *)self isSelected])
    {
      [(_UIStackedImageContainerLayer *)self _focusedShadowRadius];
      v10 = v35;
      [(_UIStackedImageConfiguration *)self->_configuration defaultSelectedShadowVerticalOffset];
    }

    else
    {
      [(_UIStackedImageContainerLayer *)self _unfocusedShadowRadius];
      v10 = v42;
      [(_UIStackedImageConfiguration *)self->_configuration defaultUnfocusedShadowVerticalOffset];
    }

    v43 = v11;
    [(_UIStackedImageContainerLayer *)self _getShadowOpacity];
    v45 = v44;
    firstObject = [(NSArray *)self->_imageLayers firstObject];
    [firstObject setShadowRadius:v10];
    [firstObject setShadowOffset:{0.0, v43}];
    *&v45 = v45;
    LODWORD(v47) = LODWORD(v45);
    [firstObject setShadowOpacity:v47];
    v49 = self->_flatLayer;

    [(CALayer *)v49 setShadowRadius:v10];
    [(CALayer *)v49 setShadowOffset:0.0, v43];
    LODWORD(v48) = LODWORD(v45);
    [(CALayer *)v49 setShadowOpacity:v48];
  }

  else if (self->_shadowLayer && !CGRectIsEmpty(*&v5))
  {
    mainScreen = [objc_opt_self() mainScreen];
    traitCollection = [mainScreen traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (transactionCopy)
    {
      [MEMORY[0x1E6979518] begin];
    }

    [(_UIStackedImageContainerLayer *)self _focusedShadowRadius];
    v16 = v15;
    if (userInterfaceStyle == 1000)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    if (userInterfaceStyle == 1000)
    {
      v18 = 0.3;
    }

    else
    {
      v18 = 1.0;
    }

    [(_UIStackedImageContainerLayer *)self contentsScale];
    v20 = v19;
    [(_UIStackedImageConfiguration *)self->_configuration cornerRadius];
    v22 = v21;
    [(_UIStackedImageContainerLayer *)self _unfocusedShadowRadius];
    v24 = v23;
    if (![(CALayer *)self->_shadowLayer isHidden])
    {
      [(_UIStackedImageConfiguration *)self->_configuration isContinuousCornerRadiusEnabled];
      v26 = CachedShadowContents(v25 != 0.0, v16 * v20, v20 * v22, v17, v18);
      contents = [(CALayer *)self->_shadowLayer contents];

      if (contents != v26)
      {
        [(CALayer *)self->_shadowLayer setContents:v26];
        [(CALayer *)self->_shadowLayer setContentsCenter:0.5, 0.5, 0.0, 0.0];
      }
    }

    if (![(CALayer *)self->_unfocusedShadowLayer isHidden])
    {
      [(_UIStackedImageConfiguration *)self->_configuration isContinuousCornerRadiusEnabled];
      v29 = CachedShadowContents(v28 != 0.0, v20 * v24, v20 * v22, v17, v18);
      contents2 = [(CALayer *)self->_unfocusedShadowLayer contents];

      if (contents2 != v29)
      {
        [(CALayer *)self->_unfocusedShadowLayer setContents:v29];
        [(CALayer *)self->_unfocusedShadowLayer setContentsCenter:0.5, 0.5, 0.0, 0.0];
      }
    }

    [(_UIStackedImageContainerLayer *)self _updateShadowBounds];
    if (transactionCopy)
    {
      v31 = MEMORY[0x1E6979518];
      v32 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      [v31 setAnimationTimingFunction:v32];
    }

    if ([(_UIStackedImageContainerLayer *)self _isHighlighted])
    {
      v33 = 0;
    }

    else
    {
      v33 = ![(_UIStackedImageContainerLayer *)self _isFocused];
    }

    useSeparateUnfocusedShadowImage = [(_UIStackedImageConfiguration *)self->_configuration useSeparateUnfocusedShadowImage];
    shadowLayer = self->_shadowLayer;
    if (useSeparateUnfocusedShadowImage && (v33 & 1) != 0)
    {
      [(CALayer *)self->_shadowLayer setOpacity:0.0];
      unfocusedShadowLayer = self->_unfocusedShadowLayer;
      [(_UIStackedImageContainerLayer *)self _getShadowOpacity];
      *&v39 = v39;
    }

    else
    {
      [(_UIStackedImageContainerLayer *)self _getShadowOpacity];
      *&v40 = v40;
      [(CALayer *)shadowLayer setOpacity:v40];
      unfocusedShadowLayer = self->_unfocusedShadowLayer;
      v39 = 0.0;
    }

    [(CALayer *)unfocusedShadowLayer setOpacity:v39];
    if (transactionCopy)
    {
      v41 = MEMORY[0x1E6979518];

      [v41 commit];
    }
  }
}

- (BOOL)_hasPotentialSolariumImpact
{
  if ([(_UIStackedImageContainerLayer *)self borderColor])
  {
    [(_UIStackedImageContainerLayer *)self borderWidth];
    v4 = v3 > 0.0;
  }

  else
  {
    v4 = 0;
  }

  _radiosityEnabled = [(_UIStackedImageContainerLayer *)self _radiosityEnabled];
  v6 = 6;
  if (_radiosityEnabled)
  {
    v6 = 7;
  }

  if (self->_unmaskedOverlayPerspectiveTransformLayer)
  {
    ++v6;
  }

  if (self->_frontmostPerspectiveTransformLayer)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  sublayers = [(_UIStackedImageContainerLayer *)self sublayers];
  if ([sublayers count] > v7)
  {
    v4 = 1;
  }

  return v4;
}

- (void)_updateMarkerLayerIfPresent
{
  if (os_variant_has_internal_diagnostics() && (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_VisualizeUIViews, @"VisualizeUIViews", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48A8C4)
  {
    delegate = [(_UIStackedImageContainerLayer *)self delegate];
    v5 = objc_getAssociatedObject(delegate, &__UIViewMarkerLayerKey);

    if (v5)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v5 setLabelAlignment:8];
      [(_UIStackedImageContainerLayer *)self cornerRadius];
      [v5 setCornerRadius:?];
      if ([(_UIStackedImageContainerLayer *)self _hasPotentialSolariumImpact])
      {
        v4 = +[UIColor systemDarkOrangeColor];
        [v5 setAlternateColor:v4];
      }

      [v5 setZPosition:100.0];
      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (id)maskedOverlayView
{
  v2 = CALayerGetDelegate();
  if (_IsKindOfUIView(v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMaskedOverlayView:(id)view
{
  layer = [view layer];
  [(_UIStackedImageContainerLayer *)self _setOverlayLayer:layer];
}

- (id)unmaskedOverlayView
{
  v2 = CALayerGetDelegate();
  if (_IsKindOfUIView(v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUnmaskedOverlayView:(id)view
{
  layer = [view layer];
  [(_UIStackedImageContainerLayer *)self _setUnmaskedOverlayLayer:layer];
}

- (id)viewForBackgroundEffects
{
  if ((_UISolariumNewStackedImageRenderingEnabled() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStackedImageContainerLayer.m" lineNumber:4808 description:{@"Solarium is not enabled, requesting a view for background effects is an error."}];
  }

  if (![(_UIStackedImageContainerLayer *)self _isEligibleForSolariumRendering])
  {
    v6 = 0;
    goto LABEL_11;
  }

  [(_UIStackedImageContainerLayer *)self _wrapImageLayerHierarchyInViews];
  _layerForBackgroundEffects = [(_UIStackedImageContainerLayer *)self _layerForBackgroundEffects];
  v6 = CALayerGetDelegate();
  if ((_IsKindOfUIView(v6) & 1) == 0)
  {

LABEL_9:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIStackedImageContainerLayer.m" lineNumber:4823 description:@"Failed to find view for background effects."];

    v6 = 0;
    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_10:

LABEL_11:

  return v6;
}

- (CGPoint)focusDirection
{
  x = self->_focusDirection.x;
  y = self->_focusDirection.y;
  result.y = y;
  result.x = x;
  return result;
}

@end