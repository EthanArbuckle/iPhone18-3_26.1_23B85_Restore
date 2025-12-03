@interface UIImageView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_canDrawContent;
- (BOOL)_getDrawModeCompositeOperation:(int *)operation whiteComponent:(double *)component drawingAlpha:(double *)alpha;
- (BOOL)_getDrawModeCompositeOperation:(int *)operation whiteComponent:(double *)component drawingAlpha:(double *)alpha forDrawMode:(unsigned int)mode;
- (BOOL)_hasBaseline;
- (BOOL)_hasInstalledContentsAnimation;
- (BOOL)_hasNonDefaultSymbolAnimatorState;
- (BOOL)_hasReasonToUseRBSymbolLayerForImage:(id)image;
- (BOOL)_imageSupportsMaterials:(id)materials allowingHierarchical:(BOOL)hierarchical;
- (BOOL)_imageSupportsMaterials:(id)materials symbolConfiguration:(id)configuration allowingHierarchical:(BOOL)hierarchical;
- (BOOL)_needsBoldEffectForImage:(id)image symbolConfiguration:(id)configuration;
- (BOOL)_needsBoldEffectForImage:(id)image symbolConfiguration:(id)configuration withBaseColor:(id)color withEffects:(id)effects;
- (BOOL)_needsImageEffectsForImage:(id)image;
- (BOOL)_needsImageEffectsForImage:(id)image symbolConfiguration:(id)configuration;
- (BOOL)_recomputePretilingState;
- (BOOL)_resolveImagesWithPreviouslyDisplayedImage:(id)image;
- (BOOL)_setImageViewContents:(id)contents;
- (BOOL)_setImageViewContentsForAnimatedImage:(id)image;
- (BOOL)_setImageViewContentsForCIImageBackedImage:(id)image;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_shouldTreatImageAsTemplate:(id)template;
- (BOOL)_shouldTreatImageAsTemplate:(id)template symbolConfiguration:(id)configuration;
- (BOOL)_usesRenderBoxToRenderImage:(id)image withLayout:(id)layout;
- (BOOL)isTransparentFocusItem;
- (BOOL)scalesLargeContentImage;
- (CGImage)imageRef;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (Class)_intelligenceBaseClass;
- (NSArray)animationImages;
- (NSArray)highlightedAnimationImages;
- (NSString)description;
- (UIEdgeInsets)_additionalAlignmentRectInsetsForRenderingSource:(id)source;
- (UIEdgeInsets)_edgeInsetsForEffects;
- (UIEdgeInsets)_edgeInsetsForEffectsForImage:(id)image;
- (UIEdgeInsets)alignmentRectInsets;
- (UIImageDynamicRange)imageDynamicRange;
- (UIImageView)initWithCoder:(id)coder;
- (UIImageView)initWithFrame:(CGRect)frame;
- (UIImageView)initWithImage:(UIImage *)image;
- (UIImageView)initWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage;
- (UIView)overlayContentView;
- (_UIImageLoader)_imageLoader;
- (_UIScrollPocketInteraction)scrollPocketInteraction;
- (double)_baselineOffsetFromBottom;
- (double)_firstBaselineOffsetFromTop;
- (double)_layeredImageCornerRadius;
- (double)_maximumEDRForDynamicRange:(int64_t)range;
- (double)_scaleFactorForImage;
- (double)preferredContentScaleFactor;
- (id)_activeImage;
- (id)_adaptiveImageForImage:(id)image assignedImage:(id)assignedImage currentImage:(id)currentImage hasAdapted:(BOOL *)adapted;
- (id)_animationConfigurationForEffect:(id)effect forAddingEffect:(BOOL)addingEffect options:(id)options clientCompletionHandler:(id)handler needsAnimationCompletion:(BOOL)completion;
- (id)_applyImageEffectsToCIImage:(id)image multiplyColor:(id)color;
- (id)_baseMultiplyColorWithImage:(id)image symbolConfiguration:(id)configuration shouldResolveDynamicColors:(BOOL)colors;
- (id)_cachedPretiledImageForImage:(id)image;
- (id)_checkHighlightedImageForAdaptation:(id)adaptation hadAdapted:(BOOL *)adapted;
- (id)_checkImageForAdaptation:(id)adaptation hasAdapted:(BOOL *)adapted;
- (id)_colorByApplyingDrawMode:(unsigned int)mode toColor:(id)color;
- (id)_colorByApplyingDrawModeToColor:(id)color;
- (id)_currentAnimationKeyframeImage;
- (id)_currentHighlightedImage;
- (id)_currentImage;
- (id)_decompressingImageForType:(unint64_t)type;
- (id)_effectiveContentEffectsWithImage:(id)image symbolConfiguration:(id)configuration;
- (id)_effectiveImageViewTraitCollectionForResolvingImages;
- (id)_effectiveSymbolContentTransitionContainerView;
- (id)_effectsForRenderingSource:(id)source size:(CGSize)size symbolConfiguration:(id)configuration renditionContext:(id)context;
- (id)_imageContentGuideAllowingCreation:(BOOL)creation;
- (id)_initialValueForKey:(id)key;
- (id)_layoutForImage:(id)image inSize:(CGSize)size cachePerSize:(BOOL)perSize forBaselineOffset:(BOOL)offset;
- (id)_materialForImage:(id)image symbolConfiguration:(id)configuration;
- (id)_renditionForSource:(id)source effects:(id)effects size:(CGSize)size symbolConfiguration:(id)configuration withContentProvider:(id)provider;
- (id)_resolvedImageFromImage:(id)image;
- (id)_resolvedImageFromImage:(void *)image withImageViewTrait:;
- (id)_symbolConfigurationForImage:(id)image;
- (id)largeContentImage;
- (int64_t)_effectiveRenderingModeForSource:(id)source symbolConfiguration:(id)configuration;
- (unint64_t)defaultAccessibilityTraits;
- (void)_addSymbolEffect:(id)effect animated:(BOOL)animated;
- (void)_ancestorWillUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)_applyEffectsFromLayout:(id)layout;
- (void)_applyImageLayout:(id)layout toLayer:(id)layer;
- (void)_applySettingsForLegibilityStyle:(int64_t)style;
- (void)_baselineOffsetParametersDidChangeHasBaselinePropertyChanged:(BOOL)changed;
- (void)_cleanUpForStopAnimating;
- (void)_clearPretiledImageCacheForImage:(id)image;
- (void)_decodeQ_imageLoader:(id)loader decodeImage:(id)image layout:(id)layout;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_generateDeferredAnimations:(id)animations;
- (void)_imageContentParametersDidChange;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_invalidateCachedSymbolConfiguration;
- (void)_invalidateImageLayouts;
- (void)_invalidateResolvedImages;
- (void)_kickoffQ_beginLoadingWithImageLoader:(id)loader;
- (void)_loadImage:(id)image delegate:(id)delegate;
- (void)_loadImageWithURL:(id)l;
- (void)_mainQ_beginLoadingIfApplicable;
- (void)_mainQ_imageLoader:(id)loader finishedOrSkippedDecodingImage:(id)image layout:(id)layout;
- (void)_mainQ_imageLoader:(id)loader finishedWithImage:(id)image error:(id)error;
- (void)_mainQ_resetForLoader:(id)loader delegate:(id)delegate;
- (void)_monochromaticTreatmentStateDidChange;
- (void)_removeAllSymbolEffectsAnimated:(BOOL)animated;
- (void)_removeLayerAnimations;
- (void)_removeSymbolEffect:(id)effect animated:(BOOL)animated;
- (void)_renderDrawModeEffectInRect:(CGRect)rect;
- (void)_runSymbolEffectCompletion:(id)completion contextConfigurator:(id)configurator;
- (void)_setDecompressingImage:(id)image forType:(unint64_t)type;
- (void)_setDefaultRenderingMode:(int64_t)mode;
- (void)_setGuardAgainstDegenerateBaselineCalculation:(BOOL)calculation;
- (void)_setImage:(id)image invalidatingPendingSymbolTransitions:(BOOL)transitions;
- (void)_setLayerAllowsEdgeAntialiasing:(BOOL)antialiasing;
- (void)_setLayeredImageCornerRadius:(double)radius;
- (void)_setMasksTemplateImages:(BOOL)images;
- (void)_setNeedsUpdateState;
- (void)_setOverlayContentView:(id)view;
- (void)_setOverridingSymbolConfiguration:(id)configuration;
- (void)_setPlaceholderView:(id)view;
- (void)_setPreferredSymbolVariant:(id)variant;
- (void)_setSymbolImage:(id)image withSymbolTransition:(id)transition;
- (void)_setViewGeometry:(CGRect)geometry forMetric:(int)metric;
- (void)_setupRBSymbolLayerWithSymbolImageLayout:(id)layout;
- (void)_setupSymbolLayerForCurrentSymbolImageLayout:(id)layout;
- (void)_stopLoading;
- (void)_systemIconAppearanceDidChange;
- (void)_teardownLayeredImage;
- (void)_teardownRBSymbolLayerIfNeeded;
- (void)_templateSettingsDidChange;
- (void)_updateHDRFlags:(BOOL)flags;
- (void)_updateImageViewForOldImage:(id)image newImage:(id)newImage;
- (void)_updateLayeredImageIsFocusedWithFocusedView:(id)view focusAnimationCoordinator:(id)coordinator;
- (void)_updateMasking;
- (void)_updateOverlayContentView;
- (void)_updatePretiledImageCacheForImage:(id)image;
- (void)_updateProperties;
- (void)_updateRBSymbolLayerPositionIfNeededForContentTransitionPendingLayoutPass;
- (void)_updateResolvedImages;
- (void)_updateScrollPocketInteraction;
- (void)_updateState;
- (void)_updateStateIfRBSymbolLayerNoLongerNeeded;
- (void)_updateVisibilityAndFrameOfPlaceholderView;
- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect;
- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated completion:(UISymbolEffectCompletion)completionHandler;
- (void)animationPresetManager:(id)manager addEffect:(id)effect options:(id)options completion:(id)completion;
- (void)animationPresetManager:(id)manager didDiscardPendingContentTransition:(id)transition;
- (void)animationPresetManager:(id)manager didSetHiddenness:(BOOL)hiddenness usingEffect:(id)effect options:(id)options animated:(BOOL)animated completion:(id)completion;
- (void)animationPresetManager:(id)manager didSetScale:(int)scale usingEffect:(id)effect options:(id)options animated:(BOOL)animated completion:(id)completion;
- (void)animationPresetManager:(id)manager removeEffect:(id)effect wasActive:(BOOL)active options:(id)options animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)removeAllSymbolEffects;
- (void)removeAllSymbolEffectsWithOptions:(NSSymbolEffectOptions *)options animated:(BOOL)animated;
- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect;
- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated completion:(UISymbolEffectCompletion)completionHandler;
- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)category;
- (void)setAnimating:(BOOL)animating;
- (void)setAnimationDuration:(NSTimeInterval)animationDuration;
- (void)setAnimationImages:(NSArray *)animationImages;
- (void)setAnimationRepeatCount:(NSInteger)animationRepeatCount;
- (void)setBackgroundColor:(id)color;
- (void)setCGImageRef:(CGImage *)ref;
- (void)setCenter:(CGPoint)center;
- (void)setContentMode:(int64_t)mode;
- (void)setContentScaleFactor:(double)factor;
- (void)setDrawMode:(unsigned int)mode;
- (void)setHidden:(BOOL)hidden;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedAnimationImages:(NSArray *)highlightedAnimationImages;
- (void)setHighlightedImage:(UIImage *)highlightedImage;
- (void)setPreferredImageDynamicRange:(UIImageDynamicRange)preferredImageDynamicRange;
- (void)setPreferredSymbolConfiguration:(UIImageSymbolConfiguration *)preferredSymbolConfiguration;
- (void)setScrollPocketInteraction:(id)interaction;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition;
- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition options:(NSSymbolEffectOptions *)options completion:(UISymbolEffectCompletion)completionHandler;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
- (void)startAnimating;
- (void)stopAnimating;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIImageView

- (BOOL)_canDrawContent
{
  imageViewFlags = self->_imageViewFlags;
  if ((imageViewFlags & 1) == 0)
  {
    selfCopy = self;
    if ([(UIView *)selfCopy contentMode]>= UIViewContentModeCenter)
    {
LABEL_18:

      v12 = self->_imageViewFlags;
LABEL_19:
      v15 = 1;
LABEL_20:
      imageViewFlags = v15 | v12 & 0xFFFC;
      *&self->_imageViewFlags = imageViewFlags;
      return (imageViewFlags >> 1) & 1;
    }

    _currentImage = [(UIImageView *)selfCopy _currentImage];
    if ([(UIImageView *)selfCopy isHighlighted])
    {
      if (!_currentImage)
      {
        goto LABEL_13;
      }

      v6 = _currentImage;
      cIImage = [v6 CIImage];

      if (!cIImage)
      {

        goto LABEL_13;
      }

      _representsCIImageWhichSupportsIOSurfaceRendering = [v6 _representsCIImageWhichSupportsIOSurfaceRendering];

      if (_representsCIImageWhichSupportsIOSurfaceRendering)
      {
LABEL_13:
        _currentHighlightedImage = [(UIImageView *)selfCopy _currentHighlightedImage];
        v9 = _currentHighlightedImage;
        if (_currentHighlightedImage)
        {
          cIImage2 = [_currentHighlightedImage CIImage];

          if (!cIImage2 || [v9 _representsCIImageWhichSupportsIOSurfaceRendering])
          {
            goto LABEL_16;
          }
        }

        v12 = self->_imageViewFlags;
        if (!v9)
        {
          goto LABEL_19;
        }

LABEL_23:
        v15 = 3;
        goto LABEL_20;
      }
    }

    else
    {
      if (!_currentImage)
      {
        goto LABEL_17;
      }

      v9 = _currentImage;
      cIImage3 = [v9 CIImage];

      if (!cIImage3)
      {
LABEL_16:

        goto LABEL_17;
      }

      _representsCIImageWhichSupportsIOSurfaceRendering2 = [v9 _representsCIImageWhichSupportsIOSurfaceRendering];

      if (_representsCIImageWhichSupportsIOSurfaceRendering2)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    v12 = self->_imageViewFlags;
    goto LABEL_23;
  }

  return (imageViewFlags >> 1) & 1;
}

- (id)_currentImage
{
  resolvedImage = [(_UIImageViewStorage *)self->_storage resolvedImage];
  v4 = resolvedImage;
  if (resolvedImage)
  {
    image = resolvedImage;
  }

  else
  {
    image = [(_UIImageViewStorage *)self->_storage image];
  }

  v6 = image;

  return v6;
}

- (void)_updateRBSymbolLayerPositionIfNeededForContentTransitionPendingLayoutPass
{
  animationPresetManager = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  hasPendingContentTransition = [animationPresetManager hasPendingContentTransition];

  if (hasPendingContentTransition)
  {
    _effectiveSymbolContentTransitionContainerView = [(UIImageView *)self _effectiveSymbolContentTransitionContainerView];
    animationPresetManager2 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    image = [(UIImageView *)self image];
    v7 = [animationPresetManager2 pendingSymbolContentTransitionForSettingSymbolImage:image];

    if (_effectiveSymbolContentTransitionContainerView)
    {
      if (v7)
      {
        if ([v7 isPendingLayoutPass])
        {
          [v7 initialSymbolAbsoluteRect];
          if (!CGRectIsNull(v15))
          {
            [MEMORY[0x1E6979518] setDisableActions:1];
            [v7 initialSymbolAbsoluteRect];
            [(UIView *)self convertRect:_effectiveSymbolContentTransitionContainerView fromView:?];
            v9 = v8;
            v11 = v10;
            _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
            [_rbSymbolLayer setPosition:{v9, v11}];

            [MEMORY[0x1E6979518] setDisableActions:0];
          }
        }
      }
    }
  }
}

- (id)_currentHighlightedImage
{
  resolvedHighlightedImage = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
  v4 = resolvedHighlightedImage;
  if (resolvedHighlightedImage)
  {
    highlightedImage = resolvedHighlightedImage;
  }

  else
  {
    highlightedImage = [(_UIImageViewStorage *)self->_storage highlightedImage];
  }

  v6 = highlightedImage;

  return v6;
}

- (id)_activeImage
{
  if (![(UIImageView *)self isHighlighted]|| ([(UIImageView *)self _currentHighlightedImage], (_currentImage = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _currentImage = [(UIImageView *)self _currentImage];
  }

  return _currentImage;
}

- (void)_invalidateResolvedImages
{
  [(_UIImageViewStorage *)self->_storage setResolvedImage:0];
  [(_UIImageViewStorage *)self->_storage setResolvedHighlightedImage:0];
  lastResolvedImageViewTraitCollection = self->_lastResolvedImageViewTraitCollection;
  self->_lastResolvedImageViewTraitCollection = 0;

  [(UIImageView *)self _invalidateCachedSymbolConfiguration];
  image = [(_UIImageViewStorage *)self->_storage image];
  content = [image content];
  isCIImage = [content isCIImage];

  if ((isCIImage & 1) == 0)
  {
    storage = self->_storage;

    [(_UIImageViewStorage *)storage setCIRenderer:0];
  }
}

- (void)_teardownRBSymbolLayerIfNeeded
{
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  if (_rbSymbolLayer)
  {
    v7 = _rbSymbolLayer;
    [_rbSymbolLayer removeFromSuperlayer];
    [v7 setAnimator:0];
    [(UIImageView *)self _setRBSymbolLayer:0];
    animationPresetManager = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    options = [MEMORY[0x1E6982278] options];
    [animationPresetManager removeAllSymbolEffectsWithOptions:options animated:0];

    animationPresetManager2 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    [animationPresetManager2 discardPendingSymbolContentTransitions];

    _rbSymbolLayer = v7;
  }
}

- (void)_invalidateImageLayouts
{
  v35 = *MEMORY[0x1E69E9840];
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v20 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      v24 = objc_opt_class();
      v22 = NSStringFromClass(v24);
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "[%@ %@] must be called on the main queue", buf, 0x16u);
    }

    else
    {
      v19 = *(__UILogGetCategoryCachedImpl("Assert", &_invalidateImageLayouts___s_category) + 8);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      v20 = v19;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "[%@ %@] must be called on the main queue", buf, 0x16u);
    }

LABEL_24:
  }

LABEL_2:
  layouts = [(_UIImageViewStorage *)self->_storage layouts];
  v5 = [layouts count];

  if (v5)
  {
    [(UIImageView *)self _baselineOffsetFromBottom];
    self->_previousBaselineOffsetFromBottom = v6;
    [(UIImageView *)self _firstBaselineOffsetFromTop];
    self->_previousFirstBaselineOffsetFromTop = v7;
  }

  imageBeingSetByLoader = [(_UIImageViewStorage *)self->_storage imageBeingSetByLoader];
  if (imageBeingSetByLoader)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    selfCopy = self;
    layouts2 = [(_UIImageViewStorage *)self->_storage layouts];
    objc_opt_class();
    objc_opt_class();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = layouts2;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0 || v16 != imageBeingSetByLoader)
          {
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v18 = [v16 objectAtIndexedSubscript:0];

            if (v18 != imageBeingSetByLoader)
            {
              continue;
            }
          }

          v17 = [v11 objectForKey:v16];
          [weakToStrongObjectsMapTable setObject:v17 forKey:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    [(_UIImageViewStorage *)selfCopy->_storage setLayouts:weakToStrongObjectsMapTable];
  }

  else
  {
    weakToStrongObjectsMapTable = [(_UIImageViewStorage *)self->_storage layouts];
    [weakToStrongObjectsMapTable removeAllObjects];
  }
}

- (void)_imageContentParametersDidChange
{
  v3 = [(UIImageView *)self _imageContentGuideAllowingCreation:0];
  if (v3)
  {
    v65 = v3;
    _currentImage = [(UIImageView *)self _currentImage];
    _currentHighlightedImage = _currentImage;
    if (!_currentImage)
    {
      _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
    }

    [(UIView *)self bounds];
    v8 = [(UIImageView *)self _layoutForImage:_currentHighlightedImage inSize:v6, v7];
    [v8 contentInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    if (!_currentImage)
    {
    }

    [(UIImageView *)self alignmentRectInsets];
    v18 = v10 - v17;
    v20 = v12 - v19;
    v22 = v14 - v21;
    v24 = v16 - v23;
    superview = [(UIView *)self superview];
    v26 = superview;
    if (superview && (*(superview + 95) & 8) != 0)
    {
      v63 = v22;
      _systemConstraints = [v65 _systemConstraints];
      v28 = [_systemConstraints objectAtIndexedSubscript:0];
      [v28 constant];
      v62 = v29;
      _systemConstraints2 = [v65 _systemConstraints];
      v31 = [_systemConstraints2 objectAtIndexedSubscript:1];
      [v31 constant];
      v33 = v32;
      _systemConstraints3 = [v65 _systemConstraints];
      v35 = [_systemConstraints3 objectAtIndexedSubscript:2];
      [v35 constant];
      v60 = v36;
      _systemConstraints4 = [v65 _systemConstraints];
      v38 = [_systemConstraints4 objectAtIndexedSubscript:3];
      [v38 constant];
      v64 = v39;

      _layoutEngine = [(UIView *)self _layoutEngine];
      objc_opt_self();
      [(UIView *)self bounds];
      v42 = v41;
      v61 = v43;
      [(UIView *)self _currentScreenScale];
      v45 = 1.0 / v44;
      nsli_boundsWidthVariable = [(UIView *)self nsli_boundsWidthVariable];
      [_layoutEngine valueForVariable:nsli_boundsWidthVariable];
      v48 = v47;

      if ((round(vabdd_f64(v33, v20) - v45) == 0.0 || round(vabdd_f64(v64, v24) - v45) == 0.0) && round(vabdd_f64(v48 / 360.0, v42) - v45) == 0.0)
      {
        v24 = v64;
        v20 = v33;
      }

      v22 = v63;
      nsli_boundsHeightVariable = [(UIView *)self nsli_boundsHeightVariable];
      [_layoutEngine valueForVariable:nsli_boundsHeightVariable];
      v51 = v50;

      if ((round(vabdd_f64(v62, v18) - v45) == 0.0 || round(vabdd_f64(v60, v63) - v45) == 0.0) && round(vabdd_f64(v51 / 360.0, v61) - v45) == 0.0)
      {
        v24 = v64;
        v20 = v33;
      }
    }

    _systemConstraints5 = [v65 _systemConstraints];
    v53 = [_systemConstraints5 objectAtIndexedSubscript:0];

    [v53 setConstant:v18];
    _systemConstraints6 = [v65 _systemConstraints];
    v55 = [_systemConstraints6 objectAtIndexedSubscript:1];

    [v55 setConstant:v20];
    _systemConstraints7 = [v65 _systemConstraints];
    v57 = [_systemConstraints7 objectAtIndexedSubscript:2];

    [v57 setConstant:v22];
    _systemConstraints8 = [v65 _systemConstraints];
    v59 = [_systemConstraints8 objectAtIndexedSubscript:3];

    [v59 setConstant:v24];
    v3 = v65;
  }
}

- (void)_updateState
{
  *&self->_imageViewFlags &= ~4u;
  if ((*(&self->super._viewFlags + 1) & 8) != 0)
  {
    return;
  }

  if ([(UIImageView *)self _canDrawContent])
  {
    [(UIView *)self setNeedsDisplay];
    isHighDynamicRange = 0;
LABEL_4:

    [(UIImageView *)self _updateHDRFlags:isHighDynamicRange];
    return;
  }

  [(UIImageView *)self _invalidateImageLayouts];
  _currentImage = [(UIImageView *)self _currentImage];
  if ([(UIImageView *)self isHighlighted])
  {
    _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
  }

  else
  {
    _currentHighlightedImage = 0;
  }

  if ([(UIImageView *)self isHighlighted]&& ([(UIImageView *)self isAnimating]|| !_currentHighlightedImage))
  {
    highlightedAnimationImages = [(UIImageView *)self highlightedAnimationImages];
    v6 = [highlightedAnimationImages count];

    if (v6)
    {
      highlightedAnimationImages2 = [(UIImageView *)self highlightedAnimationImages];
LABEL_19:
      v10 = highlightedAnimationImages2;
      v11 = [highlightedAnimationImages2 objectAtIndex:0];
      _setContentStretchForImage(self, v11);

      goto LABEL_20;
    }
  }

  if ([(UIImageView *)self isAnimating]|| !_currentImage)
  {
    animationImages = [(UIImageView *)self animationImages];
    v9 = [animationImages count];

    if (v9)
    {
      highlightedAnimationImages2 = [(UIImageView *)self animationImages];
      goto LABEL_19;
    }
  }

LABEL_20:
  if (![(UIImageView *)self isAnimating])
  {
    if ([(UIImageView *)self isHighlighted])
    {
      if (_currentHighlightedImage)
      {
        v12 = _currentHighlightedImage;
      }

      else
      {
        v12 = _currentImage;
      }

      v13 = v12;
      v14 = [(UIImageView *)self _setImageViewContents:v13];
      if (v14)
      {
        isHighDynamicRange = [v13 isHighDynamicRange];
      }

      else
      {
        isHighDynamicRange = 0;
      }
    }

    else
    {
      v14 = 0;
      isHighDynamicRange = 0;
    }

    v15 = [(UIImageView *)self _displayImageAsLayered:_currentImage];
    v16 = v15;
    if (v14 || v15)
    {
      if (!v15)
      {
        goto LABEL_39;
      }

      [(UIImageView *)self _configureForLayeredImage:_currentImage];
    }

    else
    {
      [(UIImageView *)self _setImageViewContents:_currentImage];
      isHighDynamicRange = [_currentImage isHighDynamicRange];
    }

    v14 = 1;
LABEL_39:
    _layeredImageContainer = [(UIImageView *)self _layeredImageContainer];
    v18 = _layeredImageContainer == 0 || v16;

    if (v18)
    {

      if (!v14)
      {
        return;
      }
    }

    else
    {
      [(UIImageView *)self _teardownLayeredImage];

      if (!v14)
      {
        return;
      }
    }

    goto LABEL_4;
  }
}

- (BOOL)_hasInstalledContentsAnimation
{
  layer = [(UIView *)self layer];
  v4 = [layer animationForKey:@"contents"];

  delegate = [v4 delegate];
  v6 = 0;
  if (v4 && delegate)
  {
    v6 = delegate == self->_storage;
  }

  return v6;
}

- (id)_effectiveImageViewTraitCollectionForResolvingImages
{
  selfCopy = self;
  if (self)
  {
    traitCollection = [self traitCollection];
    if (!traitCollection)
    {
      if (dyld_program_sdk_at_least())
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"BUG IN CLIENT: UIImageView trait collection unexpectedly found nil. Did you override traitCollection to return nil? That's illegal. imageView = %@", selfCopy}];
        traitCollection = 0;
      }

      else
      {
        mainScreen = [objc_opt_self() mainScreen];
        traitCollection = [mainScreen traitCollection];
      }
    }

    selfCopy = [traitCollection _traitCollectionByReplacingNSIntegerValue:objc_msgSend(selfCopy forTraitToken:{"effectiveUserInterfaceLayoutDirection"), 0x1EFE323C8}];
  }

  return selfCopy;
}

