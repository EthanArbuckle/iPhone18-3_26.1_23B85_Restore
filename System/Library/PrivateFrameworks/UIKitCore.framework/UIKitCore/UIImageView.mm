@interface UIImageView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3;
- (BOOL)_canDrawContent;
- (BOOL)_getDrawModeCompositeOperation:(int *)a3 whiteComponent:(double *)a4 drawingAlpha:(double *)a5;
- (BOOL)_getDrawModeCompositeOperation:(int *)a3 whiteComponent:(double *)a4 drawingAlpha:(double *)a5 forDrawMode:(unsigned int)a6;
- (BOOL)_hasBaseline;
- (BOOL)_hasInstalledContentsAnimation;
- (BOOL)_hasNonDefaultSymbolAnimatorState;
- (BOOL)_hasReasonToUseRBSymbolLayerForImage:(id)a3;
- (BOOL)_imageSupportsMaterials:(id)a3 allowingHierarchical:(BOOL)a4;
- (BOOL)_imageSupportsMaterials:(id)a3 symbolConfiguration:(id)a4 allowingHierarchical:(BOOL)a5;
- (BOOL)_needsBoldEffectForImage:(id)a3 symbolConfiguration:(id)a4;
- (BOOL)_needsBoldEffectForImage:(id)a3 symbolConfiguration:(id)a4 withBaseColor:(id)a5 withEffects:(id)a6;
- (BOOL)_needsImageEffectsForImage:(id)a3;
- (BOOL)_needsImageEffectsForImage:(id)a3 symbolConfiguration:(id)a4;
- (BOOL)_recomputePretilingState;
- (BOOL)_resolveImagesWithPreviouslyDisplayedImage:(id)a3;
- (BOOL)_setImageViewContents:(id)a3;
- (BOOL)_setImageViewContentsForAnimatedImage:(id)a3;
- (BOOL)_setImageViewContentsForCIImageBackedImage:(id)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)_shouldTreatImageAsTemplate:(id)a3;
- (BOOL)_shouldTreatImageAsTemplate:(id)a3 symbolConfiguration:(id)a4;
- (BOOL)_usesRenderBoxToRenderImage:(id)a3 withLayout:(id)a4;
- (BOOL)isTransparentFocusItem;
- (BOOL)scalesLargeContentImage;
- (CGImage)imageRef;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (Class)_intelligenceBaseClass;
- (NSArray)animationImages;
- (NSArray)highlightedAnimationImages;
- (NSString)description;
- (UIEdgeInsets)_additionalAlignmentRectInsetsForRenderingSource:(id)a3;
- (UIEdgeInsets)_edgeInsetsForEffects;
- (UIEdgeInsets)_edgeInsetsForEffectsForImage:(id)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIImageDynamicRange)imageDynamicRange;
- (UIImageView)initWithCoder:(id)a3;
- (UIImageView)initWithFrame:(CGRect)a3;
- (UIImageView)initWithImage:(UIImage *)image;
- (UIImageView)initWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage;
- (UIView)overlayContentView;
- (_UIImageLoader)_imageLoader;
- (_UIScrollPocketInteraction)scrollPocketInteraction;
- (double)_baselineOffsetFromBottom;
- (double)_firstBaselineOffsetFromTop;
- (double)_layeredImageCornerRadius;
- (double)_maximumEDRForDynamicRange:(int64_t)a3;
- (double)_scaleFactorForImage;
- (double)preferredContentScaleFactor;
- (id)_activeImage;
- (id)_adaptiveImageForImage:(id)a3 assignedImage:(id)a4 currentImage:(id)a5 hasAdapted:(BOOL *)a6;
- (id)_animationConfigurationForEffect:(id)a3 forAddingEffect:(BOOL)a4 options:(id)a5 clientCompletionHandler:(id)a6 needsAnimationCompletion:(BOOL)a7;
- (id)_applyImageEffectsToCIImage:(id)a3 multiplyColor:(id)a4;
- (id)_baseMultiplyColorWithImage:(id)a3 symbolConfiguration:(id)a4 shouldResolveDynamicColors:(BOOL)a5;
- (id)_cachedPretiledImageForImage:(id)a3;
- (id)_checkHighlightedImageForAdaptation:(id)a3 hadAdapted:(BOOL *)a4;
- (id)_checkImageForAdaptation:(id)a3 hasAdapted:(BOOL *)a4;
- (id)_colorByApplyingDrawMode:(unsigned int)a3 toColor:(id)a4;
- (id)_colorByApplyingDrawModeToColor:(id)a3;
- (id)_currentAnimationKeyframeImage;
- (id)_currentHighlightedImage;
- (id)_currentImage;
- (id)_decompressingImageForType:(unint64_t)a3;
- (id)_effectiveContentEffectsWithImage:(id)a3 symbolConfiguration:(id)a4;
- (id)_effectiveImageViewTraitCollectionForResolvingImages;
- (id)_effectiveSymbolContentTransitionContainerView;
- (id)_effectsForRenderingSource:(id)a3 size:(CGSize)a4 symbolConfiguration:(id)a5 renditionContext:(id)a6;
- (id)_imageContentGuideAllowingCreation:(BOOL)a3;
- (id)_initialValueForKey:(id)a3;
- (id)_layoutForImage:(id)a3 inSize:(CGSize)a4 cachePerSize:(BOOL)a5 forBaselineOffset:(BOOL)a6;
- (id)_materialForImage:(id)a3 symbolConfiguration:(id)a4;
- (id)_renditionForSource:(id)a3 effects:(id)a4 size:(CGSize)a5 symbolConfiguration:(id)a6 withContentProvider:(id)a7;
- (id)_resolvedImageFromImage:(id)a3;
- (id)_resolvedImageFromImage:(void *)a3 withImageViewTrait:;
- (id)_symbolConfigurationForImage:(id)a3;
- (id)largeContentImage;
- (int64_t)_effectiveRenderingModeForSource:(id)a3 symbolConfiguration:(id)a4;
- (unint64_t)defaultAccessibilityTraits;
- (void)_addSymbolEffect:(id)a3 animated:(BOOL)a4;
- (void)_ancestorWillUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)_applyEffectsFromLayout:(id)a3;
- (void)_applyImageLayout:(id)a3 toLayer:(id)a4;
- (void)_applySettingsForLegibilityStyle:(int64_t)a3;
- (void)_baselineOffsetParametersDidChangeHasBaselinePropertyChanged:(BOOL)a3;
- (void)_cleanUpForStopAnimating;
- (void)_clearPretiledImageCacheForImage:(id)a3;
- (void)_decodeQ_imageLoader:(id)a3 decodeImage:(id)a4 layout:(id)a5;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_generateDeferredAnimations:(id)a3;
- (void)_imageContentParametersDidChange;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_invalidateCachedSymbolConfiguration;
- (void)_invalidateImageLayouts;
- (void)_invalidateResolvedImages;
- (void)_kickoffQ_beginLoadingWithImageLoader:(id)a3;
- (void)_loadImage:(id)a3 delegate:(id)a4;
- (void)_loadImageWithURL:(id)a3;
- (void)_mainQ_beginLoadingIfApplicable;
- (void)_mainQ_imageLoader:(id)a3 finishedOrSkippedDecodingImage:(id)a4 layout:(id)a5;
- (void)_mainQ_imageLoader:(id)a3 finishedWithImage:(id)a4 error:(id)a5;
- (void)_mainQ_resetForLoader:(id)a3 delegate:(id)a4;
- (void)_monochromaticTreatmentStateDidChange;
- (void)_removeAllSymbolEffectsAnimated:(BOOL)a3;
- (void)_removeLayerAnimations;
- (void)_removeSymbolEffect:(id)a3 animated:(BOOL)a4;
- (void)_renderDrawModeEffectInRect:(CGRect)a3;
- (void)_runSymbolEffectCompletion:(id)a3 contextConfigurator:(id)a4;
- (void)_setDecompressingImage:(id)a3 forType:(unint64_t)a4;
- (void)_setDefaultRenderingMode:(int64_t)a3;
- (void)_setGuardAgainstDegenerateBaselineCalculation:(BOOL)a3;
- (void)_setImage:(id)a3 invalidatingPendingSymbolTransitions:(BOOL)a4;
- (void)_setLayerAllowsEdgeAntialiasing:(BOOL)a3;
- (void)_setLayeredImageCornerRadius:(double)a3;
- (void)_setMasksTemplateImages:(BOOL)a3;
- (void)_setNeedsUpdateState;
- (void)_setOverlayContentView:(id)a3;
- (void)_setOverridingSymbolConfiguration:(id)a3;
- (void)_setPlaceholderView:(id)a3;
- (void)_setPreferredSymbolVariant:(id)a3;
- (void)_setSymbolImage:(id)a3 withSymbolTransition:(id)a4;
- (void)_setViewGeometry:(CGRect)a3 forMetric:(int)a4;
- (void)_setupRBSymbolLayerWithSymbolImageLayout:(id)a3;
- (void)_setupSymbolLayerForCurrentSymbolImageLayout:(id)a3;
- (void)_stopLoading;
- (void)_systemIconAppearanceDidChange;
- (void)_teardownLayeredImage;
- (void)_teardownRBSymbolLayerIfNeeded;
- (void)_templateSettingsDidChange;
- (void)_updateHDRFlags:(BOOL)a3;
- (void)_updateImageViewForOldImage:(id)a3 newImage:(id)a4;
- (void)_updateLayeredImageIsFocusedWithFocusedView:(id)a3 focusAnimationCoordinator:(id)a4;
- (void)_updateMasking;
- (void)_updateOverlayContentView;
- (void)_updatePretiledImageCacheForImage:(id)a3;
- (void)_updateProperties;
- (void)_updateRBSymbolLayerPositionIfNeededForContentTransitionPendingLayoutPass;
- (void)_updateResolvedImages;
- (void)_updateScrollPocketInteraction;
- (void)_updateState;
- (void)_updateStateIfRBSymbolLayerNoLongerNeeded;
- (void)_updateVisibilityAndFrameOfPlaceholderView;
- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect;
- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated completion:(UISymbolEffectCompletion)completionHandler;
- (void)animationPresetManager:(id)a3 addEffect:(id)a4 options:(id)a5 completion:(id)a6;
- (void)animationPresetManager:(id)a3 didDiscardPendingContentTransition:(id)a4;
- (void)animationPresetManager:(id)a3 didSetHiddenness:(BOOL)a4 usingEffect:(id)a5 options:(id)a6 animated:(BOOL)a7 completion:(id)a8;
- (void)animationPresetManager:(id)a3 didSetScale:(int)a4 usingEffect:(id)a5 options:(id)a6 animated:(BOOL)a7 completion:(id)a8;
- (void)animationPresetManager:(id)a3 removeEffect:(id)a4 wasActive:(BOOL)a5 options:(id)a6 animated:(BOOL)a7 completion:(id)a8;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)removeAllSymbolEffects;
- (void)removeAllSymbolEffectsWithOptions:(NSSymbolEffectOptions *)options animated:(BOOL)animated;
- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect;
- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated completion:(UISymbolEffectCompletion)completionHandler;
- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)a3;
- (void)setAnimating:(BOOL)a3;
- (void)setAnimationDuration:(NSTimeInterval)animationDuration;
- (void)setAnimationImages:(NSArray *)animationImages;
- (void)setAnimationRepeatCount:(NSInteger)animationRepeatCount;
- (void)setBackgroundColor:(id)a3;
- (void)setCGImageRef:(CGImage *)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setContentScaleFactor:(double)a3;
- (void)setDrawMode:(unsigned int)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedAnimationImages:(NSArray *)highlightedAnimationImages;
- (void)setHighlightedImage:(UIImage *)highlightedImage;
- (void)setPreferredImageDynamicRange:(UIImageDynamicRange)preferredImageDynamicRange;
- (void)setPreferredSymbolConfiguration:(UIImageSymbolConfiguration *)preferredSymbolConfiguration;
- (void)setScrollPocketInteraction:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition;
- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition options:(NSSymbolEffectOptions *)options completion:(UISymbolEffectCompletion)completionHandler;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
- (void)startAnimating;
- (void)stopAnimating;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIImageView

- (BOOL)_canDrawContent
{
  imageViewFlags = self->_imageViewFlags;
  if ((imageViewFlags & 1) == 0)
  {
    v4 = self;
    if ([(UIView *)v4 contentMode]>= UIViewContentModeCenter)
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

    v5 = [(UIImageView *)v4 _currentImage];
    if ([(UIImageView *)v4 isHighlighted])
    {
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = v5;
      v7 = [v6 CIImage];

      if (!v7)
      {

        goto LABEL_13;
      }

      v8 = [v6 _representsCIImageWhichSupportsIOSurfaceRendering];

      if (v8)
      {
LABEL_13:
        v13 = [(UIImageView *)v4 _currentHighlightedImage];
        v9 = v13;
        if (v13)
        {
          v14 = [v13 CIImage];

          if (!v14 || [v9 _representsCIImageWhichSupportsIOSurfaceRendering])
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
      if (!v5)
      {
        goto LABEL_17;
      }

      v9 = v5;
      v10 = [v9 CIImage];

      if (!v10)
      {
LABEL_16:

        goto LABEL_17;
      }

      v11 = [v9 _representsCIImageWhichSupportsIOSurfaceRendering];

      if (v11)
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
  v3 = [(_UIImageViewStorage *)self->_storage resolvedImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIImageViewStorage *)self->_storage image];
  }

  v6 = v5;

  return v6;
}

- (void)_updateRBSymbolLayerPositionIfNeededForContentTransitionPendingLayoutPass
{
  v3 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  v4 = [v3 hasPendingContentTransition];

  if (v4)
  {
    v13 = [(UIImageView *)self _effectiveSymbolContentTransitionContainerView];
    v5 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    v6 = [(UIImageView *)self image];
    v7 = [v5 pendingSymbolContentTransitionForSettingSymbolImage:v6];

    if (v13)
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
            [(UIView *)self convertRect:v13 fromView:?];
            v9 = v8;
            v11 = v10;
            v12 = [(UIImageView *)self _rbSymbolLayer];
            [v12 setPosition:{v9, v11}];

            [MEMORY[0x1E6979518] setDisableActions:0];
          }
        }
      }
    }
  }
}

- (id)_currentHighlightedImage
{
  v3 = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIImageViewStorage *)self->_storage highlightedImage];
  }

  v6 = v5;

  return v6;
}

- (id)_activeImage
{
  if (![(UIImageView *)self isHighlighted]|| ([(UIImageView *)self _currentHighlightedImage], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [(UIImageView *)self _currentImage];
  }

  return v3;
}

- (void)_invalidateResolvedImages
{
  [(_UIImageViewStorage *)self->_storage setResolvedImage:0];
  [(_UIImageViewStorage *)self->_storage setResolvedHighlightedImage:0];
  lastResolvedImageViewTraitCollection = self->_lastResolvedImageViewTraitCollection;
  self->_lastResolvedImageViewTraitCollection = 0;

  [(UIImageView *)self _invalidateCachedSymbolConfiguration];
  v4 = [(_UIImageViewStorage *)self->_storage image];
  v5 = [v4 content];
  v6 = [v5 isCIImage];

  if ((v6 & 1) == 0)
  {
    storage = self->_storage;

    [(_UIImageViewStorage *)storage setCIRenderer:0];
  }
}

- (void)_teardownRBSymbolLayerIfNeeded
{
  v3 = [(UIImageView *)self _rbSymbolLayer];
  if (v3)
  {
    v7 = v3;
    [v3 removeFromSuperlayer];
    [v7 setAnimator:0];
    [(UIImageView *)self _setRBSymbolLayer:0];
    v4 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    v5 = [MEMORY[0x1E6982278] options];
    [v4 removeAllSymbolEffectsWithOptions:v5 animated:0];

    v6 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    [v6 discardPendingSymbolContentTransitions];

    v3 = v7;
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
  v4 = [(_UIImageViewStorage *)self->_storage layouts];
  v5 = [v4 count];

  if (v5)
  {
    [(UIImageView *)self _baselineOffsetFromBottom];
    self->_previousBaselineOffsetFromBottom = v6;
    [(UIImageView *)self _firstBaselineOffsetFromTop];
    self->_previousFirstBaselineOffsetFromTop = v7;
  }

  v8 = [(_UIImageViewStorage *)self->_storage imageBeingSetByLoader];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v25 = self;
    v10 = [(_UIImageViewStorage *)self->_storage layouts];
    objc_opt_class();
    objc_opt_class();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
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
          if ((objc_opt_isKindOfClass() & 1) == 0 || v16 != v8)
          {
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v18 = [v16 objectAtIndexedSubscript:0];

            if (v18 != v8)
            {
              continue;
            }
          }

          v17 = [v11 objectForKey:v16];
          [v9 setObject:v17 forKey:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    [(_UIImageViewStorage *)v25->_storage setLayouts:v9];
  }

  else
  {
    v9 = [(_UIImageViewStorage *)self->_storage layouts];
    [v9 removeAllObjects];
  }
}

- (void)_imageContentParametersDidChange
{
  v3 = [(UIImageView *)self _imageContentGuideAllowingCreation:0];
  if (v3)
  {
    v65 = v3;
    v4 = [(UIImageView *)self _currentImage];
    v5 = v4;
    if (!v4)
    {
      v5 = [(UIImageView *)self _currentHighlightedImage];
    }

    [(UIView *)self bounds];
    v8 = [(UIImageView *)self _layoutForImage:v5 inSize:v6, v7];
    [v8 contentInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    if (!v4)
    {
    }

    [(UIImageView *)self alignmentRectInsets];
    v18 = v10 - v17;
    v20 = v12 - v19;
    v22 = v14 - v21;
    v24 = v16 - v23;
    v25 = [(UIView *)self superview];
    v26 = v25;
    if (v25 && (*(v25 + 95) & 8) != 0)
    {
      v63 = v22;
      v27 = [v65 _systemConstraints];
      v28 = [v27 objectAtIndexedSubscript:0];
      [v28 constant];
      v62 = v29;
      v30 = [v65 _systemConstraints];
      v31 = [v30 objectAtIndexedSubscript:1];
      [v31 constant];
      v33 = v32;
      v34 = [v65 _systemConstraints];
      v35 = [v34 objectAtIndexedSubscript:2];
      [v35 constant];
      v60 = v36;
      v37 = [v65 _systemConstraints];
      v38 = [v37 objectAtIndexedSubscript:3];
      [v38 constant];
      v64 = v39;

      v40 = [(UIView *)self _layoutEngine];
      objc_opt_self();
      [(UIView *)self bounds];
      v42 = v41;
      v61 = v43;
      [(UIView *)self _currentScreenScale];
      v45 = 1.0 / v44;
      v46 = [(UIView *)self nsli_boundsWidthVariable];
      [v40 valueForVariable:v46];
      v48 = v47;

      if ((round(vabdd_f64(v33, v20) - v45) == 0.0 || round(vabdd_f64(v64, v24) - v45) == 0.0) && round(vabdd_f64(v48 / 360.0, v42) - v45) == 0.0)
      {
        v24 = v64;
        v20 = v33;
      }

      v22 = v63;
      v49 = [(UIView *)self nsli_boundsHeightVariable];
      [v40 valueForVariable:v49];
      v51 = v50;

      if ((round(vabdd_f64(v62, v18) - v45) == 0.0 || round(vabdd_f64(v60, v63) - v45) == 0.0) && round(vabdd_f64(v51 / 360.0, v61) - v45) == 0.0)
      {
        v24 = v64;
        v20 = v33;
      }
    }

    v52 = [v65 _systemConstraints];
    v53 = [v52 objectAtIndexedSubscript:0];

    [v53 setConstant:v18];
    v54 = [v65 _systemConstraints];
    v55 = [v54 objectAtIndexedSubscript:1];

    [v55 setConstant:v20];
    v56 = [v65 _systemConstraints];
    v57 = [v56 objectAtIndexedSubscript:2];

    [v57 setConstant:v22];
    v58 = [v65 _systemConstraints];
    v59 = [v58 objectAtIndexedSubscript:3];

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
    v3 = 0;
LABEL_4:

    [(UIImageView *)self _updateHDRFlags:v3];
    return;
  }

  [(UIImageView *)self _invalidateImageLayouts];
  v19 = [(UIImageView *)self _currentImage];
  if ([(UIImageView *)self isHighlighted])
  {
    v4 = [(UIImageView *)self _currentHighlightedImage];
  }

  else
  {
    v4 = 0;
  }

  if ([(UIImageView *)self isHighlighted]&& ([(UIImageView *)self isAnimating]|| !v4))
  {
    v5 = [(UIImageView *)self highlightedAnimationImages];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(UIImageView *)self highlightedAnimationImages];
LABEL_19:
      v10 = v7;
      v11 = [v7 objectAtIndex:0];
      _setContentStretchForImage(self, v11);

      goto LABEL_20;
    }
  }

  if ([(UIImageView *)self isAnimating]|| !v19)
  {
    v8 = [(UIImageView *)self animationImages];
    v9 = [v8 count];

    if (v9)
    {
      v7 = [(UIImageView *)self animationImages];
      goto LABEL_19;
    }
  }

LABEL_20:
  if (![(UIImageView *)self isAnimating])
  {
    if ([(UIImageView *)self isHighlighted])
    {
      if (v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v19;
      }

      v13 = v12;
      v14 = [(UIImageView *)self _setImageViewContents:v13];
      if (v14)
      {
        v3 = [v13 isHighDynamicRange];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v14 = 0;
      v3 = 0;
    }

    v15 = [(UIImageView *)self _displayImageAsLayered:v19];
    v16 = v15;
    if (v14 || v15)
    {
      if (!v15)
      {
        goto LABEL_39;
      }

      [(UIImageView *)self _configureForLayeredImage:v19];
    }

    else
    {
      [(UIImageView *)self _setImageViewContents:v19];
      v3 = [v19 isHighDynamicRange];
    }

    v14 = 1;
LABEL_39:
    v17 = [(UIImageView *)self _layeredImageContainer];
    v18 = v17 == 0 || v16;

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
  v3 = [(UIView *)self layer];
  v4 = [v3 animationForKey:@"contents"];

  v5 = [v4 delegate];
  v6 = 0;
  if (v4 && v5)
  {
    v6 = v5 == self->_storage;
  }

  return v6;
}

- (id)_effectiveImageViewTraitCollectionForResolvingImages
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 traitCollection];
    if (!v2)
    {
      if (dyld_program_sdk_at_least())
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"BUG IN CLIENT: UIImageView trait collection unexpectedly found nil. Did you override traitCollection to return nil? That's illegal. imageView = %@", v1}];
        v2 = 0;
      }

      else
      {
        v3 = [objc_opt_self() mainScreen];
        v2 = [v3 traitCollection];
      }
    }

    v1 = [v2 _traitCollectionByReplacingNSIntegerValue:objc_msgSend(v1 forTraitToken:{"effectiveUserInterfaceLayoutDirection"), 0x1EFE323C8}];
  }

  return v1;
}

- (void)_updateVisibilityAndFrameOfPlaceholderView
{
  v3 = [(_UIImageViewStorage *)self->_storage placeholderView];
  if (v3)
  {
    v5 = v3;
    v4 = [(UIImageView *)self _currentImage];
    [v5 setHidden:v4 != 0];

    [(UIView *)self bounds];
    [v5 setFrame:?];
    v3 = v5;
  }
}

- (double)preferredContentScaleFactor
{
  v2 = [(UIView *)self traitCollection];
  [v2 displayScale];
  v4 = v3;

  return v4;
}

- (void)_updateMasking
{
  if ([(UIImageView *)self _masksTemplateImages])
  {
    v11 = [(UIView *)self layer];
    v3 = [v11 compositingFilter];
    v4 = v3;
    v5 = MEMORY[0x1E6979D98];
    if (v3)
    {
      v6 = [v3 type];
      v7 = [v6 isEqualToString:*v5];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(UIImageView *)self _activeImage];
    v9 = [(UIImageView *)self _shouldTreatImageAsTemplate:v8];

    if ((v7 & 1) != 0 || !v9)
    {
      if (!v9 && (v7 & 1) != 0)
      {
        [v11 setCompositingFilter:0];
      }
    }

    else
    {
      v10 = [MEMORY[0x1E6979378] filterWithType:*v5];
      [v11 setCompositingFilter:v10];
    }
  }
}

- (NSArray)animationImages
{
  v2 = [(_UIImageViewStorage *)self->_storage animationImages];
  v3 = [v2 copy];

  return v3;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIImageView;
  [(UIView *)&v4 tintColorDidChange];
  v3 = [(UIImageView *)self _activeImage];
  if (-[UIImageView _shouldTreatImageAsTemplate:](self, "_shouldTreatImageAsTemplate:", v3) || [v3 isSymbolImage])
  {
    [(UIImageView *)self _invalidateCachedSymbolConfiguration];
    [(UIImageView *)self _updateState];
  }
}

- (void)_updateResolvedImages
{
  v3 = [(UIImageView *)self _activeImage];
  [(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:v3];
}

- (void)_mainQ_beginLoadingIfApplicable
{
  v19 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
LABEL_4:
    v3 = [(_UIImageViewStorage *)self->_storage imageLoader];
    if (v3)
    {
      if (![(_UIImageViewStorage *)self->_storage isStartingLoad])
      {
        v4 = [(UIView *)self window];
        if (v4)
        {
          v5 = [(UIView *)self isHidden];

          if (!v5)
          {
            [(_UIImageViewStorage *)self->_storage setStartingLoad:1];
            v6 = [(_UIImageViewStorage *)self->_storage loadingDelegate];
            if (objc_opt_respondsToSelector())
            {
              v7 = [v6 _imageViewShouldBeginLoading:self];
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
                v16 = self;
                v17 = 2048;
                v18 = v3;
                _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_INFO, "Image view %p is loading from loader=%p", buf, 0x16u);
              }

              objc_initWeak(buf, self);
              v9 = [(_UIImageViewStorage *)self->_storage imageLoader];
              objc_initWeak(&location, v9);

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

  v3 = _UIImageLoadingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v16 = self;
    _os_log_error_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Image view %p is being used from a non-main thread. It is illegal to use UIView on a background thread.", buf, 0xCu);
  }

LABEL_20:
}

- (double)_baselineOffsetFromBottom
{
  v3 = [(UIImageView *)self _currentImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIImageView *)self _currentHighlightedImage];
  }

  v6 = v5;

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
      v13 = [(UIImageView *)self _layoutForImage:v6 inSize:0 cachePerSize:1 forBaselineOffset:width, height];
      [v13 baselineOffsetFromBottom];
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
  v3 = [(UIImageView *)self _activeImage];
  [(UIView *)self bounds];
  v6 = [(UIImageView *)self _layoutForImage:v3 inSize:0 cachePerSize:1 forBaselineOffset:v4, v5];

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
  v2 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
  v3 = [v2 copy];

  return v3;
}

- (UIEdgeInsets)_edgeInsetsForEffects
{
  if ((*&self->_imageViewFlags & 0x10) != 0)
  {
    p_cachedEdgeInsetsForEffects = &self->_cachedEdgeInsetsForEffects;
    *&self->_cachedEdgeInsetsForEffects.top = 0u;
    *&self->_cachedEdgeInsetsForEffects.bottom = 0u;
    v4 = [(UIImageView *)self _activeImage];
    if (v4)
    {
      [(UIImageView *)self _edgeInsetsForEffectsForImage:v4];
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
  v3 = [(UIImageView *)self _currentImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIImageView *)self _currentHighlightedImage];
  }

  v6 = v5;

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
      v13 = [(UIImageView *)self _layoutForImage:v6 inSize:0 cachePerSize:1 forBaselineOffset:width, height];
      v14 = v13;
      if (v13)
      {
        v15 = *(v13 + 72);
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
  v5 = [(UIImageView *)self _layeredImageContainer];
  [(UIView *)self bounds];
  [v5 setFrame:?];

  v6.receiver = self;
  v6.super_class = UIImageView;
  [(UIView *)&v6 layoutSubviews];
}

- (BOOL)_hasNonDefaultSymbolAnimatorState
{
  v2 = [(UIImageView *)self _rbSymbolLayer];
  v3 = [v2 animator];

  if (v3)
  {
    v4 = ([v3 isHidden] & 1) != 0 || objc_msgSend(v3, "scaleLevel") != 0;
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
  v3 = [(UIImageView *)self _currentImage];
  v4 = [(UIImageView *)self _currentHighlightedImage];
  if ([(UIImageView *)self isAnimating])
  {
    goto LABEL_8;
  }

  v5 = [v3 images];
  if (v5 && ![(UIImageView *)self isHighlighted])
  {

    goto LABEL_8;
  }

  v6 = [v4 images];
  if (v6)
  {
    v7 = v6;
    v8 = [(UIImageView *)self isHighlighted];

    if (!v8)
    {
      goto LABEL_10;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_25;
  }

LABEL_10:
  [(UIImageView *)self _updatePretiledImageCacheForImage:v3];
  [(UIImageView *)self _updatePretiledImageCacheForImage:v4];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(UIImageView *)self animationImages];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v10);
        }

        [(UIImageView *)self _updatePretiledImageCacheForImage:*(*(&v25 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [(UIImageView *)self highlightedAnimationImages];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v15);
        }

        [(UIImageView *)self _updatePretiledImageCacheForImage:*(*(&v21 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

  v3 = [(_UIImageViewStorage *)self->_storage image];
  [(UIImageView *)self _clearPretiledImageCacheForImage:v3];

  v4 = [(_UIImageViewStorage *)self->_storage highlightedImage];
  [(UIImageView *)self _clearPretiledImageCacheForImage:v4];

  v5 = [(_UIImageViewStorage *)self->_storage resolvedImage];
  [(UIImageView *)self _clearPretiledImageCacheForImage:v5];

  v6 = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
  [(UIImageView *)self _clearPretiledImageCacheForImage:v6];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(_UIImageViewStorage *)self->_storage animationImages];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v7);
        }

        [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v22 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(v12);
        }

        [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17.receiver = self;
  v17.super_class = UIImageView;
  [(UIView *)&v17 dealloc];
}

- (void)_monochromaticTreatmentStateDidChange
{
  v3 = [(UIImageView *)self _currentImage];
  v4 = [(UIImageView *)self _imageSupportsMaterials:v3 allowingHierarchical:1];

  if (v4)
  {

    [(UIImageView *)self _updateState];
  }
}

- (BOOL)_hasBaseline
{
  v3 = [(UIImageView *)self _currentImage];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasBaseline];
  }

  else
  {
    v6 = [(UIImageView *)self _currentHighlightedImage];
    v5 = [v6 hasBaseline];
  }

  return v5;
}

- (void)startAnimating
{
  v38 = *MEMORY[0x1E69E9840];
  if ([(UIImageView *)self isAnimating])
  {
    return;
  }

  v3 = [(UIImageView *)self isHighlighted];
  storage = self->_storage;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [(_UIImageViewStorage *)storage highlightedAnimationImages];
  if (!v5)
  {
    v6 = [(UIImageView *)self _currentHighlightedImage];

    if (v6)
    {
      return;
    }

    storage = self->_storage;
LABEL_6:
    v5 = [(_UIImageViewStorage *)storage animationImages];
    if (!v5)
    {
      return;
    }
  }

  v7 = v5;
  v8 = [v5 count];
  if ([(_UIImageViewStorage *)self->_storage animationRepeatCount]< 1)
  {
    v9 = 2147500000.0;
  }

  else
  {
    v9 = [(_UIImageViewStorage *)self->_storage animationRepeatCount];
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
  *&v25 = v9;
  [v23 setRepeatCount:v25];
  [v23 setDuration:v12];
  [v23 setDelegate:self->_storage];
  v26 = *MEMORY[0x1E69797E8];
  [v23 setFillMode:*MEMORY[0x1E69797E8]];
  [v23 setRemovedOnCompletion:0];
  v27 = [(UIView *)self layer];
  [v27 addAnimation:v23 forKey:@"contents"];
  v28 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v28 setKeyPath:@"contentsMultiplyColor"];
  v29 = +[UIColor whiteColor];
  v36 = [v29 CGColor];
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v28 setValues:v30];

  [v28 setCalculationMode:v24];
  *&v31 = v9;
  [v28 setRepeatCount:v31];
  [v28 setDuration:v12];
  [v28 setFillMode:v26];
  [v28 setRemovedOnCompletion:0];
  [v27 addAnimation:v28 forKey:@"contentsMultiplyColor"];
  [v27 setContentsSwizzle:*MEMORY[0x1E6979E38]];
}