- (void)_updateVisibilityAndFrameOfPlaceholderView
{
  placeholderView = [(_UIImageViewStorage *)self->_storage placeholderView];
  if (placeholderView)
  {
    v5 = placeholderView;
    _currentImage = [(UIImageView *)self _currentImage];
    [v5 setHidden:_currentImage != 0];

    [(UIView *)self bounds];
    [v5 setFrame:?];
    placeholderView = v5;
  }
}

- (double)preferredContentScaleFactor
{
  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  v4 = v3;

  return v4;
}

- (void)_updateMasking
{
  if ([(UIImageView *)self _masksTemplateImages])
  {
    layer = [(UIView *)self layer];
    compositingFilter = [layer compositingFilter];
    v4 = compositingFilter;
    v5 = MEMORY[0x1E6979D98];
    if (compositingFilter)
    {
      type = [compositingFilter type];
      v7 = [type isEqualToString:*v5];
    }

    else
    {
      v7 = 0;
    }

    _activeImage = [(UIImageView *)self _activeImage];
    v9 = [(UIImageView *)self _shouldTreatImageAsTemplate:_activeImage];

    if ((v7 & 1) != 0 || !v9)
    {
      if (!v9 && (v7 & 1) != 0)
      {
        [layer setCompositingFilter:0];
      }
    }

    else
    {
      v10 = [MEMORY[0x1E6979378] filterWithType:*v5];
      [layer setCompositingFilter:v10];
    }
  }
}

- (NSArray)animationImages
{
  animationImages = [(_UIImageViewStorage *)self->_storage animationImages];
  v3 = [animationImages copy];

  return v3;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIImageView;
  [(UIView *)&v4 tintColorDidChange];
  _activeImage = [(UIImageView *)self _activeImage];
  if (-[UIImageView _shouldTreatImageAsTemplate:](self, "_shouldTreatImageAsTemplate:", _activeImage) || [_activeImage isSymbolImage])
  {
    [(UIImageView *)self _invalidateCachedSymbolConfiguration];
    [(UIImageView *)self _updateState];
  }
}

- (void)_updateResolvedImages
{
  _activeImage = [(UIImageView *)self _activeImage];
  [(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:_activeImage];
}

- (void)_mainQ_beginLoadingIfApplicable
{
  v19 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
LABEL_4:
    imageLoader = [(_UIImageViewStorage *)self->_storage imageLoader];
    if (imageLoader)
    {
      if (![(_UIImageViewStorage *)self->_storage isStartingLoad])
      {
        window = [(UIView *)self window];
        if (window)
        {
          isHidden = [(UIView *)self isHidden];

          if (!isHidden)
          {
            [(_UIImageViewStorage *)self->_storage setStartingLoad:1];
            loadingDelegate = [(_UIImageViewStorage *)self->_storage loadingDelegate];
            if (objc_opt_respondsToSelector())
            {
              v7 = [loadingDelegate _imageViewShouldBeginLoading:self];
            }

            else
            {
              v7 = 1;
            }

            if ([(_UIImageViewStorage *)self->_storage isStoppingLoad]|| !v7)
            {
              [(UIImageView *)self _mainQ_resetForLoader:0 delegate:0];
            }

            else
            {
              [(_UIImageViewStorage *)self->_storage setEnqueueingLoad:1];
              v8 = _UIImageLoadingLog();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
              {
                *buf = 134218240;
                selfCopy2 = self;
                v17 = 2048;
                v18 = imageLoader;
                _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_INFO, "Image view %p is loading from loader=%p", buf, 0x16u);
              }

              objc_initWeak(buf, self);
              imageLoader2 = [(_UIImageViewStorage *)self->_storage imageLoader];
              objc_initWeak(&location, imageLoader2);

              if (qword_1ED498000 != -1)
              {
                dispatch_once(&qword_1ED498000, &__block_literal_global_702_0);
              }

              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __46__UIImageView__mainQ_beginLoadingIfApplicable__block_invoke;
              block[3] = &unk_1E70F3DA0;
              v10 = qword_1ED497FF8;
              objc_copyWeak(&v12, buf);
              objc_copyWeak(&v13, &location);
              dispatch_async(v10, block);

              objc_destroyWeak(&v13);
              objc_destroyWeak(&v12);
              objc_destroyWeak(&location);
              objc_destroyWeak(buf);
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

  if (pthread_main_np() == 1)
  {
    goto LABEL_4;
  }

  imageLoader = _UIImageLoadingLog();
  if (os_log_type_enabled(imageLoader, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_error_impl(&dword_188A29000, imageLoader, OS_LOG_TYPE_ERROR, "Image view %p is being used from a non-main thread. It is illegal to use UIView on a background thread.", buf, 0xCu);
  }

LABEL_20:
}

- (double)_baselineOffsetFromBottom
{
  _currentImage = [(UIImageView *)self _currentImage];
  v4 = _currentImage;
  if (_currentImage)
  {
    _currentHighlightedImage = _currentImage;
  }

  else
  {
    _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
  }

  v6 = _currentHighlightedImage;

  if ([v6 hasBaseline])
  {
    [(UIView *)self bounds];
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    v11 = CGRectGetWidth(v21);
    v12 = MEMORY[0x1E6997758];
    if ((v11 <= *MEMORY[0x1E6997758] || (v22.origin.x = x, v22.origin.y = y, v22.size.width = width, v22.size.height = height, CGRectGetHeight(v22) <= *v12)) && (*&self->_imageViewFlags & 0x200) != 0)
    {
      previousBaselineOffsetFromBottom = self->_previousBaselineOffsetFromBottom;
    }

    else
    {
      height = [(UIImageView *)self _layoutForImage:v6 inSize:0 cachePerSize:1 forBaselineOffset:width, height];
      [height baselineOffsetFromBottom];
      v15 = v14;
      [(UIImageView *)self alignmentRectInsets];
      previousBaselineOffsetFromBottom = v15 - v16;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = UIImageView;
    [(UIView *)&v20 _baselineOffsetFromBottom];
    previousBaselineOffsetFromBottom = v18;
  }

  return previousBaselineOffsetFromBottom;
}

- (UIEdgeInsets)alignmentRectInsets
{
  _activeImage = [(UIImageView *)self _activeImage];
  [(UIView *)self bounds];
  v6 = [(UIImageView *)self _layoutForImage:_activeImage inSize:0 cachePerSize:1 forBaselineOffset:v4, v5];

  [v6 alignmentRectInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)_templateSettingsDidChange
{
  [(UIImageView *)self _updateState];
  [(UIImageView *)self _updateTemplateProperties];
  *&self->_imageViewFlags &= ~8u;
}

- (NSArray)highlightedAnimationImages
{
  highlightedAnimationImages = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
  v3 = [highlightedAnimationImages copy];

  return v3;
}

- (UIEdgeInsets)_edgeInsetsForEffects
{
  if ((*&self->_imageViewFlags & 0x10) != 0)
  {
    p_cachedEdgeInsetsForEffects = &self->_cachedEdgeInsetsForEffects;
    *&self->_cachedEdgeInsetsForEffects.top = 0u;
    *&self->_cachedEdgeInsetsForEffects.bottom = 0u;
    _activeImage = [(UIImageView *)self _activeImage];
    if (_activeImage)
    {
      [(UIImageView *)self _edgeInsetsForEffectsForImage:_activeImage];
      p_cachedEdgeInsetsForEffects->top = v5;
      p_cachedEdgeInsetsForEffects->left = v6;
      p_cachedEdgeInsetsForEffects->bottom = v7;
      p_cachedEdgeInsetsForEffects->right = v8;
    }

    *&self->_imageViewFlags &= ~0x10u;
  }

  top = self->_cachedEdgeInsetsForEffects.top;
  left = self->_cachedEdgeInsetsForEffects.left;
  bottom = self->_cachedEdgeInsetsForEffects.bottom;
  right = self->_cachedEdgeInsetsForEffects.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_firstBaselineOffsetFromTop
{
  _currentImage = [(UIImageView *)self _currentImage];
  v4 = _currentImage;
  if (_currentImage)
  {
    _currentHighlightedImage = _currentImage;
  }

  else
  {
    _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
  }

  v6 = _currentHighlightedImage;

  if ([v6 hasBaseline])
  {
    [(UIView *)self bounds];
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    v11 = CGRectGetWidth(v21);
    v12 = MEMORY[0x1E6997758];
    if (v11 <= *MEMORY[0x1E6997758] && (v22.origin.x = x, v22.origin.y = y, v22.size.width = width, v22.size.height = height, CGRectGetHeight(v22) <= *v12) && (*&self->_imageViewFlags & 0x200) != 0)
    {
      previousFirstBaselineOffsetFromTop = self->_previousFirstBaselineOffsetFromTop;
    }

    else
    {
      height = [(UIImageView *)self _layoutForImage:v6 inSize:0 cachePerSize:1 forBaselineOffset:width, height];
      v14 = height;
      if (height)
      {
        v15 = *(height + 72);
      }

      else
      {
        v15 = 0.0;
      }

      [(UIImageView *)self alignmentRectInsets];
      previousFirstBaselineOffsetFromTop = v15 - v16;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = UIImageView;
    [(UIView *)&v20 _firstBaselineOffsetFromTop];
    previousFirstBaselineOffsetFromTop = v18;
  }

  return previousFirstBaselineOffsetFromTop;
}

- (void)layoutSubviews
{
  v3 = [(UIImageView *)self _decompressingImageForType:0];
  if (v3)
  {
    [(UIImageView *)self setImage:v3];
    [(UIImageView *)self _setDecompressingImage:0 forType:0];
  }

  v4 = [(UIImageView *)self _decompressingImageForType:1];
  if (v4)
  {
    [(UIImageView *)self setHighlightedImage:v4];
    [(UIImageView *)self _setDecompressingImage:0 forType:1];
  }

  [(UIImageView *)self _updateVisibilityAndFrameOfPlaceholderView];
  _layeredImageContainer = [(UIImageView *)self _layeredImageContainer];
  [(UIView *)self bounds];
  [_layeredImageContainer setFrame:?];

  v6.receiver = self;
  v6.super_class = UIImageView;
  [(UIView *)&v6 layoutSubviews];
}

- (BOOL)_hasNonDefaultSymbolAnimatorState
{
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  animator = [_rbSymbolLayer animator];

  if (animator)
  {
    v4 = ([animator isHidden] & 1) != 0 || objc_msgSend(animator, "scaleLevel") != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_recomputePretilingState
{
  v31 = *MEMORY[0x1E69E9840];
  _currentImage = [(UIImageView *)self _currentImage];
  _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
  if ([(UIImageView *)self isAnimating])
  {
    goto LABEL_8;
  }

  images = [_currentImage images];
  if (images && ![(UIImageView *)self isHighlighted])
  {

    goto LABEL_8;
  }

  images2 = [_currentHighlightedImage images];
  if (images2)
  {
    v7 = images2;
    isHighlighted = [(UIImageView *)self isHighlighted];

    if (!isHighlighted)
    {
      goto LABEL_10;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_25;
  }

LABEL_10:
  [(UIImageView *)self _updatePretiledImageCacheForImage:_currentImage];
  [(UIImageView *)self _updatePretiledImageCacheForImage:_currentHighlightedImage];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  animationImages = [(UIImageView *)self animationImages];
  v11 = [animationImages countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(animationImages);
        }

        [(UIImageView *)self _updatePretiledImageCacheForImage:*(*(&v25 + 1) + 8 * i)];
      }

      v12 = [animationImages countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  highlightedAnimationImages = [(UIImageView *)self highlightedAnimationImages];
  v16 = [highlightedAnimationImages countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(highlightedAnimationImages);
        }

        [(UIImageView *)self _updatePretiledImageCacheForImage:*(*(&v21 + 1) + 8 * j)];
      }

      v17 = [highlightedAnimationImages countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  v9 = 1;
LABEL_25:

  return v9;
}

- (void)dealloc
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->super._layerRetained && [(UIImageView *)self _hasInstalledContentsAnimation])
  {
    [(UIImageView *)self _removeLayerAnimations];
  }

  image = [(_UIImageViewStorage *)self->_storage image];
  [(UIImageView *)self _clearPretiledImageCacheForImage:image];

  highlightedImage = [(_UIImageViewStorage *)self->_storage highlightedImage];
  [(UIImageView *)self _clearPretiledImageCacheForImage:highlightedImage];

  resolvedImage = [(_UIImageViewStorage *)self->_storage resolvedImage];
  [(UIImageView *)self _clearPretiledImageCacheForImage:resolvedImage];

  resolvedHighlightedImage = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
  [(UIImageView *)self _clearPretiledImageCacheForImage:resolvedHighlightedImage];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  animationImages = [(_UIImageViewStorage *)self->_storage animationImages];
  v8 = [animationImages countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(animationImages);
        }

        [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v22 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [animationImages countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  highlightedAnimationImages = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
  v13 = [highlightedAnimationImages countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(highlightedAnimationImages);
        }

        [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [highlightedAnimationImages countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17.receiver = self;
  v17.super_class = UIImageView;
  [(UIView *)&v17 dealloc];
}

- (void)_monochromaticTreatmentStateDidChange
{
  _currentImage = [(UIImageView *)self _currentImage];
  v4 = [(UIImageView *)self _imageSupportsMaterials:_currentImage allowingHierarchical:1];

  if (v4)
  {

    [(UIImageView *)self _updateState];
  }
}

- (BOOL)_hasBaseline
{
  _currentImage = [(UIImageView *)self _currentImage];
  v4 = _currentImage;
  if (_currentImage)
  {
    hasBaseline = [_currentImage hasBaseline];
  }

  else
  {
    _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
    hasBaseline = [_currentHighlightedImage hasBaseline];
  }

  return hasBaseline;
}

- (void)startAnimating
{
  v38 = *MEMORY[0x1E69E9840];
  if ([(UIImageView *)self isAnimating])
  {
    return;
  }

  isHighlighted = [(UIImageView *)self isHighlighted];
  storage = self->_storage;
  if (!isHighlighted)
  {
    goto LABEL_6;
  }

  highlightedAnimationImages = [(_UIImageViewStorage *)storage highlightedAnimationImages];
  if (!highlightedAnimationImages)
  {
    _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];

    if (_currentHighlightedImage)
    {
      return;
    }

    storage = self->_storage;
LABEL_6:
    highlightedAnimationImages = [(_UIImageViewStorage *)storage animationImages];
    if (!highlightedAnimationImages)
    {
      return;
    }
  }

  v7 = highlightedAnimationImages;
  v8 = [highlightedAnimationImages count];
  if ([(_UIImageViewStorage *)self->_storage animationRepeatCount]< 1)
  {
    animationRepeatCount = 2147500000.0;
  }

  else
  {
    animationRepeatCount = [(_UIImageViewStorage *)self->_storage animationRepeatCount];
  }

  [(_UIImageViewStorage *)self->_storage animationDuration];
  if (v10 == 0.0)
  {
    v12 = v8 / 30.0;
  }

  else
  {
    [(_UIImageViewStorage *)self->_storage animationDuration];
    v12 = v11;
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      v18 = 0;
      do
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * v18);
        v20 = [(UIImageView *)self _cachedPretiledImageForImage:v19, v32];
        v21 = v20;
        if (v20)
        {
          v22 = v20;

          v19 = v22;
        }

        [v13 addObject:{objc_msgSend(v19, "CGImage")}];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v16);
  }

  v23 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v23 setKeyPath:@"contents"];
  [v23 setValues:v13];
  v24 = *MEMORY[0x1E69795A0];
  [v23 setCalculationMode:*MEMORY[0x1E69795A0]];
  *&v25 = animationRepeatCount;
  [v23 setRepeatCount:v25];
  [v23 setDuration:v12];
  [v23 setDelegate:self->_storage];
  v26 = *MEMORY[0x1E69797E8];
  [v23 setFillMode:*MEMORY[0x1E69797E8]];
  [v23 setRemovedOnCompletion:0];
  layer = [(UIView *)self layer];
  [layer addAnimation:v23 forKey:@"contents"];
  v28 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v28 setKeyPath:@"contentsMultiplyColor"];
  v29 = +[UIColor whiteColor];
  cGColor = [v29 CGColor];
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&cGColor count:1];
  [v28 setValues:v30];

  [v28 setCalculationMode:v24];
  *&v31 = animationRepeatCount;
  [v28 setRepeatCount:v31];
  [v28 setDuration:v12];
  [v28 setFillMode:v26];
  [v28 setRemovedOnCompletion:0];
  [layer addAnimation:v28 forKey:@"contentsMultiplyColor"];
  [layer setContentsSwizzle:*MEMORY[0x1E6979E38]];
}

- (void)stopAnimating
{
  if ([(UIImageView *)self isAnimating])
  {
    layer = [(UIView *)self layer];
    [layer removeAnimationForKey:@"contents"];

    if (![(_UIImageViewStorage *)self->_storage animationRepeatCount])
    {

      [(UIImageView *)self _cleanUpForStopAnimating];
    }
  }
}

- (id)_currentAnimationKeyframeImage
{
  layer = [(UIView *)self layer];
  v4 = [layer animationForKey:@"contents"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[UIView layer](self, "layer"), v5 = objc_claimAutoreleasedReturnValue(), [v5 presentationLayer], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "contents"), v6, v5, v7))
  {
    values = [v4 values];
    v9 = [values indexOfObject:v7];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v11 = v9;
      if ([(UIImageView *)self isHighlighted])
      {
        highlightedAnimationImages = [(UIImageView *)self highlightedAnimationImages];
      }

      else
      {
        highlightedAnimationImages = 0;
      }

      if (![highlightedAnimationImages count])
      {
        animationImages = [(UIImageView *)self animationImages];

        highlightedAnimationImages = animationImages;
      }

      if (v11 >= [highlightedAnimationImages count])
      {
        v10 = 0;
      }

      else
      {
        v10 = [highlightedAnimationImages objectAtIndex:v11];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_removeLayerAnimations
{
  layer = [(UIView *)self layer];
  [layer removeAnimationForKey:@"contents"];
  [layer removeAnimationForKey:@"contentsMultiplyColor"];
}

- (void)_cleanUpForStopAnimating
{
  [(UIImageView *)self _removeLayerAnimations];

  [(UIImageView *)self _updateState];
}

- (BOOL)isTransparentFocusItem
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  supportsViewTransparency = [_focusBehavior supportsViewTransparency];

  if (supportsViewTransparency)
  {
    v10.receiver = self;
    v10.super_class = UIImageView;
    if ([(UIView *)&v10 isTransparentFocusItem])
    {
      return 1;
    }

    else
    {
      image = [(UIImageView *)self image];
      if (image)
      {
        image2 = [(UIImageView *)self image];
        _probeIsSeeThrough = [image2 _probeIsSeeThrough];
      }

      else
      {
        _probeIsSeeThrough = 1;
      }
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIImageView;
    return [(UIView *)&v9 isTransparentFocusItem];
  }

  return _probeIsSeeThrough;
}

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  collectorCopy = collector;
  selfCopy = self;
  UIImageView._intelligenceCollectContent(in:collector:)(collectorCopy, x, y, width, height);
}

- (_UIScrollPocketInteraction)scrollPocketInteraction
{
  selfCopy = self;
  _typedStorage = [(UIView *)selfCopy _typedStorage];
  v4 = sub_18901F244();

  return v4;
}

- (void)setScrollPocketInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  _typedStorage = [(UIView *)selfCopy _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937088);
  v8 = swift_allocObject();
  *(v8 + 16) = interaction;
  v9 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v10 = interactionCopy;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(&_typedStorage->super.isa + v9);
  *(&_typedStorage->super.isa + v9) = 0x8000000000000000;
  sub_188A40430(v8, &_s26ScrollPocketInteractionKeyVN_0, isUniquelyReferenced_nonNull_native);
  *(&_typedStorage->super.isa + v9) = v12;
  swift_endAccess();
}

- (void)_updateScrollPocketInteraction
{
  selfCopy = self;
  sub_188F619C4();
}

- (Class)_intelligenceBaseClass
{
  sub_188A34624(0, &qword_1EA93F918);

  return swift_getObjCClassFromMetadata();
}

- (unint64_t)defaultAccessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UIImageView;
  return [&v3 defaultAccessibilityTraits]| 4;
}

- (void)_applySettingsForLegibilityStyle:(int64_t)style
{
  v4 = [_UILegibilitySettings sharedInstanceForStyle:style];
  if (v4)
  {
    shadowCompositingFilterName = [v4 shadowCompositingFilterName];
  }

  else
  {
    shadowCompositingFilterName = *MEMORY[0x1E6979CC0];
  }

  [(CALayer *)[(UIView *)self layer] setCompositingFilter:shadowCompositingFilterName];
  layer = [(UIView *)self layer];

  [(CALayer *)layer setAllowsGroupBlending:0];
}

- (id)largeContentImage
{
  _largeContentStoredProperties = [(UIView *)self _largeContentStoredProperties];
  didSetLargeContentImage = [_largeContentStoredProperties didSetLargeContentImage];

  if (didSetLargeContentImage)
  {
    v7.receiver = self;
    v7.super_class = UIImageView;
    largeContentImage = [(UIView *)&v7 largeContentImage];
  }

  else
  {
    largeContentImage = [(UIImageView *)self image];
  }

  return largeContentImage;
}

- (BOOL)scalesLargeContentImage
{
  _largeContentStoredProperties = [(UIView *)self _largeContentStoredProperties];
  didSetScalesLargeContentImage = [_largeContentStoredProperties didSetScalesLargeContentImage];

  if (!didSetScalesLargeContentImage)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIImageView;
  return [(UIView *)&v6 scalesLargeContentImage];
}

- (NSString)description
{
  v34.receiver = self;
  v34.super_class = UIImageView;
  v3 = [(UIView *)&v34 description];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_new();
  _currentImage = [(UIImageView *)self _currentImage];
  v7 = _UIImageName(_currentImage);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  content = [_currentImage content];
  typeName = [content typeName];
  if (v7)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v7];
  }

  else
  {
    v12 = @"anonymous";
  }

  [_currentImage size];
  v14 = v13;
  [_currentImage size];
  v16 = v15;
  content2 = [_currentImage content];
  [content2 scale];
  [v5 appendFormat:@"; image = <%@:%p %@ %@; (%0.0f %0.0f)@%0.f", v9, _currentImage, typeName, v12, v14, v16, v18];

  if (v7)
  {
  }

  content3 = [_currentImage content];
  [content3 vectorScale];
  v21 = v20;
  content4 = [_currentImage content];
  [content4 scale];
  v24 = v23;

  if (v21 != v24)
  {
    content5 = [_currentImage content];
    [content5 vectorScale];
    [v5 appendFormat:@"{%0.0f}", v26];
  }

  content6 = [_currentImage content];
  if ([content6 isVectorGlyph])
  {
    content7 = [_currentImage content];
    [content7 variableValue];
    v30 = v29;

    if (v30 == INFINITY)
    {
      goto LABEL_12;
    }

    content6 = [_currentImage content];
    [content6 variableValue];
    [v5 appendFormat:@", value=%0.0f", v31];
  }

LABEL_12:
  [v5 appendString:@">; layer ="];
  [v4 replaceOccurrencesOfString:@"; layer =" withString:v5 options:0 range:{0, objc_msgSend(v4, "length")}];
  v32 = [v4 copy];

  return v32;
}

- (id)_layoutForImage:(id)image inSize:(CGSize)size cachePerSize:(BOOL)perSize forBaselineOffset:(BOOL)offset
{
  height = size.height;
  width = size.width;
  v32 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (pthread_main_np() == 1)
  {
    goto LABEL_2;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v22 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v26 = objc_opt_class();
    v24 = NSStringFromClass(v26);
    v25 = NSStringFromSelector(a2);
    *buf = 138412546;
    v29 = v24;
    v30 = 2112;
    v31 = v25;
    _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "[%@ %@] must be called on the main queue", buf, 0x16u);
  }

  else
  {
    v21 = *(__UILogGetCategoryCachedImpl("Assert", &_layoutForImage_inSize_cachePerSize_forBaselineOffset____s_category) + 8);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    v22 = v21;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(a2);
    *buf = 138412546;
    v29 = v24;
    v30 = 2112;
    v31 = v25;
    _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "[%@ %@] must be called on the main queue", buf, 0x16u);
  }

LABEL_17:
LABEL_2:
  if (perSize)
  {
    v13 = [MEMORY[0x1E696B098] valueWithSize:{width, height, imageCopy}];
    v27[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  }

  else
  {
    v14 = imageCopy;
  }

  layouts = [(_UIImageViewStorage *)self->_storage layouts];
  height = [layouts objectForKey:v14];

  if (!height)
  {
    height = [_UIImageContentLayout layoutForSource:imageCopy inTarget:self withSize:width, height];
    layouts2 = [(_UIImageViewStorage *)self->_storage layouts];

    if (!layouts2)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      [(_UIImageViewStorage *)self->_storage setLayouts:weakToStrongObjectsMapTable];
    }

    layouts3 = [(_UIImageViewStorage *)self->_storage layouts];
    [layouts3 setObject:height forKey:v14];

    if (!offset)
    {
      [(UIImageView *)self _baselineOffsetParametersDidChangeHasBaselinePropertyChanged:0];
    }
  }

  return height;
}

- (void)_invalidateCachedSymbolConfiguration
{
  cachedSymbolConfiguration = self->_cachedSymbolConfiguration;
  self->_cachedSymbolConfiguration = 0;

  objc_storeWeak(&self->_cachedSymbolConfigurationImage, 0);
}

- (BOOL)_setImageViewContents:(id)contents
{
  contentsCopy = contents;
  layer = [(UIView *)self layer];
  [layer removeAnimationForKey:@"UIImageAnimationContents"];
  [layer removeAnimationForKey:@"UIImageAnimationContentsTransform"];
  [layer removeAnimationForKey:@"UIImageAnimationContentsMultiplyColor"];
  [layer setContentsAlignsToPixels:0];
  [(UIImageView *)self _setLayerAllowsEdgeAntialiasing:0];
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v31 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v31, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v32 = *(__UILogGetCategoryCachedImpl("Assert", &_setImageViewContents____s_category) + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", v33, 2u);
    }
  }

  v6 = +[UITraitCollection _currentTraitCollectionIfExists];
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v8 = _UISetCurrentFallbackEnvironment(self);
  [contentsCopy size];
  if (contentsCopy && v9 > 0.0)
  {
    v11 = v10;
    v12 = v10 > 0.0;
    if ([(UIView *)self contentMode]>= UIViewContentModeCenter)
    {
      if (v11 > 0.0)
      {
        v13 = 0;
        goto LABEL_15;
      }

LABEL_28:
      [layer setContents:0];
      goto LABEL_31;
    }
  }

  else
  {
    if ([(UIView *)self contentMode]> UIViewContentModeRedraw)
    {
      goto LABEL_28;
    }

    v12 = 0;
  }

  [(UIView *)self bounds];
  v16 = v15 > 0.0 && v14 > 0.0;
  v13 = v12 && !v16;
  if (!v12 || !v16)
  {
    [layer setContents:0];
    goto LABEL_30;
  }

LABEL_15:
  if ([contentsCopy _representsCIImageWhichSupportsIOSurfaceRendering] && -[UIImageView _setImageViewContentsForCIImageBackedImage:](self, "_setImageViewContentsForCIImageBackedImage:", contentsCopy))
  {
LABEL_30:
    if (v13)
    {
      goto LABEL_34;
    }

LABEL_31:
    [(UIImageView *)self _teardownRBSymbolLayerIfNeeded];
    goto LABEL_34;
  }

  [contentsCopy duration];
  if (v17 > 0.0)
  {
    images = [contentsCopy images];

    if (images)
    {
      if (![(UIImageView *)self _setImageViewContentsForAnimatedImage:contentsCopy])
      {
        images2 = [contentsCopy images];
        firstObject = [images2 firstObject];
        v21 = firstObject;
        if (firstObject)
        {
          v22 = firstObject;
        }

        else
        {
          v22 = contentsCopy;
        }

        v23 = v22;

        contentsCopy = v23;
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

LABEL_24:
  v24 = [(UIImageView *)self _cachedPretiledImageForImage:contentsCopy];
  v25 = v24;
  if (v24)
  {
    v26 = v24;

    contentsCopy = v26;
  }

  [(UIView *)self bounds];
  v29 = [(UIImageView *)self _layoutForImage:contentsCopy inSize:v27, v28];
  if ([v29 hasContents])
  {
    [(UIImageView *)self _applyImageLayout:v29 toLayer:layer];
    _setContentStretchForImage(self, contentsCopy);
  }

  else
  {
    [layer setContents:0];
    [(UIImageView *)self _teardownRBSymbolLayerIfNeeded];
  }

LABEL_34:
  _UIRestorePreviousFallbackEnvironment(v8);
  [UITraitCollection setCurrentTraitCollection:v6];

  return 1;
}

- (BOOL)_usesRenderBoxToRenderImage:(id)image withLayout:(id)layout
{
  imageCopy = image;
  layoutCopy = layout;
  if ([imageCopy isSymbolImage] && -[UIImageView _hasReasonToUseRBSymbolLayerForImage:](self, "_hasReasonToUseRBSymbolLayerForImage:", imageCopy))
  {
    rbSymbolConfiguration = [layoutCopy rbSymbolConfiguration];
    v9 = rbSymbolConfiguration != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_applyImageLayout:(id)layout toLayer:(id)layer
{
  layoutCopy = layout;
  layerCopy = layer;
  image = [(UIImageView *)self image];
  v9 = [(UIImageView *)self _usesRenderBoxToRenderImage:image withLayout:layoutCopy];

  if (v9)
  {
    [layerCopy setContents:0];
    _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
    if (!_rbSymbolLayer)
    {
      _rbSymbolLayer = [MEMORY[0x1E69C7110] layer];
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      [_rbSymbolLayer setAnchorPoint:{*MEMORY[0x1E695EFF8], v12}];
      layer = [(UIView *)self layer];
      [layer addSublayer:_rbSymbolLayer];

      v14 = objc_opt_new();
      [v14 setAnchorPoint:{v11, v12}];
      [_rbSymbolLayer setAnimator:v14];
      [(UIImageView *)self _setRBSymbolLayer:_rbSymbolLayer];
    }

    animationPresetManager = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    image2 = [(UIImageView *)self image];
    v17 = [animationPresetManager pendingSymbolContentTransitionForSettingSymbolImage:image2];

    if (v17)
    {
      if (([v17 isPendingLayoutPass] & 1) == 0)
      {
        sourceSymbolImage = [v17 sourceSymbolImage];
        [(UIView *)self bounds];
        v21 = [(UIImageView *)self _layoutForImage:sourceSymbolImage inSize:v19, v20];
        [(UIImageView *)self _setupRBSymbolLayerWithSymbolImageLayout:v21];
        [v17 setPendingLayoutPass:1];
        _effectiveSymbolContentTransitionContainerView = [(UIImageView *)self _effectiveSymbolContentTransitionContainerView];
        if (_effectiveSymbolContentTransitionContainerView)
        {
          [(UIView *)self bounds];
          [(UIView *)self convertRect:_effectiveSymbolContentTransitionContainerView toView:?];
          [v17 setInitialSymbolAbsoluteRect:?];
        }

        v23 = UIApp;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __41__UIImageView__applyImageLayout_toLayer___block_invoke;
        v33[3] = &unk_1E70F6B40;
        v34 = v17;
        selfCopy = self;
        v36 = sourceSymbolImage;
        v37 = _rbSymbolLayer;
        v24 = sourceSymbolImage;
        [v23 _performBlockAfterCATransactionCommits:v33];
      }
    }

    else
    {
      [(UIImageView *)self _setupSymbolLayerForCurrentSymbolImageLayout:layoutCopy];
    }
  }

  else
  {
    [(UIImageView *)self _teardownRBSymbolLayerIfNeeded];
    contents = [layoutCopy contents];
    [layerCopy setContents:contents];

    [(UIImageView *)self _applyEffectsFromLayout:layoutCopy];
    if (layoutCopy)
    {
      [layoutCopy contentsTransform];
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
    }

    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    [layerCopy setContentsTransform:v29];
    [layoutCopy contentsScaleFactor];
    [(UIImageView *)self setContentScaleFactor:?];
    if (qword_1ED497FF0 != -1)
    {
      dispatch_once(&qword_1ED497FF0, &__block_literal_global_709);
    }

    if (byte_1ED497FDA == 1)
    {
      imageViewFlags = self->_imageViewFlags;
      _rbSymbolLayer = [(UIImageView *)self image];
      isSymbolImage = [_rbSymbolLayer isSymbolImage];
      if ((imageViewFlags & 0x20) != 0)
      {
        if (isSymbolImage)
        {
          v28 = 64;
        }

        else
        {
          v28 = 0;
        }

        *&self->_imageViewFlags = *&self->_imageViewFlags & 0xFFBF | v28;
      }

      else
      {
        [layerCopy setContentsAlignsToPixels:isSymbolImage];
      }
    }

    else
    {
      _rbSymbolLayer = [(UIImageView *)self image];
      -[UIImageView _setLayerAllowsEdgeAntialiasing:](self, "_setLayerAllowsEdgeAntialiasing:", [_rbSymbolLayer isSymbolImage]);
    }
  }
}

- (id)_effectiveSymbolContentTransitionContainerView
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &_UIImageViewSymbolContentTransitionContainerViewProviderKey);
    v3 = v2;
    if (!v2 || ((*(v2 + 16))(v2, self), (_enclosingScrollableScrollerIncludingSelf = objc_claimAutoreleasedReturnValue()) == 0))
    {
      _enclosingScrollableScrollerIncludingSelf = [self _enclosingScrollableScrollerIncludingSelf];
      if (!_enclosingScrollableScrollerIncludingSelf)
      {
        _enclosingScrollableScrollerIncludingSelf = [self window];
      }
    }

    v5 = _enclosingScrollableScrollerIncludingSelf;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __41__UIImageView__applyImageLayout_toLayer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 408) animationPresetManager];
  v4 = [*(a1 + 40) image];
  v5 = [v3 pendingSymbolContentTransitionForSettingSymbolImage:v4];

  if (v2 == v5)
  {
    v6 = [*(a1 + 40) _currentImage];
    v7 = [*(a1 + 32) symbolContentTransition];
    v8 = [*(a1 + 32) options];
    v9 = [*(a1 + 32) completionHandler];
    objc_initWeak(&location, *(a1 + 40));
    v10 = *(a1 + 48);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __41__UIImageView__applyImageLayout_toLayer___block_invoke_2;
    v25 = &unk_1E712ACD8;
    objc_copyWeak(&v28, &location);
    v11 = v7;
    v26 = v11;
    v12 = v9;
    v27 = v12;
    v13 = [v11 ui_animationConfigurationFromSymbolImage:v10 toSymbolImage:v6 options:v8 completion:&v22];
    v14 = [*(*(a1 + 40) + 408) animationPresetManager];
    [v14 activatePendingSymbolContentTransition:*(a1 + 32)];

    v15 = [*(a1 + 56) animator];
    v16 = [v13 animation];
    v17 = [v13 options];
    [v15 addAnimation:v16 options:v17];

    v18 = *(a1 + 40);
    [v18 bounds];
    v21 = [v18 _layoutForImage:v6 inSize:{v19, v20}];
    [*(a1 + 40) _setupSymbolLayerForCurrentSymbolImageLayout:v21];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __41__UIImageView__applyImageLayout_toLayer___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[51] animationPresetManager];
    [v6 activeSymbolContentTransitionDidComplete:*(a1 + 32)];

    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __41__UIImageView__applyImageLayout_toLayer___block_invoke_3;
    v11 = &unk_1E712ACB0;
    v13 = a2;
    v7 = *(a1 + 40);
    v12 = *(a1 + 32);
    [v5 _runSymbolEffectCompletion:v7 contextConfigurator:&v8];
    [v5 _updateStateIfRBSymbolLayerNoLongerNeeded];
  }
}

void __41__UIImageView__applyImageLayout_toLayer___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setFinished:v3];
  [v4 setContentTransition:*(a1 + 32)];
}