- (void)stopAnimating
{
  if ([(UIImageView *)self isAnimating])
  {
    v3 = [(UIView *)self layer];
    [v3 removeAnimationForKey:@"contents"];

    if (![(_UIImageViewStorage *)self->_storage animationRepeatCount])
    {

      [(UIImageView *)self _cleanUpForStopAnimating];
    }
  }
}

- (id)_currentAnimationKeyframeImage
{
  v3 = [(UIView *)self layer];
  v4 = [v3 animationForKey:@"contents"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[UIView layer](self, "layer"), v5 = objc_claimAutoreleasedReturnValue(), [v5 presentationLayer], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "contents"), v6, v5, v7))
  {
    v8 = [v4 values];
    v9 = [v8 indexOfObject:v7];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v11 = v9;
      if ([(UIImageView *)self isHighlighted])
      {
        v12 = [(UIImageView *)self highlightedAnimationImages];
      }

      else
      {
        v12 = 0;
      }

      if (![v12 count])
      {
        v13 = [(UIImageView *)self animationImages];

        v12 = v13;
      }

      if (v11 >= [v12 count])
      {
        v10 = 0;
      }

      else
      {
        v10 = [v12 objectAtIndex:v11];
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
  v2 = [(UIView *)self layer];
  [v2 removeAnimationForKey:@"contents"];
  [v2 removeAnimationForKey:@"contentsMultiplyColor"];
}

- (void)_cleanUpForStopAnimating
{
  [(UIImageView *)self _removeLayerAnimations];

  [(UIImageView *)self _updateState];
}

- (BOOL)isTransparentFocusItem
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 supportsViewTransparency];

  if (v4)
  {
    v10.receiver = self;
    v10.super_class = UIImageView;
    if ([(UIView *)&v10 isTransparentFocusItem])
    {
      return 1;
    }

    else
    {
      v6 = [(UIImageView *)self image];
      if (v6)
      {
        v7 = [(UIImageView *)self image];
        v5 = [v7 _probeIsSeeThrough];
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIImageView;
    return [(UIView *)&v9 isTransparentFocusItem];
  }

  return v5;
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = self;
  UIImageView._intelligenceCollectContent(in:collector:)(v9, x, y, width, height);
}

- (_UIScrollPocketInteraction)scrollPocketInteraction
{
  v2 = self;
  v3 = [(UIView *)v2 _typedStorage];
  v4 = sub_18901F244();

  return v4;
}

- (void)setScrollPocketInteraction:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = [(UIView *)v6 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937088);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v10 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(&v7->super.isa + v9);
  *(&v7->super.isa + v9) = 0x8000000000000000;
  sub_188A40430(v8, &_s26ScrollPocketInteractionKeyVN_0, isUniquelyReferenced_nonNull_native);
  *(&v7->super.isa + v9) = v12;
  swift_endAccess();
}

- (void)_updateScrollPocketInteraction
{
  v2 = self;
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

- (void)_applySettingsForLegibilityStyle:(int64_t)a3
{
  v4 = [_UILegibilitySettings sharedInstanceForStyle:a3];
  if (v4)
  {
    v5 = [v4 shadowCompositingFilterName];
  }

  else
  {
    v5 = *MEMORY[0x1E6979CC0];
  }

  [(CALayer *)[(UIView *)self layer] setCompositingFilter:v5];
  v6 = [(UIView *)self layer];

  [(CALayer *)v6 setAllowsGroupBlending:0];
}

- (id)largeContentImage
{
  v3 = [(UIView *)self _largeContentStoredProperties];
  v4 = [v3 didSetLargeContentImage];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = UIImageView;
    v5 = [(UIView *)&v7 largeContentImage];
  }

  else
  {
    v5 = [(UIImageView *)self image];
  }

  return v5;
}

- (BOOL)scalesLargeContentImage
{
  v3 = [(UIView *)self _largeContentStoredProperties];
  v4 = [v3 didSetScalesLargeContentImage];

  if (!v4)
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
  v6 = [(UIImageView *)self _currentImage];
  v7 = _UIImageName(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 content];
  v11 = [v10 typeName];
  if (v7)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v7];
  }

  else
  {
    v12 = @"anonymous";
  }

  [v6 size];
  v14 = v13;
  [v6 size];
  v16 = v15;
  v17 = [v6 content];
  [v17 scale];
  [v5 appendFormat:@"; image = <%@:%p %@ %@; (%0.0f %0.0f)@%0.f", v9, v6, v11, v12, v14, v16, v18];

  if (v7)
  {
  }

  v19 = [v6 content];
  [v19 vectorScale];
  v21 = v20;
  v22 = [v6 content];
  [v22 scale];
  v24 = v23;

  if (v21 != v24)
  {
    v25 = [v6 content];
    [v25 vectorScale];
    [v5 appendFormat:@"{%0.0f}", v26];
  }

  v27 = [v6 content];
  if ([v27 isVectorGlyph])
  {
    v28 = [v6 content];
    [v28 variableValue];
    v30 = v29;

    if (v30 == INFINITY)
    {
      goto LABEL_12;
    }

    v27 = [v6 content];
    [v27 variableValue];
    [v5 appendFormat:@", value=%0.0f", v31];
  }

LABEL_12:
  [v5 appendString:@">; layer ="];
  [v4 replaceOccurrencesOfString:@"; layer =" withString:v5 options:0 range:{0, objc_msgSend(v4, "length")}];
  v32 = [v4 copy];

  return v32;
}

- (id)_layoutForImage:(id)a3 inSize:(CGSize)a4 cachePerSize:(BOOL)a5 forBaselineOffset:(BOOL)a6
{
  height = a4.height;
  width = a4.width;
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
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
  if (a5)
  {
    v13 = [MEMORY[0x1E696B098] valueWithSize:{width, height, v12}];
    v27[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  }

  else
  {
    v14 = v12;
  }

  v15 = [(_UIImageViewStorage *)self->_storage layouts];
  v16 = [v15 objectForKey:v14];

  if (!v16)
  {
    v16 = [_UIImageContentLayout layoutForSource:v12 inTarget:self withSize:width, height];
    v17 = [(_UIImageViewStorage *)self->_storage layouts];

    if (!v17)
    {
      v18 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      [(_UIImageViewStorage *)self->_storage setLayouts:v18];
    }

    v19 = [(_UIImageViewStorage *)self->_storage layouts];
    [v19 setObject:v16 forKey:v14];

    if (!a6)
    {
      [(UIImageView *)self _baselineOffsetParametersDidChangeHasBaselinePropertyChanged:0];
    }
  }

  return v16;
}

- (void)_invalidateCachedSymbolConfiguration
{
  cachedSymbolConfiguration = self->_cachedSymbolConfiguration;
  self->_cachedSymbolConfiguration = 0;

  objc_storeWeak(&self->_cachedSymbolConfigurationImage, 0);
}

- (BOOL)_setImageViewContents:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self layer];
  [v5 removeAnimationForKey:@"UIImageAnimationContents"];
  [v5 removeAnimationForKey:@"UIImageAnimationContentsTransform"];
  [v5 removeAnimationForKey:@"UIImageAnimationContentsMultiplyColor"];
  [v5 setContentsAlignsToPixels:0];
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
  v7 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v7];

  v8 = _UISetCurrentFallbackEnvironment(self);
  [v4 size];
  if (v4 && v9 > 0.0)
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
      [v5 setContents:0];
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
    [v5 setContents:0];
    goto LABEL_30;
  }

LABEL_15:
  if ([v4 _representsCIImageWhichSupportsIOSurfaceRendering] && -[UIImageView _setImageViewContentsForCIImageBackedImage:](self, "_setImageViewContentsForCIImageBackedImage:", v4))
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

  [v4 duration];
  if (v17 > 0.0)
  {
    v18 = [v4 images];

    if (v18)
    {
      if (![(UIImageView *)self _setImageViewContentsForAnimatedImage:v4])
      {
        v19 = [v4 images];
        v20 = [v19 firstObject];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v4;
        }

        v23 = v22;

        v4 = v23;
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

LABEL_24:
  v24 = [(UIImageView *)self _cachedPretiledImageForImage:v4];
  v25 = v24;
  if (v24)
  {
    v26 = v24;

    v4 = v26;
  }

  [(UIView *)self bounds];
  v29 = [(UIImageView *)self _layoutForImage:v4 inSize:v27, v28];
  if ([v29 hasContents])
  {
    [(UIImageView *)self _applyImageLayout:v29 toLayer:v5];
    _setContentStretchForImage(self, v4);
  }

  else
  {
    [v5 setContents:0];
    [(UIImageView *)self _teardownRBSymbolLayerIfNeeded];
  }

LABEL_34:
  _UIRestorePreviousFallbackEnvironment(v8);
  [UITraitCollection setCurrentTraitCollection:v6];

  return 1;
}

- (BOOL)_usesRenderBoxToRenderImage:(id)a3 withLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isSymbolImage] && -[UIImageView _hasReasonToUseRBSymbolLayerForImage:](self, "_hasReasonToUseRBSymbolLayerForImage:", v6))
  {
    v8 = [v7 rbSymbolConfiguration];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_applyImageLayout:(id)a3 toLayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIImageView *)self image];
  v9 = [(UIImageView *)self _usesRenderBoxToRenderImage:v8 withLayout:v6];

  if (v9)
  {
    [v7 setContents:0];
    v10 = [(UIImageView *)self _rbSymbolLayer];
    if (!v10)
    {
      v10 = [MEMORY[0x1E69C7110] layer];
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      [v10 setAnchorPoint:{*MEMORY[0x1E695EFF8], v12}];
      v13 = [(UIView *)self layer];
      [v13 addSublayer:v10];

      v14 = objc_opt_new();
      [v14 setAnchorPoint:{v11, v12}];
      [v10 setAnimator:v14];
      [(UIImageView *)self _setRBSymbolLayer:v10];
    }

    v15 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    v16 = [(UIImageView *)self image];
    v17 = [v15 pendingSymbolContentTransitionForSettingSymbolImage:v16];

    if (v17)
    {
      if (([v17 isPendingLayoutPass] & 1) == 0)
      {
        v18 = [v17 sourceSymbolImage];
        [(UIView *)self bounds];
        v21 = [(UIImageView *)self _layoutForImage:v18 inSize:v19, v20];
        [(UIImageView *)self _setupRBSymbolLayerWithSymbolImageLayout:v21];
        [v17 setPendingLayoutPass:1];
        v22 = [(UIImageView *)self _effectiveSymbolContentTransitionContainerView];
        if (v22)
        {
          [(UIView *)self bounds];
          [(UIView *)self convertRect:v22 toView:?];
          [v17 setInitialSymbolAbsoluteRect:?];
        }

        v23 = UIApp;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __41__UIImageView__applyImageLayout_toLayer___block_invoke;
        v33[3] = &unk_1E70F6B40;
        v34 = v17;
        v35 = self;
        v36 = v18;
        v37 = v10;
        v24 = v18;
        [v23 _performBlockAfterCATransactionCommits:v33];
      }
    }

    else
    {
      [(UIImageView *)self _setupSymbolLayerForCurrentSymbolImageLayout:v6];
    }
  }

  else
  {
    [(UIImageView *)self _teardownRBSymbolLayerIfNeeded];
    v25 = [v6 contents];
    [v7 setContents:v25];

    [(UIImageView *)self _applyEffectsFromLayout:v6];
    if (v6)
    {
      [v6 contentsTransform];
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
    [v7 setContentsTransform:v29];
    [v6 contentsScaleFactor];
    [(UIImageView *)self setContentScaleFactor:?];
    if (qword_1ED497FF0 != -1)
    {
      dispatch_once(&qword_1ED497FF0, &__block_literal_global_709);
    }

    if (byte_1ED497FDA == 1)
    {
      imageViewFlags = self->_imageViewFlags;
      v10 = [(UIImageView *)self image];
      v27 = [v10 isSymbolImage];
      if ((imageViewFlags & 0x20) != 0)
      {
        if (v27)
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
        [v7 setContentsAlignsToPixels:v27];
      }
    }

    else
    {
      v10 = [(UIImageView *)self image];
      -[UIImageView _setLayerAllowsEdgeAntialiasing:](self, "_setLayerAllowsEdgeAntialiasing:", [v10 isSymbolImage]);
    }
  }
}

- (id)_effectiveSymbolContentTransitionContainerView
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &_UIImageViewSymbolContentTransitionContainerViewProviderKey);
    v3 = v2;
    if (!v2 || ((*(v2 + 16))(v2, a1), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v4 = [a1 _enclosingScrollableScrollerIncludingSelf];
      if (!v4)
      {
        v4 = [a1 window];
      }
    }

    v5 = v4;
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

- (void)_setupSymbolLayerForCurrentSymbolImageLayout:(id)a3
{
  storage = self->_storage;
  v5 = a3;
  v6 = [(_UIImageViewStorage *)storage animationPresetManager];
  [v6 discardPendingSymbolContentTransitions];

  [(UIImageView *)self _setupRBSymbolLayerWithSymbolImageLayout:v5];
  v7 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  [v7 activatePendingSymbolEffects];
}

- (BOOL)_needsBoldEffectForImage:(id)a3 symbolConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIImageView *)self _baseMultiplyColorWithImage:v7 symbolConfiguration:v6];
  v9 = [(UIImageView *)self _effectiveContentEffectsWithImage:v7 symbolConfiguration:v6];
  LOBYTE(self) = [(UIImageView *)self _needsBoldEffectForImage:v7 symbolConfiguration:v6 withBaseColor:v8 withEffects:v9];

  return self;
}

- (BOOL)_needsBoldEffectForImage:(id)a3 symbolConfiguration:(id)a4 withBaseColor:(id)a5 withEffects:(id)a6
{
  v9 = a3;
  v10 = [a6 count];
  v11 = [(UIView *)self traitCollection];
  v12 = [v11 legibilityWeight];

  if (v12 == 1)
  {
    v13 = (a5 != 0) & ~[v9 _suppressesAccessibilityHairlineThickening];
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

- (void)_setupRBSymbolLayerWithSymbolImageLayout:(id)a3
{
  v98 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIImageView *)self _rbSymbolLayer];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 animator];

    if (v7)
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v4 contentsSize];
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
      [v4 contentsScaleFactor];
      [v6 setContentsScale:?];
      [v4 contentsScaleFactor];
      [v6 setRasterizationScale:?];
      [MEMORY[0x1E6979518] setDisableActions:0];
      v22 = [v4 rbSymbolConfiguration];
      v23 = v22;
      if (v22)
      {
        v82 = v19;
        v83 = v17;
        v84 = v15;
        v85 = v13;
        v86 = v11;
        v87 = v9;
        v79 = v21;
        v80 = v20;
        v24 = *(v22 + 32);
        [v6 setStyleResolver:v24];

        WeakRetained = objc_loadWeakRetained((v23 + 16));
        v26 = [v6 animator];
        [v26 setGlyph:WeakRetained];

        v27 = *(v23 + 8);
        v28 = [v6 animator];
        [v28 setRenderingMode:v27];

        v29 = *(v23 + 12);
        v30 = [v6 animator];
        [v30 setRenderingOptions:v29];

        v31 = *(v23 + 40);
        v32 = [v6 animator];
        [v32 setVariableValue:v31];

        v33 = [v4 symbolLayerNeedsHorizontalFlip];
        v34 = [v6 animator];
        [v34 setFlipsRightToLeft:v33];

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

              v44 = [*(*(&v93 + 1) + 8 * i) unsignedIntValue];
              v45 = *(v23 + 32);
              v46 = v45[2](v45, v44, 0);
              v48 = v47;
              v50 = v49;
              v52 = v51;

              if (v46 != v39 || v48 != v40 || v50 != v41 || v52 != v42)
              {
                v56 = [v6 animator];
                *&v57 = v46;
                *&v58 = v48;
                *&v59 = v50;
                *&v60 = v52;
                [v56 setColor:v44 forStyle:{v57, v58, v59, v60}];
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
        if (v4)
        {
          v88 = *&v91.d;
          [v4 symbolLayerPositionTransform];
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
        v71 = [v6 animator];
        [v71 setTransform:{v67, d, tx, v70}];

        v72 = [(UIImageView *)self _effectiveSymbolContentTransitionContainerView];
        if (v72)
        {
          [(UIView *)self convertPoint:v72 toView:v80, v79];
          v74 = v73;
          v76 = v75;
          v77 = [v6 animator];
          [v77 setPosition:{v74, v76}];

          v78 = [v6 animator];
          [v78 setPresentationPosition:{v74, v76}];
        }
      }
    }
  }
}

- (void)_applyEffectsFromLayout:(id)a3
{
  v15 = a3;
  v4 = [v15 contentEffects];
  [(UIView *)self mt_setContentEffects:v4];
  v5 = [v15 contentsMultiplyColor];
  v6 = [(UIView *)self _overrideTintColor];
  v7 = v6;
  if (v6)
  {
    v8 = v6;

    v5 = v8;
  }

  v9 = [v15 contentDrawMode];
  if (v9)
  {
    v10 = v9;
    if (!v5)
    {
      v5 = +[UIColor clearColor];
    }

    v11 = [(UIImageView *)self _colorByApplyingDrawMode:v10 toColor:v5];

    v5 = v11;
  }

  v12 = [(UIView *)self layer];
  if (v5 && ![(UIImageView *)self isAnimating])
  {
    v13 = [v5 CGColor];
    v14 = MEMORY[0x1E6979E30];
  }

  else
  {
    v13 = 0;
    v14 = MEMORY[0x1E6979E38];
  }

  [v12 setContentsMultiplyColor:v13];
  [v12 setContentsSwizzle:*v14];
}

- (BOOL)_setImageViewContentsForAnimatedImage:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35 = [(UIView *)self layer];
  [(UIView *)self bounds];
  v36 = v4;
  v5 = [v4 images];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v42 = *MEMORY[0x1E6979E38];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  v39 = self;
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
        v12 = [MEMORY[0x1E695DFB0] null];

        if (v11 != v12)
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
          v24 = [v18 contentsMultiplyColor];

          if (v24)
          {
            v25 = [v18 contentsMultiplyColor];

            v23 = v42;
            v42 = v37;
          }

          else
          {
            v25 = +[UIColor whiteColor];
          }

          [v40 addObject:{objc_msgSend(v25, "CGColor")}];
          if (v9 == 0.0)
          {
            [v18 contentsScaleFactor];
            v9 = v26;
          }

          v6 = v20;
          self = v39;
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
    aBlock[4] = v35;
    v30 = _Block_copy(aBlock);
    v30[2](v30, @"UIImageAnimationContents", @"contents", v6);
    v30[2](v30, @"UIImageAnimationContentsTransform", @"contentsTransform", v41);
    v30[2](v30, @"UIImageAnimationContentsMultiplyColor", @"contentsMultiplyColor", v40);
    v31 = [v6 firstObject];
    [v35 setContents:v31];

    v32 = [v41 firstObject];
    v33 = v32;
    if (v32)
    {
      [v32 CGAffineTransformValue];
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
    [v35 setContentsTransform:&v48];

    [v35 setContentsMultiplyColor:{objc_msgSend(v40, "firstObject")}];
    [v35 setContentsSwizzle:v42];
    _setContentStretchForImage(v39, v36);
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

- (void)_setLayerAllowsEdgeAntialiasing:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self layer];
  v6 = [v5 allowsEdgeAntialiasing] ^ ((*&self->_imageViewFlags & 0x80) == 0);

  imageViewFlags = self->_imageViewFlags;
  if (!v6)
  {
    imageViewFlags |= 0x100u;
  }

  if (v3)
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
    v9 = [(UIView *)self layer];
    [v9 setAllowsEdgeAntialiasing:v3];
  }
}

- (UIEdgeInsets)_additionalAlignmentRectInsetsForRenderingSource:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [(UIImageView *)self _edgeInsetsForEffectsForImage:v4];
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

- (id)_effectsForRenderingSource:(id)a3 size:(CGSize)a4 symbolConfiguration:(id)a5 renditionContext:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_13;
  }

  v12 = v9;
  v13 = [(UIImageView *)self _baseMultiplyColorWithImage:v12 symbolConfiguration:v10 shouldResolveDynamicColors:0];
  v14 = [v12 _colorForFlattening];
  if (v13 | v14)
  {
    if ([(UIImageView *)self _shouldTreatImageAsTemplate:v12 symbolConfiguration:v10])
    {
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }
    }

    else
    {
      v15 = v14;
      if (!v14)
      {
        v20 = 0;
        goto LABEL_11;
      }
    }

    v20 = v15;
LABEL_11:
    v21 = [(_UIImageContentRenditionContext *)v11 traitCollectionForResolvingDynamicColors];
    v19 = [v20 resolvedColorWithTraitCollection:v21];

    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:
  v18 = [(UIImageView *)self _effectiveContentEffectsWithImage:v12 symbolConfiguration:v10];
  v17 = [(UIImageView *)self drawMode];
  v16 = [(UIImageView *)self _needsBoldEffectForImage:v12 symbolConfiguration:v10 withBaseColor:v19 withEffects:v18];

LABEL_13:
  v22 = [_UIImageContentRenditionEffects effectsWithTintColor:v19 visualEffects:v18 drawMode:v17 bold:v16];

  return v22;
}