- (void)_setupSymbolLayerForCurrentSymbolImageLayout:(id)layout
{
  storage = self->_storage;
  layoutCopy = layout;
  animationPresetManager = [(_UIImageViewStorage *)storage animationPresetManager];
  [animationPresetManager discardPendingSymbolContentTransitions];

  [(UIImageView *)self _setupRBSymbolLayerWithSymbolImageLayout:layoutCopy];
  animationPresetManager2 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  [animationPresetManager2 activatePendingSymbolEffects];
}

- (BOOL)_needsBoldEffectForImage:(id)image symbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCopy = image;
  v8 = [(UIImageView *)self _baseMultiplyColorWithImage:imageCopy symbolConfiguration:configurationCopy];
  v9 = [(UIImageView *)self _effectiveContentEffectsWithImage:imageCopy symbolConfiguration:configurationCopy];
  LOBYTE(self) = [(UIImageView *)self _needsBoldEffectForImage:imageCopy symbolConfiguration:configurationCopy withBaseColor:v8 withEffects:v9];

  return self;
}

- (BOOL)_needsBoldEffectForImage:(id)image symbolConfiguration:(id)configuration withBaseColor:(id)color withEffects:(id)effects
{
  imageCopy = image;
  v10 = [effects count];
  traitCollection = [(UIView *)self traitCollection];
  legibilityWeight = [traitCollection legibilityWeight];

  if (legibilityWeight == 1)
  {
    v13 = (color != 0) & ~[imageCopy _suppressesAccessibilityHairlineThickening];
    if (v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setupRBSymbolLayerWithSymbolImageLayout:(id)layout
{
  v98 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  v6 = _rbSymbolLayer;
  if (_rbSymbolLayer)
  {
    animator = [_rbSymbolLayer animator];

    if (animator)
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
      [layoutCopy contentsSize];
      v9 = v8;
      v11 = v10;
      [(UIView *)self bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v6 setBounds:?];
      v20 = *MEMORY[0x1E695EFF8];
      v21 = *(MEMORY[0x1E695EFF8] + 8);
      [v6 setPosition:{*MEMORY[0x1E695EFF8], v21}];
      [layoutCopy contentsScaleFactor];
      [v6 setContentsScale:?];
      [layoutCopy contentsScaleFactor];
      [v6 setRasterizationScale:?];
      [MEMORY[0x1E6979518] setDisableActions:0];
      rbSymbolConfiguration = [layoutCopy rbSymbolConfiguration];
      v23 = rbSymbolConfiguration;
      if (rbSymbolConfiguration)
      {
        v82 = v19;
        v83 = v17;
        v84 = v15;
        v85 = v13;
        v86 = v11;
        v87 = v9;
        v79 = v21;
        v80 = v20;
        v24 = *(rbSymbolConfiguration + 32);
        [v6 setStyleResolver:v24];

        WeakRetained = objc_loadWeakRetained((v23 + 16));
        animator2 = [v6 animator];
        [animator2 setGlyph:WeakRetained];

        v27 = *(v23 + 8);
        animator3 = [v6 animator];
        [animator3 setRenderingMode:v27];

        v29 = *(v23 + 12);
        animator4 = [v6 animator];
        [animator4 setRenderingOptions:v29];

        v31 = *(v23 + 40);
        animator5 = [v6 animator];
        [animator5 setVariableValue:v31];

        symbolLayerNeedsHorizontalFlip = [layoutCopy symbolLayerNeedsHorizontalFlip];
        animator6 = [v6 animator];
        [animator6 setFlipsRightToLeft:symbolLayerNeedsHorizontalFlip];

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v35 = *(v23 + 24);
        v36 = [v35 countByEnumeratingWithState:&v93 objects:v97 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v94;
          v39 = *MEMORY[0x1E69C7140];
          v40 = *(MEMORY[0x1E69C7140] + 4);
          v41 = *(MEMORY[0x1E69C7140] + 8);
          v42 = *(MEMORY[0x1E69C7140] + 12);
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v94 != v38)
              {
                objc_enumerationMutation(v35);
              }

              unsignedIntValue = [*(*(&v93 + 1) + 8 * i) unsignedIntValue];
              v45 = *(v23 + 32);
              v46 = v45[2](v45, unsignedIntValue, 0);
              v48 = v47;
              v50 = v49;
              v52 = v51;

              if (v46 != v39 || v48 != v40 || v50 != v41 || v52 != v42)
              {
                animator7 = [v6 animator];
                *&v57 = v46;
                *&v58 = v48;
                *&v59 = v50;
                *&v60 = v52;
                [animator7 setColor:unsignedIntValue forStyle:{v57, v58, v59, v60}];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v93 objects:v97 count:16];
          }

          while (v37);
        }

        v61 = MEMORY[0x1E695EFD0];
        v62 = *MEMORY[0x1E695EFD0];
        v81 = *(MEMORY[0x1E695EFD0] + 24);
        v63 = *(MEMORY[0x1E695EFD0] + 40);
        LayerContentModeTransform([(UIView *)self contentMode], &t2, v85, v84, v83, v82, v87, v86);
        t1.a = v62;
        *&t1.b = *(v61 + 8);
        *&t1.d = v81;
        t1.ty = v63;
        CGAffineTransformConcat(&v91, &t1, &t2);
        a = v91.a;
        v92 = *&v91.b;
        v65 = *&v91.d;
        ty = v91.ty;
        if (layoutCopy)
        {
          v88 = *&v91.d;
          [layoutCopy symbolLayerPositionTransform];
          v65 = v88;
        }

        else
        {
          memset(&t2, 0, sizeof(t2));
        }

        t1.a = a;
        *&t1.b = v92;
        *&t1.d = v65;
        t1.ty = ty;
        CGAffineTransformConcat(&v91, &t1, &t2);
        v67 = v91.a;
        d = v91.d;
        tx = v91.tx;
        v70 = v91.ty;
        animator8 = [v6 animator];
        [animator8 setTransform:{v67, d, tx, v70}];

        _effectiveSymbolContentTransitionContainerView = [(UIImageView *)self _effectiveSymbolContentTransitionContainerView];
        if (_effectiveSymbolContentTransitionContainerView)
        {
          [(UIView *)self convertPoint:_effectiveSymbolContentTransitionContainerView toView:v80, v79];
          v74 = v73;
          v76 = v75;
          animator9 = [v6 animator];
          [animator9 setPosition:{v74, v76}];

          animator10 = [v6 animator];
          [animator10 setPresentationPosition:{v74, v76}];
        }
      }
    }
  }
}

- (void)_applyEffectsFromLayout:(id)layout
{
  layoutCopy = layout;
  contentEffects = [layoutCopy contentEffects];
  [(UIView *)self mt_setContentEffects:contentEffects];
  contentsMultiplyColor = [layoutCopy contentsMultiplyColor];
  _overrideTintColor = [(UIView *)self _overrideTintColor];
  v7 = _overrideTintColor;
  if (_overrideTintColor)
  {
    v8 = _overrideTintColor;

    contentsMultiplyColor = v8;
  }

  contentDrawMode = [layoutCopy contentDrawMode];
  if (contentDrawMode)
  {
    v10 = contentDrawMode;
    if (!contentsMultiplyColor)
    {
      contentsMultiplyColor = +[UIColor clearColor];
    }

    v11 = [(UIImageView *)self _colorByApplyingDrawMode:v10 toColor:contentsMultiplyColor];

    contentsMultiplyColor = v11;
  }

  layer = [(UIView *)self layer];
  if (contentsMultiplyColor && ![(UIImageView *)self isAnimating])
  {
    cGColor = [contentsMultiplyColor CGColor];
    v14 = MEMORY[0x1E6979E30];
  }

  else
  {
    cGColor = 0;
    v14 = MEMORY[0x1E6979E38];
  }

  [layer setContentsMultiplyColor:cGColor];
  [layer setContentsSwizzle:*v14];
}

- (BOOL)_setImageViewContentsForAnimatedImage:(id)image
{
  v56 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  layer = [(UIView *)self layer];
  [(UIView *)self bounds];
  v36 = imageCopy;
  images = [imageCopy images];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(images, "count")}];
  v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(images, "count")}];
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(images, "count")}];
  v42 = *MEMORY[0x1E6979E38];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = images;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  selfCopy = self;
  if (v7)
  {
    v8 = v7;
    v43 = *v52;
    v37 = *MEMORY[0x1E6979E30];
    v9 = 0.0;
    do
    {
      v10 = 0;
      do
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * v10);
        null = [MEMORY[0x1E695DFB0] null];

        if (v11 != null)
        {
          v13 = [(UIImageView *)self _cachedPretiledImageForImage:v11];
          v14 = v13;
          if (v13)
          {
            v15 = v13;

            v11 = v15;
          }

          [(UIView *)self bounds];
          v18 = [_UIImageContentLayout layoutForSource:v11 inTarget:self withSize:v16, v17];
          if (v18)
          {
            [(_UIImageContentLayout *)v18 _materializeRenditionContents];
            if (*(v18 + 8))
            {
              v19 = *(v18 + 32);
            }

            else
            {
              v19 = 0;
            }

            v20 = v6;
            [v6 addObject:v19];
            v21 = MEMORY[0x1E696B098];
            [v18 contentsTransform];
          }

          else
          {
            v20 = v6;
            [v6 addObject:0];
            v21 = MEMORY[0x1E696B098];
            v49 = 0u;
            v50 = 0u;
            v48 = 0u;
          }

          v22 = [v21 valueWithCGAffineTransform:&v48];
          [v41 addObject:v22];

          v23 = +[UIColor whiteColor];
          contentsMultiplyColor = [v18 contentsMultiplyColor];

          if (contentsMultiplyColor)
          {
            contentsMultiplyColor2 = [v18 contentsMultiplyColor];

            v23 = v42;
            v42 = v37;
          }

          else
          {
            contentsMultiplyColor2 = +[UIColor whiteColor];
          }

          [v40 addObject:{objc_msgSend(contentsMultiplyColor2, "CGColor")}];
          if (v9 == 0.0)
          {
            [v18 contentsScaleFactor];
            v9 = v26;
          }

          v6 = v20;
          self = selfCopy;
        }

        ++v10;
      }

      while (v8 != v10);
      v27 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      v8 = v27;
    }

    while (v27);
  }

  v28 = [v6 count];
  if (v28)
  {
    [v36 duration];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__UIImageView__setImageViewContentsForAnimatedImage___block_invoke;
    aBlock[3] = &unk_1E712AD00;
    aBlock[5] = v29;
    aBlock[4] = layer;
    v30 = _Block_copy(aBlock);
    v30[2](v30, @"UIImageAnimationContents", @"contents", v6);
    v30[2](v30, @"UIImageAnimationContentsTransform", @"contentsTransform", v41);
    v30[2](v30, @"UIImageAnimationContentsMultiplyColor", @"contentsMultiplyColor", v40);
    firstObject = [v6 firstObject];
    [layer setContents:firstObject];

    firstObject2 = [v41 firstObject];
    v33 = firstObject2;
    if (firstObject2)
    {
      [firstObject2 CGAffineTransformValue];
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
    }

    v48 = v44;
    v49 = v45;
    v50 = v46;
    [layer setContentsTransform:&v48];

    [layer setContentsMultiplyColor:{objc_msgSend(v40, "firstObject")}];
    [layer setContentsSwizzle:v42];
    _setContentStretchForImage(selfCopy, v36);
  }

  return v28 != 0;
}