- (id)_renditionForSource:(id)a3 effects:(id)a4 size:(CGSize)a5 symbolConfiguration:(id)a6 withContentProvider:(id)a7
{
  height = a5.height;
  width = a5.width;
  v66[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [_UIImageContentRendition renditionWithContentProvider:v16];
    goto LABEL_40;
  }

  v63 = v13;
  v62 = [v15 traitCollection];
  if (!v14)
  {
    v19 = 0;
    v22 = 0;
    v61 = 0;
    v31 = 0;
LABEL_13:
    v32 = v31;
    if ([v32 count])
    {
      if (v14)
      {
        v33 = v14[3];

        if (v33)
        {
          v34 = v14[3];
          v14[3] = 0;
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
      if (v14)
      {
LABEL_20:
        v35 = *(v14 + 2);
        goto LABEL_21;
      }
    }

    v35 = 0;
LABEL_21:
    v36 = v35;

    if (v36)
    {
      if (v14)
      {
        v37 = v14[3];
        v38 = *(v14 + 2);
        v39 = [(UIImageView *)self _colorByApplyingDrawMode:v37 toColor:v38];
        [(UIBackgroundConfiguration *)v14 _setCustomView:v39];

        v14[3] = 0;
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
      if (v14 && v14[3])
      {
        v60 = v34;
        if (!v19)
        {
          v40 = [(_UIImageContentProvider *)v16 CGImageProvider];
          v19 = [UIImage imageWithCGImage:v40[2]()];
        }

        v41 = [v19 CGImage];
        [v19 scale];
        v43 = v42;
        v44 = CGImageGetWidth(v41) / v42;
        v45 = CGImageGetHeight(v41) / v43;
        v46 = +[UIGraphicsImageRendererFormat preferredFormat];
        [v46 setScale:v43];
        v47 = [[UIGraphicsImageRenderer alloc] initWithSize:v46 format:v44, v45];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __88__UIImageView__renditionForSource_effects_size_symbolConfiguration_withContentProvider___block_invoke;
        v65[3] = &unk_1E7106F60;
        *&v65[5] = v44;
        *&v65[6] = v45;
        v65[7] = v41;
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
    v51 = [(_UIImageContentProvider *)v16 providerWithCGImageProvider:v64];

    v16 = v51;
LABEL_32:
    if (v14)
    {
      v52 = *(v14 + 2);
      v53 = *(v14 + 3);
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    v54 = v53;
    v24 = [_UIImageContentRendition renditionWithContentProvider:v16 color:v52 effects:v54 drawMode:v34];

    if (v22)
    {
      v21 = v62;
      v25 = v63;
      if (v14)
      {
        v55 = *(v14 + 8);
      }

      else
      {
        v55 = 0;
      }

      v56 = [(_UIImageContentRenditionCacheKey *)width keyWithSize:_UIImageContentRenditionCacheKey unresolvedTintColor:v22 traitCollection:v62 bold:v55 & 1 drawMode:v61];
      [v63 _cacheRendition:v24 forKey:v56];
    }

    else
    {
      v21 = v62;
      v25 = v63;
    }

    goto LABEL_39;
  }

  v17 = v14[3];
  if (*(v14 + 8) != 1)
  {
    v61 = v14[3];
    v22 = 0;
    v19 = 0;
LABEL_12:
    v31 = *(v14 + 3);
    goto LABEL_13;
  }

  v18 = *(v14 + 2);

  if (!v18)
  {
    v61 = v17;
    v22 = 0;
    v19 = 0;
LABEL_11:
    *(v14 + 8) = 0;
    goto LABEL_12;
  }

  v59 = self;
  v66[0] = @"_UIKitBoldTintStyle";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  v20 = *(v14 + 2);
  v21 = v62;
  v22 = [(_UIImageContentRenditionCacheKey *)width keyWithSize:_UIImageContentRenditionCacheKey unresolvedTintColor:v20 traitCollection:v62 bold:*(v14 + 8) drawMode:v17];

  v23 = [v63 _cachedRenditionForKey:v22];
  if (!v23)
  {
    v61 = v17;
    v26 = [(_UIImageContentProvider *)v16 CGImageProvider];
    v27 = [UIImage imageWithCGImage:v26[2]()];
    v28 = *(v14 + 2);
    v29 = [v27 _imageWithStylePresets:v19 tintColor:v28 traitCollection:v62];

    v30 = *(v14 + 2);
    [(UIBackgroundConfiguration *)v14 _setCustomView:?];

    v22 = v30;
    v19 = v29;
    self = v59;
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

- (UIImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIImageView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (UIImageView)initWithCoder:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = UIImageView;
  v5 = [(UIView *)&v61 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    _UIImageViewCommonInit(v5);
    v7 = [v4 decodeObjectForKey:@"UIImage"];
    if (v7)
    {
      v8 = [(UIView *)v6 layer];
      [v8 contentsCenter];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      _setContentStretchForImage(v6, v7);
      v17 = [(UIView *)v6 layer];
      [v17 contentsCenter];
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
        v23 = [(UIView *)v6 layer];
        [v23 setContentsCenter:{v10, v12, v14, v16}];
      }
    }

    v24 = [v4 decodeObjectForKey:@"UIHighlightedImage"];
    v25 = [v4 decodeObjectForKey:@"UIAnimationImages"];
    v26 = [v4 decodeObjectForKey:@"UIHighlightedAnimationImages"];
    [v4 decodeDoubleForKey:@"UIAnimationDuration"];
    v28 = v27;
    v59 = [v4 decodeIntegerForKey:@"UIAnimationRepeatCount"];
    v29 = [v4 decodeBoolForKey:@"UIHighlighted"];
    v30 = [v4 decodeBoolForKey:@"UIAdjustsImageSizeForAccessibilityContentSizeCategory"];
    v31 = [v4 decodeObjectForKey:@"UIPreferredSymbolConfiguration"];
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
    v36 = [v35 CIImage];

    if (v36)
    {
      v37 = [v35 _representsCIImageWhichSupportsIOSurfaceRendering];

      if (!v37)
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
        v41 = [v40 contents];

        v42 = v41;
        if (v41)
        {
LABEL_16:
          v43 = [(UIView *)v6 layer];
          [v43 setContents:v42];

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

    v42 = [v35 CGImage];
    v41 = 0;
    goto LABEL_16;
  }

LABEL_24:

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIImageView;
  [(UIView *)&v14 encodeWithCoder:v4];
  v5 = [(UIImageView *)self image];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"UIImage"];
  }

  v6 = [(UIImageView *)self highlightedImage];
  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"UIHighlightedImage"];
  }

  v7 = [(_UIImageViewStorage *)self->_storage animationImages];

  if (v7)
  {
    v8 = [(_UIImageViewStorage *)self->_storage animationImages];
    [v4 encodeObject:v8 forKey:@"UIAnimationImages"];
  }

  v9 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];

  if (v9)
  {
    v10 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
    [v4 encodeObject:v10 forKey:@"UIHighlightedAnimationImages"];
  }

  [(_UIImageViewStorage *)self->_storage animationDuration];
  if (v11 != 0.0)
  {
    [(_UIImageViewStorage *)self->_storage animationDuration];
    [v4 encodeDouble:@"UIAnimationDuration" forKey:?];
  }

  if ([(_UIImageViewStorage *)self->_storage animationRepeatCount])
  {
    [v4 encodeInteger:-[_UIImageViewStorage animationRepeatCount](self->_storage forKey:{"animationRepeatCount"), @"UIAnimationRepeatCount"}];
  }

  if ([(_UIImageViewStorage *)self->_storage isHighlighted])
  {
    [v4 encodeDouble:@"UIHighlighted" forKey:{-[_UIImageViewStorage isHighlighted](self->_storage, "isHighlighted")}];
  }

  if ([(_UIImageViewStorage *)self->_storage adjustsImageSizeForAccessibilityContentSizeCategory])
  {
    [v4 encodeBool:-[_UIImageViewStorage adjustsImageSizeForAccessibilityContentSizeCategory](self->_storage forKey:{"adjustsImageSizeForAccessibilityContentSizeCategory"), @"UIAdjustsImageSizeForAccessibilityContentSizeCategory"}];
  }

  v12 = [(_UIImageViewStorage *)self->_storage preferredSymbolConfiguration];

  if (v12)
  {
    v13 = [(_UIImageViewStorage *)self->_storage preferredSymbolConfiguration];
    [v4 encodeObject:v13 forKey:@"UIPreferredSymbolConfiguration"];
  }
}

- (void)_setImage:(id)a3 invalidatingPendingSymbolTransitions:(BOOL)a4
{
  v4 = a4;
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self || (*(&self->super._viewFlags + 1) & 8) == 0)
  {
    if (v4)
    {
      v7 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
      v8 = [v7 pendingSymbolContentTransitionForSettingSymbolImage:v6];
      v9 = v8 != 0;

      v10 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
      [v10 discardPendingSymbolContentTransitions];
    }

    else
    {
      v9 = 0;
    }

    v11 = [(UIImageView *)self _activeImage];
    v12 = [(_UIImageViewStorage *)self->_storage image];
    v13 = v6;
    v14 = v12;
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
        if (_UISolariumEnabled() && (!v13 || !v11))
        {
          [(UIView *)self setNeedsUpdateProperties];
        }

        v17 = [v13 _isIconImage];
        v18 = [(_UIImageViewStorage *)self->_storage systemIconAppearanceTraitRegistration];

        if (v17)
        {
          if (!v18)
          {
            v19 = objc_opt_self();
            v23[0] = v19;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
            v21 = [(UIView *)self registerForTraitChanges:v20 withAction:sel__systemIconAppearanceDidChange];
            [(_UIImageViewStorage *)self->_storage setSystemIconAppearanceTraitRegistration:v21];
          }
        }

        else if (v18)
        {
          v22 = [(_UIImageViewStorage *)self->_storage systemIconAppearanceTraitRegistration];
          [(UIView *)self unregisterForTraitChanges:v22];

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
    if (![(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:v11])
    {
      [(UIImageView *)self _updateImageViewForOldImage:v11 newImage:v13];
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (void)setHighlightedImage:(UIImage *)highlightedImage
{
  v4 = highlightedImage;
  v5 = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(_UIImageViewStorage *)self->_storage highlightedImage];
  }

  v8 = v7;

  v9 = [(_UIImageViewStorage *)self->_storage highlightedImage];
  v16 = v4;
  v10 = v9;
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

    v12 = [(_UIImageViewStorage *)self->_storage highlightedImage];

    if (v12)
    {
      v13 = [(_UIImageViewStorage *)self->_storage highlightedImage];
      [(UIImageView *)self _clearPretiledImageCacheForImage:v13];
    }

    v14 = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
    [(UIImageView *)self _clearPretiledImageCacheForImage:v14];

    [(UIImageView *)self _updatePretiledImageCacheForImage:v16];
    [(_UIImageViewStorage *)self->_storage setHighlightedImage:v16];
    [(_UIImageViewStorage *)self->_storage setResolvedHighlightedImage:0];
    *&self->_imageViewFlags &= ~1u;
  }

LABEL_14:
  if ([(UIImageView *)self isHighlighted])
  {
    v15 = [(UIImageView *)self _currentImage];

    if (!v15)
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
    v5 = [(UIImageView *)self _currentImage];
    v6 = [(UIImageView *)self _displayImageAsLayered:v5];

    if (v6)
    {
      v7 = [(UIImageView *)self _layeredImageContainer];
      [v7 setPressed:v3];
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

- (void)_setViewGeometry:(CGRect)a3 forMetric:(int)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  if (a4 == 1)
  {
    v32 = self;
    v14 = &selRef_setBounds_;
    v15 = &v32;
    goto LABEL_5;
  }

  if (!a4)
  {
    v33 = self;
    v14 = &selRef_setFrame_;
    v15 = &v33;
LABEL_5:
    v15[1] = UIImageView;
    objc_msgSendSuper2(v15, *v14, x, y, width, height, v32);
  }

  [(UIImageView *)self _updateRBSymbolLayerPositionIfNeededForContentTransitionPendingLayoutPass];
  v16 = [(UIImageView *)self _currentImage];
  v17 = [(UIImageView *)self _currentHighlightedImage];
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

    v18 = [v16 content];
    if ([v18 canScaleImageToTargetResolution])
    {
    }

    else
    {
      v19 = [v17 content];
      v20 = [v19 canScaleImageToTargetResolution];

      if (!v20)
      {
        v22 = [v16 content];
        if ([v22 isCGImage])
        {
        }

        else
        {
          v23 = [v17 content];
          v24 = [v23 isCGImage];

          if (!v24)
          {
            goto LABEL_9;
          }
        }

        v25 = [(UIImageView *)self _recomputePretilingState];
        v26 = v25;
        if (v25)
        {
          [(UIImageView *)self _updateState];
        }

        v27 = [(UIView *)self layer];
        v28 = [v27 contentsScaling];
        v29 = *MEMORY[0x1E6979670];

        [(UIView *)self bounds];
        if ((((v28 != v29) ^ [v16 _isTiledWhenStretchedToSize:{v30, v31}]) & 1) == 0)
        {
          _setContentStretchForImage(self, v16);
        }

        if (v26)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }
    }

    v21 = [(UIImageView *)self _animatesContents];
    [(UIImageView *)self _setAnimatesContents:1];
    [(UIImageView *)self _updateState];
    [(UIImageView *)self _setAnimatesContents:v21];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)setContentScaleFactor:(double)a3
{
  v6.receiver = self;
  v6.super_class = UIImageView;
  [(UIView *)&v6 setContentScaleFactor:?];
  v5 = [(UIImageView *)self _layeredImageContainer];
  [v5 setContentScaleFactor:a3];
}

- (void)setContentMode:(int64_t)a3
{
  v5 = [(UIView *)self contentMode];
  v6.receiver = self;
  v6.super_class = UIImageView;
  [(UIView *)&v6 setContentMode:a3];
  if (v5 != a3)
  {
    *&self->_imageViewFlags &= ~1u;
    [(UIImageView *)self _imageContentParametersDidChange];
    [(UIImageView *)self _baselineOffsetParametersDidChangeHasBaselinePropertyChanged:0];
    [(UIImageView *)self _updateState];
  }
}

- (void)setCenter:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = UIImageView;
  [(UIView *)&v4 setCenter:a3.x, a3.y];
  [(UIImageView *)self _updateRBSymbolLayerPositionIfNeededForContentTransitionPendingLayoutPass];
}

- (void)setHidden:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UIImageView;
  [(UIView *)&v5 setHidden:?];
  if (!a3)
  {
    [(UIImageView *)self _mainQ_beginLoadingIfApplicable];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  v4 = [(UIImageView *)self animationImages:a3.width];
  v5 = [(UIImageView *)self highlightedAnimationImages];
  v6 = [(UIImageView *)self _currentImage];
  v7 = [(UIImageView *)self _currentHighlightedImage];
  v8 = [v4 count];
  v9 = v4;
  if (v8 || (v10 = [v5 count], v9 = v5, v10))
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
    v21 = v6;
    if (v6 || (v21 = v7) != 0)
    {
      v11 = v21;
      goto LABEL_4;
    }
  }

  v22 = [(UIImageView *)self _placeholderView];
  v17 = *MEMORY[0x1E695F060];
  if (v22)
  {
    v23 = v22;
    [v22 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
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

- (void)_baselineOffsetParametersDidChangeHasBaselinePropertyChanged:(BOOL)a3
{
  if ((*(&self->super._viewFlags + 7) & 2) != 0)
  {
    v4 = a3;
    v11 = [(UIView *)self _layoutEngine];
    if (v11)
    {
      if (v4)
      {
        v6 = [MEMORY[0x1E696AD88] defaultCenter];
        [v6 postNotificationName:@"_UIViewHasBaselinePropertyChanged" object:self];
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

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIImageView *)self _currentImage];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(UIImageView *)self _currentHighlightedImage];
  }

  v9 = v8;

  if ([v9 hasBaseline])
  {
    v10 = [(UIImageView *)self _layoutForImage:v9 inSize:1 cachePerSize:1 forBaselineOffset:width, height];
    [(UIImageView *)self alignmentRectInsets];
    v13 = v12;
    if (v10)
    {
      v14 = v10[9];
    }

    else
    {
      v14 = 0.0;
    }

    v15 = v14 - v11;
    [v10 baselineOffsetFromBottom];
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

- (id)_imageContentGuideAllowingCreation:(BOOL)a3
{
  v3 = a3;
  v19[4] = *MEMORY[0x1E69E9840];
  v5 = [(_UIImageViewStorage *)self->_storage imageContentGuide];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
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
    v9 = self;
    v10 = [v8 constraintWithItem:v7 attribute:3 relatedBy:0 toItem:v9 attribute:3];
    v11 = [MEMORY[0x1E69977A0] constraintWithItem:v7 attribute:1 relatedBy:0 toItem:v9 attribute:1];
    v12 = [MEMORY[0x1E69977A0] constraintWithItem:v9 attribute:4 relatedBy:0 toItem:v7 attribute:4];
    v13 = [MEMORY[0x1E69977A0] constraintWithItem:v9 attribute:2 relatedBy:0 toItem:v7 attribute:2];
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

    [(UIImageView *)v9 _imageContentParametersDidChange];
    v15 = MEMORY[0x1E69977A0];
    v16 = [(UILayoutGuide *)v7 _systemConstraints];
    [v15 activateConstraints:v16];
  }

  v17 = [(_UIImageViewStorage *)self->_storage imageContentGuide];

  return v17;
}

- (void)_setGuardAgainstDegenerateBaselineCalculation:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_imageViewFlags = *&self->_imageViewFlags & 0xFDFF | v3;
}

- (id)_symbolConfigurationForImage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cachedSymbolConfigurationImage);
  v6 = WeakRetained;
  cachedSymbolConfiguration = self->_cachedSymbolConfiguration;
  if (cachedSymbolConfiguration)
  {
    v8 = WeakRetained == v4;
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
    v10 = [v4 _automaticSymbolConfiguration];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;
    v30 = v13;

    v14 = [(UIImageView *)self preferredSymbolConfiguration];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v9;
    }

    v17 = v16;

    v18 = [(UIImageView *)self _overridingSymbolConfiguration];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v9;
    }

    v21 = v20;

    v22 = [v13 configurationByApplyingConfiguration:v17];
    v23 = [v4 symbolConfiguration];
    v24 = [v22 configurationByApplyingConfiguration:v23];

    v25 = [v24 configurationByApplyingConfiguration:v21];

    v26 = [(UIImageView *)self _effectiveImageViewTraitCollectionForResolvingImages];
    v27 = [v26 imageConfiguration];
    v28 = [v25 configurationByApplyingConfiguration:v27];

    objc_storeStrong(&self->_cachedSymbolConfiguration, v28);
    objc_storeWeak(&self->_cachedSymbolConfigurationImage, v4);
  }

  return v28;
}

- (void)setPreferredSymbolConfiguration:(UIImageSymbolConfiguration *)preferredSymbolConfiguration
{
  v4 = preferredSymbolConfiguration;
  v5 = [(_UIImageViewStorage *)self->_storage preferredSymbolConfiguration];
  v6 = v4;
  v9 = v6;
  if (v5 == v6)
  {

LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(UIImageSymbolConfiguration *)v5 isEqual:v6];

  v8 = v9;
  if (!v7)
  {
LABEL_8:
    v5 = [(UIImageView *)self _activeImage];
    [(_UIImageViewStorage *)self->_storage setPreferredSymbolConfiguration:v9];
    [(UIImageView *)self _invalidateResolvedImages];
    [(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:v5];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_setOverridingSymbolConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageViewStorage *)self->_storage overridingSymbolConfiguration];
  v6 = v4;
  v9 = v6;
  if (v5 == v6)
  {

LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  v8 = v9;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v5 = [(UIImageView *)self _activeImage];
    [(_UIImageViewStorage *)self->_storage setOverridingSymbolConfiguration:v9];
    [(UIImageView *)self _invalidateResolvedImages];
    [(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:v5];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_setPreferredSymbolVariant:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageViewStorage *)self->_storage preferredSymbolVariant];
  v6 = v4;
  v9 = v6;
  if (v5 == v6)
  {

LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  v8 = v9;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v5 = [(UIImageView *)self _activeImage];
    [(_UIImageViewStorage *)self->_storage setPreferredSymbolVariant:v9];
    [(UIImageView *)self _invalidateResolvedImages];
    [(UIImageView *)self _resolveImagesWithPreviouslyDisplayedImage:v5];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = UIImageView;
    [(UIView *)&v7 setTranslatesAutoresizingMaskIntoConstraints:1];
  }

  else
  {
    v4 = [(UIImageView *)self _currentImage];
    if (v4)
    {
      v5 = [(UIView *)self translatesAutoresizingMaskIntoConstraints];
    }

    else
    {
      v6 = [(UIImageView *)self _currentHighlightedImage];
      if (v6)
      {
        v5 = [(UIView *)self translatesAutoresizingMaskIntoConstraints];
      }

      else
      {
        v5 = 0;
      }
    }

    v7.receiver = self;
    v7.super_class = UIImageView;
    [(UIView *)&v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v5)
    {
      [(UIView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIImageView *)self _activeImage];
  v13 = v8;
  if (v8)
  {
    [(UIView *)self bounds];
    [v13 drawInRect:17 blendMode:? alpha:?];
    v8 = v13;
  }

  if ([(UIImageView *)self _needsImageEffectsForImage:v8])
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

  v5 = [(_UIImageViewStorage *)self->_storage animationImages];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

LABEL_25:
    goto LABEL_26;
  }

  if (!v6 || !v5)
  {

    goto LABEL_10;
  }

  v8 = [(NSArray *)v5 isEqual:v6];

  if ((v8 & 1) == 0)
  {
LABEL_10:
    v5 = [(_UIImageViewStorage *)self->_storage animationImages];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(v5);
          }

          [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v28 + 1) + 8 * i)];
        }

        v10 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
  v19 = [(UIImageView *)self _currentImage];
  if (!v19)
  {
    if (![(NSArray *)v7 count])
    {
      goto LABEL_30;
    }

    v19 = [(NSArray *)v7 objectAtIndex:0];
    [v19 scale];
    [(UIImageView *)self setContentScaleFactor:?];
  }

LABEL_30:
  v20 = [(UIImageView *)self _currentImage];
  if (v20)
  {
    [(UIView *)self setOpaque:0];
  }

  else
  {
    v21 = [(UIImageView *)self animationImages];
    if (v21)
    {
      [(UIView *)self setOpaque:0];
    }

    else
    {
      v22 = [(UIImageView *)self _currentHighlightedImage];
      if (v22)
      {
        [(UIView *)self setOpaque:0];
      }

      else
      {
        v23 = [(UIImageView *)self highlightedAnimationImages];
        [(UIView *)self setOpaque:v23 == 0];
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

  v5 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_27;
  }

  if (v6 && v5)
  {
    v8 = [(NSArray *)v5 isEqual:v6];

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
  v9 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
          objc_enumerationMutation(v9);
        }

        [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v32 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
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

  v20 = [(_UIImageViewStorage *)self->_storage animationImages];
  v21 = [v20 count];

  if (!v21)
  {
    [(UIView *)self invalidateIntrinsicContentSize];
  }

LABEL_27:
  if ([(UIImageView *)self isHighlighted])
  {
    [(UIImageView *)self _updateState];
  }

  v22 = [(UIImageView *)self _currentImage];
  if (!v22)
  {
    v22 = [(_UIImageViewStorage *)self->_storage animationImages];
    if (![v22 count])
    {
      v23 = [(NSArray *)v7 count];

      if (!v23)
      {
        goto LABEL_34;
      }

      v22 = [(NSArray *)v7 objectAtIndex:0];
      [v22 scale];
      [(UIImageView *)self setContentScaleFactor:?];
    }
  }

LABEL_34:
  v24 = [(UIImageView *)self _currentImage];
  if (v24)
  {
    [(UIView *)self setOpaque:0];
  }

  else
  {
    v25 = [(UIImageView *)self animationImages];
    if (v25)
    {
      [(UIView *)self setOpaque:0];
    }

    else
    {
      v26 = [(UIImageView *)self _currentHighlightedImage];
      if (v26)
      {
        [(UIView *)self setOpaque:0];
      }

      else
      {
        v27 = [(UIImageView *)self highlightedAnimationImages];
        [(UIView *)self setOpaque:v27 == 0];
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

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (!-[UIImageView isAnimating](self, "isAnimating") && !CGColorEqualToColor([v4 CGColor], -[UIView _backgroundCGColor](self, "_backgroundCGColor")))
  {
    v7.receiver = self;
    v7.super_class = UIImageView;
    [(UIView *)&v7 setBackgroundColor:v4];
    v5 = [(UIImageView *)self _currentImage];
    if (v5)
    {

LABEL_5:
      [(UIImageView *)self _updateState];
      goto LABEL_8;
    }

    if ([(UIImageView *)self isHighlighted])
    {
      v6 = [(UIImageView *)self _currentHighlightedImage];

      if (v6)
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

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5 = [(UIView *)self semanticContentAttribute];
  v8.receiver = self;
  v8.super_class = UIImageView;
  [(UIView *)&v8 setSemanticContentAttribute:a3];
  if (v5 != a3)
  {
    v6 = [(UIImageView *)self image];
    v7 = [v6 flipsForRightToLeftLayoutDirection];

    if (v7)
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if (-[UIImageView _animatesContents](self, "_animatesContents") && ([v4 isEqualToString:@"contents"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"contentsTransform") & 1) != 0)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (!dyld_program_sdk_at_least())
  {
LABEL_11:
    v8.receiver = self;
    v8.super_class = UIImageView;
    v5 = [(UIView *)&v8 _shouldAnimatePropertyWithKey:v4];
    goto LABEL_12;
  }

  if (+[_UIHDRUsageCoordinator useCALayerDynamicRange])
  {
    if ([v4 isEqualToString:@"contentsEDRStrength"])
    {
      goto LABEL_4;
    }

    v6 = @"contentsCDRStrength";
  }

  else
  {
    v6 = @"contentsMaximumDesiredEDR";
  }

  if (([v4 isEqualToString:v6] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v5 = 1;
LABEL_12:

  return v5;
}

- (id)_initialValueForKey:(id)a3
{
  v4 = a3;
  if ([@"imageDynamicRange" isEqualToString:v4])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIImageView imageDynamicRange](self, "imageDynamicRange")}];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIImageView;
    v5 = [(UIView *)&v8 _initialValueForKey:v4];
  }

  v6 = v5;

  return v6;
}

- (void)_generateDeferredAnimations:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIImageView;
  [(UIView *)&v14 _generateDeferredAnimations:v4];
  objc_opt_self();
  if (dyld_program_sdk_at_least())
  {
    v5 = [v4 objectForKeyedSubscript:@"imageDynamicRange"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 animationFrames];
      v8 = [v7 count];

      if ((+[_UIHDRUsageCoordinator useCALayerDynamicRange]& 1) == 0)
      {
        v9 = [(UIView *)self layer];
        [v9 setWantsExtendedDynamicRangeContent:1];
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
  v6 = [v4 options];
  [(UIImageView *)self addSymbolEffect:v5 options:v6];
}

- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated completion:(UISymbolEffectCompletion)completionHandler
{
  v7 = animated;
  v11 = symbolEffect;
  v12 = options;
  v13 = completionHandler;
  if (![(NSSymbolEffect *)v11 ui_isSupportedByImageView])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UIImageView.m" lineNumber:2719 description:@"Unsupported symbol effect added to UIImageView."];
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
  v18 = [(UIImageView *)self image];
  v19 = [v18 isSymbolImage];

  if ((v19 & 1) == 0)
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

  v21 = [(NSSymbolEffectOptions *)v12 copy];
  v12 = v21;
  if (!v21)
  {
    v12 = [MEMORY[0x1E6982278] options];
  }

  v22 = [(_UIImageViewStorage *)self->_storage animationPresetManager];

  if (!v22)
  {
    v23 = [_UIImageViewSymbolAnimationPresetManager managerForClient:self];
    [(_UIImageViewStorage *)self->_storage setAnimationPresetManager:v23];
  }

  v24 = [(UIImageView *)self _rbSymbolLayer];

  v25 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  v26 = v25;
  if (v24)
  {
    [v25 addActiveSymbolEffect:v20 options:v12 animated:v7 completion:v13];
  }

  else
  {
    [v25 addPendingSymbolEffect:v20 options:v12 animated:v7 completion:v13];

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
  v6 = [v4 options];
  [(UIImageView *)self removeSymbolEffectOfType:v5 options:v6];
}

- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated completion:(UISymbolEffectCompletion)completionHandler
{
  v7 = animated;
  v11 = symbolEffect;
  v12 = options;
  v13 = completionHandler;
  if (![(NSSymbolEffect *)v11 ui_isSupportedByImageView])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UIImageView.m" lineNumber:2778 description:@"Unsupported symbol effect removed from UIImageView."];
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

  v18 = [(NSSymbolEffectOptions *)v12 copy];
  v12 = v18;
  if (!v18)
  {
    v12 = [MEMORY[0x1E6982278] options];
  }

  v19 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  v20 = [v19 removeSymbolEffectsOfType:v17 options:v12 animated:v7 completion:v13];

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
  v3 = [MEMORY[0x1E6982278] options];
  [(UIImageView *)self removeAllSymbolEffectsWithOptions:v3];
}

- (void)removeAllSymbolEffectsWithOptions:(NSSymbolEffectOptions *)options animated:(BOOL)animated
{
  v4 = animated;
  storage = self->_storage;
  v6 = options;
  v7 = [(_UIImageViewStorage *)storage animationPresetManager];
  [v7 removeAllSymbolEffectsWithOptions:v6 animated:v4];
}

- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition
{
  v6 = MEMORY[0x1E6982278];
  v7 = transition;
  v8 = symbolImage;
  v9 = [v6 options];
  [(UIImageView *)self setSymbolImage:v8 withContentTransition:v7 options:v9];
}

- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition options:(NSSymbolEffectOptions *)options completion:(UISymbolEffectCompletion)completionHandler
{
  v11 = symbolImage;
  v12 = transition;
  v13 = options;
  v14 = completionHandler;
  if (![(NSSymbolContentTransition *)v12 ui_isSupportedByImageView])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIImageView.m" lineNumber:2837 description:@"Unsupported symbol content transition added to UIImageView."];
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

  v17 = [(UIImageView *)self image];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [(UIImageView *)self image];
  v20 = [v19 isSymbolImage];
  if (!v11 || !v20 || ![(UIImage *)v11 isSymbolImage])
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

  v22 = [(UIImageView *)self image];
  v23 = v11;
  v24 = v23;
  if (v22 == v23)
  {

    goto LABEL_17;
  }

  if (v22)
  {
    v25 = [(UIImage *)v22 isEqual:v23];

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

  v27 = [(NSSymbolEffectOptions *)v13 copy];
  v13 = v27;
  if (!v27)
  {
    v13 = [MEMORY[0x1E6982278] options];
  }

  v28 = [(_UIImageViewStorage *)self->_storage animationPresetManager];

  if (!v28)
  {
    v29 = [_UIImageViewSymbolAnimationPresetManager managerForClient:self];
    [(_UIImageViewStorage *)self->_storage setAnimationPresetManager:v29];
  }

  v30 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
  v31 = [(UIImageView *)self _currentImage];
  [v30 addPendingSymbolContentTransition:v26 fromSymbolImage:v31 toSymbolImage:v24 options:v13 completion:v14];

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

- (void)_addSymbolEffect:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 _nsSymbolEffectRepresentation];
  v6 = [MEMORY[0x1E6982278] options];
  [(UIImageView *)self addSymbolEffect:v7 options:v6 animated:v4];
}

- (void)_removeSymbolEffect:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 _nsSymbolEffectRepresentation];
  v6 = [MEMORY[0x1E6982278] options];
  [(UIImageView *)self removeSymbolEffectOfType:v7 options:v6 animated:v4];
}

- (void)_removeAllSymbolEffectsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E6982278] options];
  [(UIImageView *)self removeAllSymbolEffectsWithOptions:v5 animated:v3];
}

- (void)_setSymbolImage:(id)a3 withSymbolTransition:(id)a4
{
  v6 = a3;
  v7 = [a4 _nsSymbolContentTransitionRepresentation];
  [(UIImageView *)self setSymbolImage:v6 withContentTransition:v7];
}

- (void)animationPresetManager:(id)a3 addEffect:(id)a4 options:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v16 = [(UIImageView *)self _rbSymbolLayer];
  v12 = [v16 animator];
  v13 = [(UIImageView *)self _animationConfigurationForEffect:v11 forAddingEffect:1 options:v10 clientCompletionHandler:v9 needsAnimationCompletion:1];

  v14 = [v13 animation];
  v15 = [v13 options];
  [v12 addAnimation:v14 options:v15];
}

- (void)animationPresetManager:(id)a3 removeEffect:(id)a4 wasActive:(BOOL)a5 options:(id)a6 animated:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v11 = a5;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = [(UIImageView *)self _rbSymbolLayer];
  v17 = [v16 animator];
  if (v11)
  {
    v18 = [(UIImageView *)self _animationConfigurationForEffect:v13 forAddingEffect:0 options:v14 clientCompletionHandler:v15 needsAnimationCompletion:0];
    v19 = [v18 animation];

    if (v9)
    {
      [v17 cancelAnimation:v19];
    }

    else
    {
      [v17 removeAnimation:v19];
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89__UIImageView_animationPresetManager_removeEffect_wasActive_options_animated_completion___block_invoke;
  v21[3] = &unk_1E71262F0;
  v22 = v13;
  v20 = v13;
  [(UIImageView *)self _runSymbolEffectCompletion:v15 contextConfigurator:v21];
}

void __89__UIImageView_animationPresetManager_removeEffect_wasActive_options_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFinished:0];
  [v3 setEffect:*(a1 + 32)];
}

- (void)animationPresetManager:(id)a3 didSetScale:(int)a4 usingEffect:(id)a5 options:(id)a6 animated:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v11 = *&a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = [(UIImageView *)self _rbSymbolLayer];
  v17 = [v16 animator];
  v18 = [v17 scaleLevel];
  v19 = v18 != v11;
  if (v18 == v11)
  {
    goto LABEL_5;
  }

  if (!v9)
  {
    [v17 setScaleLevel:v11];
LABEL_5:
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __90__UIImageView_animationPresetManager_didSetScale_usingEffect_options_animated_completion___block_invoke;
    v26 = &unk_1E712ACB0;
    v28 = v19;
    v27 = v13;
    [(UIImageView *)self _runSymbolEffectCompletion:v15 contextConfigurator:&v23];

    goto LABEL_6;
  }

  v20 = [(UIImageView *)self _animationConfigurationForEffect:v13 forAddingEffect:1 options:v14 clientCompletionHandler:v15 needsAnimationCompletion:1];
  v21 = [v20 animation];
  v22 = [v20 options];
  [v17 addAnimation:v21 options:v22];

  [v17 setScaleLevel:v11];
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

- (void)animationPresetManager:(id)a3 didSetHiddenness:(BOOL)a4 usingEffect:(id)a5 options:(id)a6 animated:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v11 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = [(UIImageView *)self _rbSymbolLayer];
  v17 = [v16 animator];
  v18 = [v17 isHidden] ^ v11;
  if (v18 != 1)
  {
    goto LABEL_5;
  }

  if (!v9)
  {
    [v17 setHidden:v11];
LABEL_5:
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __95__UIImageView_animationPresetManager_didSetHiddenness_usingEffect_options_animated_completion___block_invoke;
    v25 = &unk_1E712ACB0;
    v27 = v18;
    v26 = v13;
    [(UIImageView *)self _runSymbolEffectCompletion:v15 contextConfigurator:&v22];

    goto LABEL_6;
  }

  v19 = [(UIImageView *)self _animationConfigurationForEffect:v13 forAddingEffect:v11 options:v14 clientCompletionHandler:v15 needsAnimationCompletion:1];
  v20 = [v19 animation];
  v21 = [v19 options];
  [v17 addAnimation:v20 options:v21];

  [v17 setHidden:v11];
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

- (void)animationPresetManager:(id)a3 didDiscardPendingContentTransition:(id)a4
{
  v5 = a4;
  v6 = [v5 completionHandler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__UIImageView_animationPresetManager_didDiscardPendingContentTransition___block_invoke;
  v8[3] = &unk_1E71262F0;
  v9 = v5;
  v7 = v5;
  [(UIImageView *)self _runSymbolEffectCompletion:v6 contextConfigurator:v8];
}

void __73__UIImageView_animationPresetManager_didDiscardPendingContentTransition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFinished:0];
  v4 = [*(a1 + 32) symbolContentTransition];
  [v3 setContentTransition:v4];
}

- (id)_animationConfigurationForEffect:(id)a3 forAddingEffect:(BOOL)a4 options:(id)a5 clientCompletionHandler:(id)a6 needsAnimationCompletion:(BOOL)a7
{
  v9 = a7;
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  objc_initWeak(&location, self);
  v17 = [(UIImageView *)self _activeImage];
  v18 = [v17 configuration];
  if (v9)
  {
    v19 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __121__UIImageView__animationConfigurationForEffect_forAddingEffect_options_clientCompletionHandler_needsAnimationCompletion___block_invoke;
    v23[3] = &unk_1E712ACD8;
    v7 = &v26;
    objc_copyWeak(&v26, &location);
    v22 = &v24;
    v24 = v14;
    v8 = &v25;
    v25 = v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v14 ui_animationConfigurationWithOptions:v15 configuration:v18 forAddingEffect:v12 completion:v19];
  if (v9)
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

- (void)_runSymbolEffectCompletion:(id)a3 contextConfigurator:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = a4;
    v8 = +[UISymbolEffectCompletionContext _new];
    [v8 setSender:self];
    v7[2](v7, v8);

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__UIImageView__runSymbolEffectCompletion_contextConfigurator___block_invoke;
    v10[3] = &unk_1E70F4A50;
    v11 = v8;
    v12 = v6;
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

- (int64_t)_effectiveRenderingModeForSource:(id)a3 symbolConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 renderingMode];
  if (!v8)
  {
    v8 = [(UIImageView *)self _defaultRenderingMode];
    if (!v8)
    {
      v8 = [v6 _effectiveRenderingModeWithSymbolConfiguration:v7];
    }
  }

  v9 = v8;

  return v9;
}

- (BOOL)_shouldTreatImageAsTemplate:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self _symbolConfigurationForImage:v4];
  LOBYTE(self) = [(UIImageView *)self _shouldTreatImageAsTemplate:v4 symbolConfiguration:v5];

  return self;
}

- (BOOL)_shouldTreatImageAsTemplate:(id)a3 symbolConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[UIImageView _effectiveRenderingModeForSource:symbolConfiguration:](self, "_effectiveRenderingModeForSource:symbolConfiguration:", v6, v7) != 2 || [v7 _hasSpecifiedHierarchicalColors] && (objc_msgSend(v6, "_isHierarchicalColorSymbolImage") & 1) != 0)
  {
    LOBYTE(v8) = 0;
  }

  else if ([v7 _hasSpecifiedPaletteColors])
  {
    v9 = [v7 _colors];
    if ([v9 count] < 2)
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = [v6 _isPaletteColorSymbolImage] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (UIEdgeInsets)_edgeInsetsForEffectsForImage:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self _symbolConfigurationForImage:v4];
  if ([(UIImageView *)self _needsBoldEffectForImage:v4 symbolConfiguration:v5])
  {
    v6 = [MEMORY[0x1E695E0F0] arrayByAddingObject:@"_UIKitBoldTintStyle"];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [v4 scale];
  v8 = v7;
  v9 = [(UIView *)self traitCollection];
  [UIImage _edgeInsetsForStylePresetNames:v6 scale:v9 traitCollection:v8];
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

- (void)_setDefaultRenderingMode:(int64_t)a3
{
  if ([(_UIImageViewStorage *)self->_storage defaultRenderingMode]!= a3)
  {
    [(_UIImageViewStorage *)self->_storage setDefaultRenderingMode:a3];

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
  v3 = [(UIImageView *)self preferredImageDynamicRange];
  if (v3 == UIImageDynamicRangeUnspecified)
  {
    v4 = [(UIView *)self traitCollection];
    v3 = [v4 imageDynamicRange];
  }

  if (v3 == UIImageDynamicRangeUnspecified)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (double)_maximumEDRForDynamicRange:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 2.0;
  }

  else
  {
    result = 1.0;
    if (a3 != 2)
    {
      return result;
    }

    v4 = 8.0;
  }

  v5 = [(UIImageView *)self _currentImage];
  v6 = [v5 content];
  [v6 imageMaximumHeadroom];
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

- (void)_updateHDRFlags:(BOOL)a3
{
  v3 = a3;
  objc_opt_self();
  if (dyld_program_sdk_at_least())
  {
    if (v3)
    {
      v5 = [(UIImageView *)self imageDynamicRange];
    }

    else
    {
      v5 = UIImageDynamicRangeStandard;
    }

    if (+[_UIHDRUsageCoordinator useCALayerDynamicRange])
    {
      v10 = [_UIHDRUsageCoordinator convertDynamicRange:v5];
      v6 = [(UIView *)self layer];
      [v6 setPreferredDynamicRange:v10];
    }

    else
    {
      v7 = [(UIView *)self layer];
      [v7 setWantsExtendedDynamicRangeContent:v5 != UIImageDynamicRangeStandard];

      [(UIImageView *)self _maximumEDRForDynamicRange:v5];
      v9 = v8;
      v10 = [(UIView *)self layer];
      [v10 setContentsMaximumDesiredEDR:v9];
    }
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a4 != 0;
  v9.receiver = self;
  v9.super_class = UIImageView;
  [(UIView *)&v9 _didMoveFromWindow:a3 toWindow:?];
  *&self->_imageViewFlags = *&self->_imageViewFlags & 0xEFFF | (v6 << 12);
  if (a4)
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

- (void)_setMasksTemplateImages:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewStorage *)self->_storage masksTemplateImages]!= a3)
  {
    [(_UIImageViewStorage *)self->_storage setMasksTemplateImages:v3];
    if (v3)
    {

      [(UIImageView *)self _updateMasking];
    }

    else
    {
      v5 = [(UIView *)self layer];
      [v5 setCompositingFilter:0];
    }
  }
}

- (id)_colorByApplyingDrawModeToColor:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self _colorByApplyingDrawMode:[(UIImageView *)self drawMode] toColor:v4];

  return v5;
}