void __53__UIImageView__setImageViewContentsForAnimatedImage___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x1E6979390];
  v8 = a4;
  v9 = a2;
  v11 = [v7 animationWithKeyPath:a3];
  [v11 setValues:v8];

  [v11 setCalculationMode:*MEMORY[0x1E69795A0]];
  LODWORD(v10) = 2139095039;
  [v11 setRepeatCount:v10];
  [v11 setDuration:*(a1 + 40)];
  [v11 setRemovedOnCompletion:0];
  [*(a1 + 32) addAnimation:v11 forKey:v9];
}

- (void)_setLayerAllowsEdgeAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  layer = [(UIView *)self layer];
  v6 = [layer allowsEdgeAntialiasing] ^ ((*&self->_imageViewFlags & 0x80) == 0);

  imageViewFlags = self->_imageViewFlags;
  if (!v6)
  {
    imageViewFlags |= 0x100u;
  }

  if (antialiasingCopy)
  {
    v8 = 128;
  }

  else
  {
    v8 = 0;
  }

  *&self->_imageViewFlags = imageViewFlags & 0xFF7F | v8;
  if ((imageViewFlags & 0x100) == 0)
  {
    layer2 = [(UIView *)self layer];
    [layer2 setAllowsEdgeAntialiasing:antialiasingCopy];
  }
}

- (UIEdgeInsets)_additionalAlignmentRectInsetsForRenderingSource:(id)source
{
  sourceCopy = source;
  objc_opt_class();
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [(UIImageView *)self _edgeInsetsForEffectsForImage:sourceCopy];
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (id)_effectsForRenderingSource:(id)source size:(CGSize)size symbolConfiguration:(id)configuration renditionContext:(id)context
{
  sourceCopy = source;
  configurationCopy = configuration;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    drawMode = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_13;
  }

  v12 = sourceCopy;
  v13 = [(UIImageView *)self _baseMultiplyColorWithImage:v12 symbolConfiguration:configurationCopy shouldResolveDynamicColors:0];
  _colorForFlattening = [v12 _colorForFlattening];
  if (v13 | _colorForFlattening)
  {
    if ([(UIImageView *)self _shouldTreatImageAsTemplate:v12 symbolConfiguration:configurationCopy])
    {
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = _colorForFlattening;
      }
    }

    else
    {
      v15 = _colorForFlattening;
      if (!_colorForFlattening)
      {
        v20 = 0;
        goto LABEL_11;
      }
    }

    v20 = v15;
LABEL_11:
    traitCollectionForResolvingDynamicColors = [(_UIImageContentRenditionContext *)contextCopy traitCollectionForResolvingDynamicColors];
    v19 = [v20 resolvedColorWithTraitCollection:traitCollectionForResolvingDynamicColors];

    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:
  v18 = [(UIImageView *)self _effectiveContentEffectsWithImage:v12 symbolConfiguration:configurationCopy];
  drawMode = [(UIImageView *)self drawMode];
  v16 = [(UIImageView *)self _needsBoldEffectForImage:v12 symbolConfiguration:configurationCopy withBaseColor:v19 withEffects:v18];

LABEL_13:
  v22 = [_UIImageContentRenditionEffects effectsWithTintColor:v19 visualEffects:v18 drawMode:drawMode bold:v16];

  return v22;
}

- (id)_renditionForSource:(id)source effects:(id)effects size:(CGSize)size symbolConfiguration:(id)configuration withContentProvider:(id)provider
{
  height = size.height;
  width = size.width;
  v66[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  effectsCopy = effects;
  configurationCopy = configuration;
  providerCopy = provider;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [_UIImageContentRendition renditionWithContentProvider:providerCopy];
    goto LABEL_40;
  }

  v63 = sourceCopy;
  traitCollection = [configurationCopy traitCollection];
  if (!effectsCopy)
  {
    v19 = 0;
    v22 = 0;
    v61 = 0;
    v31 = 0;
LABEL_13:
    v32 = v31;
    if ([v32 count])
    {
      if (effectsCopy)
      {
        v33 = effectsCopy[3];

        if (v33)
        {
          v34 = effectsCopy[3];
          effectsCopy[3] = 0;
        }

        else
        {
          v34 = 0;
        }

        goto LABEL_20;
      }

      v34 = 0;
    }

    else
    {

      v34 = 0;
      if (effectsCopy)
      {
LABEL_20:
        v35 = *(effectsCopy + 2);
        goto LABEL_21;
      }
    }

    v35 = 0;
LABEL_21:
    v36 = v35;

    if (v36)
    {
      if (effectsCopy)
      {
        v37 = effectsCopy[3];
        v38 = *(effectsCopy + 2);
        v39 = [(UIImageView *)self _colorByApplyingDrawMode:v37 toColor:v38];
        [(UIBackgroundConfiguration *)effectsCopy _setCustomView:v39];

        effectsCopy[3] = 0;
        if (!v19)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v58 = [(UIImageView *)self _colorByApplyingDrawMode:0 toColor:0];
        [(UIBackgroundConfiguration *)0 _setCustomView:v58];

        if (!v19)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (effectsCopy && effectsCopy[3])
      {
        v60 = v34;
        if (!v19)
        {
          cGImageProvider = [(_UIImageContentProvider *)providerCopy CGImageProvider];
          v19 = [UIImage imageWithCGImage:cGImageProvider[2]()];
        }

        cGImage = [v19 CGImage];
        [v19 scale];
        v43 = v42;
        v44 = CGImageGetWidth(cGImage) / v42;
        v45 = CGImageGetHeight(cGImage) / v43;
        v46 = +[UIGraphicsImageRendererFormat preferredFormat];
        [v46 setScale:v43];
        v47 = [[UIGraphicsImageRenderer alloc] initWithSize:v46 format:v44, v45];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __88__UIImageView__renditionForSource_effects_size_symbolConfiguration_withContentProvider___block_invoke;
        v65[3] = &unk_1E7106F60;
        *&v65[5] = v44;
        *&v65[6] = v45;
        v65[7] = cGImage;
        v65[4] = self;
        v48 = [(UIGraphicsImageRenderer *)v47 imageWithActions:v65];

        v19 = v48;
        v34 = v60;
      }

      if (!v19)
      {
        goto LABEL_32;
      }
    }

    v49 = CGImageRetain([v19 CGImage]);
    v50 = CFAutorelease(v49);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __88__UIImageView__renditionForSource_effects_size_symbolConfiguration_withContentProvider___block_invoke_2;
    v64[3] = &__block_descriptor_40_e15___CGImage__8__0l;
    v64[4] = v50;
    v51 = [(_UIImageContentProvider *)providerCopy providerWithCGImageProvider:v64];

    providerCopy = v51;
LABEL_32:
    if (effectsCopy)
    {
      v52 = *(effectsCopy + 2);
      v53 = *(effectsCopy + 3);
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    v54 = v53;
    v24 = [_UIImageContentRendition renditionWithContentProvider:providerCopy color:v52 effects:v54 drawMode:v34];

    if (v22)
    {
      v21 = traitCollection;
      v25 = v63;
      if (effectsCopy)
      {
        v55 = *(effectsCopy + 8);
      }

      else
      {
        v55 = 0;
      }

      v56 = [(_UIImageContentRenditionCacheKey *)width keyWithSize:_UIImageContentRenditionCacheKey unresolvedTintColor:v22 traitCollection:traitCollection bold:v55 & 1 drawMode:v61];
      [v63 _cacheRendition:v24 forKey:v56];
    }

    else
    {
      v21 = traitCollection;
      v25 = v63;
    }

    goto LABEL_39;
  }

  v17 = effectsCopy[3];
  if (*(effectsCopy + 8) != 1)
  {
    v61 = effectsCopy[3];
    v22 = 0;
    v19 = 0;
LABEL_12:
    v31 = *(effectsCopy + 3);
    goto LABEL_13;
  }

  v18 = *(effectsCopy + 2);

  if (!v18)
  {
    v61 = v17;
    v22 = 0;
    v19 = 0;
LABEL_11:
    *(effectsCopy + 8) = 0;
    goto LABEL_12;
  }

  selfCopy = self;
  v66[0] = @"_UIKitBoldTintStyle";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  v20 = *(effectsCopy + 2);
  v21 = traitCollection;
  v22 = [(_UIImageContentRenditionCacheKey *)width keyWithSize:_UIImageContentRenditionCacheKey unresolvedTintColor:v20 traitCollection:traitCollection bold:*(effectsCopy + 8) drawMode:v17];

  v23 = [v63 _cachedRenditionForKey:v22];
  if (!v23)
  {
    v61 = v17;
    cGImageProvider2 = [(_UIImageContentProvider *)providerCopy CGImageProvider];
    v27 = [UIImage imageWithCGImage:cGImageProvider2[2]()];
    v28 = *(effectsCopy + 2);
    v29 = [v27 _imageWithStylePresets:v19 tintColor:v28 traitCollection:traitCollection];

    v30 = *(effectsCopy + 2);
    [(UIBackgroundConfiguration *)effectsCopy _setCustomView:?];

    v22 = v30;
    v19 = v29;
    self = selfCopy;
    goto LABEL_11;
  }

  v24 = v23;
  v25 = v63;
LABEL_39:

LABEL_40:

  return v24;
}

uint64_t __88__UIImageView__renditionForSource_effects_size_symbolConfiguration_withContentProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetBlendMode(v3, kCGBlendModeCopy);
  CGContextTranslateCTM(v3, 0.0, *(a1 + 48));
  CGContextScaleCTM(v3, 1.0, -1.0);
  v9.origin.x = *MEMORY[0x1E695EFF8];
  v9.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v9.size.width = *(a1 + 40);
  v9.size.height = *(a1 + 48);
  CGContextDrawImage(v3, v9, *(a1 + 56));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v4 _renderDrawModeEffectInRect:{0.0, 0.0, v5, v6}];
}

- (void)_setNeedsUpdateState
{
  imageViewFlags = self->_imageViewFlags;
  if ((imageViewFlags & 4) == 0)
  {
    *&self->_imageViewFlags = imageViewFlags | 4;
    objc_initWeak(&location, self);
    v3 = UIApp;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __35__UIImageView__setNeedsUpdateState__block_invoke;
    v4[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    [v3 _performBlockAfterCATransactionCommits:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __35__UIImageView__setNeedsUpdateState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[244] &= ~4u;
    v2 = WeakRetained;
    [WeakRetained _updateState];
    WeakRetained = v2;
  }
}

- (UIImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIImageView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _UIImageViewCommonInit(v3);
    [(UIView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (UIImageView)initWithImage:(UIImage *)image
{
  v4 = image;
  v5 = v4;
  v7 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (v4 && ![(UIImage *)v4 _isDecompressing])
  {
    [(UIImage *)v5 size];
    v7 = v8;
    v6 = v9;
  }

  v13.receiver = self;
  v13.super_class = UIImageView;
  v10 = [(UIView *)&v13 initWithFrame:0.0, 0.0, v7, v6];
  v11 = v10;
  if (v10)
  {
    _UIImageViewCommonInit(v10);
    [(UIView *)v11 setUserInteractionEnabled:0];
    if ([(UIImage *)v5 _isDecompressing])
    {
      [(UIImageView *)v11 _setDecompressingImage:v5 forType:0];
      [(UIView *)v11 setNeedsLayout];
    }

    else
    {
      [(UIImageView *)v11 setImage:v5];
    }
  }

  return v11;
}

- (UIImageView)initWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage
{
  v6 = image;
  v7 = highlightedImage;
  if (v6 && (v8 = [(UIImage *)v6 _isDecompressing], v9 = v6, !v8) || (v10 = *MEMORY[0x1E695F060], v11 = *(MEMORY[0x1E695F060] + 8), v7) && (v12 = [(UIImage *)v7 _isDecompressing], v9 = v7, !v12))
  {
    [(UIImage *)v9 size];
    v10 = v13;
    v11 = v14;
  }

  v18.receiver = self;
  v18.super_class = UIImageView;
  v15 = [(UIView *)&v18 initWithFrame:0.0, 0.0, v10, v11];
  v16 = v15;
  if (v15)
  {
    _UIImageViewCommonInit(v15);
    [(UIView *)v16 setUserInteractionEnabled:0];
    if ([(UIImage *)v6 _isDecompressing]|| [(UIImage *)v7 _isDecompressing])
    {
      [(UIImageView *)v16 _setDecompressingImage:v6 forType:0];
      [(UIImageView *)v16 _setDecompressingImage:v7 forType:1];
      [(UIView *)v16 setNeedsLayout];
    }

    else
    {
      [(UIImageView *)v16 setImage:v6];
      [(UIImageView *)v16 setHighlightedImage:v7];
    }
  }

  return v16;
}

- (UIImageView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v61.receiver = self;
  v61.super_class = UIImageView;
  v5 = [(UIView *)&v61 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    _UIImageViewCommonInit(v5);
    v7 = [coderCopy decodeObjectForKey:@"UIImage"];
    if (v7)
    {
      layer = [(UIView *)v6 layer];
      [layer contentsCenter];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      _setContentStretchForImage(v6, v7);
      layer2 = [(UIView *)v6 layer];
      [layer2 contentsCenter];
      v63.origin.x = v18;
      v63.origin.y = v19;
      v63.size.width = v20;
      v63.size.height = v21;
      v62.origin.x = v10;
      v62.origin.y = v12;
      v62.size.width = v14;
      v62.size.height = v16;
      v22 = CGRectEqualToRect(v62, v63);

      if (!v22)
      {
        layer3 = [(UIView *)v6 layer];
        [layer3 setContentsCenter:{v10, v12, v14, v16}];
      }
    }

    v24 = [coderCopy decodeObjectForKey:@"UIHighlightedImage"];
    v25 = [coderCopy decodeObjectForKey:@"UIAnimationImages"];
    v26 = [coderCopy decodeObjectForKey:@"UIHighlightedAnimationImages"];
    [coderCopy decodeDoubleForKey:@"UIAnimationDuration"];
    v28 = v27;
    v59 = [coderCopy decodeIntegerForKey:@"UIAnimationRepeatCount"];
    v29 = [coderCopy decodeBoolForKey:@"UIHighlighted"];
    v30 = [coderCopy decodeBoolForKey:@"UIAdjustsImageSizeForAccessibilityContentSizeCategory"];
    v31 = [coderCopy decodeObjectForKey:@"UIPreferredSymbolConfiguration"];
    [(_UIImageViewStorage *)v6->_storage setImage:v7];
    v60 = v24;
    [(_UIImageViewStorage *)v6->_storage setHighlightedImage:v24];
    v32 = [v25 copy];
    [(_UIImageViewStorage *)v6->_storage setAnimationImages:v32];

    v33 = [v26 copy];
    [(_UIImageViewStorage *)v6->_storage setHighlightedAnimationImages:v33];

    [(_UIImageViewStorage *)v6->_storage setAnimationDuration:v28];
    [(_UIImageViewStorage *)v6->_storage setAnimationRepeatCount:v59];
    [(_UIImageViewStorage *)v6->_storage setHighlighted:v29];
    [(_UIImageViewStorage *)v6->_storage setAdjustsImageSizeForAccessibilityContentSizeCategory:v30];
    v34 = v31;
    [(_UIImageViewStorage *)v6->_storage setPreferredSymbolConfiguration:v31];
    if (!v7)
    {
      goto LABEL_23;
    }

    v35 = v7;
    cIImage = [v35 CIImage];

    if (cIImage)
    {
      _representsCIImageWhichSupportsIOSurfaceRendering = [v35 _representsCIImageWhichSupportsIOSurfaceRendering];

      if (!_representsCIImageWhichSupportsIOSurfaceRendering)
      {
LABEL_22:
        [v35 scale];
        [(UIImageView *)v6 setContentScaleFactor:?];
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
    }

    if (dyld_program_sdk_at_least())
    {
      [(UIView *)v6 bounds];
      v40 = [(UIImageView *)v6 _layoutForImage:v35 inSize:v38, v39];
      if ([v40 hasContents])
      {
        contents = [v40 contents];

        cGImage = contents;
        if (contents)
        {
LABEL_16:
          layer4 = [(UIView *)v6 layer];
          [layer4 setContents:cGImage];

          -[UIImageView _updateHDRFlags:](v6, "_updateHDRFlags:", [v35 isHighDynamicRange]);
          if ([v35 _isResizable])
          {
            [v35 _contentStretchInPixels];
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v51 = v50;
            [v35 _sizeInPixels];
            v53 = v52;
            v55 = v54;
            [(UIView *)v6 bounds];
            -[UIView _setContentStretchInPixels:forContentSize:shouldTile:](v6, "_setContentStretchInPixels:forContentSize:shouldTile:", [v35 _isTiledWhenStretchedToSize:{v56, v57}], v45, v47, v49, v51, v53, v55);
          }

          if (dyld_program_sdk_at_least() && [(UIImageView *)v6 _shouldTreatImageAsTemplate:v35])
          {
            [(UIImageView *)v6 _invalidateTemplateSettings];
          }

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    cGImage = [v35 CGImage];
    contents = 0;
    goto LABEL_16;
  }

LABEL_24:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = UIImageView;
  [(UIView *)&v14 encodeWithCoder:coderCopy];
  image = [(UIImageView *)self image];
  if (image)
  {
    [coderCopy encodeObject:image forKey:@"UIImage"];
  }

  highlightedImage = [(UIImageView *)self highlightedImage];
  if (highlightedImage)
  {
    [coderCopy encodeObject:highlightedImage forKey:@"UIHighlightedImage"];
  }

  animationImages = [(_UIImageViewStorage *)self->_storage animationImages];

  if (animationImages)
  {
    animationImages2 = [(_UIImageViewStorage *)self->_storage animationImages];
    [coderCopy encodeObject:animationImages2 forKey:@"UIAnimationImages"];
  }

  highlightedAnimationImages = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];

  if (highlightedAnimationImages)
  {
    highlightedAnimationImages2 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
    [coderCopy encodeObject:highlightedAnimationImages2 forKey:@"UIHighlightedAnimationImages"];
  }

  [(_UIImageViewStorage *)self->_storage animationDuration];
  if (v11 != 0.0)
  {
    [(_UIImageViewStorage *)self->_storage animationDuration];
    [coderCopy encodeDouble:@"UIAnimationDuration" forKey:?];
  }

  if ([(_UIImageViewStorage *)self->_storage animationRepeatCount])
  {
    [coderCopy encodeInteger:-[_UIImageViewStorage animationRepeatCount](self->_storage forKey:{"animationRepeatCount"), @"UIAnimationRepeatCount"}];
  }

  if ([(_UIImageViewStorage *)self->_storage isHighlighted])
  {
    [coderCopy encodeDouble:@"UIHighlighted" forKey:{-[_UIImageViewStorage isHighlighted](self->_storage, "isHighlighted")}];
  }

  if ([(_UIImageViewStorage *)self->_storage adjustsImageSizeForAccessibilityContentSizeCategory])
  {
    [coderCopy encodeBool:-[_UIImageViewStorage adjustsImageSizeForAccessibilityContentSizeCategory](self->_storage forKey:{"adjustsImageSizeForAccessibilityContentSizeCategory"), @"UIAdjustsImageSizeForAccessibilityContentSizeCategory"}];
  }

  preferredSymbolConfiguration = [(_UIImageViewStorage *)self->_storage preferredSymbolConfiguration];

  if (preferredSymbolConfiguration)
  {
    preferredSymbolConfiguration2 = [(_UIImageViewStorage *)self->_storage preferredSymbolConfiguration];
    [coderCopy encodeObject:preferredSymbolConfiguration2 forKey:@"UIPreferredSymbolConfiguration"];
  }
}

- (void)_setImage:(id)image invalidatingPendingSymbolTransitions:(BOOL)transitions
{
  transitionsCopy = transitions;
  v23[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!self || (*(&self->super._viewFlags + 1) & 8) == 0)
  {
    if (transitionsCopy)
    {
      animationPresetManager = [(_UIImageViewStorage *)self->_storage animationPresetManager];
      v8 = [animationPresetManager pendingSymbolContentTransitionForSettingSymbolImage:imageCopy];
      v9 = v8 != 0;

      animationPresetManager2 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
      [animationPresetManager2 discardPendingSymbolContentTransitions];
    }

    else
    {
      v9 = 0;
    }

    _activeImage = [(UIImageView *)self _activeImage];
    image = [(_UIImageViewStorage *)self->_storage image];
    v13 = imageCopy;
    v14 = image;
    v15 = v14;
    if (v14 == v13)
    {
    }

    else
    {
      if (!v13 || !v14)
      {

        goto LABEL_15;
      }

      v16 = [v13 isEqual:v14];

      if ((v16 & 1) == 0)
      {
LABEL_15:
        [(_UIImageViewStorage *)self->_storage setImage:v13];
        *&self->_imageViewFlags &= ~1u;
        [(UIImageView *)self _invalidateResolvedImages];
        if (_UISolariumEnabled() && (!v13 || !_activeImage))
        {
          [(UIView *)self setNeedsUpdateProperties];
        }

        _isIconImage = [v13 _isIconImage];
        systemIconAppearanceTraitRegistration = [(_UIImageViewStorage *)self->_storage systemIconAppearanceTraitRegistration];

        if (_isIconImage)
        {
          if (!systemIconAppearanceTraitRegistration)
          {
            v19 = objc_opt_self();
            v23[0] = v19;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
            v21 = [(UIView *)self registerForTraitChanges:v20 withAction:sel__systemIconAppearanceDidChange];
            [(_UIImageViewStorage *)self->_storage setSystemIconAppearanceTraitRegistration:v21];
          }
        }

        else if (systemIconAppearanceTraitRegistration)
        {
          systemIconAppearanceTraitRegistration2 = [(_UIImageViewStorage *)self->_storage systemIconAppearanceTraitRegistration];
          [(UIView *)self unregisterForTraitChanges:systemIconAppearanceTraitRegistration2];

          [(_UIImageViewStorage *)self->_storage setSystemIconAppearanceTraitRegistration:0];
        }

        goto LABEL_24;
      }
    }

    if (!v9)
    {
LABEL_26:

      goto LABEL_27;
    }

LABEL_24:
    if (![(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:_activeImage])
    {
      [(UIImageView *)self _updateImageViewForOldImage:_activeImage newImage:v13];
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (void)setHighlightedImage:(UIImage *)highlightedImage
{
  v4 = highlightedImage;
  resolvedHighlightedImage = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
  v6 = resolvedHighlightedImage;
  if (resolvedHighlightedImage)
  {
    highlightedImage = resolvedHighlightedImage;
  }

  else
  {
    highlightedImage = [(_UIImageViewStorage *)self->_storage highlightedImage];
  }

  v8 = highlightedImage;

  highlightedImage2 = [(_UIImageViewStorage *)self->_storage highlightedImage];
  v16 = v4;
  v10 = highlightedImage2;
  if (v10 == v16)
  {
  }

  else
  {
    if (v16 && v10)
    {
      v11 = [(UIImage *)v16 isEqual:v10];

      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    highlightedImage3 = [(_UIImageViewStorage *)self->_storage highlightedImage];

    if (highlightedImage3)
    {
      highlightedImage4 = [(_UIImageViewStorage *)self->_storage highlightedImage];
      [(UIImageView *)self _clearPretiledImageCacheForImage:highlightedImage4];
    }

    resolvedHighlightedImage2 = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
    [(UIImageView *)self _clearPretiledImageCacheForImage:resolvedHighlightedImage2];

    [(UIImageView *)self _updatePretiledImageCacheForImage:v16];
    [(_UIImageViewStorage *)self->_storage setHighlightedImage:v16];
    [(_UIImageViewStorage *)self->_storage setResolvedHighlightedImage:0];
    *&self->_imageViewFlags &= ~1u;
  }

LABEL_14:
  if ([(UIImageView *)self isHighlighted])
  {
    _currentImage = [(UIImageView *)self _currentImage];

    if (!_currentImage)
    {
      [(UIImageView *)self _updateImageViewForOldImage:v8 newImage:v16];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v3 = highlighted;
  if ([(_UIImageViewStorage *)self->_storage isHighlighted]!= highlighted)
  {
    [(_UIImageViewStorage *)self->_storage setHighlighted:v3];
    *&self->_imageViewFlags &= ~1u;
    _currentImage = [(UIImageView *)self _currentImage];
    v6 = [(UIImageView *)self _displayImageAsLayered:_currentImage];

    if (v6)
    {
      _layeredImageContainer = [(UIImageView *)self _layeredImageContainer];
      [_layeredImageContainer setPressed:v3];
    }

    else
    {
      if ([(UIImageView *)self isAnimating])
      {
        [(UIImageView *)self stopAnimating];
      }

      [(UIImageView *)self _updateState];

      [(UIImageView *)self _updateTemplateProperties];
    }
  }
}

- (void)_setViewGeometry:(CGRect)geometry forMetric:(int)metric
{
  height = geometry.size.height;
  width = geometry.size.width;
  y = geometry.origin.y;
  x = geometry.origin.x;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  if (metric == 1)
  {
    selfCopy = self;
    v14 = &selRef_setBounds_;
    v15 = &selfCopy;
    goto LABEL_5;
  }

  if (!metric)
  {
    selfCopy2 = self;
    v14 = &selRef_setFrame_;
    v15 = &selfCopy2;
LABEL_5:
    v15[1] = UIImageView;
    objc_msgSendSuper2(v15, *v14, x, y, width, height, selfCopy);
  }

  [(UIImageView *)self _updateRBSymbolLayerPositionIfNeededForContentTransitionPendingLayoutPass];
  _currentImage = [(UIImageView *)self _currentImage];
  _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
  if (width != v11 || height != v13)
  {
    if ([(UIImageView *)self _canDrawContent])
    {
LABEL_9:
      [(UIImageView *)self _updateState];
LABEL_14:
      [(UIImageView *)self _imageContentParametersDidChange];
      goto LABEL_15;
    }

    content = [_currentImage content];
    if ([content canScaleImageToTargetResolution])
    {
    }

    else
    {
      content2 = [_currentHighlightedImage content];
      canScaleImageToTargetResolution = [content2 canScaleImageToTargetResolution];

      if (!canScaleImageToTargetResolution)
      {
        content3 = [_currentImage content];
        if ([content3 isCGImage])
        {
        }

        else
        {
          content4 = [_currentHighlightedImage content];
          isCGImage = [content4 isCGImage];

          if (!isCGImage)
          {
            goto LABEL_9;
          }
        }

        _recomputePretilingState = [(UIImageView *)self _recomputePretilingState];
        v26 = _recomputePretilingState;
        if (_recomputePretilingState)
        {
          [(UIImageView *)self _updateState];
        }

        layer = [(UIView *)self layer];
        contentsScaling = [layer contentsScaling];
        v29 = *MEMORY[0x1E6979670];

        [(UIView *)self bounds];
        if ((((contentsScaling != v29) ^ [_currentImage _isTiledWhenStretchedToSize:{v30, v31}]) & 1) == 0)
        {
          _setContentStretchForImage(self, _currentImage);
        }

        if (v26)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }
    }

    _animatesContents = [(UIImageView *)self _animatesContents];
    [(UIImageView *)self _setAnimatesContents:1];
    [(UIImageView *)self _updateState];
    [(UIImageView *)self _setAnimatesContents:_animatesContents];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)setContentScaleFactor:(double)factor
{
  v6.receiver = self;
  v6.super_class = UIImageView;
  [(UIView *)&v6 setContentScaleFactor:?];
  _layeredImageContainer = [(UIImageView *)self _layeredImageContainer];
  [_layeredImageContainer setContentScaleFactor:factor];
}

- (void)setContentMode:(int64_t)mode
{
  contentMode = [(UIView *)self contentMode];
  v6.receiver = self;
  v6.super_class = UIImageView;
  [(UIView *)&v6 setContentMode:mode];
  if (contentMode != mode)
  {
    *&self->_imageViewFlags &= ~1u;
    [(UIImageView *)self _imageContentParametersDidChange];
    [(UIImageView *)self _baselineOffsetParametersDidChangeHasBaselinePropertyChanged:0];
    [(UIImageView *)self _updateState];
  }
}

- (void)setCenter:(CGPoint)center
{
  v4.receiver = self;
  v4.super_class = UIImageView;
  [(UIView *)&v4 setCenter:center.x, center.y];
  [(UIImageView *)self _updateRBSymbolLayerPositionIfNeededForContentTransitionPendingLayoutPass];
}

- (void)setHidden:(BOOL)hidden
{
  v5.receiver = self;
  v5.super_class = UIImageView;
  [(UIView *)&v5 setHidden:?];
  if (!hidden)
  {
    [(UIImageView *)self _mainQ_beginLoadingIfApplicable];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  v4 = [(UIImageView *)self animationImages:size.width];
  highlightedAnimationImages = [(UIImageView *)self highlightedAnimationImages];
  _currentImage = [(UIImageView *)self _currentImage];
  _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
  v8 = [v4 count];
  v9 = v4;
  if (v8 || (v10 = [highlightedAnimationImages count], v9 = highlightedAnimationImages, v10))
  {
    v11 = [v9 objectAtIndex:0];
    if (v11)
    {
LABEL_4:
      v12 = _UIAccessibilityContentSizeCategorySizeForImage(v11, self);
      v14 = v13;
      [(UIImageView *)self _edgeInsetsForEffects];
      v17 = v16 + v12 + v15;
      v20 = v19 + v14 + v18;
      goto LABEL_11;
    }
  }

  else
  {
    v21 = _currentImage;
    if (_currentImage || (v21 = _currentHighlightedImage) != 0)
    {
      v11 = v21;
      goto LABEL_4;
    }
  }

  _placeholderView = [(UIImageView *)self _placeholderView];
  v17 = *MEMORY[0x1E695F060];
  if (_placeholderView)
  {
    v23 = _placeholderView;
    [_placeholderView systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v17 = v24;
    v20 = v25;

    v11 = 0;
  }

  else
  {
    v11 = 0;
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

LABEL_11:

  v26 = v17;
  v27 = v20;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)_baselineOffsetParametersDidChangeHasBaselinePropertyChanged:(BOOL)changed
{
  if ((*(&self->super._viewFlags + 7) & 2) != 0)
  {
    changedCopy = changed;
    _layoutEngine = [(UIView *)self _layoutEngine];
    if (_layoutEngine)
    {
      if (changedCopy)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"_UIViewHasBaselinePropertyChanged" object:self];
      }

      [(UIImageView *)self _baselineOffsetFromBottom];
      v8 = v7;
      [(UIImageView *)self _firstBaselineOffsetFromTop];
      v10 = v9;
      if (self->_previousBaselineOffsetFromBottom != v8 || self->_previousFirstBaselineOffsetFromTop != v9)
      {
        [(UIView *)self _invalidateBaselineConstraints];
        self->_previousBaselineOffsetFromBottom = v8;
        self->_previousFirstBaselineOffsetFromTop = v10;
      }
    }
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _currentImage = [(UIImageView *)self _currentImage];
  v7 = _currentImage;
  if (_currentImage)
  {
    _currentHighlightedImage = _currentImage;
  }

  else
  {
    _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
  }

  v9 = _currentHighlightedImage;

  if ([v9 hasBaseline])
  {
    height = [(UIImageView *)self _layoutForImage:v9 inSize:1 cachePerSize:1 forBaselineOffset:width, height];
    [(UIImageView *)self alignmentRectInsets];
    v13 = v12;
    if (height)
    {
      v14 = height[9];
    }

    else
    {
      v14 = 0.0;
    }

    v15 = v14 - v11;
    [height baselineOffsetFromBottom];
    v17 = v16 - v13;
  }

  else
  {
    v15 = 2.22507386e-308;
    v17 = 2.22507386e-308;
  }

  v18 = v15;
  v19 = v17;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (id)_imageContentGuideAllowingCreation:(BOOL)creation
{
  creationCopy = creation;
  v19[4] = *MEMORY[0x1E69E9840];
  imageContentGuide = [(_UIImageViewStorage *)self->_storage imageContentGuide];

  if (imageContentGuide)
  {
    v6 = 1;
  }

  else
  {
    v6 = !creationCopy;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(UILayoutGuide);
    [(UILayoutGuide *)v7 _setAllowsNegativeDimensions:1];
    [(UIView *)self addLayoutGuide:v7];
    [(UILayoutGuide *)v7 _setLockedToOwningView:1];
    [(UILayoutGuide *)v7 setIdentifier:@"UIImageViewImageContentGuide"];
    [(_UIImageViewStorage *)self->_storage setImageContentGuide:v7];
    v8 = MEMORY[0x1E69977A0];
    selfCopy = self;
    v10 = [v8 constraintWithItem:v7 attribute:3 relatedBy:0 toItem:selfCopy attribute:3];
    v11 = [MEMORY[0x1E69977A0] constraintWithItem:v7 attribute:1 relatedBy:0 toItem:selfCopy attribute:1];
    v12 = [MEMORY[0x1E69977A0] constraintWithItem:selfCopy attribute:4 relatedBy:0 toItem:v7 attribute:4];
    v13 = [MEMORY[0x1E69977A0] constraintWithItem:selfCopy attribute:2 relatedBy:0 toItem:v7 attribute:2];
    [v10 setIdentifier:@"UIImageView-imageContentGuide-top-constraint"];
    [v11 setIdentifier:@"UIImageView-imageContentGuide-left-constraint"];
    [v12 setIdentifier:@"UIImageView-imageContentGuide-bottom-constraint"];
    [v13 setIdentifier:@"UIImageView-imageContentGuide-right-constraint"];
    v19[0] = v10;
    v19[1] = v11;
    v19[2] = v12;
    v19[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    [(UILayoutGuide *)v7 _setSystemConstraints:v14];

    [(UIImageView *)selfCopy _imageContentParametersDidChange];
    v15 = MEMORY[0x1E69977A0];
    _systemConstraints = [(UILayoutGuide *)v7 _systemConstraints];
    [v15 activateConstraints:_systemConstraints];
  }

  imageContentGuide2 = [(_UIImageViewStorage *)self->_storage imageContentGuide];

  return imageContentGuide2;
}

- (void)_setGuardAgainstDegenerateBaselineCalculation:(BOOL)calculation
{
  if (calculation)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_imageViewFlags = *&self->_imageViewFlags & 0xFDFF | v3;
}

- (id)_symbolConfigurationForImage:(id)image
{
  imageCopy = image;
  WeakRetained = objc_loadWeakRetained(&self->_cachedSymbolConfigurationImage);
  v6 = WeakRetained;
  cachedSymbolConfiguration = self->_cachedSymbolConfiguration;
  if (cachedSymbolConfiguration)
  {
    v8 = WeakRetained == imageCopy;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v28 = cachedSymbolConfiguration;
  }

  else
  {
    v9 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    _automaticSymbolConfiguration = [imageCopy _automaticSymbolConfiguration];
    v11 = _automaticSymbolConfiguration;
    if (_automaticSymbolConfiguration)
    {
      v12 = _automaticSymbolConfiguration;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;
    v30 = v13;

    preferredSymbolConfiguration = [(UIImageView *)self preferredSymbolConfiguration];
    v15 = preferredSymbolConfiguration;
    if (preferredSymbolConfiguration)
    {
      v16 = preferredSymbolConfiguration;
    }

    else
    {
      v16 = v9;
    }

    v17 = v16;

    _overridingSymbolConfiguration = [(UIImageView *)self _overridingSymbolConfiguration];
    v19 = _overridingSymbolConfiguration;
    if (_overridingSymbolConfiguration)
    {
      v20 = _overridingSymbolConfiguration;
    }

    else
    {
      v20 = v9;
    }

    v21 = v20;

    v22 = [v13 configurationByApplyingConfiguration:v17];
    symbolConfiguration = [imageCopy symbolConfiguration];
    v24 = [v22 configurationByApplyingConfiguration:symbolConfiguration];

    v25 = [v24 configurationByApplyingConfiguration:v21];

    _effectiveImageViewTraitCollectionForResolvingImages = [(UIImageView *)self _effectiveImageViewTraitCollectionForResolvingImages];
    imageConfiguration = [_effectiveImageViewTraitCollectionForResolvingImages imageConfiguration];
    v28 = [v25 configurationByApplyingConfiguration:imageConfiguration];

    objc_storeStrong(&self->_cachedSymbolConfiguration, v28);
    objc_storeWeak(&self->_cachedSymbolConfigurationImage, imageCopy);
  }

  return v28;
}

- (void)setPreferredSymbolConfiguration:(UIImageSymbolConfiguration *)preferredSymbolConfiguration
{
  v4 = preferredSymbolConfiguration;
  preferredSymbolConfiguration = [(_UIImageViewStorage *)self->_storage preferredSymbolConfiguration];
  v6 = v4;
  v9 = v6;
  if (preferredSymbolConfiguration == v6)
  {

LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  if (!v6 || !preferredSymbolConfiguration)
  {

    goto LABEL_8;
  }

  v7 = [(UIImageSymbolConfiguration *)preferredSymbolConfiguration isEqual:v6];

  v8 = v9;
  if (!v7)
  {
LABEL_8:
    preferredSymbolConfiguration = [(UIImageView *)self _activeImage];
    [(_UIImageViewStorage *)self->_storage setPreferredSymbolConfiguration:v9];
    [(UIImageView *)self _invalidateResolvedImages];
    [(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:preferredSymbolConfiguration];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_setOverridingSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  overridingSymbolConfiguration = [(_UIImageViewStorage *)self->_storage overridingSymbolConfiguration];
  v6 = configurationCopy;
  v9 = v6;
  if (overridingSymbolConfiguration == v6)
  {

LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  if (!v6 || !overridingSymbolConfiguration)
  {

    goto LABEL_8;
  }

  v7 = [overridingSymbolConfiguration isEqual:v6];

  v8 = v9;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    overridingSymbolConfiguration = [(UIImageView *)self _activeImage];
    [(_UIImageViewStorage *)self->_storage setOverridingSymbolConfiguration:v9];
    [(UIImageView *)self _invalidateResolvedImages];
    [(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:overridingSymbolConfiguration];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_setPreferredSymbolVariant:(id)variant
{
  variantCopy = variant;
  preferredSymbolVariant = [(_UIImageViewStorage *)self->_storage preferredSymbolVariant];
  v6 = variantCopy;
  v9 = v6;
  if (preferredSymbolVariant == v6)
  {

LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  if (!v6 || !preferredSymbolVariant)
  {

    goto LABEL_8;
  }

  v7 = [preferredSymbolVariant isEqual:v6];

  v8 = v9;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    preferredSymbolVariant = [(UIImageView *)self _activeImage];
    [(_UIImageViewStorage *)self->_storage setPreferredSymbolVariant:v9];
    [(UIImageView *)self _invalidateResolvedImages];
    [(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:preferredSymbolVariant];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints
{
  if (constraints)
  {
    v7.receiver = self;
    v7.super_class = UIImageView;
    [(UIView *)&v7 setTranslatesAutoresizingMaskIntoConstraints:1];
  }

  else
  {
    _currentImage = [(UIImageView *)self _currentImage];
    if (_currentImage)
    {
      translatesAutoresizingMaskIntoConstraints = [(UIView *)self translatesAutoresizingMaskIntoConstraints];
    }

    else
    {
      _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
      if (_currentHighlightedImage)
      {
        translatesAutoresizingMaskIntoConstraints = [(UIView *)self translatesAutoresizingMaskIntoConstraints];
      }

      else
      {
        translatesAutoresizingMaskIntoConstraints = 0;
      }
    }

    v7.receiver = self;
    v7.super_class = UIImageView;
    [(UIView *)&v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (translatesAutoresizingMaskIntoConstraints)
    {
      [(UIView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _activeImage = [(UIImageView *)self _activeImage];
  v13 = _activeImage;
  if (_activeImage)
  {
    [(UIView *)self bounds];
    [v13 drawInRect:17 blendMode:? alpha:?];
    _activeImage = v13;
  }

  if ([(UIImageView *)self _needsImageEffectsForImage:_activeImage])
  {
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextGetCompositeOperation();
    CGContextGetAlpha();
    v12 = v11;
    [(UIImageView *)self _renderDrawModeEffectInRect:x, y, width, height];
    CGContextSetCompositeOperation();
    CGContextSetAlpha(v10, v12);
  }
}

- (void)setAnimationImages:(NSArray *)animationImages
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = animationImages;
  if ([(UIImageView *)self isAnimating])
  {
    [(UIImageView *)self stopAnimating];
  }

  animationImages = [(_UIImageViewStorage *)self->_storage animationImages];
  v6 = v4;
  v7 = v6;
  if (animationImages == v6)
  {

LABEL_25:
    goto LABEL_26;
  }

  if (!v6 || !animationImages)
  {

    goto LABEL_10;
  }

  v8 = [(NSArray *)animationImages isEqual:v6];

  if ((v8 & 1) == 0)
  {
LABEL_10:
    animationImages = [(_UIImageViewStorage *)self->_storage animationImages];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(NSArray *)animationImages countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(animationImages);
          }

          [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v28 + 1) + 8 * i)];
        }

        v10 = [(NSArray *)animationImages countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v7;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(UIImageView *)self _updatePretiledImageCacheForImage:*(*(&v24 + 1) + 8 * j), v24];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    v18 = [(NSArray *)v13 copy];
    [(_UIImageViewStorage *)self->_storage setAnimationImages:v18];

    [(UIView *)self invalidateIntrinsicContentSize];
    goto LABEL_25;
  }

LABEL_26:
  [(UIImageView *)self _updateState];
  _currentImage = [(UIImageView *)self _currentImage];
  if (!_currentImage)
  {
    if (![(NSArray *)v7 count])
    {
      goto LABEL_30;
    }

    _currentImage = [(NSArray *)v7 objectAtIndex:0];
    [_currentImage scale];
    [(UIImageView *)self setContentScaleFactor:?];
  }

LABEL_30:
  _currentImage2 = [(UIImageView *)self _currentImage];
  if (_currentImage2)
  {
    [(UIView *)self setOpaque:0];
  }

  else
  {
    animationImages2 = [(UIImageView *)self animationImages];
    if (animationImages2)
    {
      [(UIView *)self setOpaque:0];
    }

    else
    {
      _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
      if (_currentHighlightedImage)
      {
        [(UIView *)self setOpaque:0];
      }

      else
      {
        highlightedAnimationImages = [(UIImageView *)self highlightedAnimationImages];
        [(UIView *)self setOpaque:highlightedAnimationImages == 0];
      }
    }
  }
}

- (void)setHighlightedAnimationImages:(NSArray *)highlightedAnimationImages
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = highlightedAnimationImages;
  if ([(UIImageView *)self isHighlighted]&& [(UIImageView *)self isAnimating])
  {
    [(UIImageView *)self stopAnimating];
  }

  highlightedAnimationImages = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
  v6 = v4;
  v7 = v6;
  if (highlightedAnimationImages == v6)
  {

    goto LABEL_27;
  }

  if (v6 && highlightedAnimationImages)
  {
    v8 = [(NSArray *)highlightedAnimationImages isEqual:v6];

    if (v8)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  highlightedAnimationImages2 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
  v10 = [highlightedAnimationImages2 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(highlightedAnimationImages2);
        }

        [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v32 + 1) + 8 * i)];
      }

      v11 = [highlightedAnimationImages2 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v7;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(UIImageView *)self _updatePretiledImageCacheForImage:*(*(&v28 + 1) + 8 * j), v28];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  v19 = [(NSArray *)v14 copy];
  [(_UIImageViewStorage *)self->_storage setHighlightedAnimationImages:v19];

  animationImages = [(_UIImageViewStorage *)self->_storage animationImages];
  v21 = [animationImages count];

  if (!v21)
  {
    [(UIView *)self invalidateIntrinsicContentSize];
  }

LABEL_27:
  if ([(UIImageView *)self isHighlighted])
  {
    [(UIImageView *)self _updateState];
  }

  _currentImage = [(UIImageView *)self _currentImage];
  if (!_currentImage)
  {
    _currentImage = [(_UIImageViewStorage *)self->_storage animationImages];
    if (![_currentImage count])
    {
      v23 = [(NSArray *)v7 count];

      if (!v23)
      {
        goto LABEL_34;
      }

      _currentImage = [(NSArray *)v7 objectAtIndex:0];
      [_currentImage scale];
      [(UIImageView *)self setContentScaleFactor:?];
    }
  }

LABEL_34:
  _currentImage2 = [(UIImageView *)self _currentImage];
  if (_currentImage2)
  {
    [(UIView *)self setOpaque:0];
  }

  else
  {
    animationImages2 = [(UIImageView *)self animationImages];
    if (animationImages2)
    {
      [(UIView *)self setOpaque:0];
    }

    else
    {
      _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
      if (_currentHighlightedImage)
      {
        [(UIView *)self setOpaque:0];
      }

      else
      {
        highlightedAnimationImages3 = [(UIImageView *)self highlightedAnimationImages];
        [(UIView *)self setOpaque:highlightedAnimationImages3 == 0];
      }
    }
  }
}

- (void)setAnimationDuration:(NSTimeInterval)animationDuration
{
  if ([(UIImageView *)self isAnimating])
  {
    [(UIImageView *)self stopAnimating];
  }

  storage = self->_storage;

  [(_UIImageViewStorage *)storage setAnimationDuration:animationDuration];
}

- (void)setAnimationRepeatCount:(NSInteger)animationRepeatCount
{
  if ([(UIImageView *)self isAnimating])
  {
    [(UIImageView *)self stopAnimating];
  }

  storage = self->_storage;

  [(_UIImageViewStorage *)storage setAnimationRepeatCount:animationRepeatCount];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (!-[UIImageView isAnimating](self, "isAnimating") && !CGColorEqualToColor([colorCopy CGColor], -[UIView _backgroundCGColor](self, "_backgroundCGColor")))
  {
    v7.receiver = self;
    v7.super_class = UIImageView;
    [(UIView *)&v7 setBackgroundColor:colorCopy];
    _currentImage = [(UIImageView *)self _currentImage];
    if (_currentImage)
    {

LABEL_5:
      [(UIImageView *)self _updateState];
      goto LABEL_8;
    }

    if ([(UIImageView *)self isHighlighted])
    {
      _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];

      if (_currentHighlightedImage)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_8:
}

- (void)_updateProperties
{
  v3.receiver = self;
  v3.super_class = UIImageView;
  [(UIView *)&v3 _updateProperties];
  [(UIImageView *)self _updateScrollPocketInteraction];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  semanticContentAttribute = [(UIView *)self semanticContentAttribute];
  v8.receiver = self;
  v8.super_class = UIImageView;
  [(UIView *)&v8 setSemanticContentAttribute:attribute];
  if (semanticContentAttribute != attribute)
  {
    image = [(UIImageView *)self image];
    flipsForRightToLeftLayoutDirection = [image flipsForRightToLeftLayoutDirection];

    if (flipsForRightToLeftLayoutDirection)
    {
      [(UIImageView *)self _invalidateImageLayouts];
    }

    else
    {
      [(UIImageView *)self _updateResolvedImages];
    }

    [(UIView *)self setNeedsDisplay];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if (-[UIImageView _animatesContents](self, "_animatesContents") && ([keyCopy isEqualToString:@"contents"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"contentsTransform") & 1) != 0)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (!dyld_program_sdk_at_least())
  {
LABEL_11:
    v8.receiver = self;
    v8.super_class = UIImageView;
    v5 = [(UIView *)&v8 _shouldAnimatePropertyWithKey:keyCopy];
    goto LABEL_12;
  }

  if (+[_UIHDRUsageCoordinator useCALayerDynamicRange])
  {
    if ([keyCopy isEqualToString:@"contentsEDRStrength"])
    {
      goto LABEL_4;
    }

    v6 = @"contentsCDRStrength";
  }

  else
  {
    v6 = @"contentsMaximumDesiredEDR";
  }

  if (([keyCopy isEqualToString:v6] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v5 = 1;
LABEL_12:

  return v5;
}

- (id)_initialValueForKey:(id)key
{
  keyCopy = key;
  if ([@"imageDynamicRange" isEqualToString:keyCopy])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIImageView imageDynamicRange](self, "imageDynamicRange")}];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIImageView;
    v5 = [(UIView *)&v8 _initialValueForKey:keyCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_generateDeferredAnimations:(id)animations
{
  animationsCopy = animations;
  v14.receiver = self;
  v14.super_class = UIImageView;
  [(UIView *)&v14 _generateDeferredAnimations:animationsCopy];
  objc_opt_self();
  if (dyld_program_sdk_at_least())
  {
    v5 = [animationsCopy objectForKeyedSubscript:@"imageDynamicRange"];
    v6 = v5;
    if (v5)
    {
      animationFrames = [v5 animationFrames];
      v8 = [animationFrames count];

      if ((+[_UIHDRUsageCoordinator useCALayerDynamicRange]& 1) == 0)
      {
        layer = [(UIView *)self layer];
        [layer setWantsExtendedDynamicRangeContent:1];
      }

      if (v8 >= 1)
      {
        v10 = 0;
        v11 = MEMORY[0x1E69E9820];
        do
        {
          v13[0] = v11;
          v13[1] = 3221225472;
          v13[2] = __43__UIImageView__generateDeferredAnimations___block_invoke;
          v13[3] = &unk_1E70F6EC0;
          v13[4] = self;
          [v6 animateFrameAtIndex:v10++ animations:v13];
        }

        while (v8 != v10);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__UIImageView__generateDeferredAnimations___block_invoke_2;
      v12[3] = &unk_1E70F5AC0;
      v12[4] = self;
      [UIView _addCompletion:v12];
    }
  }
}

void __43__UIImageView__generateDeferredAnimations___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 integerValue];

  if (+[_UIHDRUsageCoordinator useCALayerDynamicRange])
  {
    v8 = [_UIHDRUsageCoordinator convertDynamicRange:v4];
    v5 = [*(a1 + 32) layer];
    [v5 setPreferredDynamicRange:v8];
  }

  else
  {
    [*(a1 + 32) _maximumEDRForDynamicRange:v4];
    v7 = v6;
    v8 = [*(a1 + 32) layer];
    [v8 setContentsMaximumDesiredEDR:v7];
  }
}

- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect
{
  v4 = MEMORY[0x1E6982278];
  v5 = symbolEffect;
  options = [v4 options];
  [(UIImageView *)self addSymbolEffect:v5 options:options];
}

- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated completion:(UISymbolEffectCompletion)completionHandler
{
  v7 = animated;
  v11 = symbolEffect;
  options = options;
  v13 = completionHandler;
  if (![(NSSymbolEffect *)v11 ui_isSupportedByImageView])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImageView.m" lineNumber:2719 description:@"Unsupported symbol effect added to UIImageView."];
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v15 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(UIImageView *)self image], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_14;
  }

  v17 = v16;
  image = [(UIImageView *)self image];
  isSymbolImage = [image isSymbolImage];

  if ((isSymbolImage & 1) == 0)
  {
LABEL_14:
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __59__UIImageView_addSymbolEffect_options_animated_completion___block_invoke;
    v27[3] = &unk_1E71262F0;
    v20 = v11;
    v28 = v20;
    [(UIImageView *)self _runSymbolEffectCompletion:v13 contextConfigurator:v27];

    goto LABEL_15;
  }

  v20 = [(NSSymbolEffect *)v11 copy];

  v21 = [(NSSymbolEffectOptions *)options copy];
  options = v21;
  if (!v21)
  {
    options = [MEMORY[0x1E6982278] options];
  }

  animationPresetManager = [(_UIImageViewStorage *)self->_storage animationPresetManager];

  if (!animationPresetManager)
  {
    v23 = [_UIImageViewSymbolAnimationPresetManager managerForClient:self];
    [(_UIImageViewStorage *)self->_storage setAnimationPresetManager:v23];
  }

  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];

  animationPresetManager2 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  v26 = animationPresetManager2;
  if (_rbSymbolLayer)
  {
    [animationPresetManager2 addActiveSymbolEffect:v20 options:options animated:v7 completion:v13];
  }

  else
  {
    [animationPresetManager2 addPendingSymbolEffect:v20 options:options animated:v7 completion:v13];

    [(UIImageView *)self _updateState];
  }

LABEL_15:
}

void __59__UIImageView_addSymbolEffect_options_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFinished:0];
  v4 = [*(a1 + 32) copy];
  [v3 setEffect:v4];
}

- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect
{
  v4 = MEMORY[0x1E6982278];
  v5 = symbolEffect;
  options = [v4 options];
  [(UIImageView *)self removeSymbolEffectOfType:v5 options:options];
}

- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated completion:(UISymbolEffectCompletion)completionHandler
{
  v7 = animated;
  v11 = symbolEffect;
  options = options;
  v13 = completionHandler;
  if (![(NSSymbolEffect *)v11 ui_isSupportedByImageView])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImageView.m" lineNumber:2778 description:@"Unsupported symbol effect removed from UIImageView."];
  }

  if (!v11 || (objc_opt_self(), v15 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) == 0))
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __68__UIImageView_removeSymbolEffectOfType_options_animated_completion___block_invoke;
    v31 = &unk_1E71262F0;
    v21 = &v32;
    v17 = v11;
    v32 = v17;
    v22 = &v28;
    goto LABEL_10;
  }

  v17 = [(NSSymbolEffect *)v11 copy];

  v18 = [(NSSymbolEffectOptions *)options copy];
  options = v18;
  if (!v18)
  {
    options = [MEMORY[0x1E6982278] options];
  }

  animationPresetManager = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  v20 = [animationPresetManager removeSymbolEffectsOfType:v17 options:options animated:v7 completion:v13];

  if ((v20 & 1) == 0)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __68__UIImageView_removeSymbolEffectOfType_options_animated_completion___block_invoke_2;
    v26 = &unk_1E71262F0;
    v21 = &v27;
    v17 = v17;
    v27 = v17;
    v22 = &v23;
LABEL_10:
    [(UIImageView *)self _runSymbolEffectCompletion:v13 contextConfigurator:v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32];
  }
}

void __68__UIImageView_removeSymbolEffectOfType_options_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFinished:0];
  v4 = [*(a1 + 32) copy];
  [v3 setEffect:v4];
}

void __68__UIImageView_removeSymbolEffectOfType_options_animated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFinished:0];
  [v3 setEffect:*(a1 + 32)];
}

- (void)removeAllSymbolEffects
{
  options = [MEMORY[0x1E6982278] options];
  [(UIImageView *)self removeAllSymbolEffectsWithOptions:options];
}

- (void)removeAllSymbolEffectsWithOptions:(NSSymbolEffectOptions *)options animated:(BOOL)animated
{
  v4 = animated;
  storage = self->_storage;
  v6 = options;
  animationPresetManager = [(_UIImageViewStorage *)storage animationPresetManager];
  [animationPresetManager removeAllSymbolEffectsWithOptions:v6 animated:v4];
}

- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition
{
  v6 = MEMORY[0x1E6982278];
  v7 = transition;
  v8 = symbolImage;
  options = [v6 options];
  [(UIImageView *)self setSymbolImage:v8 withContentTransition:v7 options:options];
}

- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition options:(NSSymbolEffectOptions *)options completion:(UISymbolEffectCompletion)completionHandler
{
  v11 = symbolImage;
  v12 = transition;
  options = options;
  v14 = completionHandler;
  if (![(NSSymbolContentTransition *)v12 ui_isSupportedByImageView])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImageView.m" lineNumber:2837 description:@"Unsupported symbol content transition added to UIImageView."];
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  v16 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  image = [(UIImageView *)self image];
  if (!image)
  {
    goto LABEL_15;
  }

  v18 = image;
  image2 = [(UIImageView *)self image];
  isSymbolImage = [image2 isSymbolImage];
  if (!v11 || !isSymbolImage || ![(UIImage *)v11 isSymbolImage])
  {

LABEL_15:
    goto LABEL_16;
  }

  v21 = +[UIView areAnimationsEnabled];

  if (!v21)
  {
LABEL_16:
    [(UIImageView *)self setImage:v11];
    goto LABEL_17;
  }

  image3 = [(UIImageView *)self image];
  v23 = v11;
  v24 = v23;
  if (image3 == v23)
  {

    goto LABEL_17;
  }

  if (image3)
  {
    v25 = [(UIImage *)image3 isEqual:v23];

    if (!v25)
    {
      goto LABEL_21;
    }

LABEL_17:
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __71__UIImageView_setSymbolImage_withContentTransition_options_completion___block_invoke;
    v32[3] = &unk_1E71262F0;
    v26 = v12;
    v33 = v26;
    [(UIImageView *)self _runSymbolEffectCompletion:v14 contextConfigurator:v32];

    goto LABEL_18;
  }

LABEL_21:
  v26 = [(NSSymbolContentTransition *)v12 copy];

  v27 = [(NSSymbolEffectOptions *)options copy];
  options = v27;
  if (!v27)
  {
    options = [MEMORY[0x1E6982278] options];
  }

  animationPresetManager = [(_UIImageViewStorage *)self->_storage animationPresetManager];

  if (!animationPresetManager)
  {
    v29 = [_UIImageViewSymbolAnimationPresetManager managerForClient:self];
    [(_UIImageViewStorage *)self->_storage setAnimationPresetManager:v29];
  }

  animationPresetManager2 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  _currentImage = [(UIImageView *)self _currentImage];
  [animationPresetManager2 addPendingSymbolContentTransition:v26 fromSymbolImage:_currentImage toSymbolImage:v24 options:options completion:v14];

  [(UIImageView *)self _setImage:v24 invalidatingPendingSymbolTransitions:0];
LABEL_18:
}

void __71__UIImageView_setSymbolImage_withContentTransition_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFinished:0];
  v4 = [*(a1 + 32) copy];
  [v3 setContentTransition:v4];
}

- (void)_addSymbolEffect:(id)effect animated:(BOOL)animated
{
  animatedCopy = animated;
  _nsSymbolEffectRepresentation = [effect _nsSymbolEffectRepresentation];
  options = [MEMORY[0x1E6982278] options];
  [(UIImageView *)self addSymbolEffect:_nsSymbolEffectRepresentation options:options animated:animatedCopy];
}

- (void)_removeSymbolEffect:(id)effect animated:(BOOL)animated
{
  animatedCopy = animated;
  _nsSymbolEffectRepresentation = [effect _nsSymbolEffectRepresentation];
  options = [MEMORY[0x1E6982278] options];
  [(UIImageView *)self removeSymbolEffectOfType:_nsSymbolEffectRepresentation options:options animated:animatedCopy];
}

- (void)_removeAllSymbolEffectsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  options = [MEMORY[0x1E6982278] options];
  [(UIImageView *)self removeAllSymbolEffectsWithOptions:options animated:animatedCopy];
}

- (void)_setSymbolImage:(id)image withSymbolTransition:(id)transition
{
  imageCopy = image;
  _nsSymbolContentTransitionRepresentation = [transition _nsSymbolContentTransitionRepresentation];
  [(UIImageView *)self setSymbolImage:imageCopy withContentTransition:_nsSymbolContentTransitionRepresentation];
}

- (void)animationPresetManager:(id)manager addEffect:(id)effect options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  effectCopy = effect;
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  animator = [_rbSymbolLayer animator];
  v13 = [(UIImageView *)self _animationConfigurationForEffect:effectCopy forAddingEffect:1 options:optionsCopy clientCompletionHandler:completionCopy needsAnimationCompletion:1];

  animation = [v13 animation];
  options = [v13 options];
  [animator addAnimation:animation options:options];
}

- (void)animationPresetManager:(id)manager removeEffect:(id)effect wasActive:(BOOL)active options:(id)options animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  activeCopy = active;
  effectCopy = effect;
  optionsCopy = options;
  completionCopy = completion;
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  animator = [_rbSymbolLayer animator];
  if (activeCopy)
  {
    v18 = [(UIImageView *)self _animationConfigurationForEffect:effectCopy forAddingEffect:0 options:optionsCopy clientCompletionHandler:completionCopy needsAnimationCompletion:0];
    animation = [v18 animation];

    if (animatedCopy)
    {
      [animator cancelAnimation:animation];
    }

    else
    {
      [animator removeAnimation:animation];
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89__UIImageView_animationPresetManager_removeEffect_wasActive_options_animated_completion___block_invoke;
  v21[3] = &unk_1E71262F0;
  v22 = effectCopy;
  v20 = effectCopy;
  [(UIImageView *)self _runSymbolEffectCompletion:completionCopy contextConfigurator:v21];
}

void __89__UIImageView_animationPresetManager_removeEffect_wasActive_options_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFinished:0];
  [v3 setEffect:*(a1 + 32)];
}

- (void)animationPresetManager:(id)manager didSetScale:(int)scale usingEffect:(id)effect options:(id)options animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v11 = *&scale;
  effectCopy = effect;
  optionsCopy = options;
  completionCopy = completion;
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  animator = [_rbSymbolLayer animator];
  scaleLevel = [animator scaleLevel];
  v19 = scaleLevel != v11;
  if (scaleLevel == v11)
  {
    goto LABEL_5;
  }

  if (!animatedCopy)
  {
    [animator setScaleLevel:v11];
LABEL_5:
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __90__UIImageView_animationPresetManager_didSetScale_usingEffect_options_animated_completion___block_invoke;
    v26 = &unk_1E712ACB0;
    v28 = v19;
    v27 = effectCopy;
    [(UIImageView *)self _runSymbolEffectCompletion:completionCopy contextConfigurator:&v23];

    goto LABEL_6;
  }

  v20 = [(UIImageView *)self _animationConfigurationForEffect:effectCopy forAddingEffect:1 options:optionsCopy clientCompletionHandler:completionCopy needsAnimationCompletion:1];
  animation = [v20 animation];
  options = [v20 options];
  [animator addAnimation:animation options:options];

  [animator setScaleLevel:v11];
LABEL_6:
  [(UIImageView *)self _updateStateIfRBSymbolLayerNoLongerNeeded:v23];
}

void __90__UIImageView_animationPresetManager_didSetScale_usingEffect_options_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setFinished:v3];
  [v4 setEffect:*(a1 + 32)];
}

- (void)animationPresetManager:(id)manager didSetHiddenness:(BOOL)hiddenness usingEffect:(id)effect options:(id)options animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddennessCopy = hiddenness;
  effectCopy = effect;
  optionsCopy = options;
  completionCopy = completion;
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  animator = [_rbSymbolLayer animator];
  v18 = [animator isHidden] ^ hiddennessCopy;
  if (v18 != 1)
  {
    goto LABEL_5;
  }

  if (!animatedCopy)
  {
    [animator setHidden:hiddennessCopy];
LABEL_5:
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __95__UIImageView_animationPresetManager_didSetHiddenness_usingEffect_options_animated_completion___block_invoke;
    v25 = &unk_1E712ACB0;
    v27 = v18;
    v26 = effectCopy;
    [(UIImageView *)self _runSymbolEffectCompletion:completionCopy contextConfigurator:&v22];

    goto LABEL_6;
  }

  v19 = [(UIImageView *)self _animationConfigurationForEffect:effectCopy forAddingEffect:hiddennessCopy options:optionsCopy clientCompletionHandler:completionCopy needsAnimationCompletion:1];
  animation = [v19 animation];
  options = [v19 options];
  [animator addAnimation:animation options:options];

  [animator setHidden:hiddennessCopy];
LABEL_6:
  [(UIImageView *)self _updateStateIfRBSymbolLayerNoLongerNeeded:v22];
}

void __95__UIImageView_animationPresetManager_didSetHiddenness_usingEffect_options_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setFinished:v3];
  [v4 setEffect:*(a1 + 32)];
}

- (void)animationPresetManager:(id)manager didDiscardPendingContentTransition:(id)transition
{
  transitionCopy = transition;
  completionHandler = [transitionCopy completionHandler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__UIImageView_animationPresetManager_didDiscardPendingContentTransition___block_invoke;
  v8[3] = &unk_1E71262F0;
  v9 = transitionCopy;
  v7 = transitionCopy;
  [(UIImageView *)self _runSymbolEffectCompletion:completionHandler contextConfigurator:v8];
}

void __73__UIImageView_animationPresetManager_didDiscardPendingContentTransition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFinished:0];
  v4 = [*(a1 + 32) symbolContentTransition];
  [v3 setContentTransition:v4];
}

- (id)_animationConfigurationForEffect:(id)effect forAddingEffect:(BOOL)addingEffect options:(id)options clientCompletionHandler:(id)handler needsAnimationCompletion:(BOOL)completion
{
  completionCopy = completion;
  addingEffectCopy = addingEffect;
  effectCopy = effect;
  optionsCopy = options;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  _activeImage = [(UIImageView *)self _activeImage];
  configuration = [_activeImage configuration];
  if (completionCopy)
  {
    v19 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __121__UIImageView__animationConfigurationForEffect_forAddingEffect_options_clientCompletionHandler_needsAnimationCompletion___block_invoke;
    v23[3] = &unk_1E712ACD8;
    v7 = &v26;
    objc_copyWeak(&v26, &location);
    v22 = &v24;
    v24 = effectCopy;
    v8 = &v25;
    v25 = handlerCopy;
  }

  else
  {
    v19 = 0;
  }

  v20 = [effectCopy ui_animationConfigurationWithOptions:optionsCopy configuration:configuration forAddingEffect:addingEffectCopy completion:v19];
  if (completionCopy)
  {

    objc_destroyWeak(v7);
  }

  objc_destroyWeak(&location);

  return v20;
}

void __121__UIImageView__animationConfigurationForEffect_forAddingEffect_options_clientCompletionHandler_needsAnimationCompletion___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[51] animationPresetManager];
    [v6 activeSymbolEffectDidComplete:*(a1 + 32)];

    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __121__UIImageView__animationConfigurationForEffect_forAddingEffect_options_clientCompletionHandler_needsAnimationCompletion___block_invoke_2;
    v11 = &unk_1E712ACB0;
    v13 = a2;
    v7 = *(a1 + 40);
    v12 = *(a1 + 32);
    [v5 _runSymbolEffectCompletion:v7 contextConfigurator:&v8];
    [v5 _updateStateIfRBSymbolLayerNoLongerNeeded];
  }
}

void __121__UIImageView__animationConfigurationForEffect_forAddingEffect_options_clientCompletionHandler_needsAnimationCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setFinished:v3];
  [v4 setEffect:*(a1 + 32)];
}