- (id)_colorByApplyingDrawMode:(unsigned int)a3 toColor:(id)a4
{
  v4 = *&a3;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v29 = 0;
  v27 = 0.0;
  v28 = 0.0;
  v7 = v6;
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
    v9 = [(UIView *)self traitCollection];
    [UITraitCollection setCurrentTraitCollection:v9];

    v10 = _UISetCurrentFallbackEnvironment(self);
    v25 = 0.0;
    *buf = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    [v6 getRed:buf green:&v25 blue:&v24 alpha:&v23];
    _UIRestorePreviousFallbackEnvironment(v10);
    [UITraitCollection setCurrentTraitCollection:v8];
    if (v29 == 8)
    {
      v11 = 1.0 - v27;
      v12 = v23 * (1.0 - v27);
      v7 = v6;
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

      v7 = v6;
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

- (id)_baseMultiplyColorWithImage:(id)a3 symbolConfiguration:(id)a4 shouldResolveDynamicColors:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([(UIImageView *)self _shouldTreatImageAsTemplate:v8 symbolConfiguration:v9])
  {
    v10 = [_UIImageContentRenditionContext contextWithRenderEnvironment:v8 source:?];
    if ([v9 _hasSpecifiedPaletteColors])
    {
      v11 = [v9 _paletteColorsWithRenditionContext:v10 resolveDynamicColors:v5];
      v12 = [v11 firstObject];
    }

    else if ([v9 _hasSpecifiedHierarchicalColors])
    {
      v12 = [v9 _hierarchicalColorForLayerLevel:0 renditionContext:v10 resolveDynamicColors:v5];
    }

    else
    {
      v12 = [(UIView *)self tintColor];
      if (v5)
      {
        v13 = [(_UIImageContentRenditionContext *)v10 traitCollectionForResolvingDynamicColors];
        v14 = [v12 resolvedColorWithTraitCollection:v13];

        v12 = v14;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_needsImageEffectsForImage:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self _symbolConfigurationForImage:v4];
  LOBYTE(self) = [(UIImageView *)self _needsImageEffectsForImage:v4 symbolConfiguration:v5];

  return self;
}

- (BOOL)_needsImageEffectsForImage:(id)a3 symbolConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIImageView *)self drawMode])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(UIImageView *)self _baseMultiplyColorWithImage:v6 symbolConfiguration:v7];
    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v10 = [(UIImageView *)self _effectiveContentEffectsWithImage:v6 symbolConfiguration:v7];
      v8 = [v10 count] != 0;
    }
  }

  return v8;
}

- (BOOL)_getDrawModeCompositeOperation:(int *)a3 whiteComponent:(double *)a4 drawingAlpha:(double *)a5
{
  v9 = [(UIImageView *)self drawMode];

  return [(UIImageView *)self _getDrawModeCompositeOperation:a3 whiteComponent:a4 drawingAlpha:a5 forDrawMode:v9];
}

- (BOOL)_getDrawModeCompositeOperation:(int *)a3 whiteComponent:(double *)a4 drawingAlpha:(double *)a5 forDrawMode:(unsigned int)a6
{
  switch(a6)
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
      [v9 getWhite:a4 alpha:0];

      *a5 = v11;
      *a3 = v10;
      return 1;
  }

  return 0;
}

- (void)_renderDrawModeEffectInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setDrawMode:(unsigned int)a3
{
  v3 = *&a3;
  if ([(_UIImageViewStorage *)self->_storage drawMode]!= a3)
  {
    [(_UIImageViewStorage *)self->_storage setDrawMode:v3];

    [(UIImageView *)self _updateState];
  }
}

- (void)setCGImageRef:(CGImage *)a3
{
  v4 = [(UIView *)self layer];
  [v4 setContents:a3];
}

- (CGImage)imageRef
{
  v2 = [(UIView *)self layer];
  v3 = [v2 contents];

  return v3;
}

- (void)setAnimating:(BOOL)a3
{
  if (a3)
  {
    [(UIImageView *)self startAnimating];
  }

  else
  {
    [(UIImageView *)self stopAnimating];
  }
}

- (void)_setDecompressingImage:(id)a3 forType:(unint64_t)a4
{
  if (a4)
  {
    v4 = &unk_1ED497FD9;
  }

  else
  {
    v4 = &_MergedGlobals_93;
  }

  objc_setAssociatedObject(self, v4, a3, 1);
}

- (id)_decompressingImageForType:(unint64_t)a3
{
  if (a3)
  {
    v3 = &unk_1ED497FD9;
  }

  else
  {
    v3 = &_MergedGlobals_93;
  }

  return objc_getAssociatedObject(self, v3);
}

- (id)_checkImageForAdaptation:(id)a3 hasAdapted:(BOOL *)a4
{
  v6 = a3;
  v7 = [(UIImageView *)self image];
  v8 = [(UIImageView *)self _currentImage];
  v9 = [(UIImageView *)self _adaptiveImageForImage:v6 assignedImage:v7 currentImage:v8 hasAdapted:a4];

  return v9;
}

- (id)_checkHighlightedImageForAdaptation:(id)a3 hadAdapted:(BOOL *)a4
{
  v6 = a3;
  v7 = [(UIImageView *)self highlightedImage];
  v8 = [(UIImageView *)self _currentHighlightedImage];
  v9 = [(UIImageView *)self _adaptiveImageForImage:v6 assignedImage:v7 currentImage:v8 hasAdapted:a4];

  return v9;
}

- (id)_adaptiveImageForImage:(id)a3 assignedImage:(id)a4 currentImage:(id)a5 hasAdapted:(BOOL *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  v12 = v9;
  if (v12)
  {
    v13 = [v10 isEqual:v12];
    v14 = v12;
    if (v11)
    {
      v14 = v12;
      if (v13)
      {
        v14 = v12;
        if (([v11 isEqual:v12] & 1) == 0)
        {
          v14 = v11;

          if (a6)
          {
            *a6 = 1;
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

- (void)traitCollectionDidChange:(id)a3
{
  v6 = a3;
  v4 = [(UIView *)self traitCollection];
  [(UIImageView *)self _invalidateCachedSymbolConfiguration];
  [(UIImageView *)self _updateResolvedImages];
  if (![(UIImageView *)self adjustsImageSizeForAccessibilityContentSizeCategory])
  {
LABEL_6:
    v5 = v6;
    if (!v6 || !v4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v5 = v6;
  if (!v4)
  {
    goto LABEL_10;
  }

  if (!v6 || v4[13] != v6[13])
  {
    [(UIView *)self invalidateIntrinsicContentSize];
    goto LABEL_6;
  }

LABEL_8:
  if (v4[15] != v5[15])
  {
    *&self->_imageViewFlags |= 0x10u;
    [(UIView *)self invalidateIntrinsicContentSize];
    v5 = v6;
  }

LABEL_10:
  if (_UITraitCollectionUserInterfaceRenderingModeDidChange(v4, v5))
  {
    [(UIImageView *)self _updateState];
  }
}

- (void)_systemIconAppearanceDidChange
{
  v3 = [(UIImageView *)self image];
  v4 = [v3 _isIconImage];

  if (v4)
  {
    [(UIImageView *)self _invalidateResolvedImages];

    [(UIImageView *)self _updateResolvedImages];
  }
}

- (id)_resolvedImageFromImage:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self image];

  if (v5 == v4)
  {
    v7 = [(UIImageView *)self _currentImage];
  }

  else
  {
    v6 = [(UIImageView *)self _effectiveImageViewTraitCollectionForResolvingImages];
    v7 = [(UIImageView *)self _resolvedImageFromImage:v4 withImageViewTrait:v6];
  }

  return v7;
}

- (id)_resolvedImageFromImage:(void *)a3 withImageViewTrait:
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_16;
  }

  v7 = v5;
  v8 = a3;
  if ([v7 _isSymbolImage])
  {
    [a1 _symbolConfigurationForImage:v7];
  }

  else
  {
    [v7 configuration];
  }
  v9 = ;
  v10 = v8;
  v11 = [v9 _effectiveTraitCollectionForImageLookup];
  v12 = v10;
  if (v11)
  {
    v12 = [(UITraitCollection *)v10 _traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection:v11];
  }

  v13 = [v9 configurationWithTraitCollection:v12];

  if ([v7 _isIconImage])
  {
    v14 = [(UITraitCollection *)v10 _systemIconAppearance];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v27 = v6;
      v16 = [a1 window];
      v17 = [v16 windowScene];
      v18 = [v17 _systemIconAppearanceSceneComponent];
      v15 = [(_UISystemIconAppearanceSceneComponent *)v18 appearance];

      if (!v15)
      {
        v6 = v27;
        goto LABEL_13;
      }

      v6 = v27;
    }

    v19 = [(UITraitCollection *)v10 _systemIconAppearance];
    v20 = [v13 _configurationWithSystemIconAppearance:v19];

    v13 = v20;
  }

LABEL_13:

  v21 = v7;
  v22 = _UISetCurrentFallbackEnvironment(a1);
  v23 = [a1 _preferredSymbolVariant];

  if (v23)
  {
    v24 = [a1 _preferredSymbolVariant];
    v25 = [v21 _imageByApplyingSymbolVariant:v24];

    v21 = v25;
  }

  a1 = [v21 imageWithConfiguration:v13];

  _UIRestorePreviousFallbackEnvironment(v22);
LABEL_16:

  return a1;
}

- (BOOL)_resolveImagesWithPreviouslyDisplayedImage:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageViewStorage *)self->_storage animationImages];
  if (!v5)
  {
    v6 = [(_UIImageViewStorage *)self->_storage highlightedAnimationImages];

    if (v6)
    {
      goto LABEL_6;
    }

    v7 = [(UIImageView *)self _effectiveImageViewTraitCollectionForResolvingImages];
    if ([(UITraitCollection *)v7 _isEqualToTraitCollectionForResolvingImage:?])
    {

      goto LABEL_6;
    }

    objc_storeStrong(&self->_lastResolvedImageViewTraitCollection, v7);
    v11 = [(UIImageView *)self highlightedImage];
    if (!v11)
    {
      v8 = 0;
      v18 = 0;
      goto LABEL_22;
    }

    v12 = [(UIImageView *)self _resolvedImageFromImage:v11 withImageViewTrait:v7];
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = [(_UIImageViewStorage *)self->_storage resolvedHighlightedImage];
    v14 = v12;
    v15 = v13;
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
        v19 = [(UIImageView *)self image];
        if (!v19)
        {

          if (!v18)
          {
            goto LABEL_7;
          }

LABEL_37:
          [(UIImageView *)self _updateImageViewForOldImage:v4 newImage:v8];
          v9 = 1;
          goto LABEL_8;
        }

        v20 = v19;
        v21 = [(UIImageView *)self _resolvedImageFromImage:v19 withImageViewTrait:v7];
        if (v21)
        {
          v27 = v11;
          v22 = [(_UIImageViewStorage *)self->_storage resolvedImage];
          v23 = v21;
          v24 = v22;
          v25 = v24;
          if (v23 == v24)
          {
          }

          else
          {
            if (v24)
            {
              v26 = [v23 isEqual:v24];

              v11 = v27;
              if (v26)
              {
                goto LABEL_36;
              }
            }

            else
            {

              v11 = v27;
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

          v11 = v27;
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

- (id)_effectiveContentEffectsWithImage:(id)a3 symbolConfiguration:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(UIView *)self _enableMonochromaticTreatment]|| ![(UIImageView *)self _imageSupportsMaterials:v6 symbolConfiguration:v7 allowingHierarchical:1])
  {
    v11 = [(UIView *)self traitCollection];
    if ([v11 _userInterfaceRenderingMode] == 2 && (*(&self->super._viewFlags + 25) & 1) != 0)
    {
      v13 = [(UIImageView *)self _imageSupportsMaterials:v6 symbolConfiguration:v7 allowingHierarchical:0];

      if (v13)
      {
        v9 = [(UIImageView *)self _materialForImage:v6 symbolConfiguration:v7];
        v10 = [v9 contentEffects];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v12 = 0;
    goto LABEL_14;
  }

  v8 = [(UIView *)self _monochromaticContentEffect];
  v9 = v8;
  if (!v8)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v15[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
LABEL_11:
  v12 = v10;
LABEL_13:

LABEL_14:

  return v12;
}

- (BOOL)_imageSupportsMaterials:(id)a3 allowingHierarchical:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIImageView *)self _symbolConfigurationForImage:v6];
  LOBYTE(v4) = [(UIImageView *)self _imageSupportsMaterials:v6 symbolConfiguration:v7 allowingHierarchical:v4];

  return v4;
}

- (BOOL)_imageSupportsMaterials:(id)a3 symbolConfiguration:(id)a4 allowingHierarchical:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (([v9 _suppressesMaterialRendering] & 1) != 0 || objc_msgSend(v8, "isSymbolImage") && objc_msgSend(v9, "colorRenderingMode") == 2 || -[UIImageView _effectiveRenderingModeForSource:symbolConfiguration:](self, "_effectiveRenderingModeForSource:symbolConfiguration:", v8, v9) != 2)
  {
    v11 = 0;
  }

  else if ([v9 _hasSpecifiedPaletteColors])
  {
    v10 = [v9 _colors];
    if ([v10 count] < 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v8 _isPaletteColorSymbolImage] ^ 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = [v9 traitCollection];
  v13 = [v12 userInterfaceIdiom] == 6 || a5;

  LOBYTE(v14) = v13 & v11;
  if (!v13 && v11)
  {
    if ([v9 _hasSpecifiedHierarchicalColors])
    {
      v14 = [v8 _isHierarchicalColorSymbolImage] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  return v14;
}

- (id)_materialForImage:(id)a3 symbolConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIView *)self traitCollection];
  v9 = [(UIImageView *)self _baseMultiplyColorWithImage:v7 symbolConfiguration:v6 shouldResolveDynamicColors:0];

  v10 = [v9 _resolvedMaterialWithTraitCollection:v8];

  return v10;
}

- (void)_updateImageViewForOldImage:(id)a3 newImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIView *)self traitCollection];
  v9 = [v8 legibilityWeight];

  if (v9 != 1 || [v6 _suppressesAccessibilityHairlineThickening] && (objc_msgSend(v7, "_suppressesAccessibilityHairlineThickening") & 1) != 0)
  {
    v10 = 0;
    goto LABEL_8;
  }

  if (!v6 && v7)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  if (v6)
  {
    v41 = v7 == 0;
  }

  else
  {
    v41 = 0;
  }

  v10 = v41;
  if (v6 && v7)
  {
    v42 = [v6 renderingMode];
    v43 = [v7 renderingMode];
    if (v42 == 1 && v43 != 1)
    {
      goto LABEL_7;
    }

    v10 = v42 != 1 && v43 == 1;
  }

LABEL_8:
  [v7 alignmentRectInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v6 alignmentRectInsets];
  v22 = 1;
  if (v14 == v23 && v12 == v19 && v18 == v21 && v16 == v20)
  {
    v24 = [v6 configuration];
    v25 = [v24 traitCollection];
    v26 = [v25 layoutDirection];
    v27 = [v7 configuration];
    v28 = [v27 traitCollection];
    v22 = v26 != [v28 layoutDirection];
  }

  if (v10)
  {
    *&self->_imageViewFlags |= 0x10u;
LABEL_15:
    [(UIView *)self invalidateIntrinsicContentSize];
    goto LABEL_16;
  }

  [v7 size];
  v33 = v32;
  v35 = v34;
  [v6 size];
  if (v33 != v37)
  {
    goto LABEL_15;
  }

  if (v35 != v36)
  {
    goto LABEL_15;
  }

  v38 = [v7 imageOrientation];
  if (v38 != [v6 imageOrientation] || v22)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v22)
  {
    v29 = [(UIView *)self _wantsAutolayout];
    v30 = [(UIView *)self superview];
    v31 = v30;
    if (v29)
    {
      [v30 setNeedsLayout];
    }

    else
    {
      [v30 _alignmentRectInsetsHaveChangedForChildImageView:self];
    }
  }

  [(UIImageView *)self _clearPretiledImageCacheForImage:v6];
  [(UIImageView *)self _updatePretiledImageCacheForImage:v7];
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
  v39 = [(UIImageView *)self _currentImage];
  if (v39)
  {
    [(UIView *)self setOpaque:0];
  }

  else
  {
    v40 = [(UIImageView *)self animationImages];
    if (v40)
    {
      [(UIView *)self setOpaque:0];
    }

    else
    {
      v45 = [(UIImageView *)self _currentHighlightedImage];
      if (v45)
      {
        [(UIView *)self setOpaque:0];
      }

      else
      {
        v46 = [(UIImageView *)self highlightedAnimationImages];
        [(UIView *)self setOpaque:v46 == 0];
      }
    }
  }

  [(UIImageView *)self _imageContentParametersDidChange];
  -[UIImageView _baselineOffsetParametersDidChangeHasBaselinePropertyChanged:](self, "_baselineOffsetParametersDidChangeHasBaselinePropertyChanged:", [v6 _hasBaseline] ^ objc_msgSend(v7, "_hasBaseline"));
}