- (void)_runSymbolEffectCompletion:(id)completion contextConfigurator:(id)configurator
{
  completionCopy = completion;
  if (completionCopy)
  {
    configuratorCopy = configurator;
    v8 = +[UISymbolEffectCompletionContext _new];
    [v8 setSender:self];
    configuratorCopy[2](configuratorCopy, v8);

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__UIImageView__runSymbolEffectCompletion_contextConfigurator___block_invoke;
    v10[3] = &unk_1E70F4A50;
    v11 = v8;
    v12 = completionCopy;
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

- (int64_t)_effectiveRenderingModeForSource:(id)source symbolConfiguration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  renderingMode = [sourceCopy renderingMode];
  if (!renderingMode)
  {
    renderingMode = [(UIImageView *)self _defaultRenderingMode];
    if (!renderingMode)
    {
      renderingMode = [sourceCopy _effectiveRenderingModeWithSymbolConfiguration:configurationCopy];
    }
  }

  v9 = renderingMode;

  return v9;
}

- (BOOL)_shouldTreatImageAsTemplate:(id)template
{
  templateCopy = template;
  v5 = [(UIImageView *)self _symbolConfigurationForImage:templateCopy];
  LOBYTE(self) = [(UIImageView *)self _shouldTreatImageAsTemplate:templateCopy symbolConfiguration:v5];

  return self;
}

- (BOOL)_shouldTreatImageAsTemplate:(id)template symbolConfiguration:(id)configuration
{
  templateCopy = template;
  configurationCopy = configuration;
  if (-[UIImageView _effectiveRenderingModeForSource:symbolConfiguration:](self, "_effectiveRenderingModeForSource:symbolConfiguration:", templateCopy, configurationCopy) != 2 || [configurationCopy _hasSpecifiedHierarchicalColors] && (objc_msgSend(templateCopy, "_isHierarchicalColorSymbolImage") & 1) != 0)
  {
    LOBYTE(v8) = 0;
  }

  else if ([configurationCopy _hasSpecifiedPaletteColors])
  {
    _colors = [configurationCopy _colors];
    if ([_colors count] < 2)
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = [templateCopy _isPaletteColorSymbolImage] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (UIEdgeInsets)_edgeInsetsForEffectsForImage:(id)image
{
  imageCopy = image;
  v5 = [(UIImageView *)self _symbolConfigurationForImage:imageCopy];
  if ([(UIImageView *)self _needsBoldEffectForImage:imageCopy symbolConfiguration:v5])
  {
    v6 = [MEMORY[0x1E695E0F0] arrayByAddingObject:@"_UIKitBoldTintStyle"];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [imageCopy scale];
  v8 = v7;
  traitCollection = [(UIView *)self traitCollection];
  [UIImage _edgeInsetsForStylePresetNames:v6 scale:traitCollection traitCollection:v8];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)_setDefaultRenderingMode:(int64_t)mode
{
  if ([(_UIImageViewStorage *)self->_storage defaultRenderingMode]!= mode)
  {
    [(_UIImageViewStorage *)self->_storage setDefaultRenderingMode:mode];

    [(UIImageView *)self _templateSettingsDidChange];
  }
}

- (void)setPreferredImageDynamicRange:(UIImageDynamicRange)preferredImageDynamicRange
{
  v3 = preferredImageDynamicRange;
  if ([(UIImageView *)self preferredImageDynamicRange]!= preferredImageDynamicRange)
  {
    v5 = [(UIView *)self _deferredAnimationForKey:@"imageDynamicRange" ignoringKeyFrames:1];
    *&self->_imageViewFlags = *&self->_imageViewFlags & 0xF3FF | ((v3 << 10) + 1024) & 0xC00;
    v7 = v5;
    if (v5)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIImageView imageDynamicRange](self, "imageDynamicRange")}];
      [v7 addAnimationFrameForValue:v6];
    }

    else
    {
      [(UIImageView *)self _updateState];
    }
  }
}

- (UIImageDynamicRange)imageDynamicRange
{
  preferredImageDynamicRange = [(UIImageView *)self preferredImageDynamicRange];
  if (preferredImageDynamicRange == UIImageDynamicRangeUnspecified)
  {
    traitCollection = [(UIView *)self traitCollection];
    preferredImageDynamicRange = [traitCollection imageDynamicRange];
  }

  if (preferredImageDynamicRange == UIImageDynamicRangeUnspecified)
  {
    return 0;
  }

  else
  {
    return preferredImageDynamicRange;
  }
}

- (double)_maximumEDRForDynamicRange:(int64_t)range
{
  if (range == 1)
  {
    v4 = 2.0;
  }

  else
  {
    result = 1.0;
    if (range != 2)
    {
      return result;
    }

    v4 = 8.0;
  }

  _currentImage = [(UIImageView *)self _currentImage];
  content = [_currentImage content];
  [content imageMaximumHeadroom];
  v8 = v7;

  if (v8 <= v4)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

- (void)_updateHDRFlags:(BOOL)flags
{
  flagsCopy = flags;
  objc_opt_self();
  if (dyld_program_sdk_at_least())
  {
    if (flagsCopy)
    {
      imageDynamicRange = [(UIImageView *)self imageDynamicRange];
    }

    else
    {
      imageDynamicRange = UIImageDynamicRangeStandard;
    }

    if (+[_UIHDRUsageCoordinator useCALayerDynamicRange])
    {
      layer3 = [_UIHDRUsageCoordinator convertDynamicRange:imageDynamicRange];
      layer = [(UIView *)self layer];
      [layer setPreferredDynamicRange:layer3];
    }

    else
    {
      layer2 = [(UIView *)self layer];
      [layer2 setWantsExtendedDynamicRangeContent:imageDynamicRange != UIImageDynamicRangeStandard];

      [(UIImageView *)self _maximumEDRForDynamicRange:imageDynamicRange];
      v9 = v8;
      layer3 = [(UIView *)self layer];
      [layer3 setContentsMaximumDesiredEDR:v9];
    }
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  v6 = toWindow != 0;
  v9.receiver = self;
  v9.super_class = UIImageView;
  [(UIView *)&v9 _didMoveFromWindow:window toWindow:?];
  *&self->_imageViewFlags = *&self->_imageViewFlags & 0xEFFF | (v6 << 12);
  if (toWindow)
  {
    [(UIImageView *)self _mainQ_beginLoadingIfApplicable];
    if (dyld_program_sdk_at_least())
    {
      [(UIImageView *)self _updateResolvedImages];
    }

    if ((*&self->_imageViewFlags & 8) != 0 || ([(UIImageView *)self _activeImage], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(UIImageView *)self _shouldTreatImageAsTemplate:v7], v7, v8))
    {
      [(UIImageView *)self _templateSettingsDidChange];
    }
  }
}

- (void)_setMasksTemplateImages:(BOOL)images
{
  imagesCopy = images;
  if ([(_UIImageViewStorage *)self->_storage masksTemplateImages]!= images)
  {
    [(_UIImageViewStorage *)self->_storage setMasksTemplateImages:imagesCopy];
    if (imagesCopy)
    {

      [(UIImageView *)self _updateMasking];
    }

    else
    {
      layer = [(UIView *)self layer];
      [layer setCompositingFilter:0];
    }
  }
}

- (id)_colorByApplyingDrawModeToColor:(id)color
{
  colorCopy = color;
  v5 = [(UIImageView *)self _colorByApplyingDrawMode:[(UIImageView *)self drawMode] toColor:colorCopy];

  return v5;
}

- (id)_colorByApplyingDrawMode:(unsigned int)mode toColor:(id)color
{
  v4 = *&mode;
  v32 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v29 = 0;
  v27 = 0.0;
  v28 = 0.0;
  v7 = colorCopy;
  if ([(UIImageView *)self _getDrawModeCompositeOperation:&v29 whiteComponent:&v28 drawingAlpha:&v27 forDrawMode:v4])
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (!self)
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
        }
      }
    }

    else if (!self)
    {
      v19 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497FE0) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }

    v8 = +[UITraitCollection _currentTraitCollectionIfExists];
    traitCollection = [(UIView *)self traitCollection];
    [UITraitCollection setCurrentTraitCollection:traitCollection];

    v10 = _UISetCurrentFallbackEnvironment(self);
    v25 = 0.0;
    *buf = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    [colorCopy getRed:buf green:&v25 blue:&v24 alpha:&v23];
    _UIRestorePreviousFallbackEnvironment(v10);
    [UITraitCollection setCurrentTraitCollection:v8];
    if (v29 == 8)
    {
      v11 = 1.0 - v27;
      v12 = v23 * (1.0 - v27);
      v7 = colorCopy;
      if (v12 <= 0.0)
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = v11 * (v23 * *buf) / v12;
      v14 = v11 * (v23 * v25) / v12;
      v15 = v11 * (v23 * v24) / v12;
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        if (v29 != 5)
        {
          v20 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *v30 = 67109120;
            v31 = v29;
            _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "Unexpected CG blend mode: %d", v30, 8u);
          }
        }
      }

      else if (v29 != 5)
      {
        v21 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497FE8) + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v30 = 67109120;
          v31 = v29;
          _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Unexpected CG blend mode: %d", v30, 8u);
        }
      }

      v7 = colorCopy;
      if (v23 <= 0.0)
      {
        goto LABEL_13;
      }

      v16 = v23 * (v28 * v27);
      v13 = v16 + (1.0 - v27) * (v23 * *buf) / v23;
      v14 = v16 + (1.0 - v27) * (v23 * v25) / v23;
      v15 = v16 + (1.0 - v27) * (v23 * v24) / v23;
    }

    v7 = [UIColor colorWithRed:v13 green:v14 blue:v15 alpha:?];

    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (id)_baseMultiplyColorWithImage:(id)image symbolConfiguration:(id)configuration shouldResolveDynamicColors:(BOOL)colors
{
  colorsCopy = colors;
  imageCopy = image;
  configurationCopy = configuration;
  if ([(UIImageView *)self _shouldTreatImageAsTemplate:imageCopy symbolConfiguration:configurationCopy])
  {
    v10 = [_UIImageContentRenditionContext contextWithRenderEnvironment:imageCopy source:?];
    if ([configurationCopy _hasSpecifiedPaletteColors])
    {
      v11 = [configurationCopy _paletteColorsWithRenditionContext:v10 resolveDynamicColors:colorsCopy];
      firstObject = [v11 firstObject];
    }

    else if ([configurationCopy _hasSpecifiedHierarchicalColors])
    {
      firstObject = [configurationCopy _hierarchicalColorForLayerLevel:0 renditionContext:v10 resolveDynamicColors:colorsCopy];
    }

    else
    {
      firstObject = [(UIView *)self tintColor];
      if (colorsCopy)
      {
        traitCollectionForResolvingDynamicColors = [(_UIImageContentRenditionContext *)v10 traitCollectionForResolvingDynamicColors];
        v14 = [firstObject resolvedColorWithTraitCollection:traitCollectionForResolvingDynamicColors];

        firstObject = v14;
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)_needsImageEffectsForImage:(id)image
{
  imageCopy = image;
  v5 = [(UIImageView *)self _symbolConfigurationForImage:imageCopy];
  LOBYTE(self) = [(UIImageView *)self _needsImageEffectsForImage:imageCopy symbolConfiguration:v5];

  return self;
}

- (BOOL)_needsImageEffectsForImage:(id)image symbolConfiguration:(id)configuration
{
  imageCopy = image;
  configurationCopy = configuration;
  if ([(UIImageView *)self drawMode])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(UIImageView *)self _baseMultiplyColorWithImage:imageCopy symbolConfiguration:configurationCopy];
    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v10 = [(UIImageView *)self _effectiveContentEffectsWithImage:imageCopy symbolConfiguration:configurationCopy];
      v8 = [v10 count] != 0;
    }
  }

  return v8;
}

- (BOOL)_getDrawModeCompositeOperation:(int *)operation whiteComponent:(double *)component drawingAlpha:(double *)alpha
{
  drawMode = [(UIImageView *)self drawMode];

  return [(UIImageView *)self _getDrawModeCompositeOperation:operation whiteComponent:component drawingAlpha:alpha forDrawMode:drawMode];
}

- (BOOL)_getDrawModeCompositeOperation:(int *)operation whiteComponent:(double *)component drawingAlpha:(double *)alpha forDrawMode:(unsigned int)mode
{
  switch(mode)
  {
    case 1u:
      v9 = +[UIColor lightGrayColor];
      v10 = 8;
      v11 = 0.5;
      goto LABEL_7;
    case 3u:
      v9 = +[UIColor blackColor];
      v10 = 5;
      v11 = 0.3;
      goto LABEL_7;
    case 2u:
      v9 = +[UIColor blackColor];
      v10 = 5;
      v11 = 0.466666667;
LABEL_7:
      [v9 getWhite:component alpha:0];

      *alpha = v11;
      *operation = v10;
      return 1;
  }

  return 0;
}

- (void)_renderDrawModeEffectInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v13 = 0;
  alpha = 0.0;
  v12 = 0.0;
  if ([(UIImageView *)self _getDrawModeCompositeOperation:&v13 whiteComponent:&v12 drawingAlpha:&alpha])
  {
    v10 = [UIColor colorWithWhite:v12 alpha:1.0];
    [v10 set];

    CGContextSetAlpha(v9, alpha);
    CGContextSetCompositeOperation();
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    CGContextFillRect(v9, v14);
  }
}

- (void)setDrawMode:(unsigned int)mode
{
  v3 = *&mode;
  if ([(_UIImageViewStorage *)self->_storage drawMode]!= mode)
  {
    [(_UIImageViewStorage *)self->_storage setDrawMode:v3];

    [(UIImageView *)self _updateState];
  }
}

- (void)setCGImageRef:(CGImage *)ref
{
  layer = [(UIView *)self layer];
  [layer setContents:ref];
}

- (CGImage)imageRef
{
  layer = [(UIView *)self layer];
  contents = [layer contents];

  return contents;
}

- (void)setAnimating:(BOOL)animating
{
  if (animating)
  {
    [(UIImageView *)self startAnimating];
  }

  else
  {
    [(UIImageView *)self stopAnimating];
  }
}

- (void)_setDecompressingImage:(id)image forType:(unint64_t)type
{
  if (type)
  {
    v4 = &unk_1ED497FD9;
  }

  else
  {
    v4 = &_MergedGlobals_93;
  }

  objc_setAssociatedObject(self, v4, image, 1);
}

- (id)_decompressingImageForType:(unint64_t)type
{
  if (type)
  {
    v3 = &unk_1ED497FD9;
  }

  else
  {
    v3 = &_MergedGlobals_93;
  }

  return objc_getAssociatedObject(self, v3);
}

- (id)_checkImageForAdaptation:(id)adaptation hasAdapted:(BOOL *)adapted
{
  adaptationCopy = adaptation;
  image = [(UIImageView *)self image];
  _currentImage = [(UIImageView *)self _currentImage];
  v9 = [(UIImageView *)self _adaptiveImageForImage:adaptationCopy assignedImage:image currentImage:_currentImage hasAdapted:adapted];

  return v9;
}

- (id)_checkHighlightedImageForAdaptation:(id)adaptation hadAdapted:(BOOL *)adapted
{
  adaptationCopy = adaptation;
  highlightedImage = [(UIImageView *)self highlightedImage];
  _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
  v9 = [(UIImageView *)self _adaptiveImageForImage:adaptationCopy assignedImage:highlightedImage currentImage:_currentHighlightedImage hasAdapted:adapted];

  return v9;
}

- (id)_adaptiveImageForImage:(id)image assignedImage:(id)assignedImage currentImage:(id)currentImage hasAdapted:(BOOL *)adapted
{
  imageCopy = image;
  assignedImageCopy = assignedImage;
  currentImageCopy = currentImage;
  if (adapted)
  {
    *adapted = 0;
  }

  v12 = imageCopy;
  if (v12)
  {
    v13 = [assignedImageCopy isEqual:v12];
    v14 = v12;
    if (currentImageCopy)
    {
      v14 = v12;
      if (v13)
      {
        v14 = v12;
        if (([currentImageCopy isEqual:v12] & 1) == 0)
        {
          v14 = currentImageCopy;

          if (adapted)
          {
            *adapted = 1;
          }
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(UIView *)self traitCollection];
  [(UIImageView *)self _invalidateCachedSymbolConfiguration];
  [(UIImageView *)self _updateResolvedImages];
  if (![(UIImageView *)self adjustsImageSizeForAccessibilityContentSizeCategory])
  {
LABEL_6:
    v5 = changeCopy;
    if (!changeCopy || !traitCollection)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v5 = changeCopy;
  if (!traitCollection)
  {
    goto LABEL_10;
  }

  if (!changeCopy || traitCollection[13] != changeCopy[13])
  {
    [(UIView *)self invalidateIntrinsicContentSize];
    goto LABEL_6;
  }

LABEL_8:
  if (traitCollection[15] != v5[15])
  {
    *&self->_imageViewFlags |= 0x10u;
    [(UIView *)self invalidateIntrinsicContentSize];
    v5 = changeCopy;
  }

LABEL_10:
  if (_UITraitCollectionUserInterfaceRenderingModeDidChange(traitCollection, v5))
  {
    [(UIImageView *)self _updateState];
  }
}

- (void)_systemIconAppearanceDidChange
{
  image = [(UIImageView *)self image];
  _isIconImage = [image _isIconImage];

  if (_isIconImage)
  {
    [(UIImageView *)self _invalidateResolvedImages];

    [(UIImageView *)self _updateResolvedImages];
  }
}

- (id)_resolvedImageFromImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self image];

  if (image == imageCopy)
  {
    _currentImage = [(UIImageView *)self _currentImage];
  }

  else
  {
    _effectiveImageViewTraitCollectionForResolvingImages = [(UIImageView *)self _effectiveImageViewTraitCollectionForResolvingImages];
    _currentImage = [(UIImageView *)self _resolvedImageFromImage:imageCopy withImageViewTrait:_effectiveImageViewTraitCollectionForResolvingImages];
  }

  return _currentImage;
}

- (id)_resolvedImageFromImage:(void *)image withImageViewTrait:
{
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    goto LABEL_16;
  }

  v7 = v5;
  imageCopy = image;
  if ([v7 _isSymbolImage])
  {
    [self _symbolConfigurationForImage:v7];
  }

  else
  {
    [v7 configuration];
  }
  v9 = ;
  v10 = imageCopy;
  _effectiveTraitCollectionForImageLookup = [v9 _effectiveTraitCollectionForImageLookup];
  v12 = v10;
  if (_effectiveTraitCollectionForImageLookup)
  {
    v12 = [(UITraitCollection *)v10 _traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection:_effectiveTraitCollectionForImageLookup];
  }

  v13 = [v9 configurationWithTraitCollection:v12];

  if ([v7 _isIconImage])
  {
    _systemIconAppearance = [(UITraitCollection *)v10 _systemIconAppearance];
    if (_systemIconAppearance)
    {
      appearance = _systemIconAppearance;
    }

    else
    {
      v27 = v6;
      window = [self window];
      windowScene = [window windowScene];
      _systemIconAppearanceSceneComponent = [windowScene _systemIconAppearanceSceneComponent];
      appearance = [(_UISystemIconAppearanceSceneComponent *)_systemIconAppearanceSceneComponent appearance];

      if (!appearance)
      {
        v6 = v27;
        goto LABEL_13;
      }

      v6 = v27;
    }

    _systemIconAppearance2 = [(UITraitCollection *)v10 _systemIconAppearance];
    v20 = [v13 _configurationWithSystemIconAppearance:_systemIconAppearance2];

    v13 = v20;
  }

LABEL_13:

  v21 = v7;
  v22 = _UISetCurrentFallbackEnvironment(self);
  _preferredSymbolVariant = [self _preferredSymbolVariant];

  if (_preferredSymbolVariant)
  {
    _preferredSymbolVariant2 = [self _preferredSymbolVariant];
    v25 = [v21 _imageByApplyingSymbolVariant:_preferredSymbolVariant2];

    v21 = v25;
  }

  self = [v21 imageWithConfiguration:v13];

  _UIRestorePreviousFallbackEnvironment(v22);
LABEL_16:

  return self;
}

- (BOOL)_resolveImagesWithPreviouslyDisplayedImage:(id)image
{
  imageCopy = image;
  animationImages = [(_UIImageViewStorage *)self->_storage animationImages];
  if (!animationImages)
  {
    highlightedAnimationImages = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];

    if (highlightedAnimationImages)
    {
      goto LABEL_6;
    }

    _effectiveImageViewTraitCollectionForResolvingImages = [(UIImageView *)self _effectiveImageViewTraitCollectionForResolvingImages];
    if ([(UITraitCollection *)_effectiveImageViewTraitCollectionForResolvingImages _isEqualToTraitCollectionForResolvingImage:?])
    {

      goto LABEL_6;
    }

    objc_storeStrong(&self->_lastResolvedImageViewTraitCollection, _effectiveImageViewTraitCollectionForResolvingImages);
    highlightedImage = [(UIImageView *)self highlightedImage];
    if (!highlightedImage)
    {
      v8 = 0;
      v18 = 0;
      goto LABEL_22;
    }

    v12 = [(UIImageView *)self _resolvedImageFromImage:highlightedImage withImageViewTrait:_effectiveImageViewTraitCollectionForResolvingImages];
    if (!v12)
    {
      goto LABEL_20;
    }

    resolvedHighlightedImage = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
    v14 = v12;
    v15 = resolvedHighlightedImage;
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      if (v15)
      {
        v17 = [v14 isEqual:v15];

        if (v17)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      [(_UIImageViewStorage *)self->_storage setResolvedHighlightedImage:v14];
      if ([(UIImageView *)self isHighlighted])
      {
        v8 = v14;
        v18 = 1;
LABEL_21:

LABEL_22:
        image = [(UIImageView *)self image];
        if (!image)
        {

          if (!v18)
          {
            goto LABEL_7;
          }

LABEL_37:
          [(UIImageView *)self _updateImageViewForOldImage:imageCopy newImage:v8];
          v9 = 1;
          goto LABEL_8;
        }

        v20 = image;
        v21 = [(UIImageView *)self _resolvedImageFromImage:image withImageViewTrait:_effectiveImageViewTraitCollectionForResolvingImages];
        if (v21)
        {
          v27 = highlightedImage;
          resolvedImage = [(_UIImageViewStorage *)self->_storage resolvedImage];
          v23 = v21;
          v24 = resolvedImage;
          v25 = v24;
          if (v23 == v24)
          {
          }

          else
          {
            if (v24)
            {
              v26 = [v23 isEqual:v24];

              highlightedImage = v27;
              if (v26)
              {
                goto LABEL_36;
              }
            }

            else
            {

              highlightedImage = v27;
            }

            [(_UIImageViewStorage *)self->_storage setResolvedImage:v23];
            if (v18)
            {
              LOBYTE(v18) = 1;
              goto LABEL_36;
            }

            v25 = v8;
            LOBYTE(v18) = 1;
            v8 = v23;
          }

          highlightedImage = v27;
        }

LABEL_36:

        if ((v18 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_37;
      }
    }

LABEL_20:
    v8 = 0;
    v18 = 0;
    goto LABEL_21;
  }

LABEL_6:
  v8 = 0;
LABEL_7:
  v9 = 0;
LABEL_8:

  return v9;
}

- (id)_effectiveContentEffectsWithImage:(id)image symbolConfiguration:(id)configuration
{
  v15[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  configurationCopy = configuration;
  if (![(UIView *)self _enableMonochromaticTreatment]|| ![(UIImageView *)self _imageSupportsMaterials:imageCopy symbolConfiguration:configurationCopy allowingHierarchical:1])
  {
    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection _userInterfaceRenderingMode] == 2 && (*(&self->super._viewFlags + 25) & 1) != 0)
    {
      v13 = [(UIImageView *)self _imageSupportsMaterials:imageCopy symbolConfiguration:configurationCopy allowingHierarchical:0];

      if (v13)
      {
        v9 = [(UIImageView *)self _materialForImage:imageCopy symbolConfiguration:configurationCopy];
        contentEffects = [v9 contentEffects];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v12 = 0;
    goto LABEL_14;
  }

  _monochromaticContentEffect = [(UIView *)self _monochromaticContentEffect];
  v9 = _monochromaticContentEffect;
  if (!_monochromaticContentEffect)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v15[0] = _monochromaticContentEffect;
  contentEffects = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
LABEL_11:
  v12 = contentEffects;
LABEL_13:

LABEL_14:

  return v12;
}

- (BOOL)_imageSupportsMaterials:(id)materials allowingHierarchical:(BOOL)hierarchical
{
  hierarchicalCopy = hierarchical;
  materialsCopy = materials;
  v7 = [(UIImageView *)self _symbolConfigurationForImage:materialsCopy];
  LOBYTE(hierarchicalCopy) = [(UIImageView *)self _imageSupportsMaterials:materialsCopy symbolConfiguration:v7 allowingHierarchical:hierarchicalCopy];

  return hierarchicalCopy;
}

- (BOOL)_imageSupportsMaterials:(id)materials symbolConfiguration:(id)configuration allowingHierarchical:(BOOL)hierarchical
{
  materialsCopy = materials;
  configurationCopy = configuration;
  if (([configurationCopy _suppressesMaterialRendering] & 1) != 0 || objc_msgSend(materialsCopy, "isSymbolImage") && objc_msgSend(configurationCopy, "colorRenderingMode") == 2 || -[UIImageView _effectiveRenderingModeForSource:symbolConfiguration:](self, "_effectiveRenderingModeForSource:symbolConfiguration:", materialsCopy, configurationCopy) != 2)
  {
    v11 = 0;
  }

  else if ([configurationCopy _hasSpecifiedPaletteColors])
  {
    _colors = [configurationCopy _colors];
    if ([_colors count] < 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = [materialsCopy _isPaletteColorSymbolImage] ^ 1;
    }
  }

  else
  {
    v11 = 1;
  }

  traitCollection = [configurationCopy traitCollection];
  v13 = [traitCollection userInterfaceIdiom] == 6 || hierarchical;

  LOBYTE(v14) = v13 & v11;
  if (!v13 && v11)
  {
    if ([configurationCopy _hasSpecifiedHierarchicalColors])
    {
      v14 = [materialsCopy _isHierarchicalColorSymbolImage] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  return v14;
}

- (id)_materialForImage:(id)image symbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCopy = image;
  traitCollection = [(UIView *)self traitCollection];
  v9 = [(UIImageView *)self _baseMultiplyColorWithImage:imageCopy symbolConfiguration:configurationCopy shouldResolveDynamicColors:0];

  v10 = [v9 _resolvedMaterialWithTraitCollection:traitCollection];

  return v10;
}

- (void)_updateImageViewForOldImage:(id)image newImage:(id)newImage
{
  imageCopy = image;
  newImageCopy = newImage;
  traitCollection = [(UIView *)self traitCollection];
  legibilityWeight = [traitCollection legibilityWeight];

  if (legibilityWeight != 1 || [imageCopy _suppressesAccessibilityHairlineThickening] && (objc_msgSend(newImageCopy, "_suppressesAccessibilityHairlineThickening") & 1) != 0)
  {
    v10 = 0;
    goto LABEL_8;
  }

  if (!imageCopy && newImageCopy)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  if (imageCopy)
  {
    v41 = newImageCopy == 0;
  }

  else
  {
    v41 = 0;
  }

  v10 = v41;
  if (imageCopy && newImageCopy)
  {
    renderingMode = [imageCopy renderingMode];
    renderingMode2 = [newImageCopy renderingMode];
    if (renderingMode == 1 && renderingMode2 != 1)
    {
      goto LABEL_7;
    }

    v10 = renderingMode != 1 && renderingMode2 == 1;
  }

LABEL_8:
  [newImageCopy alignmentRectInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [imageCopy alignmentRectInsets];
  v22 = 1;
  if (v14 == v23 && v12 == v19 && v18 == v21 && v16 == v20)
  {
    configuration = [imageCopy configuration];
    traitCollection2 = [configuration traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];
    configuration2 = [newImageCopy configuration];
    traitCollection3 = [configuration2 traitCollection];
    v22 = layoutDirection != [traitCollection3 layoutDirection];
  }

  if (v10)
  {
    *&self->_imageViewFlags |= 0x10u;
LABEL_15:
    [(UIView *)self invalidateIntrinsicContentSize];
    goto LABEL_16;
  }

  [newImageCopy size];
  v33 = v32;
  v35 = v34;
  [imageCopy size];
  if (v33 != v37)
  {
    goto LABEL_15;
  }

  if (v35 != v36)
  {
    goto LABEL_15;
  }

  imageOrientation = [newImageCopy imageOrientation];
  if (imageOrientation != [imageCopy imageOrientation] || v22)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v22)
  {
    _wantsAutolayout = [(UIView *)self _wantsAutolayout];
    superview = [(UIView *)self superview];
    v31 = superview;
    if (_wantsAutolayout)
    {
      [superview setNeedsLayout];
    }

    else
    {
      [superview _alignmentRectInsetsHaveChangedForChildImageView:self];
    }
  }

  [(UIImageView *)self _clearPretiledImageCacheForImage:imageCopy];
  [(UIImageView *)self _updatePretiledImageCacheForImage:newImageCopy];
  if ([(UIImageView *)self _animatesContents])
  {
    [(UIImageView *)self _updateState];
  }

  else
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __52__UIImageView__updateImageViewForOldImage_newImage___block_invoke;
    v47[3] = &unk_1E70F3590;
    v47[4] = self;
    [UIView performWithoutAnimation:v47];
  }

  [(UIImageView *)self _updateVisibilityAndFrameOfPlaceholderView];
  [(UIImageView *)self _updateTemplateProperties];
  _currentImage = [(UIImageView *)self _currentImage];
  if (_currentImage)
  {
    [(UIView *)self setOpaque:0];
  }

  else
  {
    animationImages = [(UIImageView *)self animationImages];
    if (animationImages)
    {
      [(UIView *)self setOpaque:0];
    }

    else
    {
      _currentHighlightedImage = [(UIImageView *)self _currentHighlightedImage];
      if (_currentHighlightedImage)
      {
        [(UIView *)self setOpaque:0];
      }

      else
      {
        highlightedAnimationImages = [(UIImageView *)self highlightedAnimationImages];
        [(UIView *)self setOpaque:highlightedAnimationImages == 0];
      }
    }
  }

  [(UIImageView *)self _imageContentParametersDidChange];
  -[UIImageView _baselineOffsetParametersDidChangeHasBaselinePropertyChanged:](self, "_baselineOffsetParametersDidChangeHasBaselinePropertyChanged:", [imageCopy _hasBaseline] ^ objc_msgSend(newImageCopy, "_hasBaseline"));
}

- (void)_teardownLayeredImage
{
  [(UIImageView *)self _updateLayeredImageIsFocusedWithFocusedView:0 focusAnimationCoordinator:0];
  [(UIView *)self _setTracksFocusedAncestors:0];

  [(UIImageView *)self _updateOverlayContentView];
}

- (void)_ancestorWillUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  nextFocusedView = [contextCopy nextFocusedView];
  [(UIImageView *)self _updateLayeredImageIsFocusedWithFocusedView:nextFocusedView focusAnimationCoordinator:coordinatorCopy];

  v9.receiver = self;
  v9.super_class = UIImageView;
  [(UIView *)&v9 _ancestorWillUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
}

- (double)_layeredImageCornerRadius
{
  _layeredImageContainer = [(UIImageView *)self _layeredImageContainer];
  config = [_layeredImageContainer config];
  [config cornerRadius];
  v5 = v4;

  return v5;
}

- (void)_setOverlayContentView:(id)view
{
  value = view;
  _existingOverlayView = [(UIImageView *)self _existingOverlayView];
  if (_existingOverlayView)
  {
    if (_existingOverlayView != value)
    {
      superview = [_existingOverlayView superview];

      if (superview == self)
      {
        [_existingOverlayView removeFromSuperview];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_existingOverlayView setOverlayViewDelegate:0];
  }

  objc_setAssociatedObject(self, &overlayViewKey, value, 1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [value setOverlayViewDelegate:self];
  }

  [(UIImageView *)self _updateOverlayContentView];
}

- (UIView)overlayContentView
{
  _existingOverlayView = [(UIImageView *)self _existingOverlayView];
  if (!_existingOverlayView)
  {
    v4 = [_UIImageViewOverlayView alloc];
    [(UIView *)self bounds];
    _existingOverlayView = [(UIView *)v4 initWithFrame:?];
    [(_UIImageViewOverlayView *)_existingOverlayView setClipsToBounds:1];
    [(UIView *)_existingOverlayView setAutoresizingMask:18];
    [(UIImageView *)self _setOverlayContentView:_existingOverlayView];
  }

  return _existingOverlayView;
}

- (void)_updateOverlayContentView
{
  _existingOverlayView = [(UIImageView *)self _existingOverlayView];
  _layeredImageContainer = [(UIImageView *)self _layeredImageContainer];
  v4 = _layeredImageContainer;
  if (_layeredImageContainer && ([_layeredImageContainer isHidden] & 1) == 0)
  {
    if (_existingOverlayView)
    {
      if ([_existingOverlayView clipsToBounds])
      {
        [v4 setMaskedOverlayView:_existingOverlayView];
        goto LABEL_12;
      }

      v6 = v4;
      v7 = _existingOverlayView;
    }

    else
    {
      [v4 setMaskedOverlayView:0];
      v6 = v4;
      v7 = 0;
    }

    [v6 setUnmaskedOverlayView:v7];
  }

  else
  {
    [v4 setMaskedOverlayView:0];
    [v4 setUnmaskedOverlayView:0];
    if (_existingOverlayView)
    {
      superview = [_existingOverlayView superview];

      if (superview != self)
      {
        [_existingOverlayView removeFromSuperview];
        [(UIView *)self addSubview:_existingOverlayView];
      }
    }
  }

LABEL_12:
}

- (void)_setLayeredImageCornerRadius:(double)radius
{
  _layeredImageContainer = [(UIImageView *)self _layeredImageContainer];
  config = [_layeredImageContainer config];
  [config setCornerRadius:radius];
}

- (void)_updateLayeredImageIsFocusedWithFocusedView:(id)view focusAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (view)
  {
    view = [(UIView *)self isDescendantOfView:view];
  }

  _layeredImageContainer = [(UIImageView *)self _layeredImageContainer];
  [_layeredImageContainer setStackFocused:view withFocusAnimationCoordinator:coordinatorCopy];
}

- (void)_updateStateIfRBSymbolLayerNoLongerNeeded
{
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  if (_rbSymbolLayer)
  {
    v4 = _rbSymbolLayer;
    image = [(UIImageView *)self image];
    v6 = [(UIImageView *)self _hasReasonToUseRBSymbolLayerForImage:image];

    if (!v6)
    {

      [(UIImageView *)self _setNeedsUpdateState];
    }
  }
}

- (BOOL)_hasReasonToUseRBSymbolLayerForImage:(id)image
{
  imageCopy = image;
  _rbSymbolLayer = [(UIImageView *)self _rbSymbolLayer];
  animator = [_rbSymbolLayer animator];
  if ([animator isAnimating])
  {
    v7 = 1;
  }

  else
  {
    animationPresetManager = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    v7 = ([animationPresetManager hasPendingAnimationsForImage:imageCopy] & 1) != 0 || -[UIImageView _hasNonDefaultSymbolAnimatorState](self, "_hasNonDefaultSymbolAnimatorState");
  }

  return v7;
}

- (id)_applyImageEffectsToCIImage:(id)image multiplyColor:(id)color
{
  v45[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  colorCopy = color;
  if (colorCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E695F610]) initWithColor:colorCopy];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x1E695F648];
      v44 = *MEMORY[0x1E695FA78];
      v45[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v12 = [v10 filterWithName:@"CIConstantColorGenerator" withInputParameters:v11];
      outputImage = [v12 outputImage];

      v42 = *MEMORY[0x1E695FA48];
      v43 = imageCopy;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v15 = [outputImage imageByApplyingFilter:@"CISourceInCompositing" withInputParameters:v14];

      imageCopy = v15;
    }
  }

  v33 = 0;
  v31 = 0.0;
  v32 = 0.0;
  if ([(UIImageView *)self _getDrawModeCompositeOperation:&v33 whiteComponent:&v32 drawingAlpha:&v31])
  {
    v16 = objc_alloc(MEMORY[0x1E695F610]);
    v17 = [UIColor colorWithWhite:v32 alpha:v31];
    v18 = [v16 initWithColor:v17];

    if (v18)
    {
      v19 = MEMORY[0x1E695F648];
      v40 = *MEMORY[0x1E695FA78];
      v41 = v18;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v21 = [v19 filterWithName:@"CIConstantColorGenerator" withInputParameters:v20];
      outputImage2 = [v21 outputImage];

      if (v33 == 8)
      {
        v38 = *MEMORY[0x1E695FA48];
        v39 = outputImage2;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v24 = @"CISourceOutCompositing";
        v25 = imageCopy;
      }

      else
      {
        if (os_variant_has_internal_diagnostics())
        {
          if (v33 != 5)
          {
            v28 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109120;
              v37 = v33;
              _os_log_fault_impl(&dword_188A29000, v28, OS_LOG_TYPE_FAULT, "Unexpected CG blend mode: %d", buf, 8u);
            }
          }
        }

        else if (v33 != 5)
        {
          v29 = *(__UILogGetCategoryCachedImpl("Assert", &_applyImageEffectsToCIImage_multiplyColor____s_category) + 8);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v37 = v33;
            _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Unexpected CG blend mode: %d", buf, 8u);
          }
        }

        v34 = *MEMORY[0x1E695FA48];
        v35 = imageCopy;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = @"CISourceAtopCompositing";
        v25 = outputImage2;
      }

      v26 = [v25 imageByApplyingFilter:v24 withInputParameters:v23];

      imageCopy = v26;
    }
  }

  return imageCopy;
}