- (void)_teardownLayeredImage
{
  [(UIImageView *)self _updateLayeredImageIsFocusedWithFocusedView:0 focusAnimationCoordinator:0];
  [(UIView *)self _setTracksFocusedAncestors:0];

  [(UIImageView *)self _updateOverlayContentView];
}

- (void)_ancestorWillUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 nextFocusedView];
  [(UIImageView *)self _updateLayeredImageIsFocusedWithFocusedView:v8 focusAnimationCoordinator:v6];

  v9.receiver = self;
  v9.super_class = UIImageView;
  [(UIView *)&v9 _ancestorWillUpdateFocusInContext:v7 withAnimationCoordinator:v6];
}

- (double)_layeredImageCornerRadius
{
  v2 = [(UIImageView *)self _layeredImageContainer];
  v3 = [v2 config];
  [v3 cornerRadius];
  v5 = v4;

  return v5;
}

- (void)_setOverlayContentView:(id)a3
{
  value = a3;
  v4 = [(UIImageView *)self _existingOverlayView];
  if (v4)
  {
    if (v4 != value)
    {
      v5 = [v4 superview];

      if (v5 == self)
      {
        [v4 removeFromSuperview];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setOverlayViewDelegate:0];
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
  v3 = [(UIImageView *)self _existingOverlayView];
  if (!v3)
  {
    v4 = [_UIImageViewOverlayView alloc];
    [(UIView *)self bounds];
    v3 = [(UIView *)v4 initWithFrame:?];
    [(_UIImageViewOverlayView *)v3 setClipsToBounds:1];
    [(UIView *)v3 setAutoresizingMask:18];
    [(UIImageView *)self _setOverlayContentView:v3];
  }

  return v3;
}

- (void)_updateOverlayContentView
{
  v8 = [(UIImageView *)self _existingOverlayView];
  v3 = [(UIImageView *)self _layeredImageContainer];
  v4 = v3;
  if (v3 && ([v3 isHidden] & 1) == 0)
  {
    if (v8)
    {
      if ([v8 clipsToBounds])
      {
        [v4 setMaskedOverlayView:v8];
        goto LABEL_12;
      }

      v6 = v4;
      v7 = v8;
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
    if (v8)
    {
      v5 = [v8 superview];

      if (v5 != self)
      {
        [v8 removeFromSuperview];
        [(UIView *)self addSubview:v8];
      }
    }
  }

LABEL_12:
}

- (void)_setLayeredImageCornerRadius:(double)a3
{
  v5 = [(UIImageView *)self _layeredImageContainer];
  v4 = [v5 config];
  [v4 setCornerRadius:a3];
}

- (void)_updateLayeredImageIsFocusedWithFocusedView:(id)a3 focusAnimationCoordinator:(id)a4
{
  v7 = a4;
  if (a3)
  {
    a3 = [(UIView *)self isDescendantOfView:a3];
  }

  v6 = [(UIImageView *)self _layeredImageContainer];
  [v6 setStackFocused:a3 withFocusAnimationCoordinator:v7];
}

- (void)_updateStateIfRBSymbolLayerNoLongerNeeded
{
  v3 = [(UIImageView *)self _rbSymbolLayer];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIImageView *)self image];
    v6 = [(UIImageView *)self _hasReasonToUseRBSymbolLayerForImage:v5];

    if (!v6)
    {

      [(UIImageView *)self _setNeedsUpdateState];
    }
  }
}

- (BOOL)_hasReasonToUseRBSymbolLayerForImage:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self _rbSymbolLayer];
  v6 = [v5 animator];
  if ([v6 isAnimating])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(_UIImageViewStorage *)self->_storage animationPresetManager];
    v7 = ([v8 hasPendingAnimationsForImage:v4] & 1) != 0 || -[UIImageView _hasNonDefaultSymbolAnimatorState](self, "_hasNonDefaultSymbolAnimatorState");
  }

  return v7;
}

- (id)_applyImageEffectsToCIImage:(id)a3 multiplyColor:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695F610]) initWithColor:v7];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x1E695F648];
      v44 = *MEMORY[0x1E695FA78];
      v45[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v12 = [v10 filterWithName:@"CIConstantColorGenerator" withInputParameters:v11];
      v13 = [v12 outputImage];

      v42 = *MEMORY[0x1E695FA48];
      v43 = v6;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v15 = [v13 imageByApplyingFilter:@"CISourceInCompositing" withInputParameters:v14];

      v6 = v15;
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
      v22 = [v21 outputImage];

      if (v33 == 8)
      {
        v38 = *MEMORY[0x1E695FA48];
        v39 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v24 = @"CISourceOutCompositing";
        v25 = v6;
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
        v35 = v6;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = @"CISourceAtopCompositing";
        v25 = v22;
      }

      v26 = [v25 imageByApplyingFilter:v24 withInputParameters:v23];

      v6 = v26;
    }
  }

  return v6;
}

- (BOOL)_setImageViewContentsForCIImageBackedImage:(id)a3
{
  v4 = a3;
  v5 = [v4 content];
  v6 = [v5 canRenderCIImage];
  if (!v6)
  {
    goto LABEL_25;
  }

  objc_opt_self();
  v7 = dyld_program_sdk_at_least() && [v5 isHDR] && (-[UIImageView imageDynamicRange](self, "imageDynamicRange") - 1) < 2;
  v8 = [(_UIImageViewStorage *)self->_storage CIRenderer];
  if (!v8)
  {
    v8 = objc_opt_new();
    [(_UIImageViewStorage *)self->_storage setCIRenderer:v8];
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = [v5 isHDR];
LABEL_11:
  if ([(UIImageView *)self _needsImageEffectsForImage:v4])
  {
    v10 = [(UIImageView *)self _baseMultiplyColorWithImage:v4 symbolConfiguration:0];
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

  [(_UIImageCIImageRenderer *)v8 renderContent:v5 usingHDR:v9 withEffects:v12];
  v13 = v8;
  if (v8 && (*(v8 + 32) & 1) != 0)
  {
    v14 = *(v8 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = [(UIView *)self layer];
  v16 = [v15 contents];
  if (v14 == v16)
  {
    [v15 reloadValueForKeyPath:@"contents"];
  }

  else
  {
    [v15 setContents:v14];
  }

  [(UIView *)self bounds];
  v19 = [(UIImageView *)self _layoutForImage:v4 inSize:v17, v18];
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
  [v15 setContentsTransform:v22];

LABEL_25:
  return v6;
}

- (void)_setPlaceholderView:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageViewStorage *)self->_storage placeholderView];
  v6 = v5;
  if (v5 != v4)
  {
    v7 = [v5 superview];

    if (v7 == self)
    {
      [v6 removeFromSuperview];
    }

    [(_UIImageViewStorage *)self->_storage setPlaceholderView:v4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__UIImageView__setPlaceholderView___block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [UIView performWithoutAnimation:v8];
    [(UIView *)self addSubview:v4];
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (_UIImageLoader)_imageLoader
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  storage = self->_storage;

  return [(_UIImageViewStorage *)storage imageLoader];
}

- (void)_loadImageWithURL:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [MEMORY[0x1E695AC68] requestWithURL:v4];

  v6 = [MEMORY[0x1E695AC78] sharedSession];
  v7 = [_UIImageLoader _imageLoaderWithURLRequest:v5 session:v6];

  [(UIImageView *)self _loadImage:v7 delegate:0];
}

- (void)_loadImage:(id)a3 delegate:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (v8)
  {
    [(_UIImageViewStorage *)self->_storage setStoppingLoad:1];
    v9 = [(_UIImageViewStorage *)self->_storage loadingDelegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 _imageView:self shouldCancelPreviousImageLoader:v8])
    {
      [v8 _cancel];
    }
  }

  [(UIImageView *)self _mainQ_resetForLoader:v6 delegate:v7];
  v10 = _UIImageLoadingLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 134218240;
    v12 = self;
    v13 = 2048;
    v14 = v6;
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

- (void)_kickoffQ_beginLoadingWithImageLoader:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (v5 == v4)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__UIImageView__kickoffQ_beginLoadingWithImageLoader___block_invoke;
    v8[3] = &unk_1E70F2F80;
    objc_copyWeak(&v10, &location);
    v9 = v4;
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

- (void)_mainQ_imageLoader:(id)a3 finishedWithImage:(id)a4 error:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (v11 == v8)
  {
    v29 = [(_UIImageViewStorage *)self->_storage loadingDelegate];
    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [v29 _imageView:self didLoadImage:v9];

        v9 = v12;
      }

      os_variant_has_internal_diagnostics();
      v28 = +[UITraitCollection _currentTraitCollectionIfExists];
      v13 = [(UIView *)self traitCollection];
      [UITraitCollection setCurrentTraitCollection:v13];

      v14 = _UISetCurrentFallbackEnvironment(self);
      [(UIView *)self bounds];
      v17 = [(UIImageView *)self _layoutForImage:v9 inSize:v15, v16];
      _UIRestorePreviousFallbackEnvironment(v14);
      [UITraitCollection setCurrentTraitCollection:v28];
      objc_initWeak(location, self);
      objc_initWeak(&from, v8);
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
        v36 = v9;
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
        v31 = v9;
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
          v26 = [v10 domain];
          *location = 134218754;
          *&location[4] = self;
          v42 = 2048;
          v43 = v8;
          v44 = 2114;
          v45 = v26;
          v46 = 2048;
          v47 = [v10 code];
          _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_INFO, "Image view %p stopped loading with error: loader=%p domain=%{public}@ code=%ld", location, 0x2Au);
        }

        if (objc_opt_respondsToSelector())
        {
          [v29 _imageView:self stoppedLoadingWithError:v10];
        }

        [(UIImageView *)self _mainQ_resetForLoader:0 delegate:0];
      }

      v9 = 0;
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

- (void)_decodeQ_imageLoader:(id)a3 decodeImage:(id)a4 layout:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = decodeQueue();
  dispatch_assert_queue_V2(v11);

  v12 = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (v12 == v8)
  {
    v13 = v10;
    if (!v10 || ([(_UIImageContentLayout *)v10 _materializeRenditionContents], (*(v10 + 8) & 1) == 0) || !*(v10 + 4))
    {
      v14 = _UIImageLoadingLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v20 = v10;
        v21 = 2048;
        v22 = v8;
        _os_log_error_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Could not generate CGImage contents from layout %p (loader=%p)", buf, 0x16u);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__UIImageView__decodeQ_imageLoader_decodeImage_layout___block_invoke;
    v15[3] = &unk_1E70F6B40;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

- (void)_mainQ_imageLoader:(id)a3 finishedOrSkippedDecodingImage:(id)a4 layout:(id)a5
{
  v9 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [(_UIImageViewStorage *)self->_storage imageLoader];

  if (v8 == v7)
  {
    [(_UIImageViewStorage *)self->_storage setImageBeingSetByLoader:v9];
    [(UIImageView *)self setImage:v9];
    [(_UIImageViewStorage *)self->_storage setImageBeingSetByLoader:0];
    [(UIImageView *)self _mainQ_resetForLoader:0 delegate:0];
  }
}

- (void)_stopLoading
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(_UIImageViewStorage *)self->_storage imageLoader];
  if (v3)
  {
    [(_UIImageViewStorage *)self->_storage setStoppingLoad:1];
    if (![(_UIImageViewStorage *)self->_storage isStartingLoad]|| [(_UIImageViewStorage *)self->_storage isEnqueueingLoad])
    {
      v4 = _UIImageLoadingLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 134218240;
        v7 = self;
        v8 = 2048;
        v9 = v3;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_INFO, "Image view %p stopping loader=%p", &v6, 0x16u);
      }

      v5 = [(_UIImageViewStorage *)self->_storage loadingDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v5 _imageView:self stoppedLoadingWithError:0];
      }

      [(UIImageView *)self _mainQ_resetForLoader:0 delegate:0];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 _imageView:self shouldCancelPreviousImageLoader:v3])
      {
        [v3 _cancel];
      }
    }
  }
}

- (void)_mainQ_resetForLoader:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(_UIImageViewStorage *)self->_storage setImageLoader:v7];

  [(_UIImageViewStorage *)self->_storage setLoadingDelegate:v6];
  [(_UIImageViewStorage *)self->_storage setStartingLoad:0];
  [(_UIImageViewStorage *)self->_storage setEnqueueingLoad:0];
  storage = self->_storage;

  [(_UIImageViewStorage *)storage setStoppingLoad:0];
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIImageView;
  v4 = a3;
  [(UIResponder *)&v6 encodeRestorableStateWithCoder:v4];
  [(UIView *)self anchorPoint];
  [v4 encodeCGPoint:@"kViewAnchorKey" forKey:?];
  [(UIView *)self bounds];
  [v4 encodeCGRect:@"kViewBoundsKey" forKey:?];
  [(UIView *)self center];
  [v4 encodeCGPoint:@"kViewCenterKey" forKey:?];
  [(UIView *)self transform];
  [v4 encodeCGAffineTransform:&v5 forKey:@"kViewTransformKey"];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIImageView;
  [(UIResponder *)&v9 decodeRestorableStateWithCoder:v4];
  if ([v4 containsValueForKey:@"kViewAnchorKey"])
  {
    [v4 decodeCGPointForKey:@"kViewAnchorKey"];
    [(UIView *)self setAnchorPoint:?];
  }

  if ([v4 containsValueForKey:@"kViewBoundsKey"])
  {
    [v4 decodeCGRectForKey:@"kViewBoundsKey"];
    [(UIImageView *)self setBounds:?];
  }

  if ([v4 containsValueForKey:@"kViewCenterKey"])
  {
    [v4 decodeCGPointForKey:@"kViewCenterKey"];
    [(UIImageView *)self setCenter:?];
  }

  if ([v4 containsValueForKey:@"kViewTransformKey"])
  {
    if (v4)
    {
      [v4 decodeCGAffineTransformForKey:@"kViewTransformKey"];
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

- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewStorage *)self->_storage adjustsImageSizeForAccessibilityContentSizeCategory]!= a3)
  {
    [(_UIImageViewStorage *)self->_storage setAdjustsImageSizeForAccessibilityContentSizeCategory:v3];
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
  v2 = [(UIView *)self traitCollection];
  v3 = _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection(v2);

  return v3;
}

- (void)_updatePretiledImageCacheForImage:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 _isResizable] && (objc_msgSend(v5, "_representsLayeredImage") & 1) == 0)
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
    v26 = [v10 images];
    v27 = [v26 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
            objc_enumerationMutation(v26);
          }

          [(UIImageView *)self _updatePretiledImageCacheForImage:*(*(&v52 + 1) + 8 * i)];
        }

        v28 = [v26 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
      v39 = [v37 pretiledImage];
      [v39 size];
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
      v46 = [v44 imageRendererFormat];
      [v46 setOpaque:0];
      v47 = [[UIGraphicsImageRenderer alloc] initWithSize:v46 format:v33, v35];
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

- (void)_clearPretiledImageCacheForImage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (qword_1ED4A2C78 == -1)
  {
    if (!v4)
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
    v6 = [v5 images];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          [(UIImageView *)self _clearPretiledImageCacheForImage:*(*(&v12 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    v11 = objc_getAssociatedObject(self, v5);
    objc_setAssociatedObject(self, v5, 0, 1);
  }

LABEL_13:
}

- (id)_cachedPretiledImageForImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 _isResizable])
  {
    v6 = objc_getAssociatedObject(self, v5);
    v7 = [v6 pretiledImage];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end