- (BOOL)_setImageViewContentsForCIImageBackedImage:(id)image
{
  imageCopy = image;
  content = [imageCopy content];
  canRenderCIImage = [content canRenderCIImage];
  if (!canRenderCIImage)
  {
    goto LABEL_25;
  }

  objc_opt_self();
  v7 = dyld_program_sdk_at_least() && [content isHDR] && (-[UIImageView imageDynamicRange](self, "imageDynamicRange") - 1) < 2;
  cIRenderer = [(_UIImageViewStorage *)self->_storage CIRenderer];
  if (!cIRenderer)
  {
    cIRenderer = objc_opt_new();
    [(_UIImageViewStorage *)self->_storage setCIRenderer:cIRenderer];
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_10:
    isHDR = 0;
    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_8:
  isHDR = [content isHDR];
LABEL_11:
  if ([(UIImageView *)self _needsImageEffectsForImage:imageCopy])
  {
    v10 = [(UIImageView *)self _baseMultiplyColorWithImage:imageCopy symbolConfiguration:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__UIImageView__setImageViewContentsForCIImageBackedImage___block_invoke;
    aBlock[3] = &unk_1E712AD28;
    aBlock[4] = self;
    v27 = v10;
    v11 = v10;
    v12 = _Block_copy(aBlock);
  }

  else
  {
    v12 = 0;
  }

  [(_UIImageCIImageRenderer *)cIRenderer renderContent:content usingHDR:isHDR withEffects:v12];
  v13 = cIRenderer;
  if (cIRenderer && (*(cIRenderer + 32) & 1) != 0)
  {
    v14 = *(cIRenderer + 8);
  }

  else
  {
    v14 = 0;
  }

  layer = [(UIView *)self layer];
  contents = [layer contents];
  if (v14 == contents)
  {
    [layer reloadValueForKeyPath:@"contents"];
  }

  else
  {
    [layer setContents:v14];
  }

  [(UIView *)self bounds];
  v19 = [(UIImageView *)self _layoutForImage:imageCopy inSize:v17, v18];
  v20 = v19;
  if (v19)
  {
    [v19 contentsTransform];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
  }

  v22[0] = v23;
  v22[1] = v24;
  v22[2] = v25;
  [layer setContentsTransform:v22];

LABEL_25:
  return canRenderCIImage;
}

- (void)_setPlaceholderView:(id)view
{
  viewCopy = view;
  placeholderView = [(_UIImageViewStorage *)self->_storage placeholderView];
  v6 = placeholderView;
  if (placeholderView != viewCopy)
  {
    superview = [placeholderView superview];

    if (superview == self)
    {
      [v6 removeFromSuperview];
    }

    [(_UIImageViewStorage *)self->_storage setPlaceholderView:viewCopy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__UIImageView__setPlaceholderView___block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [UIView performWithoutAnimation:v8];
    [(UIView *)self addSubview:viewCopy];
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (_UIImageLoader)_imageLoader
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  storage = self->_storage;

  return [(_UIImageViewStorage *)storage imageLoader];
}

- (void)_loadImageWithURL:(id)l
{
  lCopy = l;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [MEMORY[0x1E695AC68] requestWithURL:lCopy];

  mEMORY[0x1E695AC78] = [MEMORY[0x1E695AC78] sharedSession];
  v7 = [_UIImageLoader _imageLoaderWithURLRequest:v5 session:mEMORY[0x1E695AC78]];

  [(UIImageView *)self _loadImage:v7 delegate:0];
}

- (void)_loadImage:(id)image delegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  delegateCopy = delegate;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  imageLoader = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (imageLoader)
  {
    [(_UIImageViewStorage *)self->_storage setStoppingLoad:1];
    loadingDelegate = [(_UIImageViewStorage *)self->_storage loadingDelegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [loadingDelegate _imageView:self shouldCancelPreviousImageLoader:imageLoader])
    {
      [imageLoader _cancel];
    }
  }

  [(UIImageView *)self _mainQ_resetForLoader:imageCopy delegate:delegateCopy];
  v10 = _UIImageLoadingLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 134218240;
    selfCopy = self;
    v13 = 2048;
    v14 = imageCopy;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_INFO, "Image view %p will load from loader=%p", &v11, 0x16u);
  }

  [(UIImageView *)self _mainQ_beginLoadingIfApplicable];
}

void __46__UIImageView__mainQ_beginLoadingIfApplicable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained _kickoffQ_beginLoadingWithImageLoader:v2];
  }
}

- (void)_kickoffQ_beginLoadingWithImageLoader:(id)loader
{
  loaderCopy = loader;
  imageLoader = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (imageLoader == loaderCopy)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__UIImageView__kickoffQ_beginLoadingWithImageLoader___block_invoke;
    v8[3] = &unk_1E70F2F80;
    objc_copyWeak(&v10, &location);
    v9 = loaderCopy;
    [v9 _loadImageWithCompletionQueue:v6 handler:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __53__UIImageView__kickoffQ_beginLoadingWithImageLoader___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [v2 _image];
  v4 = [*(a1 + 32) _error];
  [WeakRetained _mainQ_imageLoader:v2 finishedWithImage:v3 error:v4];
}

- (void)_mainQ_imageLoader:(id)loader finishedWithImage:(id)image error:(id)error
{
  v48 = *MEMORY[0x1E69E9840];
  loaderCopy = loader;
  imageCopy = image;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  imageLoader = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (imageLoader == loaderCopy)
  {
    loadingDelegate = [(_UIImageViewStorage *)self->_storage loadingDelegate];
    if (imageCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [loadingDelegate _imageView:self didLoadImage:imageCopy];

        imageCopy = v12;
      }

      os_variant_has_internal_diagnostics();
      v28 = +[UITraitCollection _currentTraitCollectionIfExists];
      traitCollection = [(UIView *)self traitCollection];
      [UITraitCollection setCurrentTraitCollection:traitCollection];

      v14 = _UISetCurrentFallbackEnvironment(self);
      [(UIView *)self bounds];
      v17 = [(UIImageView *)self _layoutForImage:imageCopy inSize:v15, v16];
      _UIRestorePreviousFallbackEnvironment(v14);
      [UITraitCollection setCurrentTraitCollection:v28];
      objc_initWeak(location, self);
      objc_initWeak(&from, loaderCopy);
      if (v17 && (v17[8] & 1) != 0)
      {
        v23 = decodeQueue();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__UIImageView__mainQ_imageLoader_finishedWithImage_error___block_invoke;
        block[3] = &unk_1E712AD50;
        v18 = &v38;
        objc_copyWeak(&v38, location);
        v19 = &v39;
        objc_copyWeak(&v39, &from);
        v20 = &v36;
        v21 = &v37;
        v36 = imageCopy;
        v37 = v17;
        v27 = v17;
        v24 = block;
      }

      else
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __58__UIImageView__mainQ_imageLoader_finishedWithImage_error___block_invoke_2;
        v30[3] = &unk_1E712AD50;
        v18 = &v33;
        objc_copyWeak(&v33, location);
        v19 = &v34;
        objc_copyWeak(&v34, &from);
        v20 = &v31;
        v21 = &v32;
        v31 = imageCopy;
        v32 = v17;
        v22 = v17;
        v23 = MEMORY[0x1E69E96A0];
        v24 = v30;
      }

      dispatch_async(v23, v24);

      objc_destroyWeak(v19);
      objc_destroyWeak(v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {
      if ([(_UIImageViewStorage *)self->_storage isStoppingLoad])
      {
        v25 = _UIImageLoadingLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          domain = [errorCopy domain];
          *location = 134218754;
          *&location[4] = self;
          v42 = 2048;
          v43 = loaderCopy;
          v44 = 2114;
          v45 = domain;
          v46 = 2048;
          code = [errorCopy code];
          _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_INFO, "Image view %p stopped loading with error: loader=%p domain=%{public}@ code=%ld", location, 0x2Au);
        }

        if (objc_opt_respondsToSelector())
        {
          [loadingDelegate _imageView:self stoppedLoadingWithError:errorCopy];
        }

        [(UIImageView *)self _mainQ_resetForLoader:0 delegate:0];
      }

      imageCopy = 0;
    }
  }
}

void __58__UIImageView__mainQ_imageLoader_finishedWithImage_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v2)
  {
    [WeakRetained _decodeQ_imageLoader:v2 decodeImage:*(a1 + 32) layout:*(a1 + 40)];
  }
}

void __58__UIImageView__mainQ_imageLoader_finishedWithImage_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v2)
  {
    [WeakRetained _mainQ_imageLoader:v2 finishedOrSkippedDecodingImage:*(a1 + 32) layout:*(a1 + 40)];
  }
}

- (void)_decodeQ_imageLoader:(id)loader decodeImage:(id)image layout:(id)layout
{
  v23 = *MEMORY[0x1E69E9840];
  loaderCopy = loader;
  imageCopy = image;
  layoutCopy = layout;
  v11 = decodeQueue();
  dispatch_assert_queue_V2(v11);

  imageLoader = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (imageLoader == loaderCopy)
  {
    v13 = layoutCopy;
    if (!layoutCopy || ([(_UIImageContentLayout *)layoutCopy _materializeRenditionContents], (*(layoutCopy + 8) & 1) == 0) || !*(layoutCopy + 4))
    {
      v14 = _UIImageLoadingLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v20 = layoutCopy;
        v21 = 2048;
        v22 = loaderCopy;
        _os_log_error_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Could not generate CGImage contents from layout %p (loader=%p)", buf, 0x16u);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__UIImageView__decodeQ_imageLoader_decodeImage_layout___block_invoke;
    v15[3] = &unk_1E70F6B40;
    v15[4] = self;
    v16 = loaderCopy;
    v17 = imageCopy;
    v18 = layoutCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

- (void)_mainQ_imageLoader:(id)loader finishedOrSkippedDecodingImage:(id)image layout:(id)layout
{
  imageCopy = image;
  loaderCopy = loader;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  imageLoader = [(_UIImageViewStorage *)self->_storage imageLoader];

  if (imageLoader == loaderCopy)
  {
    [(_UIImageViewStorage *)self->_storage setImageBeingSetByLoader:imageCopy];
    [(UIImageView *)self setImage:imageCopy];
    [(_UIImageViewStorage *)self->_storage setImageBeingSetByLoader:0];
    [(UIImageView *)self _mainQ_resetForLoader:0 delegate:0];
  }
}

- (void)_stopLoading
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  imageLoader = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (imageLoader)
  {
    [(_UIImageViewStorage *)self->_storage setStoppingLoad:1];
    if (![(_UIImageViewStorage *)self->_storage isStartingLoad]|| [(_UIImageViewStorage *)self->_storage isEnqueueingLoad])
    {
      v4 = _UIImageLoadingLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 134218240;
        selfCopy = self;
        v8 = 2048;
        v9 = imageLoader;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_INFO, "Image view %p stopping loader=%p", &v6, 0x16u);
      }

      loadingDelegate = [(_UIImageViewStorage *)self->_storage loadingDelegate];
      if (objc_opt_respondsToSelector())
      {
        [loadingDelegate _imageView:self stoppedLoadingWithError:0];
      }

      [(UIImageView *)self _mainQ_resetForLoader:0 delegate:0];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [loadingDelegate _imageView:self shouldCancelPreviousImageLoader:imageLoader])
      {
        [imageLoader _cancel];
      }
    }
  }
}

- (void)_mainQ_resetForLoader:(id)loader delegate:(id)delegate
{
  delegateCopy = delegate;
  loaderCopy = loader;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(_UIImageViewStorage *)self->_storage setImageLoader:loaderCopy];

  [(_UIImageViewStorage *)self->_storage setLoadingDelegate:delegateCopy];
  [(_UIImageViewStorage *)self->_storage setStartingLoad:0];
  [(_UIImageViewStorage *)self->_storage setEnqueueingLoad:0];
  storage = self->_storage;

  [(_UIImageViewStorage *)storage setStoppingLoad:0];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIImageView;
  coderCopy = coder;
  [(UIResponder *)&v6 encodeRestorableStateWithCoder:coderCopy];
  [(UIView *)self anchorPoint];
  [coderCopy encodeCGPoint:@"kViewAnchorKey" forKey:?];
  [(UIView *)self bounds];
  [coderCopy encodeCGRect:@"kViewBoundsKey" forKey:?];
  [(UIView *)self center];
  [coderCopy encodeCGPoint:@"kViewCenterKey" forKey:?];
  [(UIView *)self transform];
  [coderCopy encodeCGAffineTransform:&v5 forKey:@"kViewTransformKey"];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIImageView;
  [(UIResponder *)&v9 decodeRestorableStateWithCoder:coderCopy];
  if ([coderCopy containsValueForKey:@"kViewAnchorKey"])
  {
    [coderCopy decodeCGPointForKey:@"kViewAnchorKey"];
    [(UIView *)self setAnchorPoint:?];
  }

  if ([coderCopy containsValueForKey:@"kViewBoundsKey"])
  {
    [coderCopy decodeCGRectForKey:@"kViewBoundsKey"];
    [(UIImageView *)self setBounds:?];
  }

  if ([coderCopy containsValueForKey:@"kViewCenterKey"])
  {
    [coderCopy decodeCGPointForKey:@"kViewCenterKey"];
    [(UIImageView *)self setCenter:?];
  }

  if ([coderCopy containsValueForKey:@"kViewTransformKey"])
  {
    if (coderCopy)
    {
      [coderCopy decodeCGAffineTransformForKey:@"kViewTransformKey"];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
    }

    v5[0] = v6;
    v5[1] = v7;
    v5[2] = v8;
    [(UIView *)self setTransform:v5];
  }
}

- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  if ([(_UIImageViewStorage *)self->_storage adjustsImageSizeForAccessibilityContentSizeCategory]!= category)
  {
    [(_UIImageViewStorage *)self->_storage setAdjustsImageSizeForAccessibilityContentSizeCategory:categoryCopy];
    [(UIView *)self invalidateIntrinsicContentSize];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __120__UIImageView_UIAccessibilityContentSizeCategoryImageAdjusting__setAdjustsImageSizeForAccessibilityContentSizeCategory___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
  }
}

- (double)_scaleFactorForImage
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection(traitCollection);

  return v3;
}

- (void)_updatePretiledImageCacheForImage:(id)image
{
  v61 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy && [imageCopy _isResizable] && (objc_msgSend(v5, "_representsLayeredImage") & 1) == 0)
  {
    [(UIView *)self bounds];
    v7 = v6;
    v9 = v8;
    v10 = v5;
    if (qword_1ED4A2C78 != -1)
    {
      dispatch_once(&qword_1ED4A2C78, &__block_literal_global_46_4);
    }

    if (_MergedGlobals_1391 != 1 || ![v10 CGImage] || !objc_msgSend(v10, "_isTiledWhenStretchedToSize:", v7, v9) || (objc_msgSend(v10, "size"), v12 = v11, v14 = v13, objc_msgSend(v10, "capInsets"), v18 == 0.0) && v15 == 0.0 && v17 == 0.0 && v16 == 0.0 && (v12 & (v12 - 1)) == 0 && (v14 & (v14 - 1)) == 0 || (objc_msgSend(v10, "capInsets"), (v7 * v9 / ((v12 - v19 - v20) * (v14 - v21 - v22))) <= 255))
    {

LABEL_17:
      [(UIImageView *)self _clearPretiledImageCacheForImage:v10];
      goto LABEL_18;
    }

    v23 = pretiledSizeForImage(v10, v7, v9);
    v25 = v24;

    if (v23 <= v12 && v25 <= v14)
    {
      goto LABEL_17;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    images = [v10 images];
    v27 = [images countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v53;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(images);
          }

          [(UIImageView *)self _updatePretiledImageCacheForImage:*(*(&v52 + 1) + 8 * i)];
        }

        v28 = [images countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v28);
    }

    [(UIView *)self bounds];
    v33 = pretiledSizeForImage(v10, v31, v32);
    v35 = v34;
    v36 = [_UIImageViewPretiledImageCacheKey cacheKeyWithOriginalImage:v10 pretiledSize:?];
    v37 = objc_getAssociatedObject(self, v10);
    if (v37 || ([qword_1ED4A2C68 objectForKey:v36], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v38 = v37;
      pretiledImage = [v37 pretiledImage];
      [pretiledImage size];
      v41 = v40;
      v43 = v42;

      if ((v33 < v41 || v35 <= v43) && (v33 <= v41 || v35 < v43))
      {
        goto LABEL_43;
      }

      [(UIImageView *)self _clearPretiledImageCacheForImage:v10];
    }

    v44 = v10;
    v45 = v44;
    if (v33 == 0.0 || v35 == 0.0)
    {
    }

    else
    {
      imageRendererFormat = [v44 imageRendererFormat];
      [imageRendererFormat setOpaque:0];
      v47 = [[UIGraphicsImageRenderer alloc] initWithSize:imageRendererFormat format:v33, v35];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __pretiledImageForImage_block_invoke;
      v56[3] = &unk_1E7106EC0;
      v57 = v45;
      v58 = v33;
      v59 = v35;
      v48 = v45;
      v49 = [(UIGraphicsImageRenderer *)v47 imageWithActions:v56];
      [v48 capInsets];
      v50 = [v49 resizableImageWithCapInsets:?];
      v51 = [v50 imageWithRenderingMode:{objc_msgSend(v48, "renderingMode")}];

      if (v51)
      {
        if (qword_1ED4A2C70 != -1)
        {
          dispatch_once(&qword_1ED4A2C70, &__block_literal_global_710);
        }

        v38 = [_UIImageViewPretiledImageWrapper cacheValueWithPretiledImage:v51 cacheKey:v36];
        [qword_1ED4A2C68 setObject:v38 forKey:v36];

        goto LABEL_43;
      }
    }

    v38 = 0;
LABEL_43:
    objc_setAssociatedObject(self, v10, v38, 1);
  }

LABEL_18:
}

void __60__UIImageView_Pretiling___updatePretiledImageCacheForImage___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = qword_1ED4A2C68;
  qword_1ED4A2C68 = v0;
}

- (void)_clearPretiledImageCacheForImage:(id)image
{
  v17 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v5 = imageCopy;
  if (qword_1ED4A2C78 == -1)
  {
    if (!imageCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&qword_1ED4A2C78, &__block_literal_global_46_4);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if ((_MergedGlobals_1391 & 1) != 0 && [v5 _isResizable])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    images = [v5 images];
    v7 = [images countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(images);
          }

          [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v12 + 1) + 8 * i)];
        }

        v8 = [images countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    v11 = objc_getAssociatedObject(self, v5);
    objc_setAssociatedObject(self, v5, 0, 1);
  }

LABEL_13:
}

- (id)_cachedPretiledImageForImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy && [imageCopy _isResizable])
  {
    v6 = objc_getAssociatedObject(self, v5);
    pretiledImage = [v6 pretiledImage];
  }

  else
  {
    pretiledImage = 0;
  }

  return pretiledImage;
}

@end