@interface PXStoryClipLayout
+ (BOOL)shouldContinueKenBurnsAnimationFromPreviousPresentedContentSize:(CGSize)a3 toCurrentContentSize:(CGSize)a4;
- ($0D9E40152377BA30F182AD5EFB16E7FD)contentEdgeInsets;
- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadius;
- ($810C7C628FE0F9AC50A6216490AB88B8)contentsRectOverride;
- ($810C7C628FE0F9AC50A6216490AB88B8)preferredPresentedContentsRect;
- ($810C7C628FE0F9AC50A6216490AB88B8)presentedContentsRect;
- ($810C7C628FE0F9AC50A6216490AB88B8)presentedKenBurnsAnimationCurrentRect;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)autoplayTimeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)clipTimeRange;
- (BOOL)_isDisplayingContentOfAsset:(id)a3;
- (BOOL)_isDisplayingTextResourceType:(int64_t)a3;
- (BOOL)shouldApplyCleanApertureCropToStillImagesInLayout:(id)a3;
- (BOOL)useLowMemoryDecodeInLayout:(id)a3;
- (CGAffineTransform)contentsRectTransform;
- (CGRect)_denormalizeRect:(CGRect)a3 coordinateSystem:(int64_t)a4;
- (CGRect)_normalizeRect:(CGRect)a3 coordinateSystem:(int64_t)a4;
- (CGRect)_referenceRectForNormalizedCoordinateSystem:(int64_t)a3;
- (CGRect)contentBounds;
- (CGRect)contentSpriteNormalizedFrameOverride;
- (CGRect)manualContentsRect;
- (CGRect)primaryDividerBounds;
- (CGRect)secondaryDividerBounds;
- (CGRect)textResourceSpriteFrame;
- (CGSize)attributedStringBoundingSizeForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (CGSize)displayedTimelineOriginalSize;
- (CGSize)presentedKenBurnsAnimationContentSize;
- (CGSize)primaryDividerScale;
- (CGSize)secondaryDividerScale;
- (CGSize)textResourceContentSize;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (NSString)description;
- (PXGLayout)timelineLayout;
- (PXStoryAnimationController)animationController;
- (PXStoryClipLayout)init;
- (PXStoryHUDViewConfiguration)HUDConfiguration;
- (UIEdgeInsets)clippingInsets;
- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)_effectWithClass:(Class)a3 reusableInstance:(id)a4;
- (id)_maskEffectForEdge:(unsigned int)a3 tiltedInset:(id)a4 bounds:(CGRect)a5 reusableInstance:(id)a6;
- (id)_textForHUD;
- (id)adjustmentForDisplayAsset:(id)a3 spriteIndex:(unsigned int)a4 inLayout:(id)a5;
- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)axSpriteIndexes;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4;
- (id)drawingContextForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)itemPlacementSourceIdentifier;
- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)_effectiveColorGradeKind;
- (int64_t)stringDrawingOptionsForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)verticalAlignmentForStringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (unint64_t)_titleKind;
- (unint64_t)presentationIntentForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4;
- (void)_invalidateAnimations;
- (void)_invalidateAssetPresentationStyles;
- (void)_invalidateColorGradeKind;
- (void)_invalidateColorGradingEffect;
- (void)_invalidateColorNormalizationEffect;
- (void)_invalidateCombinedEffect;
- (void)_invalidateContent;
- (void)_invalidateContentMode;
- (void)_invalidateContentStyle;
- (void)_invalidateContentVersion;
- (void)_invalidateDisplayAsset;
- (void)_invalidateEdgeMaskEffects;
- (void)_invalidateHUD;
- (void)_invalidateInactiveImageFilterAdjustment;
- (void)_invalidateIsSegmentVisible;
- (void)_invalidateModelPresentedTextProperties;
- (void)_invalidateMusicDucking;
- (void)_invalidateOffsetFromCurrentSegment;
- (void)_invalidatePlayheadState;
- (void)_invalidateResource;
- (void)_invalidateSegmentIdentifiers;
- (void)_invalidateShouldAutoplay;
- (void)_invalidateSmartGradientAdjustment;
- (void)_invalidateTextLegibilityEffect;
- (void)_invalidateTextResourceSpriteFrame;
- (void)_invalidateVideoPresentationController;
- (void)_invalidateVideoPresentationControllerState;
- (void)_invalidateWantsHUD;
- (void)_updateAnimations;
- (void)_updateAssetPresentationStyles;
- (void)_updateColorGradeKind;
- (void)_updateColorGradingEffect;
- (void)_updateColorNormalizationEffect;
- (void)_updateCombinedEffect;
- (void)_updateContent;
- (void)_updateContentMode;
- (void)_updateContentStyle;
- (void)_updateDisplayAsset;
- (void)_updateEdgeMaskEffects;
- (void)_updateHUD;
- (void)_updateInactiveImageFilterAdjustment;
- (void)_updateIsSegmentVisible;
- (void)_updateModelPresentedTextProperties;
- (void)_updateMusicDucking;
- (void)_updateOffsetFromCurrentSegment;
- (void)_updateResource;
- (void)_updateSegmentIdentifiers;
- (void)_updateShouldAutoplay;
- (void)_updateSmartGradientAdjustment;
- (void)_updateTextLegibilityEffect;
- (void)_updateTextResourceSpriteFrame;
- (void)_updateVideoPresentationController;
- (void)_updateVideoPresentationControllerState;
- (void)_updateWantsHUD;
- (void)_validateVideoPlaybackState;
- (void)alphaDidChange;
- (void)contentSizeDidChange;
- (void)dealloc;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)entityManagerDidChange;
- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4;
- (void)internationalStyleTitlePreferencesDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setAssetPresentationStyles:(unint64_t)a3;
- (void)setAutoplayTimeRange:(id *)a3;
- (void)setBottomEdgeMaskEffect:(id)a3;
- (void)setCanAspectFitContent:(BOOL)a3;
- (void)setCanShowColorNormalizedContent:(BOOL)a3;
- (void)setCanShowDynamicContent:(BOOL)a3;
- (void)setCanShowHUD:(BOOL)a3;
- (void)setCanShowTextLegibilityEffect:(BOOL)a3;
- (void)setClip:(id)a3;
- (void)setClipTimeRange:(id *)a3;
- (void)setClippingAnimation:(id)a3;
- (void)setColorGradeKind:(int64_t)a3;
- (void)setColorGradingEffect:(id)a3;
- (void)setColorNormalizationEffect:(id)a3;
- (void)setCombinedEffect:(id)a3;
- (void)setContentBounds:(CGRect)a3;
- (void)setContentEdgeInsets:(id *)a3;
- (void)setContentSpriteNormalizedFrameOverride:(CGRect)a3 coordinateSystem:(int64_t)a4;
- (void)setContentsRectTransform:(CGAffineTransform *)a3;
- (void)setCornerRadius:(id)a3;
- (void)setCurrentTextResourceInfo:(id)a3;
- (void)setCustomColorGradeKind:(int64_t)a3;
- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)setDisableClippingAnimation:(BOOL)a3;
- (void)setDisplayAsset:(id)a3;
- (void)setDisplayedTimelineOriginalSize:(CGSize)a3;
- (void)setHUDTimer:(id)a3;
- (void)setIsPlayheadInVideoTimeRange:(BOOL)a3 isPlayheadInAudioTimeRange:(BOOL)a4 wasPlayheadMovedManually:(BOOL)a5 currentAudioVolume:(float)a6;
- (void)setIsReadyForAutoplay:(BOOL)a3;
- (void)setIsSegmentVisible:(BOOL)a3;
- (void)setKenBurnsAnimation:(id)a3;
- (void)setLeftEdgeClippingMaskEffect:(id)a3;
- (void)setLeftEdgeMaskEffect:(id)a3;
- (void)setManualContentsRect:(CGRect)a3;
- (void)setManualContentsRectAmount:(double)a3;
- (void)setModel:(id)a3;
- (void)setOffsetFromCurrentSegment:(int64_t)a3;
- (void)setOverrideStyleInfo:(id)a3;
- (void)setPreferredPresentedContentsRect:(id *)a3;
- (void)setPresentedContentsRect:(id *)a3;
- (void)setPresentedKenBurnsAnimationCurrentRect:(id *)a3;
- (void)setPrimaryDividerBounds:(CGRect)a3;
- (void)setRelativeZPositionAboveLegibilityGradients:(double)a3;
- (void)setResource:(id)a3;
- (void)setRightEdgeClippingMaskEffect:(id)a3;
- (void)setRightEdgeMaskEffect:(id)a3;
- (void)setSecondaryDividerBounds:(CGRect)a3;
- (void)setSegmentIdentifiers:(id)a3;
- (void)setShouldAspectFitContent:(BOOL)a3;
- (void)setShouldAutoplay:(BOOL)a3;
- (void)setShouldObserveInternationalStyleTitlePreferences:(BOOL)a3;
- (void)setTextFrameProgress:(id)a3;
- (void)setTextLegibilityEffect:(id)a3;
- (void)setTextResourceSpriteFrame:(CGRect)a3;
- (void)setTopEdgeMaskEffect:(id)a3;
- (void)setUseContentBoundsForContentEdgeInsets:(BOOL)a3;
- (void)setVideoPresentationController:(id)a3;
- (void)setWantsHUD:(BOOL)a3;
- (void)update;
- (void)willUpdate;
@end

@implementation PXStoryClipLayout

- (CGSize)textResourceContentSize
{
  width = self->_textResourceContentSize.width;
  height = self->_textResourceContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)textResourceSpriteFrame
{
  x = self->_textResourceSpriteFrame.origin.x;
  y = self->_textResourceSpriteFrame.origin.y;
  width = self->_textResourceSpriteFrame.size.width;
  height = self->_textResourceSpriteFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)autoplayTimeRange
{
  v3 = *&self[39].var0.var0;
  *&retstr->var0.var0 = *&self[38].var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[39].var0.var3;
  return self;
}

- (CGRect)contentSpriteNormalizedFrameOverride
{
  x = self->_contentSpriteNormalizedFrameOverride.origin.x;
  y = self->_contentSpriteNormalizedFrameOverride.origin.y;
  width = self->_contentSpriteNormalizedFrameOverride.size.width;
  height = self->_contentSpriteNormalizedFrameOverride.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($810C7C628FE0F9AC50A6216490AB88B8)contentsRectOverride
{
  v3 = *&self[38].var0.a;
  *&retstr->var0.a = *&self[37].var0.tx;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[38].var0.c;
  return self;
}

- (void)setPresentedContentsRect:(id *)a3
{
  v4 = *&a3->var0.c;
  v3 = *&a3->var0.tx;
  *&self->_presentedContentsRect.t.a = *&a3->var0.a;
  *&self->_presentedContentsRect.t.c = v4;
  *&self->_presentedContentsRect.t.tx = v3;
}

- ($810C7C628FE0F9AC50A6216490AB88B8)presentedContentsRect
{
  v3 = *&self[37].var0.a;
  *&retstr->var0.a = *&self[36].var0.tx;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[37].var0.c;
  return self;
}

- (void)setPreferredPresentedContentsRect:(id *)a3
{
  v4 = *&a3->var0.c;
  v3 = *&a3->var0.tx;
  *&self->_preferredPresentedContentsRect.t.a = *&a3->var0.a;
  *&self->_preferredPresentedContentsRect.t.c = v4;
  *&self->_preferredPresentedContentsRect.t.tx = v3;
}

- ($810C7C628FE0F9AC50A6216490AB88B8)preferredPresentedContentsRect
{
  v3 = *&self[36].var0.a;
  *&retstr->var0.a = *&self[35].var0.tx;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[36].var0.c;
  return self;
}

- (void)setPresentedKenBurnsAnimationCurrentRect:(id *)a3
{
  v4 = *&a3->var0.c;
  v3 = *&a3->var0.tx;
  *&self->_presentedKenBurnsAnimationCurrentRect.t.a = *&a3->var0.a;
  *&self->_presentedKenBurnsAnimationCurrentRect.t.c = v4;
  *&self->_presentedKenBurnsAnimationCurrentRect.t.tx = v3;
}

- ($810C7C628FE0F9AC50A6216490AB88B8)presentedKenBurnsAnimationCurrentRect
{
  v3 = *&self[35].var0.a;
  *&retstr->var0.a = *&self[34].var0.tx;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[35].var0.c;
  return self;
}

- (CGSize)presentedKenBurnsAnimationContentSize
{
  width = self->_presentedKenBurnsAnimationContentSize.width;
  height = self->_presentedKenBurnsAnimationContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)displayedTimelineOriginalSize
{
  width = self->_displayedTimelineOriginalSize.width;
  height = self->_displayedTimelineOriginalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)secondaryDividerScale
{
  width = self->_secondaryDividerScale.width;
  height = self->_secondaryDividerScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)secondaryDividerBounds
{
  x = self->_secondaryDividerBounds.origin.x;
  y = self->_secondaryDividerBounds.origin.y;
  width = self->_secondaryDividerBounds.size.width;
  height = self->_secondaryDividerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)primaryDividerScale
{
  width = self->_primaryDividerScale.width;
  height = self->_primaryDividerScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)primaryDividerBounds
{
  x = self->_primaryDividerBounds.origin.x;
  y = self->_primaryDividerBounds.origin.y;
  width = self->_primaryDividerBounds.size.width;
  height = self->_primaryDividerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($0D9E40152377BA30F182AD5EFB16E7FD)contentEdgeInsets
{
  v3 = *&self[20].var1.var1;
  *&retstr->var1.var1 = *&self[20].var0.var2;
  *&retstr->var2.var0 = v3;
  v4 = *&self[20].var2.var2;
  *&retstr->var2.var2 = *&self[20].var2.var0;
  *&retstr->var3.var1 = v4;
  v5 = *&self[20].var0.var0;
  *&retstr->var0.var0 = *&self[19].var3.var1;
  *&retstr->var0.var2 = v5;
  return self;
}

- (CGAffineTransform)contentsRectTransform
{
  v3 = *&self[34].a;
  *&retstr->a = *&self[33].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[34].c;
  return self;
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (CGRect)manualContentsRect
{
  x = self->_manualContentsRect.origin.x;
  y = self->_manualContentsRect.origin.y;
  width = self->_manualContentsRect.size.width;
  height = self->_manualContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)clippingInsets
{
  top = self->_clippingInsets.top;
  left = self->_clippingInsets.left;
  bottom = self->_clippingInsets.bottom;
  right = self->_clippingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXGLayout)timelineLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_timelineLayout);

  return WeakRetained;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)clipTimeRange
{
  v3 = *&self[33].var0.var0;
  *&retstr->var0.var0 = *&self[32].var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[33].var0.var3;
  return self;
}

- (void)internationalStyleTitlePreferencesDidChange
{
  if (self->_resourceKind != 3)
  {
    PXAssertGetLog();
  }

  [(PXStoryClipLayout *)self _invalidateContentVersion];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v14 = a3;
  if (ModelObservationContext == a5)
  {
    if ((a4 & 0x400000000) != 0 || (a4 & 0x1001000000000000) != 0 && self->_resourceKind == 3)
    {
      [(PXStoryClipLayout *)self _invalidateContent];
    }

    if ((a4 & 0x10000000) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
    }

    if ((a4 & 0x4000080000000) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateShouldAutoplay];
    }

    if ((a4 & 0x1000000000) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateContentMode];
    }

    if (a4)
    {
      v9 = [(PXStoryClipLayout *)self model];
      v10 = [v9 isExporting];

      if (v10)
      {
        [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
      }
    }

    if ((a4 & 0x20) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateOffsetFromCurrentSegment];
    }

    if ((a4 & 0x840000000) != 0)
    {
      [(PXStoryClipLayout *)self _invalidatePlayheadState];
    }

    if ((a4 & 0x200) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateColorGradeKind];
      if (self->_resourceKind == 3)
      {
        [(PXStoryClipLayout *)self _invalidateContentVersion];
      }
    }

    if ((a4 & 0x10000) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateSmartGradientAdjustment];
    }

    if ((a4 & 0x10) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateSegmentIdentifiers];
      [(PXStoryClipLayout *)self _invalidateOffsetFromCurrentSegment];
      v11 = [(PXStoryClipLayout *)self currentTextResourceInfo];
      v12 = [v11 type];

      if (v12 == 1)
      {
        [(PXStoryClipLayout *)self _invalidateTextResourceSpriteFrame];
      }
    }

    if ((a4 & 0x40) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateIsSegmentVisible];
    }

    if ((a4 & 0x1800000) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateWantsHUD];
    }

    if ((a4 & 0x40) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateHUD];
      if ((a4 & 0x80000000000000) == 0)
      {
LABEL_38:
        if ((a4 & 0x200000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_45;
      }
    }

    else if ((a4 & 0x80000000000000) == 0)
    {
      goto LABEL_38;
    }

    [(PXStoryClipLayout *)self _invalidateTextResourceSpriteFrame];
    [(PXStoryClipLayout *)self _invalidateContent];
    if ((a4 & 0x200000000000000) == 0)
    {
LABEL_39:
      if ((a4 & 0x40000000000000) == 0)
      {
        goto LABEL_49;
      }

LABEL_46:
      [(PXStoryClipLayout *)self _invalidateInactiveImageFilterAdjustment];
      [(PXStoryClipLayout *)self _invalidateContentVersion];
      goto LABEL_49;
    }

LABEL_45:
    [(PXStoryClipLayout *)self _invalidatePlayheadState];
    if ((a4 & 0x40000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (ClippingAnimationObservationContext == a5)
  {
    if ((a4 & 4) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateEdgeMaskEffects];
    }
  }

  else if (KenBurnsAnimationObservationContext == a5)
  {
    if ((a4 & 4) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateContentStyle];
    }
  }

  else
  {
    if (FocusHintTranslationAnimatorObservationContext != a5)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2918 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((a4 & 2) != 0)
    {
      [(PXStoryClipLayout *)self _invalidateContent];
    }
  }

LABEL_49:
}

- (id)itemPlacementSourceIdentifier
{
  v2 = [(PXStoryClipLayout *)self model];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (void)setDisplayedTimelineOriginalSize:(CGSize)a3
{
  if (a3.width != self->_displayedTimelineOriginalSize.width || a3.height != self->_displayedTimelineOriginalSize.height)
  {
    self->_displayedTimelineOriginalSize = a3;
    [(PXStoryClipLayout *)self _invalidateTextResourceSpriteFrame];
  }
}

- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(off_1E7722238 + 1);
  v27 = *off_1E7722238;
  v28 = v8;
  v29 = *(off_1E7722238 + 2);
  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 8);
  v11 = *(MEMORY[0x1E695F050] + 16);
  v12 = *(MEMORY[0x1E695F050] + 24);
  if (!v6)
  {
    goto LABEL_9;
  }

  v13 = [v6 displayedAsset];
  v14 = [(PXStoryClipLayout *)self _isDisplayingContentOfAsset:v13];

  if (!v14)
  {
    if ([(PXStoryClipLayout *)self isDisplayingTitle])
    {
      [v6 normalizedTitleRect];
LABEL_8:
      v9 = v21;
      v10 = v22;
      v11 = v23;
      v12 = v24;
      v20 = 1;
      goto LABEL_10;
    }

    if ([(PXStoryClipLayout *)self isDisplayingSubtitle])
    {
      [v6 normalizedSubtitleRect];
      goto LABEL_8;
    }

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  [v6 displayedAssetContentsRect];
  v15 = [(PXStoryClipLayout *)self itemPlacementSourceIdentifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__PXStoryClipLayout_setDetailedPlacementOverride_forItemReference___block_invoke;
  v26[3] = &unk_1E772D1B0;
  v26[4] = self;
  [v6 adjustPreferredPlacementInSourceWithIdentifier:v15 configuration:v26];

  [v6 normalizedDisplayedAssetRect];
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v20 = 2;
LABEL_10:
  v25[0] = v27;
  v25[1] = v28;
  v25[2] = v29;
  [(PXStoryClipLayout *)self setContentsRectOverride:v25];
  [(PXStoryClipLayout *)self setContentSpriteNormalizedFrameOverride:v20 coordinateSystem:v9, v10, v11, v12];
}

void __67__PXStoryClipLayout_setDetailedPlacementOverride_forItemReference___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 preferredPresentedContentsRect];
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
  [v3 setDisplayedAssetContentsRect:v5];
}

- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PXStoryClipLayout_getDetailedPresentedPlacement_forItemReference___block_invoke;
  aBlock[3] = &unk_1E772D188;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [v5 displayedAsset];
  v8 = [(PXStoryClipLayout *)self _isDisplayingContentOfAsset:v7];

  if (v8)
  {
    [(PXStoryClipLayout *)self presentedContentsRect];
    *v10 = *&v10[7];
    *&v10[2] = *&v10[9];
    *&v10[4] = *&v10[11];
    [v5 setDisplayedAssetContentsRect:v10];
    v9 = [(PXStoryClipLayout *)self itemPlacementSourceIdentifier];
    [v5 registerSourceIdentifier:v9];

    v6[2](v6, 2);
    [v5 setNormalizedDisplayedAssetRect:?];
  }

  else if ([(PXStoryClipLayout *)self isDisplayingTitle])
  {
    v6[2](v6, 1);
    [v5 setNormalizedTitleRect:?];
  }

  else if ([(PXStoryClipLayout *)self isDisplayingSubtitle])
  {
    v6[2](v6, 1);
    [v5 setNormalizedSubtitleRect:?];
  }
}

double __68__PXStoryClipLayout_getDetailedPresentedPlacement_forItemReference___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4010000000;
  v11 = &unk_1A561E057;
  v2 = *(MEMORY[0x1E695F050] + 16);
  v12 = *MEMORY[0x1E695F050];
  v13 = v2;
  v3 = *(a1 + 32);
  v4 = v3[219];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PXStoryClipLayout_getDetailedPresentedPlacement_forItemReference___block_invoke_2;
  v7[3] = &unk_1E772D160;
  v7[4] = v3;
  v7[5] = &v8;
  v7[6] = a2;
  [v3 enumerateSpritesInRange:v4 | 0x100000000 usingBlock:v7];
  v5 = v9[4];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)axSpriteIndexes
{
  v3 = [(PXStoryClipLayout *)self model];
  if ([v3 viewMode] != 3)
  {

    goto LABEL_5;
  }

  resourceKind = self->_resourceKind;
  if (resourceKind != 3)
  {

    if (resourceKind == 1)
    {
      goto LABEL_7;
    }

LABEL_5:
    v5 = objc_alloc_init(MEMORY[0x1E696AC90]);
    goto LABEL_8;
  }

LABEL_7:
  v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:self->_contentSpriteIndex];
LABEL_8:

  return v5;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_diagnosticHUDSpriteIndex != a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2755 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [(PXStoryClipLayout *)self HUDConfiguration];
  v10 = [(PXStoryClipLayout *)self _textForHUD];
  [v9 setText:v10];

  return v9;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_diagnosticHUDSpriteIndex != a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2745 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = objc_opt_class();

  return v9;
}

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_contentSpriteIndex == a3)
  {
    v8 = [(PXStoryClipLayout *)self resource];
    v9 = [v8 px_storyResourceColor];
  }

  else
  {
    if (self->_primaryDividerSpriteIndex != a3 && self->_secondaryDividerSpriteIndex != a3)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2735 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v9;
}

- (CGSize)attributedStringBoundingSizeForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_contentSpriteIndex != a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2719 description:@"Invalid index!"];
  }

  if (v7 != self)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2720 description:@"Invalid layout!"];
  }

  v8 = [(PXStoryClipLayout *)self currentTextResourceInfo];
  v9 = [v8 drawingContext];
  [v9 totalBounds];
  v11 = v10;
  v13 = v12;

  v14 = ceil(v11);
  v15 = ceil(v13);
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)drawingContextForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_contentSpriteIndex != a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2713 description:@"Invalid index!"];
  }

  if (v7 != self)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2714 description:@"Invalid layout!"];
  }

  v8 = [(PXStoryClipLayout *)self currentTextResourceInfo];
  v9 = [v8 drawingContext];

  return v9;
}

- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_contentSpriteIndex != a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2706 description:@"Invalid index!"];
  }

  if (v7 != self)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2707 description:@"Invalid layout!"];
  }

  v8 = [(PXStoryClipLayout *)self currentTextResourceInfo];
  [v8 boundingRectPadding];

  PXEdgeInsetsMake();
}

- (int64_t)stringDrawingOptionsForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_contentSpriteIndex != a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2700 description:@"Invalid index!"];
  }

  if (v7 != self)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2701 description:@"Invalid layout!"];
  }

  v8 = [(PXStoryClipLayout *)self currentTextResourceInfo];
  v9 = [v8 drawingOptions];

  return v9;
}

- (int64_t)verticalAlignmentForStringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_contentSpriteIndex != a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2694 description:@"Invalid index!"];
  }

  if (v7 != self)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2695 description:@"Invalid layout!"];
  }

  v8 = [(PXStoryClipLayout *)self currentTextResourceInfo];
  v9 = [v8 verticalAlignment];

  return v9;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_contentSpriteIndex != a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2688 description:@"Invalid index!"];
  }

  if (v7 != self)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:2689 description:@"Invalid layout!"];
  }

  v8 = [(PXStoryClipLayout *)self currentTextResourceInfo];
  v9 = [v8 attributedString];

  return v9;
}

- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = [(PXStoryClipLayout *)self attributedStringForSpriteAtIndex:*&a3 inLayout:a4];
  v5 = [v4 string];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F1741150;
  }

  v8 = v7;

  return v7;
}

- (BOOL)shouldApplyCleanApertureCropToStillImagesInLayout:(id)a3
{
  v3 = [(PXStoryClipLayout *)self model];
  v4 = [v3 configuration];
  v5 = ([v4 options] >> 1) & 1;

  return v5;
}

- (BOOL)useLowMemoryDecodeInLayout:(id)a3
{
  v3 = [(PXStoryClipLayout *)self model];
  v4 = [v3 configuration];
  v5 = [v4 useLowMemoryMode];

  return v5;
}

- (unint64_t)presentationIntentForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4
{
  v4 = [(PXStoryClipLayout *)self model:a3];
  if ([v4 isInline])
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  return v5;
}

- (id)adjustmentForDisplayAsset:(id)a3 spriteIndex:(unsigned int)a4 inLayout:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->_resourceKind == 5)
  {
    v10 = [(PXStoryClipLayout *)self smartGradientAdjustment];
LABEL_8:
    v13 = v10;
    goto LABEL_9;
  }

  if (self->_inactiveContentSpriteIndex == a4)
  {
    v11 = [(PXStoryClipLayout *)self inactiveImageFilterAdjustment];

    if (v11)
    {
      v10 = [(PXStoryClipLayout *)self inactiveImageFilterAdjustment];
      goto LABEL_8;
    }
  }

  v12 = [(PXStoryClipLayout *)self colorNormalizationAdjustment];

  if (v12)
  {
    v10 = [(PXStoryClipLayout *)self colorNormalizationAdjustment];
    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = [(PXStoryClipLayout *)self displayAsset:a3];
  v6[1] = [(PXStoryClipLayout *)self displayAsset];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetFetchResultFromArray();
}

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  v100 = *MEMORY[0x1E69E9840];
  if (![(PXStoryClipLayout *)self canShowHUD:a4.width]|| self->_resourceKind != 1)
  {
    v14 = 0;
    goto LABEL_53;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = [(PXStoryClipLayout *)self model];
  v8 = [(PXStoryClipLayout *)self displayAsset];
  if (a3 == 18)
  {
    [(PXStoryClipLayout *)self referenceSize];
    v15 = [v7 timeline];
    [v15 originalSize];

    PXSizeDescription();
  }

  if (a3 == 19)
  {
    v9 = [(PXStoryClipLayout *)self isSegmentVisible];
    v10 = @"N";
    if (v9)
    {
      v10 = @"Y";
    }

    [v6 appendFormat:@"Segment Visible: %@\n", v10];
    v11 = [(PXStoryClipLayout *)self shouldAutoplay];
    v12 = @"⏸";
    if (v11)
    {
      v12 = @"✅";
    }

    [v6 appendFormat:@"Autoplay: %@\n", v12];
    [(PXStoryClipLayout *)self autoplayTimeRange];
    v13 = PXStoryTimeRangeDescription(&v90);
    [v6 appendFormat:@"Time Range: %@\n", v13];

    [v8 playbackStyle];
    PXDisplayAssetPlaybackStyleDescription();
  }

  v16 = [(PXStoryClipLayout *)self clip];
  [v6 appendFormat:@"Clip ID: %li\n", objc_msgSend(v16, "identifier")];

  v17 = [(PXStoryClipLayout *)self segmentIdentifiers];
  v18 = [v17 px_shortDescription];
  [v6 appendFormat:@"Segment ID: %@\n", v18];

  v19 = [(PXStoryClipLayout *)self isSegmentVisible];
  v20 = @"N";
  if (v19)
  {
    v20 = @"Y";
  }

  [v6 appendFormat:@"Segment Visible: %@\n", v20];
  [(PXStoryClipLayout *)self colorGradeKind];
  v21 = PFStoryColorGradeKindToString();
  [v6 appendFormat:@"Color Grade Kind: %@\n", v21];

  if ([(PXStoryClipLayout *)self customColorGradeKind])
  {
    [(PXStoryClipLayout *)self customColorGradeKind];
    v22 = PFStoryColorGradeKindToString();
    [v6 appendFormat:@"Custom Color Grade Kind: %@\n", v22];
  }

  v23 = [(PXStoryClipLayout *)self colorNormalizationAdjustment];

  if (v23)
  {
    v24 = [(PXStoryClipLayout *)self colorNormalizationAdjustment];
    v25 = [v24 adjustmentSummary];
    [v6 appendFormat:@"Color Normalization Adjustment: %@\n", v25];

    v26 = +[PXStorySettings sharedInstance];
    LODWORD(v25) = [v26 debugShowColorNormalizationValues];

    if (!v25)
    {
      goto LABEL_24;
    }

    v27 = [(PXStoryClipLayout *)self colorNormalizationAdjustment];
    v28 = [v27 adjustmentDetails];
LABEL_22:
    v32 = v28;
    [v6 appendFormat:@"%@\n", v28];

    goto LABEL_23;
  }

  v29 = [(PXStoryClipLayout *)self colorNormalizationEffect];
  v30 = [v29 effectSummary];
  [v6 appendFormat:@"Color Normalization Effect: %@\n", v30];

  v27 = +[PXStorySettings sharedInstance];
  if ([v27 debugShowColorNormalizationValues])
  {
    v31 = [(PXStoryClipLayout *)self colorNormalizationEffect];

    if (!v31)
    {
      goto LABEL_24;
    }

    v27 = [(PXStoryClipLayout *)self colorNormalizationEffect];
    v28 = [v27 effectDetails];
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  [(PXStoryClipLayout *)self clipTimeRange];
  v90 = v97;
  *&v91 = v98;
  v33 = PXStoryTimeDescription(&v90);
  [v6 appendFormat:@"Clip duration: %@\n", v33];

  v34 = [(PXStoryClipLayout *)self clip];
  v35 = v34;
  if (v34)
  {
    [v34 info];
  }

  else
  {
    bzero(v82, 0x300uLL);
  }

  v94 = v87;
  v95 = v88;
  v96 = v89;
  v90 = v83;
  v91 = v84;
  v93 = v86;
  v92 = v85;
  v36 = PXStoryDurationInfoDescription(&v90);
  [v6 appendFormat:@"AEDL duration: %@\n", v36];

  v37 = [(PXStoryClipLayout *)self videoPresentationController];
  if (v37)
  {
    v73 = v8;
    v38 = +[PXStorySettings sharedInstance];
    v72 = [v38 debugShowVideoPlaybackDetails];

    v39 = [(PXStoryClipLayout *)self clip];
    PXStoryClipVideoSegmentTimeRange(v39, &v90);
    v40 = PXStoryTimeRangeDescription(&v90);
    [v6 appendFormat:@"Video Range: %@\n", v40];

    v41 = [(PXStoryClipLayout *)self clip];
    [(PXStoryClipLayout *)self clipTimeRange];
    PXStoryClipSegmentPlaybackTimeRangeIncludingJLCuts(v41, &v99, 1u, &v90);
    *&v99 = v90;
    v42 = HIDWORD(v90);
    DWORD2(v99) = DWORD2(v90);
    v43 = v91;
    v44 = v92;
    v45 = DWORD1(v92);
    v46 = *(&v92 + 1);

    if ((v42 & 1) != 0 && (v45 & 1) != 0 && !v46 && (*(&v43 + 1) & 0x8000000000000000) == 0)
    {
      *&v90 = v99;
      *(&v90 + 1) = __PAIR64__(v42, DWORD2(v99));
      v91 = v43;
      v92 = __PAIR64__(v45, v44);
      v47 = PXStoryTimeRangeDescription(&v90);
      [v6 appendFormat:@"Playback Range: %@\n", v47];
    }

    v8 = v73;
    if (v72)
    {
      [v37 actualTime];
      v48 = PXStoryTimeDescription(&v90);
      [v6 appendFormat:@"Current time: %@\n", v48];

      v49 = [v37 isReadyForImmediatePlayback];
      v50 = @"NO";
      if (v49)
      {
        v50 = @"YES";
      }

      [v6 appendFormat:@"prerolled: %@\n", v50];
      v51 = [v37 desiredPlayState];
      v52 = @"▶︎";
      if (!v51)
      {
        v52 = @"❚❚";
      }

      [v6 appendFormat:@"desired: %@\n", v52];
      v53 = [v37 actualPlayState];
      if ((v53 - 1) > 3)
      {
        v54 = @"?";
      }

      else
      {
        v54 = off_1E772D1D0[v53 - 1];
      }

      [v6 appendFormat:@"actual: %@\n", v54];
    }

    v55 = +[PXStorySettings sharedInstance];
    v56 = [v55 debugShowAudioPlaybackDetails];

    v57 = [(PXStoryClipLayout *)self clip];
    if (v57)
    {
      v58 = v57;
      [v57 info];
      v59 = v75;
      v60 = v76;
      v61 = v78;
      v62 = v79;
      v63 = v80;
      v64 = v81;
      v65 = v77;

      if (v75 > 3)
      {
        v66 = @"??";
        v67 = 1;
        goto LABEL_47;
      }
    }

    else
    {
      bzero(v74, 0x300uLL);
      v59 = 0;
      v60 = 0;
      v65 = 0.0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
    }

    v66 = off_1E7740310[v59];
    v67 = v59 > 1;
LABEL_47:
    v68 = v66;
    if (v60 > 0xA)
    {
      v69 = @"?";
    }

    else
    {
      v69 = off_1E7740330[v60];
    }

    v70 = v69;
    [v6 appendFormat:@"Audio: %@ (%@)\n", v68, v70];

    if ((v56 & v67) == 1)
    {
      [v6 appendFormat:@"Volume: %0.2f\n", *&v65];
      [v6 appendFormat:@"J&L Cuts: %0.2f/%0.2f\n", v61, v62];
      [v6 appendFormat:@"Fade in/out: %0.2f/%0.2f\n", v63, v64];
    }
  }

  v14 = [v6 copy];

LABEL_53:

  return v14;
}

- (void)_validateVideoPlaybackState
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = [(PXStoryClipLayout *)self videoPresentationController];
  if ([v2 desiredPlayState] == 1 && objc_msgSend(v2, "actualPlayState") != 2)
  {
    PXAssertGetLog();
  }
}

- (CGRect)_referenceRectForNormalizedCoordinateSystem:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v3 = [(PXStoryClipLayout *)self timelineLayout];
      if (v3)
      {
        [v3 contentSize];
        PXRectWithOriginAndSize();
      }

      PXAssertGetLog();
    case 1:
      [(PXStoryClipLayout *)self contentSize];
      PXRectWithOriginAndSize();
    case 0:
      PXAssertGetLog();
  }

  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_denormalizeRect:(CGRect)a3 coordinateSystem:(int64_t)a4
{
  [(PXStoryClipLayout *)self _referenceRectForNormalizedCoordinateSystem:a4];
  if (!CGRectIsNull(v8))
  {
    PXRectDenormalize();
  }

  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_normalizeRect:(CGRect)a3 coordinateSystem:(int64_t)a4
{
  [(PXStoryClipLayout *)self _referenceRectForNormalizedCoordinateSystem:a4];
  if (!CGRectIsNull(v8))
  {
    PXRectNormalize();
  }

  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)_textForHUD
{
  if ([(PXStoryClipLayout *)self wantsHUD])
  {
    v3 = [(PXStoryClipLayout *)self model];
    v4 = -[PXStoryClipLayout diagnosticTextForHUDType:displaySize:](self, "diagnosticTextForHUDType:displaySize:", [v3 diagnosticHUDType], 1920.0, 1080.0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXStoryHUDViewConfiguration)HUDConfiguration
{
  HUDConfiguration = self->_HUDConfiguration;
  if (!HUDConfiguration)
  {
    v4 = objc_alloc_init(PXStoryHUDViewConfiguration);
    v5 = self->_HUDConfiguration;
    self->_HUDConfiguration = v4;

    [(PXStoryHUDViewConfiguration *)self->_HUDConfiguration setTextRelativePosition:0.5, 0.5];
    v6 = [MEMORY[0x1E69DC888] orangeColor];
    [(PXStoryHUDViewConfiguration *)self->_HUDConfiguration setTintColor:v6];

    HUDConfiguration = self->_HUDConfiguration;
  }

  return HUDConfiguration;
}

- (unint64_t)_titleKind
{
  v3 = [(PXStoryClipLayout *)self model];
  if ([v3 thumbnailStyle] == 2)
  {
    v4 = 32;
  }

  else if ([v3 thumbnailStyle] == 3 || objc_msgSend(v3, "thumbnailStyle") == 4)
  {
    v4 = 64;
  }

  else if ([v3 thumbnailStyle] == 5)
  {
    v4 = 16;
  }

  else if ([v3 thumbnailStyle] == 1)
  {
    [(PXStoryClipLayout *)self referenceSize];
    v8 = v6 / v7;
    v9 = +[PXStorySettings sharedInstance];
    [v9 feedCardWideLandscapeAspectRatio];
    v11 = v10 + -0.001;

    if (v8 <= v11)
    {
      v4 = 4;
    }

    else
    {
      v4 = 8;
    }
  }

  else if ([v3 viewMode] == 5 || objc_msgSend(v3, "options") == 1)
  {
    [(PXStoryClipLayout *)self referenceSize];
    if (v12 == v13)
    {
      v4 = 256;
    }

    else
    {
      v4 = 128;
    }

    if ([v3 prefersExportLayoutMatchesPlayback])
    {
      v4 = 512;
    }
  }

  else
  {
    v14 = [v3 configuration];
    v15 = [v14 isPresentedForAirPlay];

    if (v15)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)_updateHUD
{
  diagnosticHUDSpriteIndex = self->_diagnosticHUDSpriteIndex;
  if (diagnosticHUDSpriteIndex != -1)
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__PXStoryClipLayout__updateHUD__block_invoke;
    v5[3] = &unk_1E77369E0;
    v5[4] = self;
    [(PXStoryClipLayout *)self modifySpritesInRange:diagnosticHUDSpriteIndex | 0x100000000 state:v5];
  }
}

uint64_t __31__PXStoryClipLayout__updateHUD__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5)
{
  result = [*(a1 + 32) wantsHUD];
  v9 = 0.0;
  if (result)
  {
    result = [*(a1 + 32) alpha];
    v9 = v10;
  }

  *a4 = v9;
  *(a5 + 32) = *(*(a1 + 32) + 912);
  return result;
}

- (void)_invalidateHUD
{
  ++self->_HUDContentVersion;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x1000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x1000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateHUD]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2403 description:{@"invalidating %lu after it already has been updated", 4096}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4096;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateWantsHUD
{
  v5 = [(PXStoryClipLayout *)self model];
  if (-[PXStoryClipLayout canShowHUD](self, "canShowHUD") && [v5 isHUDVisible] && self->_resourceKind == 1)
  {
    v3 = [v5 diagnosticHUDType];
    v4 = 0xC4000u >> v3;
    if (v3 > 0x13)
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  [(PXStoryClipLayout *)self setWantsHUD:v4 & 1];
}

- (void)_invalidateWantsHUD
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x800;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x800) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateWantsHUD]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2381 description:{@"invalidating %lu after it already has been updated", 2048}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2048;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)setSecondaryDividerBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_secondaryDividerBounds = &self->_secondaryDividerBounds;
  if (!CGRectEqualToRect(self->_secondaryDividerBounds, a3))
  {
    p_secondaryDividerBounds->origin.x = x;
    p_secondaryDividerBounds->origin.y = y;
    p_secondaryDividerBounds->size.width = width;
    p_secondaryDividerBounds->size.height = height;

    [(PXStoryClipLayout *)self _invalidateContent];
  }
}

- (void)setPrimaryDividerBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_primaryDividerBounds = &self->_primaryDividerBounds;
  if (!CGRectEqualToRect(self->_primaryDividerBounds, a3))
  {
    p_primaryDividerBounds->origin.x = x;
    p_primaryDividerBounds->origin.y = y;
    p_primaryDividerBounds->size.width = width;
    p_primaryDividerBounds->size.height = height;

    [(PXStoryClipLayout *)self _invalidateContent];
  }
}

- (void)setContentEdgeInsets:(id *)a3
{
  v4 = self->_contentEdgeInsets.top.preRotationInset == a3->var0.var0 && self->_contentEdgeInsets.top.rotationAngle == a3->var0.var1 && self->_contentEdgeInsets.top.postRotationInset == a3->var0.var2;
  if (!v4 || (self->_contentEdgeInsets.left.preRotationInset == a3->var1.var0 ? (v5 = self->_contentEdgeInsets.left.rotationAngle == a3->var1.var1) : (v5 = 0), v5 ? (v6 = self->_contentEdgeInsets.left.postRotationInset == a3->var1.var2) : (v6 = 0), v6 ? (v7 = self->_contentEdgeInsets.bottom.preRotationInset == a3->var2.var0) : (v7 = 0), v7 ? (v8 = self->_contentEdgeInsets.bottom.rotationAngle == a3->var2.var1) : (v8 = 0), v8 ? (v9 = self->_contentEdgeInsets.bottom.postRotationInset == a3->var2.var2) : (v9 = 0), v9 ? (v10 = self->_contentEdgeInsets.right.preRotationInset == a3->var3.var0) : (v10 = 0), v10 ? (v11 = self->_contentEdgeInsets.right.rotationAngle == a3->var3.var1) : (v11 = 0), v11 ? (v12 = self->_contentEdgeInsets.right.postRotationInset == a3->var3.var2) : (v12 = 0), !v12))
  {
    v13 = *&a3->var0.var2;
    *&self->_contentEdgeInsets.top.preRotationInset = *&a3->var0.var0;
    *&self->_contentEdgeInsets.top.postRotationInset = v13;
    v14 = *&a3->var1.var1;
    v15 = *&a3->var2.var0;
    v16 = *&a3->var3.var1;
    *&self->_contentEdgeInsets.bottom.postRotationInset = *&a3->var2.var2;
    *&self->_contentEdgeInsets.right.rotationAngle = v16;
    *&self->_contentEdgeInsets.left.rotationAngle = v14;
    *&self->_contentEdgeInsets.bottom.preRotationInset = v15;
    [(PXStoryClipLayout *)self _invalidateEdgeMaskEffects];
  }
}

- (void)setContentsRectTransform:(CGAffineTransform *)a3
{
  p_contentsRectTransform = &self->_contentsRectTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_contentsRectTransform.c;
  *&v10.a = *&self->_contentsRectTransform.a;
  *&v10.c = v7;
  *&v10.tx = *&self->_contentsRectTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_contentsRectTransform->c = *&a3->c;
    *&p_contentsRectTransform->tx = v9;
    *&p_contentsRectTransform->a = v8;
    [(PXStoryClipLayout *)self _invalidateContentStyle];
  }
}

- (void)_updateContentStyle
{
  v3 = [(PXStoryClipLayout *)self kenBurnsAnimation];
  [(PXStoryClipLayout *)self cornerRadius];
  v4 = [(PXStoryClipLayout *)self clip];
  v5 = v4;
  v8 = *(off_1E7722240 + 1);
  v9 = *off_1E7722240;
  v7 = *(off_1E7722240 + 2);
  if (v3)
  {
    [v3 currentRect];
  }

  else if (v4 && self->_resourceKind == 1)
  {
    if ([(PXStoryClipLayout *)self disableClippingAnimation:v7])
    {
      v6 = [v5 resource];
      [v6 px_storyResourceDisplayAsset];
      objc_claimAutoreleasedReturnValue();

      [(PXStoryClipLayout *)self referenceSize];
      PXSizeGetAspectRatio();
    }

    [v5 info];
  }

  [(PXStoryClipLayout *)self manualContentsRect:v7];
  PXStoryRectFromCGRect();
}

uint64_t __40__PXStoryClipLayout__updateContentStyle__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v4 = result;
    *(*(a3 + 24) + 36) = *(result + 88);
    [*(result + 32) contentScale];
    *(*(a3 + 24) + 60) = v5;
    v6 = *(v4 + 56);
    v7 = *(v4 + 40);
    v8 = v6;
    v9 = *(v4 + 72);
    PXGSpriteStyleSetPXStoryContentsRect();
  }

  return result;
}

void __40__PXStoryClipLayout__updateContentStyle__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 combinedEffect];
  LODWORD(v3) = [v6 effectId];
  v5 = [v4 mutableEffectIds];

  *(v5 + 4 * *(a1 + 40)) = v3;
}

- (void)_invalidateContentStyle
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x400;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x400) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateContentStyle]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2259 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1024;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentMode
{
  if ([(PXStoryClipLayout *)self isSegmentVisible])
  {
    v4 = [(PXStoryClipLayout *)self model];
    if ([v4 shouldAspectFitCurrentSegment])
    {
      v3 = [(PXStoryClipLayout *)self canAspectFitContent];
    }

    else
    {
      v3 = 0;
    }

    [(PXStoryClipLayout *)self setShouldAspectFitContent:v3];
  }

  else
  {

    [(PXStoryClipLayout *)self setShouldAspectFitContent:0];
  }
}

- (void)_invalidateContentMode
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x200000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x200000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateContentMode]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2251 description:{@"invalidating %lu after it already has been updated", 0x200000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x200000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateAnimations
{
  v3 = [(PXStoryClipLayout *)self clip];
  v4 = [(PXStoryClipLayout *)self animationController];
  v5 = +[PXStorySettings sharedInstance];
  if (self->_resourceKind == 1)
  {
    v6 = [(PXStoryClipLayout *)self canShowDynamicContent];
    if (v6)
    {
      v7 = [(PXStoryClipLayout *)self isSegmentVisible];
      LOBYTE(v6) = 0;
      if (v7)
      {
        if (v3)
        {
          v6 = [v5 wantsAnimations];
          if (v6)
          {
            if (!v4)
            {
              PXAssertGetLog();
            }
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__PXStoryClipLayout__updateAnimations__block_invoke;
  v10[3] = &unk_1E772D110;
  v13 = v6;
  v10[4] = self;
  v11 = v3;
  v12 = v5;
  v8 = v5;
  v9 = v3;
  [v4 performChanges:v10];
}

void __38__PXStoryClipLayout__updateAnimations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) kenBurnsAnimation];
  [v3 checkInAnimation:v4];

  v5 = [*(a1 + 32) clippingAnimation];
  [v3 checkInAnimation:v5];

  if (*(a1 + 56) == 1)
  {
    memset(__src, 0, 512);
    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 info];
    }

    else
    {
      bzero(__src, 0x300uLL);
    }

    v9 = [*(a1 + 32) model];
    v10 = [v9 configuration];
    v11 = [v10 movementAnimationCurve];

    if (v11 == 5)
    {
      [*(a1 + 48) movementAnimationLinearFraction];
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v55 = 0uLL;
    v56 = 0;
    v38 = __src[42];
    v39 = __src[43];
    *&v40 = *&__src[44];
    [PXStoryTransitionFactory visibleOrderOutDurationForTransitionInfo:&v38];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__PXStoryClipLayout__updateAnimations__block_invoke_2;
    aBlock[3] = &unk_1E772D098;
    v53 = v55;
    v14 = *(a1 + 32);
    v54 = v56;
    aBlock[4] = v14;
    v15 = _Block_copy(aBlock);
    v7 = 0;
    if (([*(a1 + 32) disableClippingAnimation] & 1) == 0)
    {
      v16 = ClippingAnimationIdentifierForClip(*(a1 + 40));
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __38__PXStoryClipLayout__updateAnimations__block_invoke_3;
      v46[3] = &unk_1E772D0C0;
      memcpy(v49, __src, sizeof(v49));
      v47 = *(a1 + 40);
      v48 = v15;
      v50 = v11;
      v51 = v13;
      v7 = [v3 checkOutAnimationWithIdentifier:v16 creationBlock:v46];
    }

    v45 = *(&__src[41] + 1);
    v43 = *(&__src[39] + 8);
    v44 = *(&__src[40] + 8);
    v38 = *(&__src[34] + 8);
    v39 = *(&__src[35] + 8);
    v40 = *(&__src[36] + 8);
    v41 = *(&__src[37] + 8);
    v42 = *(&__src[38] + 8);
    v17 = KenBurnsAnimationIdentifierForClip(*(a1 + 40));
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v22 = __38__PXStoryClipLayout__updateAnimations__block_invoke_4;
    v23 = &unk_1E772D0E8;
    v18 = *(a1 + 40);
    v24 = *(a1 + 32);
    v34 = v45;
    v30 = v41;
    v25 = v18;
    memcpy(v35, __src, sizeof(v35));
    v26 = v15;
    v36 = v11;
    v37 = v13;
    v19 = v15;
    v8 = [v3 checkOutAnimationWithIdentifier:v17 creationBlock:&v20];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  [*(a1 + 32) setClippingAnimation:{v7, v20, v21, v22, v23, v24}];
  [*(a1 + 32) setKenBurnsAnimation:v8];
}

void __38__PXStoryClipLayout__updateAnimations__block_invoke_2(uint64_t a1@<X0>, CMTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  lhs = *a2;
  rhs = *(a1 + 40);
  CMTimeAdd(a4, &lhs, &rhs);
  if (![*(a1 + 32) offsetFromCurrentSegment] && a3)
  {
    v7 = [*(a1 + 32) model];
    v8 = v7;
    if (v7)
    {
      [v7 timeLeftInCurrentSegment];
    }

    else
    {
      memset(&v9, 0, sizeof(v9));
    }

    lhs = *a4;
    rhs = v9;
    CMTimeAdd(&v10, &lhs, &rhs);
    *a4 = v10;
  }
}

PXStoryTiltedEdgeInsetsAnimation *__38__PXStoryClipLayout__updateAnimations__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 528);
  v3 = *(a1 + 560);
  v49 = *(a1 + 544);
  v50 = v3;
  v4 = *(a1 + 560);
  v51 = *(a1 + 576);
  v5 = *(a1 + 464);
  v6 = *(a1 + 496);
  v45 = *(a1 + 480);
  v46 = v6;
  v7 = *(a1 + 528);
  v8 = *(a1 + 496);
  v47 = *(a1 + 512);
  v48 = v7;
  v9 = *(a1 + 432);
  v10 = *(a1 + 400);
  v41 = *(a1 + 416);
  v42 = v9;
  v11 = *(a1 + 432);
  v12 = *(a1 + 464);
  v43 = *(a1 + 448);
  v44 = v12;
  v13 = *(a1 + 400);
  v39 = *(a1 + 384);
  v40 = v13;
  v35 = v41;
  v36 = v11;
  v37 = v43;
  v38 = v5;
  v33 = v39;
  v34 = v10;
  v29 = v47;
  v30 = v2;
  v31 = v49;
  v32 = v4;
  v52 = *(a1 + 592);
  v27 = v45;
  v28 = v8;
  v14 = [PXStoryTiltedEdgeInsetsAnimation alloc];
  v15 = ClippingAnimationIdentifierForClip(*(a1 + 32));
  v16 = *(*(a1 + 40) + 16);
  v20 = v51;
  *&v21 = v52;
  v16(v26);
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v20 = v33;
  v21 = v34;
  v19[2] = v29;
  v19[3] = v30;
  v19[4] = v31;
  v19[5] = v32;
  v19[0] = v27;
  v19[1] = v28;
  v17 = [(PXStoryTiltedEdgeInsetsAnimation *)v14 initWithIdentifier:v15 sourceEdgeInsets:&v20 targetEdgeInsets:v19 duration:v26 curveInfo:*(a1 + 816), *(a1 + 824)];

  return v17;
}

void __38__PXStoryClipLayout__updateAnimations__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) model];
  if ([v2 isPerformingViewControllerTransition])
  {
  }

  else
  {
    v3 = objc_opt_class();
    [*(a1 + 32) presentedKenBurnsAnimationContentSize];
    v5 = v4;
    v7 = v6;
    [*(a1 + 32) contentSize];
    LOBYTE(v3) = [v3 shouldContinueKenBurnsAnimationFromPreviousPresentedContentSize:v5 toCurrentContentSize:{v7, v8, v9}];

    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 presentedKenBurnsAnimationCurrentRect];
  }

LABEL_6:
  PXStoryRectIsNull();
}

- (void)_invalidateAnimations
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x80;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x80) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateAnimations]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2159 description:{@"invalidating %lu after it already has been updated", 128}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 128;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidatePlayheadState
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x100000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x100000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidatePlayheadState]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2078 description:{@"invalidating %lu after it already has been updated", 0x100000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x100000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateOffsetFromCurrentSegment
{
  v3 = [(PXStoryClipLayout *)self model];
  v8 = [v3 timeline];

  v4 = [(PXStoryClipLayout *)self model];
  v5 = [v8 indexOfSegmentWithIdentifier:{objc_msgSend(v4, "currentSegmentIdentifier")}];

  v6 = [(PXStoryClipLayout *)self segmentIdentifiers];
  v7 = [v8 indexOfSegmentWithIdentifier:{objc_msgSend(v6, "firstIndex")}];

  [(PXStoryClipLayout *)self setOffsetFromCurrentSegment:v7 - v5];
}

- (void)_invalidateOffsetFromCurrentSegment
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x800000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x800000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateOffsetFromCurrentSegment]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2067 description:{@"invalidating %lu after it already has been updated", 0x800000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x800000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateIsSegmentVisible
{
  v5 = [(PXStoryClipLayout *)self model];
  v3 = [v5 visibleSegmentIdentifiers];
  v4 = [(PXStoryClipLayout *)self segmentIdentifiers];
  -[PXStoryClipLayout setIsSegmentVisible:](self, "setIsSegmentVisible:", [v3 px_intersectsWithIndexSet:v4]);
}

- (void)_invalidateIsSegmentVisible
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateIsSegmentVisible]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2059 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSegmentIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = [(PXStoryClipLayout *)self model];
  v5 = [v4 timeline];
  [(PXStoryClipLayout *)self clipTimeRange];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PXStoryClipLayout__updateSegmentIdentifiers__block_invoke;
  v7[3] = &unk_1E772D070;
  v8 = v3;
  v6 = v3;
  [v5 enumerateSegmentsInTimeRange:v9 usingBlock:v7];

  [(PXStoryClipLayout *)self setSegmentIdentifiers:v6];
}

uint64_t __46__PXStoryClipLayout__updateSegmentIdentifiers__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 >= 1)
  {
    v14 = v7;
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v8;
    v19 = v9;
    v11 = a2;
    v12 = result;
    do
    {
      v13 = *a4;
      a4 += 25;
      result = [*(v12 + 32) addIndex:{v13, v14, v15, v16, v17, v18, v19}];
      --v11;
    }

    while (v11);
  }

  return result;
}

- (void)_invalidateSegmentIdentifiers
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateSegmentIdentifiers]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:2045 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContent
{
  [(PXStoryClipLayout *)self contentSize];
  v5 = v4;
  v7 = v6;
  v8 = [(PXStoryClipLayout *)self localNumberOfSprites];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PXStoryClipLayout__updateContent__block_invoke;
  v9[3] = &unk_1E772D048;
  v9[4] = self;
  v9[5] = v5;
  v9[6] = v7;
  v9[7] = a2;
  [(PXStoryClipLayout *)self modifySpritesInRange:v8 << 32 fullState:v9];
  [(PXStoryClipLayout *)self _invalidateContentStyle];
  [(PXStoryClipLayout *)self _invalidateHUD];
}

void __35__PXStoryClipLayout__updateContent__block_invoke(uint64_t a1)
{
  *&v1 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v3 = v2;
  v5 = v4;
  __src[97] = *MEMORY[0x1E69E9840];
  [*(v4 + 32) contentBounds];
  x = v219.origin.x;
  y = v219.origin.y;
  width = v219.size.width;
  height = v219.size.height;
  if (CGRectIsNull(v219))
  {
    PXRectWithOriginAndSize();
  }

  [*(v5 + 32) alpha];
  v11 = v10;
  [*(v5 + 32) contentAlpha];
  v13 = v11 * v12;
  [*(v5 + 32) displayScale];
  *&v14 = v14;
  rect_8 = *&v14;
  [*(v5 + 32) referenceDepth];
  v16 = v15;
  v17 = [*(v5 + 32) model];
  v189 = [v17 isExporting];

  v18 = [*(v5 + 32) clip];
  v19 = v18;
  if (v18)
  {
    [v18 info];
    v20 = vcvt_f32_f64(v217);
  }

  else
  {
    bzero(v216, 0x300uLL);
    v20 = 0;
  }

  v21 = v13;
  v204 = vmul_n_f32(v20, rect_8);

  v22 = [*(v5 + 32) model];
  v198 = 16 * ([v22 viewMode] == 1);
  v23 = *(off_1E7722048 + 70);
  v196 = [v22 timeline];
  v24 = 0;
  v25 = 0;
  v26 = *(v5 + 32);
  v27 = v26[112];
  v197 = 0.0;
  v190 = y;
  v192 = height;
  v193 = width;
  if (v27 > 3)
  {
    if (v27 == 4)
    {
      v65 = [v26 resource];
      v66 = [v65 px_storyResourceColorType];
      if (v66 == 1)
      {
        v188 = v16 * -0.0;
      }

      else
      {
        v188 = 0.0;
        if (!v66)
        {
          v67 = [MEMORY[0x1E696AAA8] currentHandler];
          [v67 handleFailureInMethod:*(v5 + 56) object:*(v5 + 32) file:@"PXStoryClipLayout.m" lineNumber:1912 description:@"Code which should be unreachable has been reached"];

          abort();
        }
      }

      v25 = 0;
      v24 = 5;
      __asm { FMOV            V0.2S, #1.0 }

      v204 = _D0;
      goto LABEL_51;
    }

    if (v27 != 5)
    {
      goto LABEL_25;
    }

    v60 = [v26 clip];
    v61 = v60;
    if (v60)
    {
      [v60 info];
      v62 = vcvt_f32_f64(v214);
    }

    else
    {
      bzero(v213, 0x300uLL);
      v62 = 0;
    }

    v204 = v62;

    v73 = [*(v5 + 32) clip];
    v74 = v73;
    if (v73)
    {
      [v73 info];
      if (v212[32])
      {
        v75 = [*(v5 + 32) shouldAspectFitContent];

        if ((v75 & 1) == 0)
        {
          v198 |= [*(v5 + 32) isSegmentVisible];
          v21 = 0.0;
        }

        goto LABEL_40;
      }
    }

    else
    {
      bzero(v212, 0x300uLL);
    }

LABEL_40:
    v25 = 0;
    v188 = v16 * -0.1;
    v24 = 2;
    v76 = v16 * -0.19;
    v197 = v76;
    goto LABEL_51;
  }

  if (v27 == 1)
  {
    v63 = [v26 clip];
    v64 = v63;
    memset(__dst, 0, 512);
    if (v63)
    {
      [v63 info];
    }

    else
    {
      bzero(__dst, 0x300uLL);
    }

    if (([v22 isPerformingViewControllerTransition] & 1) != 0 || *(*(v5 + 32) + 913) == 1)
    {
      v77 = [v196 clipWithIdentifier:{objc_msgSend(v64, "identifier")}];
      v78 = v77;
      if (v77)
      {
        [v77 info];
        memcpy(__dst, __src, sizeof(__dst));
      }
    }

    memcpy(__src, __dst, 0x300uLL);
    PXStoryMediaSizeForDisplayAssetClipInfo(__src);
  }

  if (v27 != 3)
  {
LABEL_25:
    v188 = 0.0;
LABEL_51:
    v209 = height;
    v208 = width;
    v203 = y;
    rect = x;
    goto LABEL_52;
  }

  v194 = v13;
  [v26 textResourceSpriteFrame];
  rect = v28;
  v203 = v29;
  v208 = v30;
  v209 = v31;
  [*(v5 + 32) relativeZPositionAboveLegibilityGradients];
  v32 = 0.4;
  if (v33 >= 0.4)
  {
    [*(v5 + 32) relativeZPositionAboveLegibilityGradients];
    v32 = v34;
  }

  v35.f64[0] = v208;
  v35.f64[1] = v209;
  v205 = v35;
  [*(v5 + 32) referenceSize];
  v37 = v36;
  v39 = v38;
  [*(v5 + 32) displayedTimelineOriginalSize];
  v41 = v40;
  v43 = v42;
  if ([v22 thumbnailStyle] == 2 || objc_msgSend(v22, "thumbnailStyle") == 3 || objc_msgSend(v22, "thumbnailStyle") == 4)
  {
    v44 = v205;
  }

  else
  {
    v44 = v205;
    if (v37 < v41)
    {
      rect = rect * (v37 / v41);
      v203 = v203 * (v39 / v43);
      v208 = v208 * (v37 / v41);
      v209 = v209 * (v39 / v43);
    }
  }

  v45 = vcvt_f32_f64(v44);
  v46 = [*(v5 + 32) currentTextResourceInfo];
  if ([v46 layoutScheme] == 1)
  {
    v47 = [v22 layoutSpec];
    [v47 distanceBetweenChapterTitleBaselineAndBottomWithChrome];
    v49 = v48;
    [v47 distanceBetweenChapterTitleBaselineAndBottomWithoutChrome];
    if (v49 != v50)
    {
      v51 = *(v5 + 48);
      [v47 distanceBetweenChapterTitleBaselineAndBottomWithChrome];
      v206 = v51 - v52;
      v220.origin.x = rect;
      v220.origin.y = v203;
      v220.size.width = v208;
      v220.size.height = v209;
      MaxY = CGRectGetMaxY(v220);
      [v46 boundingRectPadding];
      v55 = MaxY - v54;
      [v22 chromeVisibilityFraction];
      v203 = v203 - v56 * fmax(v55 - v206, 0.0);
    }
  }

  v188 = v32 * -v16;
  v204 = vmul_n_f32(v45, rect_8);
  v57 = [*(v5 + 32) shouldAspectFitContent];
  [v22 titleOpacity];
  v59 = 0.0;
  if (!v57)
  {
    v59 = v194;
  }

  v21 = v58 * v59;

  v23 = 3;
  v25 = 257;
  v24 = 3;
  y = v190;
LABEL_52:
  *(*(v5 + 32) + 904) = 1.0;
  [*(v5 + 32) contentSpriteNormalizedFrameOverride];
  v191 = v16;
  v187 = x;
  v195 = v21;
  if (!CGRectIsNull(v221))
  {
    v184 = *MEMORY[0x1E695F050];
    v185 = *(MEMORY[0x1E695F050] + 8);
    v186 = *(MEMORY[0x1E695F050] + 16);
    rect_8a = *(MEMORY[0x1E695F050] + 24);
    v79 = [*(v5 + 32) contentSpriteNormalizedFrameOverrideCoordinateSystem];
    if (v79 == 2)
    {
      v83 = [*(v5 + 32) timelineLayout];
      if (v83)
      {
        [v83 contentSize];
        PXRectWithOriginAndSize();
      }

      PXAssertGetLog();
    }

    v80 = x;
    v81 = v192;
    v82 = v193;
    if (v79 != 1)
    {
      if (!v79)
      {
        PXAssertGetLog();
      }

      v80 = v184;
      y = v185;
      v82 = v186;
      v81 = rect_8a;
    }

    v222.origin.x = v80;
    v222.origin.y = y;
    v222.size.width = v82;
    v222.size.height = v81;
    if (!CGRectIsNull(v222))
    {
      PXRectDenormalize();
    }
  }

  v84 = *(v5 + 32);
  v85 = *(v84 + 876);
  if (v85 == -1)
  {
    v105 = v191;
    v104 = v197;
    v89 = v203;
    v95 = v204;
    v88 = rect;
  }

  else
  {
    v86 = v3[2] + 32 * v85;
    v87 = v188;
    v88 = rect;
    v223.origin.x = rect;
    v89 = v203;
    v223.origin.y = v203;
    v223.size.width = v208;
    v223.size.height = v209;
    MidX = CGRectGetMidX(v223);
    v224.origin.x = rect;
    v224.origin.y = v203;
    v224.size.width = v208;
    v224.size.height = v209;
    MidY = CGRectGetMidY(v224);
    v225.origin.x = rect;
    v225.origin.y = v203;
    v225.size.width = v208;
    v225.size.height = v209;
    rect_8b = CGRectGetWidth(v225);
    v226.origin.x = rect;
    v226.origin.y = v203;
    v226.size.width = v208;
    v226.size.height = v209;
    v92 = CGRectGetHeight(v226);
    v93.f64[0] = rect_8b;
    v93.f64[1] = v92;
    *v86 = MidX;
    *(v86 + 8) = MidY;
    *(v86 + 16) = v87;
    *(v86 + 24) = vcvt_f32_f64(v93);
    v94 = v3[4];
    *(v94 + 40 * *(*(v5 + 32) + 876) + 1) = v24;
    v95 = v204;
    *(v94 + 40 * *(*(v5 + 32) + 876) + 8) = v204;
    v96 = v3[4];
    *(v96 + 40 * *(*(v5 + 32) + 876) + 32) = *(*(v5 + 32) + 892);
    *(v96 + 40 * *(*(v5 + 32) + 876) + 24) = v25;
    *(v96 + 40 * *(*(v5 + 32) + 876) + 34) = v198;
    v97 = (v3[3] + 160 * *(*(v5 + 32) + 876));
    v98 = *(off_1E7722048 + 1);
    *v97 = *off_1E7722048;
    v97[1] = v98;
    v99 = *(off_1E7722048 + 5);
    v97[4] = *(off_1E7722048 + 4);
    v97[5] = v99;
    v100 = *(off_1E7722048 + 3);
    v97[2] = *(off_1E7722048 + 2);
    v97[3] = v100;
    v101 = *(off_1E7722048 + 9);
    v97[8] = *(off_1E7722048 + 8);
    v97[9] = v101;
    v102 = *(off_1E7722048 + 7);
    v97[6] = *(off_1E7722048 + 6);
    v97[7] = v102;
    v103 = v3[3];
    *(v103 + 160 * *(*(v5 + 32) + 876)) = v195;
    v104 = v197;
    *(v103 + 160 * *(*(v5 + 32) + 876) + 52) = v197;
    *(v103 + 160 * *(*(v5 + 32) + 876) + 70) = v23;
    v84 = *(v5 + 32);
    v105 = v191;
  }

  v106 = *(v84 + 872);
  if (v106 != -1)
  {
    if (*(v84 + 896) == 1)
    {
      v107 = [v22 configuration];
      v108 = [v107 allowInactiveAppearance];

      if ((v108 & 1) == 0)
      {
        v24 = 0;
      }

      v106 = *(*(v5 + 32) + 872);
    }

    else
    {
      v24 = 0;
    }

    v109 = v3[2] + 32 * v106;
    v227.origin.x = v88;
    v227.origin.y = v89;
    v227.size.width = v208;
    v227.size.height = v209;
    v111 = CGRectGetMidX(v227);
    v228.origin.x = v88;
    v228.origin.y = v89;
    v228.size.width = v208;
    v228.size.height = v209;
    v112 = CGRectGetMidY(v228);
    v229.origin.x = v88;
    v229.origin.y = v89;
    v229.size.width = v208;
    v229.size.height = v209;
    v207 = CGRectGetWidth(v229);
    v230.origin.x = v88;
    v230.origin.y = v89;
    v230.size.width = v208;
    v230.size.height = v209;
    v113 = CGRectGetHeight(v230);
    v114.f64[0] = v207;
    v114.f64[1] = v113;
    *v109 = v111;
    *(v109 + 8) = v112;
    v110 = v105 * -0.25;
    *(v109 + 16) = v110;
    *(v109 + 24) = vcvt_f32_f64(v114);
    v115 = v3[4];
    *(v115 + 40 * *(*(v5 + 32) + 872) + 1) = v24;
    *(v115 + 40 * *(*(v5 + 32) + 872) + 8) = v95;
    v116 = v3[4];
    *(v116 + 40 * *(*(v5 + 32) + 872) + 32) = *(*(v5 + 32) + 892);
    *(v116 + 40 * *(*(v5 + 32) + 872) + 34) = v198;
    v117 = (v3[3] + 160 * *(*(v5 + 32) + 872));
    v118 = *(off_1E7722048 + 7);
    v117[6] = *(off_1E7722048 + 6);
    v117[7] = v118;
    v119 = *(off_1E7722048 + 9);
    v117[8] = *(off_1E7722048 + 8);
    v117[9] = v119;
    v120 = *(off_1E7722048 + 3);
    v117[2] = *(off_1E7722048 + 2);
    v117[3] = v120;
    v121 = *(off_1E7722048 + 5);
    v117[4] = *(off_1E7722048 + 4);
    v117[5] = v121;
    v122 = *(off_1E7722048 + 1);
    *v117 = *off_1E7722048;
    v117[1] = v122;
    [v22 inactiveImageFilterIntensity];
    *&v123 = v123;
    v124 = v3[3];
    *(v124 + 160 * *(*(v5 + 32) + 872)) = LODWORD(v123);
    *(v124 + 160 * *(*(v5 + 32) + 872) + 52) = v104;
    *(v124 + 160 * *(*(v5 + 32) + 872) + 70) = v23;
    v84 = *(v5 + 32);
  }

  v125 = *(v84 + 880);
  if (v125 != -1)
  {
    v126 = v3[2] + 32 * v125;
    v231.origin.x = v187;
    v231.origin.y = v190;
    v231.size.width = v193;
    v231.size.height = v192;
    v128 = CGRectGetMidX(v231);
    v232.origin.x = v187;
    v232.origin.y = v190;
    v232.size.width = v193;
    v232.size.height = v192;
    v129 = CGRectGetMidY(v232);
    v233.origin.x = v187;
    v233.origin.y = v190;
    v233.size.width = v193;
    v233.size.height = v192;
    v210 = CGRectGetWidth(v233);
    v234.origin.x = v187;
    v234.origin.y = v190;
    v234.size.width = v193;
    v234.size.height = v192;
    v130 = CGRectGetHeight(v234);
    v131.f64[0] = v210;
    v131.f64[1] = v130;
    *v126 = v128;
    *(v126 + 8) = v129;
    v127 = v105 * -0.9;
    *(v126 + 16) = v127;
    *(v126 + 24) = vcvt_f32_f64(v131);
    v132 = (v3[3] + 160 * *(*(v5 + 32) + 880));
    v133 = *(off_1E7722048 + 1);
    *v132 = *off_1E7722048;
    v132[1] = v133;
    v134 = *(off_1E7722048 + 5);
    v132[4] = *(off_1E7722048 + 4);
    v132[5] = v134;
    v135 = *(off_1E7722048 + 3);
    v132[2] = *(off_1E7722048 + 2);
    v132[3] = v135;
    v136 = *(off_1E7722048 + 9);
    v132[8] = *(off_1E7722048 + 8);
    v132[9] = v136;
    v137 = *(off_1E7722048 + 7);
    v132[6] = *(off_1E7722048 + 6);
    v132[7] = v137;
    if (v189)
    {
      v138 = 0;
    }

    else
    {
      v138 = 10;
    }

    v139 = v3[4];
    *(v139 + 40 * *(*(v5 + 32) + 880) + 1) = v138;
    *(v139 + 40 * *(*(v5 + 32) + 880)) = 1;
    *(v139 + 40 * *(*(v5 + 32) + 880) + 32) = *(*(v5 + 32) + 912);
    v84 = *(v5 + 32);
  }

  [v84 primaryDividerBounds];
  v144 = *(v5 + 32);
  v145 = v144[221];
  if (v145 != -1)
  {
    v146 = v140;
    v147 = v141;
    v148 = v142;
    v149 = v143;
    __asm { FMOV            V0.2S, #1.0 }

    *(v3[4] + 40 * v145 + 8) = _D0;
    *(v3[4] + 40 * *(*(v5 + 32) + 884) + 1) = 5;
    v151 = (v3[3] + 160 * *(*(v5 + 32) + 884));
    v152 = *(off_1E7722048 + 7);
    v151[6] = *(off_1E7722048 + 6);
    v151[7] = v152;
    v153 = *(off_1E7722048 + 9);
    v151[8] = *(off_1E7722048 + 8);
    v151[9] = v153;
    v154 = *(off_1E7722048 + 3);
    v151[2] = *(off_1E7722048 + 2);
    v151[3] = v154;
    v155 = *(off_1E7722048 + 5);
    v151[4] = *(off_1E7722048 + 4);
    v151[5] = v155;
    v156 = *(off_1E7722048 + 1);
    *v151 = *off_1E7722048;
    v151[1] = v156;
    v157 = v146;
    *&v156 = v147;
    IsNull = CGRectIsNull(*(&v142 - 2));
    v159 = 0.0;
    if (!IsNull)
    {
      v160 = v3[2] + 32 * *(*(v5 + 32) + 884);
      v235.origin.x = v146;
      v235.origin.y = v147;
      v235.size.width = v148;
      v235.size.height = v149;
      v162 = CGRectGetMidX(v235);
      v236.origin.x = v146;
      v236.origin.y = v147;
      v236.size.width = v148;
      v236.size.height = v149;
      v163 = CGRectGetMidY(v236);
      v237.origin.x = v146;
      v237.origin.y = v147;
      v237.size.width = v148;
      v237.size.height = v149;
      v211 = CGRectGetWidth(v237);
      v238.origin.x = v146;
      v238.origin.y = v147;
      v238.size.width = v148;
      v238.size.height = v149;
      v164 = CGRectGetHeight(v238);
      v165.f64[0] = v211;
      v165.f64[1] = v164;
      *v160 = v162;
      *(v160 + 8) = v163;
      v161 = v105 * -0.3;
      *(v160 + 16) = v161;
      *(v160 + 24) = vcvt_f32_f64(v165);
      [*(v5 + 32) primaryDividerAlpha];
      v159 = v166;
    }

    *(v3[3] + 160 * *(*(v5 + 32) + 884)) = v159;
    v144 = *(v5 + 32);
  }

  [v144 secondaryDividerBounds];
  v171 = *(*(v5 + 32) + 888);
  if (v171 != -1)
  {
    v172 = v167;
    v173 = v168;
    v174 = v169;
    v175 = v170;
    __asm { FMOV            V0.2S, #1.0 }

    *(v3[4] + 40 * v171 + 8) = _D0;
    *(v3[4] + 40 * *(*(v5 + 32) + 888) + 1) = 5;
    v177 = (v3[3] + 160 * *(*(v5 + 32) + 888));
    v178 = *(off_1E7722048 + 7);
    v177[6] = *(off_1E7722048 + 6);
    v177[7] = v178;
    v179 = *(off_1E7722048 + 9);
    v177[8] = *(off_1E7722048 + 8);
    v177[9] = v179;
    v180 = *(off_1E7722048 + 3);
    v177[2] = *(off_1E7722048 + 2);
    v177[3] = v180;
    v181 = *(off_1E7722048 + 5);
    v177[4] = *(off_1E7722048 + 4);
    v177[5] = v181;
    v182 = *(off_1E7722048 + 1);
    *v177 = *off_1E7722048;
    v177[1] = v182;
    v183 = v172;
    *&v182 = v173;
    if (!CGRectIsNull(*(&v169 - 2)))
    {
      [*(v5 + 32) secondaryDividerScale];
      v239.origin.x = v172;
      v239.origin.y = v173;
      v239.size.width = v174;
      v239.size.height = v175;
      CGRectGetWidth(v239);
      v240.origin.x = v172;
      v240.origin.y = v173;
      v240.size.width = v174;
      v240.size.height = v175;
      CGRectGetHeight(v240);
      PXRectWithSizeAlignedToRectEdges();
    }

    *(v3[3] + 160 * *(*(v5 + 32) + 888)) = 0;
  }
}

- (void)_updateModelPresentedTextProperties
{
  v3 = [(PXStoryClipLayout *)self model];
  if (([v3 isExporting] & 1) == 0 && (objc_msgSend(v3, "isAsync") & 1) == 0)
  {
    v4 = [(PXStoryClipLayout *)self currentTextResourceInfo];
    v5 = v4;
    if (self->_resourceKind == 3 && (![v4 type] || objc_msgSend(v5, "type") == 1))
    {
      [v5 boundingRectPadding];
      sub_1A524D1E4();
    }
  }
}

void __56__PXStoryClipLayout__updateModelPresentedTextProperties__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) type];
  if (v3 == 1)
  {
    [v4 setPresentedSubtitleFrame:*(a1 + 40)];
  }

  else if (!v3)
  {
    [v4 setPresentedTitleFrame:*(a1 + 40)];
  }

  [v4 setTitleAlignment:{objc_msgSend(*(a1 + 32), "textAlignment")}];
}

- (void)_invalidateModelPresentedTextProperties
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x2000000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x2000000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateModelPresentedTextProperties]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1781 description:{@"invalidating %lu after it already has been updated", 0x2000000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x2000000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTextResourceSpriteFrame
{
  if (self->_resourceKind == 3)
  {
    v4 = [(PXStoryClipLayout *)self currentTextResourceInfo];
    [(PXStoryClipLayout *)self setCurrentTextResourceInfo:v4];
    v5 = [(PXStoryClipLayout *)self model];
    v6 = [v5 timeline];
    [(PXStoryClipLayout *)self contentSize];
    [(PXStoryClipLayout *)self contentBounds];
    x = v93.origin.x;
    y = v93.origin.y;
    width = v93.size.width;
    height = v93.size.height;
    if (CGRectIsNull(v93))
    {
      PXRectWithOriginAndSize();
    }

    v91[0] = 0;
    v91[1] = v91;
    v91[2] = 0x3032000000;
    v91[3] = __Block_byref_object_copy__1835;
    v91[4] = __Block_byref_object_dispose__1836;
    v92 = 0;
    v88[0] = 0;
    v88[1] = v88;
    v88[2] = 0x4010000000;
    v88[3] = &unk_1A561E057;
    v89 = 0u;
    v90 = 0u;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__1835;
    v86 = __Block_byref_object_dispose__1836;
    v87 = 0;
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v81 = 0;
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v79 = 0;
    [(PXStoryClipLayout *)self clipTimeRange];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke;
    v67[3] = &unk_1E772CFD0;
    v71 = v88;
    v11 = v6;
    v68 = v11;
    v69 = self;
    v72 = v91;
    v73 = v80;
    v76 = a2;
    v74 = v78;
    v12 = v4;
    v70 = v12;
    v75 = &v82;
    [v11 enumerateClipsInTimeRange:location rect:v67 usingBlock:{x, y, width, height}];
    [(PXStoryClipLayout *)self referenceSize];
    v14 = v13;
    v16 = v15;
    [(PXStoryClipLayout *)self displayedTimelineOriginalSize];
    v18 = v17;
    v20 = v19;
    v21 = [v5 thumbnailStyle];
    if (v14 >= v18)
    {
      v22 = v16;
    }

    else
    {
      v22 = v20;
    }

    if (v14 >= v18)
    {
      v23 = v14;
    }

    else
    {
      v23 = v18;
    }

    if ((v21 - 5) < 0xFFFFFFFFFFFFFFFDLL)
    {
      height = v22;
      width = v23;
    }

    v24 = v83[5];
    v25 = [(PXStoryClipLayout *)self relativeTextResourceInfo];
    v26 = [v24 isEqual:v25];

    [(PXStoryClipLayout *)self textResourceContentSize];
    if (v27 == width)
    {
      [(PXStoryClipLayout *)self textResourceContentSize];
      if (v28 == height && (([(PXStoryClipLayout *)self textResourceContentVersion]== self->_contentVersion) & v26) != 0)
      {
        goto LABEL_29;
      }
    }

    v29 = [v5 titleCategory];
    v30 = [(PXStoryClipLayout *)self _titleKind];
    v31 = [v5 extendedTraitCollection];
    v32 = [v31 snapshot];

    v33 = [v5 layoutSpec];
    if ([v12 layoutScheme] == 1)
    {
      [v33 distanceBetweenChapterTitleBaselineAndBottomWithoutChrome];
    }

    else
    {
      if (v30 != 8 && v30 != 4)
      {
        v35 = 0.0;
        if (v30 == 1)
        {
          [v33 scrubberVerticalPadding];
          v37 = v36;
          [v33 scrubberCurrentAssetSize];
          v35 = v37 + v38;
        }

        goto LABEL_23;
      }

      [v33 bottomTitleContentOffset];
    }

    v35 = v34;
LABEL_23:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke_2;
    aBlock[3] = &unk_1E772CFF8;
    v55 = v12;
    v61 = x;
    v62 = y;
    v63 = width;
    v64 = height;
    v39 = v29;
    v56 = v39;
    v58 = v91;
    v65 = v30;
    v59 = v88;
    v60 = &v82;
    v40 = v32;
    v57 = v40;
    v66 = v35;
    v41 = _Block_copy(aBlock);
    [(PXStoryClipLayout *)self textResourceSpriteFrame];
    if ((((v21 & 0xFFFFFFFFFFFFFFFBLL) == 1) & CGRectIsEmpty(v94)) == 1)
    {
      v42 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
      v43 = [v5 storyQueue];
      v48 = v12;
      v44 = v11;
      if (_updateTextResourceSpriteFrame_onceToken != -1)
      {
        dispatch_once(&_updateTextResourceSpriteFrame_onceToken, &__block_literal_global_1838);
      }

      objc_initWeak(location, self);
      v45 = _updateTextResourceSpriteFrame_workQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke_4;
      block[3] = &unk_1E774B1F8;
      v46 = v42;
      v50 = v46;
      v51 = v43;
      v52 = v41;
      v47 = v43;
      objc_copyWeak(&v53, location);
      dispatch_async(v45, block);
      objc_destroyWeak(&v53);

      objc_destroyWeak(location);
      v11 = v44;
      v12 = v48;
    }

    else
    {
      v41[2](v41);
      [(PXStoryClipLayout *)self setTextResourceSpriteFrame:?];
      v46 = 0;
    }

    [(PXStoryClipLayout *)self setTextFrameProgress:v46];
    [(PXStoryClipLayout *)self setTextResourceContentSize:width, height];
    [(PXStoryClipLayout *)self setTextResourceContentVersion:self->_contentVersion];
    [(PXStoryClipLayout *)self setRelativeTextResourceInfo:v83[5]];

LABEL_29:
    _Block_object_dispose(v78, 8);
    _Block_object_dispose(v80, 8);
    _Block_object_dispose(&v82, 8);

    _Block_object_dispose(v88, 8);
    _Block_object_dispose(v91, 8);
  }
}

void __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  if (a2 >= 1)
  {
    v8 = a2;
    do
    {
      v10 = a5[1];
      if (v10 == 3)
      {
        v11 = [*(a1 + 32) clipWithIdentifier:*a5];
        v12 = [v11 resource];
        v13 = [v12 px_storyResourceTextResourceInfo];

        *(*(*(a1 + 72) + 8) + 24) = [v13 type] == 0;
        *(*(*(a1 + 80) + 8) + 24) = [v13 type] == 1;
        if ([*(a1 + 48) type] == 1 && !objc_msgSend(v13, "type"))
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), v13);
        }
      }

      else if (v10 == 1)
      {
        PXRectWithOriginAndSize();
      }

      v14 = *(*(*(a1 + 64) + 8) + 40);
      if (v14)
      {
        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          LOBYTE(v14) = *(*(*(a1 + 80) + 8) + 24);
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      *a6 = v14 & 1;
      a5 += 96;
      --v8;
    }

    while (v8);
  }

  *a6 = 1;
}

uint64_t __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke_2(uint64_t a1)
{
  v2 = +[PXStorySettings sharedInstance];
  v3 = [v2 simulateSlowTextLayout];

  if (v3)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:1.0];
  }

  v4 = *(*(a1 + 64) + 8);
  return [*(a1 + 32) attributedStringFrameInRect:*(a1 + 40) titleCategory:*(*(*(a1 + 56) + 8) + 40) displayAsset:*(a1 + 112) currentAssetCropRect:*(*(*(a1 + 72) + 8) + 40) kind:*(a1 + 48) relativeTo:*(a1 + 80) extendedTraitCollectionSnapshot:*(a1 + 88) fixedBottomPadding:{*(a1 + 96), *(a1 + 104), v4[4], v4[5], v4[6], v4[7], *(a1 + 120)}];
}

void __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke_4(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = (*(*(a1 + 48) + 16))();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke_5;
    v10[3] = &unk_1E772D020;
    v9 = *(a1 + 40);
    v11 = *(a1 + 32);
    objc_copyWeak(v12, (a1 + 56));
    v12[1] = *&v2;
    v12[2] = v4;
    v12[3] = v6;
    v12[4] = v8;
    dispatch_async(v9, v10);
    objc_destroyWeak(v12);
  }
}

void __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke_5(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setTextResourceSpriteFrame:{v2, v3, v4, v5}];
  }
}

void __51__PXStoryClipLayout__updateTextResourceSpriteFrame__block_invoke_3()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("PXStoryClipLayout.TextSpriteFrame", v0);
  v2 = _updateTextResourceSpriteFrame_workQueue;
  _updateTextResourceSpriteFrame_workQueue = v1;
}

- (void)_invalidateTextResourceSpriteFrame
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x1000000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x1000000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateTextResourceSpriteFrame]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1656 description:{@"invalidating %lu after it already has been updated", 0x1000000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x1000000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)setUseContentBoundsForContentEdgeInsets:(BOOL)a3
{
  if (self->_useContentBoundsForContentEdgeInsets != a3)
  {
    self->_useContentBoundsForContentEdgeInsets = a3;
    [(PXStoryClipLayout *)self _invalidateEdgeMaskEffects];
  }
}

- (void)setContentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentBounds = &self->_contentBounds;
  if (!CGRectEqualToRect(self->_contentBounds, a3))
  {
    p_contentBounds->origin.x = x;
    p_contentBounds->origin.y = y;
    p_contentBounds->size.width = width;
    p_contentBounds->size.height = height;
    [(PXStoryClipLayout *)self _invalidateTextResourceSpriteFrame];

    [(PXStoryClipLayout *)self _invalidateContent];
  }
}

- (void)_invalidateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1635 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidateContentVersion
{
  ++self->_contentVersion;
  [(PXStoryClipLayout *)self _invalidateTextResourceSpriteFrame];

  [(PXStoryClipLayout *)self _invalidateContent];
}

- (void)_updateCombinedEffect
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PXStoryClipLayout__updateCombinedEffect__block_invoke;
  aBlock[3] = &unk_1E772CFA8;
  v4 = v3;
  v17 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [(PXStoryClipLayout *)self colorNormalizationEffect];
  v5[2](v5, v6);

  v7 = [(PXStoryClipLayout *)self colorGradingEffect];
  v5[2](v5, v7);

  v8 = [(PXStoryClipLayout *)self textLegibilityEffect];
  v5[2](v5, v8);

  v9 = [(PXStoryClipLayout *)self topEdgeMaskEffect];
  v5[2](v5, v9);

  v10 = [(PXStoryClipLayout *)self leftEdgeMaskEffect];
  v5[2](v5, v10);

  v11 = [(PXStoryClipLayout *)self bottomEdgeMaskEffect];
  v5[2](v5, v11);

  v12 = [(PXStoryClipLayout *)self rightEdgeMaskEffect];
  v5[2](v5, v12);

  v13 = [(PXStoryClipLayout *)self leftEdgeClippingMaskEffect];
  v5[2](v5, v13);

  v14 = [(PXStoryClipLayout *)self rightEdgeClippingMaskEffect];
  v5[2](v5, v14);

  if ([v4 count])
  {
    v15 = [[off_1E77215A8 alloc] initWithEffects:v4];
  }

  else
  {
    v15 = 0;
  }

  [(PXStoryClipLayout *)self setCombinedEffect:v15];
}

uint64_t __42__PXStoryClipLayout__updateCombinedEffect__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)_invalidateCombinedEffect
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x200;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x200) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateCombinedEffect]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1599 description:{@"invalidating %lu after it already has been updated", 512}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 512;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (id)_maskEffectForEdge:(unsigned int)a3 tiltedInset:(id)a4 bounds:(CGRect)a5 reusableInstance:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v13 = *&a3;
  v15 = a6;
  v16 = [(PXStoryClipLayout *)self _effectWithClass:objc_opt_class() reusableInstance:v15];

  if (var0 == 0.0 && var1 == 0.0 && var2 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = [[off_1E77217E0 alloc] initWithEdge:v13 tiltedInset:var0 rect:{var1, var2, x, y, width, height}];
  }

  [v16 setRegion:v17];

  return v16;
}

- (void)_updateEdgeMaskEffects
{
  if (!self->_isFeedThumbnail)
  {
    v3 = [(PXStoryClipLayout *)self clippingAnimation];
    [(PXStoryClipLayout *)self contentEdgeInsets];
    v4 = 0;
    if (INFINITY == 0.0)
    {
      if (v3)
      {
        [v3 currentEdgeInsets];
        v4 = v5;
      }

      else
      {
        v4 = 0;
      }
    }

    [(PXStoryClipLayout *)self manualContentsRectAmount];
    PXFloatByLinearlyInterpolatingFloats();
  }
}

- (void)_invalidateEdgeMaskEffects
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x100;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x100) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateEdgeMaskEffects]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1558 description:{@"invalidating %lu after it already has been updated", 256}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 256;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateShouldAutoplay
{
  v3 = [(PXStoryClipLayout *)self model];
  -[PXStoryClipLayout setShouldAutoplay:](self, "setShouldAutoplay:", [v3 shouldAutoplayThumbnail]);
  if (v3)
  {
    [v3 thumbnailAutoplayTimeRange];
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  v4[0] = v5;
  v4[1] = v6;
  v4[2] = v7;
  [(PXStoryClipLayout *)self setAutoplayTimeRange:v4];
}

- (void)_invalidateShouldAutoplay
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x40000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateShouldAutoplay]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1548 description:{@"invalidating %lu after it already has been updated", 0x40000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x40000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateDisplayAsset
{
  if ((self->_resourceKind | 4) == 5)
  {
    v3 = [(PXStoryClipLayout *)self resource];
    v4 = [v3 px_storyResourceDisplayAsset];
  }

  else
  {
    v4 = 0;
  }

  [(PXStoryClipLayout *)self setDisplayAsset:v4];
}

- (void)_invalidateDisplayAsset
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateDisplayAsset]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1534 description:{@"invalidating %lu after it already has been updated", 0x20000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x20000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateColorGradingEffect
{
  v3 = [(PXStoryClipLayout *)self _effectiveColorGradeKind];
  v4 = [(PXStoryClipLayout *)self model];
  v5 = [v4 colorGradingRepository];
  v12 = [v5 colorLookupCubeForColorGradeKind:v3];

  v6 = objc_opt_class();
  v7 = [(PXStoryClipLayout *)self colorGradingEffect];
  v8 = [(PXStoryClipLayout *)self _effectWithClass:v6 reusableInstance:v7];

  v9 = [v8 colorLookupCube];
  if (v12 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = [v12 isEqual:v9];
  }

  [v8 setColorLookupCube:v12];
  v11 = [(PXStoryClipLayout *)self colorGradingEffect];

  if (v8 == v11)
  {
    if ((v10 & 1) == 0)
    {
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
    }
  }

  else
  {
    [(PXStoryClipLayout *)self setColorGradingEffect:v8];
  }
}

- (int64_t)_effectiveColorGradeKind
{
  if ([(PXStoryClipLayout *)self customColorGradeKind])
  {
    v3 = [(PXStoryClipLayout *)self customColorGradeKind];
  }

  else
  {
    v3 = [(PXStoryClipLayout *)self colorGradeKind];
  }

  v4 = v3;
  v5 = +[PXStorySettings sharedInstance];
  v6 = [v5 disableColorGrading];

  if (v6)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)_invalidateColorGradingEffect
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateColorGradingEffect]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1506 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSmartGradientAdjustment
{
  v3 = [(PXStoryClipLayout *)self model];
  v4 = [v3 viewMode];

  [(PXStoryClipLayout *)self contentSize];
  if (v4 <= 5 && ((1 << v4) & 0x32) != 0 && self->_resourceKind == 5)
  {
    PXSizeIsEmpty();
  }

  [(PXStoryClipLayout *)self setSmartGradientAdjustment:0];
}

- (void)_invalidateSmartGradientAdjustment
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x80000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x80000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateSmartGradientAdjustment]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1464 description:{@"invalidating %lu after it already has been updated", 0x80000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x80000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateInactiveImageFilterAdjustment
{
  v3 = [(PXStoryClipLayout *)self model];
  if ([v3 shouldUseInactiveImageFilter] && self->_resourceKind == 1)
  {
    v4 = [(PXStoryClipLayout *)self model];
    if ([v4 viewMode] == 1)
    {
      [(PXStoryClipLayout *)self contentSize];
      PXSizeIsEmpty();
    }
  }

  [(PXStoryClipLayout *)self setInactiveImageFilterAdjustment:0];
  if (self->_inactiveContentSpriteIndex != -1)
  {
    v5 = [(PXStoryClipLayout *)self model];
    [v5 inactiveImageFilterIntensity];
    v7 = v6;

    inactiveContentSpriteIndex = self->_inactiveContentSpriteIndex;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PXStoryClipLayout__updateInactiveImageFilterAdjustment__block_invoke;
    v9[3] = &unk_1E772CF80;
    v9[4] = self;
    v10 = 0;
    v9[5] = v7;
    [(PXStoryClipLayout *)self modifySpritesInRange:inactiveContentSpriteIndex | 0x200000000 state:v9];
  }
}

void __57__PXStoryClipLayout__updateInactiveImageFilterAdjustment__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    [*(a1 + 32) alpha];
    v7 = v6;
    [*(a1 + 32) contentAlpha];
    v9 = *(a1 + 40) * (v7 * v8);
  }

  else
  {
    v9 = 0.0;
  }

  *(a4 + 160 * *(*(a1 + 32) + 872)) = v9;
  PXFloatApproximatelyEqualToFloat();
}

- (void)_invalidateInactiveImageFilterAdjustment
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x4000000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x4000000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateInactiveImageFilterAdjustment]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1431 description:{@"invalidating %lu after it already has been updated", 0x4000000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x4000000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTextLegibilityEffect
{
  v3 = objc_opt_class();
  v4 = [(PXStoryClipLayout *)self textLegibilityEffect];
  v5 = [(PXStoryClipLayout *)self _effectWithClass:v3 reusableInstance:v4];

  v6 = [(PXStoryClipLayout *)self clip];
  v7 = v6;
  if (v6)
  {
    [v6 info];
    v8 = (v11[32] >> 3) & 1;
  }

  else
  {
    bzero(v11, 0x300uLL);
    v8 = 0;
  }

  v9 = [(PXStoryClipLayout *)self canShowTextLegibilityEffect];
  v10 = 0.0;
  if ((v9 & v8) != 0)
  {
    v10 = 1.0;
  }

  [v5 setAlpha:v10];
  [(PXStoryClipLayout *)self setTextLegibilityEffect:v5];
}

- (void)_invalidateTextLegibilityEffect
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateTextLegibilityEffect]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1420 description:{@"invalidating %lu after it already has been updated", 0x10000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x10000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateColorNormalizationEffect
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = +[PXStorySettings sharedInstance];
  if ((self->_resourceKind | 4) == 5 && [(PXStoryClipLayout *)self canShowColorNormalizedContent])
  {
    v5 = [v4 colorNormalizationMode];
  }

  else
  {
    v5 = 0;
  }

  if (-[PXStoryClipLayout _effectiveColorGradeKind](self, "_effectiveColorGradeKind") == 1 && ![v4 enableColorNormalizationWithoutColorGrade])
  {
    v5 = 0;
  }

  if (![v4 colorNormalizationTechnique])
  {
    if (v5)
    {
      if (v5 != 2)
      {
        if (v5 != 4)
        {
          [v4 setColorNormalizationMode:2];
          [v4 save];
          v45 = [MEMORY[0x1E696AAA8] currentHandler];
          if (v5 > 4)
          {
            v46 = @"??";
          }

          else
          {
            v46 = off_1E7731728[v5];
          }

          v47 = v46;
          [v45 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayout.m" lineNumber:1361 description:{@"%@ is not supported with PXStoryNormalizationTechniqueFragmentShaderLUT, resetting.", v47}];

          abort();
        }

        v7 = +[PXStoryColorNormalizationAdjustment dummyNormalization];
        goto LABEL_27;
      }

      v10 = [(PXStoryClipLayout *)self clip];
      v7 = [v10 colorNormalization];

      if (v7)
      {
LABEL_27:
        v24 = objc_opt_class();
        v25 = [(PXStoryClipLayout *)self colorNormalizationEffect];
        v26 = [(PXStoryClipLayout *)self _effectWithClass:v24 reusableInstance:v25];

        v27 = [v26 assetNormalization];
        if (v7 == v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = [v7 isEqual:v27] ^ 1;
        }

        [v26 setAssetNormalization:v7];
        [v4 colorNormalizationIntensity];
        [v26 setIntensity:?];

        v6 = 0;
        goto LABEL_42;
      }

      v11 = [(PXStoryClipLayout *)self displayAsset];
      v12 = [v11 uuid];
      v19 = PXStoryErrorCreateWithCodeDebugFormat(23, @"Missing color normalization data for asset %@", v13, v14, v15, v16, v17, v18, v12);

      v20 = PLStoryGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = PXStoryErrorDetailsDescription(v19);
        *buf = 138543362;
        v49 = v21;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "PXStoryClipLayout error: %{public}@", buf, 0xCu);
      }

      if ([v4 reportColorNormalizationErrors])
      {
        v22 = [(PXStoryClipLayout *)self model];
        v23 = [v22 errorReporter];
        [v23 setError:v19 forComponent:@"ColorNormalization"];
      }
    }

    v7 = 0;
    goto LABEL_27;
  }

  if (!v5)
  {
    v6 = 0;
    goto LABEL_39;
  }

  if (v5 != 4)
  {
    v8 = [(PXStoryClipLayout *)self clip];
    v9 = [v8 colorNormalization];

    if (v9)
    {
      if (v5 != 3)
      {
        v6 = [[PXStoryColorNormalizationAdjustment alloc] initWithNormalization:v9];
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      v29 = [(PXStoryClipLayout *)self displayAsset];
      v30 = [v29 uuid];
      v37 = PXStoryErrorCreateWithCodeDebugFormat(23, @"Missing color normalization data for asset %@", v31, v32, v33, v34, v35, v36, v30);

      v38 = PLStoryGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = PXStoryErrorDetailsDescription(v37);
        *buf = 138543362;
        v49 = v39;
        _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_ERROR, "PXStoryClipLayout error: %{public}@", buf, 0xCu);
      }

      if ([v4 reportColorNormalizationErrors])
      {
        v40 = [(PXStoryClipLayout *)self model];
        v41 = [v40 errorReporter];
        [v41 setError:v37 forComponent:@"ColorNormalization"];
      }

      if (v5 == 2)
      {
        v6 = 0;
        goto LABEL_38;
      }
    }

    v42 = [(PXStoryClipLayout *)self displayAsset];
    v6 = [PXStoryColorNormalizationAdjustment autoAdjustmentForAsset:v42];

    goto LABEL_38;
  }

  v6 = +[PXStoryColorNormalizationAdjustment dummyAdjustment];
LABEL_39:
  if ([v4 colorNormalizationUseColorCube])
  {
    [(PXStoryColorNormalizationAdjustment *)v6 setUseColorCube:1];
  }

  [v4 colorNormalizationIntensity];
  [(PXStoryColorNormalizationAdjustment *)v6 setIntensity:v43];
  v28 = 0;
  v26 = 0;
LABEL_42:
  v44 = [(PXStoryClipLayout *)self colorNormalizationEffect];

  if (v26 == v44)
  {
    if (v28)
    {
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
    }
  }

  else
  {
    [(PXStoryClipLayout *)self setColorNormalizationEffect:v26];
  }

  [(PXStoryClipLayout *)self setColorNormalizationAdjustment:v6];
}

- (void)_invalidateColorNormalizationEffect
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x8000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x8000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateColorNormalizationEffect]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1315 description:{@"invalidating %lu after it already has been updated", 0x8000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x8000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateColorGradeKind
{
  resourceKind = self->_resourceKind;
  if ((resourceKind - 2) < 3)
  {
    v4 = 1;
    goto LABEL_14;
  }

  if (resourceKind != 5 && resourceKind != 1)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v6 = [(PXStoryClipLayout *)self overrideStyleInfo];
  v7 = v6;
  if (!v6)
  {
    v8 = [(PXStoryClipLayout *)self model];
    v4 = [v8 colorGradeKind];
    goto LABEL_12;
  }

  v4 = [v6 customColorGradeKind];
  if (!v4)
  {
    v8 = [v7 originalColorGradeCategory];
    v9 = [(PXStoryClipLayout *)self model];
    v10 = [v9 colorGradingRepository];
    v4 = [v10 colorGradeKindForColorGradeCategory:v8];

LABEL_12:
  }

LABEL_14:

  [(PXStoryClipLayout *)self setColorGradeKind:v4];
}

- (void)_invalidateColorGradeKind
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateColorGradeKind]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1282 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateMusicDucking
{
  v3 = [(PXStoryClipLayout *)self model];
  v4 = [v3 isExporting];
  v5 = [v3 isAsync];
  v6 = [(PXStoryClipLayout *)self clip];
  if (v6)
  {
    v7 = v6;
    [v6 info];

    if (((v4 | v5) & 1) == 0 && v19 == 3)
    {
      v8 = [(PXStoryClipLayout *)self isPlayheadInAudioTimeRange];
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__1835;
      v16 = __Block_byref_object_dispose__1836;
      v17 = [(PXStoryClipLayout *)self musicDuckingToken];
      v9 = v13[5];
      if (v8)
      {
        if (!v9)
        {
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __40__PXStoryClipLayout__updateMusicDucking__block_invoke;
          v11[3] = &unk_1E77485B0;
          v11[4] = self;
          [v3 performChanges:v11];
        }
      }

      else if (v9)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __40__PXStoryClipLayout__updateMusicDucking__block_invoke_2;
        v10[3] = &unk_1E7736968;
        v10[4] = self;
        v10[5] = &v12;
        [v3 performChanges:v10];
      }

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    bzero(v18, 0x300uLL);
  }
}

void __40__PXStoryClipLayout__updateMusicDucking__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 beginMusicDucking];
  [*(a1 + 32) setMusicDuckingToken:v3];
}

uint64_t __40__PXStoryClipLayout__updateMusicDucking__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 endMusicDuckingWithToken:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(a1 + 32);

  return [v3 setMusicDuckingToken:0];
}

- (void)_invalidateMusicDucking
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x400000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x400000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateMusicDucking]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1255 description:{@"invalidating %lu after it already has been updated", 0x400000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x400000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateVideoPresentationControllerState
{
  v4 = [(PXStoryClipLayout *)self model];
  if (v4)
  {
    v5 = [(PXStoryClipLayout *)self videoPresentationController];

    if (v5)
    {
      v29 = 0uLL;
      v30 = 0;
      v6 = [(PXStoryClipLayout *)self videoPresentationController];
      v7 = v6;
      if (v6)
      {
        [v6 actualTime];
      }

      else
      {
        v29 = 0uLL;
        v30 = 0;
      }

      if ([v4 isExporting])
      {
        v8 = [(PXStoryClipLayout *)self videoPresentationController];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __60__PXStoryClipLayout__updateVideoPresentationControllerState__block_invoke;
        v24[3] = &unk_1E772CF30;
        v24[4] = self;
        v25 = v4;
        v26 = a2;
        v27 = v29;
        v28 = v30;
        [v8 performChanges:v24];
      }

      else
      {
        v9 = ([v4 isActuallyPlaying] & 1) != 0 || -[PXStoryClipLayout shouldAutoplay](self, "shouldAutoplay");
        v10 = [(PXStoryClipLayout *)self isSegmentVisible];
        v11 = [(PXStoryClipLayout *)self isPlayheadInAudioTimeRange];
        v12 = [v4 log];
        v13 = [v4 logContext];
        v14 = [(PXStoryClipLayout *)self videoPresentationController];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __60__PXStoryClipLayout__updateVideoPresentationControllerState__block_invoke_421;
        v16[3] = &unk_1E772CF58;
        v21 = v10;
        v22 = v11;
        v23 = v9;
        v16[4] = self;
        v17 = v12;
        v18 = v13;
        v19 = v29;
        v20 = v30;
        v15 = v12;
        [v14 performChanges:v16];
      }
    }
  }
}

void __60__PXStoryClipLayout__updateVideoPresentationControllerState__block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) clip];
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 clipTimeRange];
  }

  *time = v33;
  *&time[16] = v34;
  v32 = v35;
  PXStoryClipSegmentPlaybackTimeRangeIncludingJLCuts(v4, time, 0, &time1);
  value = time1.start.value;
  flags = time1.start.flags;
  timescale = time1.start.timescale;
  epoch = time1.start.epoch;
  v8 = time1.duration.value;
  v9 = time1.duration.timescale;
  v10 = time1.duration.flags;
  v11 = time1.duration.epoch;
  [v3 setDesiredPlayState:0];
  if ([*(a1 + 32) isSegmentVisible])
  {
    memset(&lhs, 0, sizeof(lhs));
    v12 = *(a1 + 40);
    if (v12)
    {
      [v12 nominalPlaybackTime];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    v28 = v4;
    *time = v33;
    *&time[16] = v34;
    time1.start = rhs;
    CMTimeSubtract(&lhs, &time1.start, time);
    v41 = value;
    v42 = timescale;
    if ((flags & 1) == 0 || (v10 & 1) == 0 || v11 || v8 < 0)
    {
      v17 = flags & 1;
      memset(time, 0, 24);
      v18 = [*(a1 + 32) videoPresentationController];
      v19 = v18;
      if (v18)
      {
        [v18 videoDuration];
      }

      else
      {
        memset(time, 0, 24);
      }

      if (time[12])
      {
        rhs = **&MEMORY[0x1E6960CC0];
        duration = *time;
        CMTimeRangeMake(&time1, &rhs, &duration);
        v41 = time1.start.value;
        flags = time1.start.flags;
        v42 = time1.start.timescale;
        epoch = time1.start.epoch;
        v8 = time1.duration.value;
        v9 = time1.duration.timescale;
        v10 = time1.duration.flags;
        v11 = time1.duration.epoch;
        v17 = time1.start.flags & 1;
      }

      if (!v17 || (v10 & (v11 == 0)) == 0)
      {
        goto LABEL_35;
      }
    }

    if (v8 < 0)
    {
      goto LABEL_35;
    }

    *time = lhs;
    rhs.value = v41;
    rhs.timescale = v42;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeAdd(&time1.start, time, &rhs);
    lhs = time1.start;
    if ((~v10 & 5) == 0)
    {
      goto LABEL_35;
    }

    if (v28)
    {
      [v28 info];
      if (v30 == 5)
      {
        rhs = lhs;
        time1.start.value = v41;
        time1.start.timescale = v42;
        time1.start.flags = flags;
        time1.start.epoch = epoch;
        time1.duration.value = v8;
        time1.duration.timescale = v9;
        time1.duration.flags = v10;
        time1.duration.epoch = 0;
        CMTimeFoldIntoRange(time, &rhs, &time1);
LABEL_34:
        lhs = *time;
LABEL_35:
        v20 = +[PXStoryExportManager frequentSignpostLog];
        v21 = os_signpost_id_make_with_pointer(v20, *(a1 + 32));
        v22 = v20;
        v23 = v22;
        if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          time1.start = lhs;
          Seconds = CMTimeGetSeconds(&time1.start);
          v25 = *(a1 + 40);
          LODWORD(time1.start.value) = 134218240;
          *(&time1.start.value + 4) = Seconds;
          LOWORD(time1.start.flags) = 2048;
          *(&time1.start.flags + 2) = v25;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "StoryExportRequestSeekVideo", "Seeking video to %f with model %p", &time1, 0x16u);
        }

        if ((lhs.flags & 1) == 0)
        {
          PXAssertGetLog();
        }

        time1.start = lhs;
        [v3 synchronouslySeekToDesiredTime:&time1 updatePixelBufferSource:1];
        v26 = v23;
        v27 = v26;
        v4 = v28;
        if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          LOWORD(time1.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v27, OS_SIGNPOST_INTERVAL_END, v21, "StoryExportRequestSeekVideo", "", &time1, 2u);
        }

        goto LABEL_44;
      }
    }

    else
    {
      bzero(v29, 0x300uLL);
    }

    rhs = lhs;
    time1.start.value = v41;
    time1.start.timescale = v42;
    time1.start.flags = flags;
    time1.start.epoch = epoch;
    time1.duration.value = v8;
    time1.duration.timescale = v9;
    time1.duration.flags = v10;
    time1.duration.epoch = 0;
    CMTimeClampToRange(time, &rhs, &time1);
    goto LABEL_34;
  }

  if (flags)
  {
    v38 = value;
    v39 = timescale;
  }

  else
  {
    v38 = *MEMORY[0x1E6960CC0];
    flags = *(MEMORY[0x1E6960CC0] + 12);
    v39 = *(MEMORY[0x1E6960CC0] + 8);
    epoch = *(MEMORY[0x1E6960CC0] + 16);
  }

  v14 = *(a1 + 56);
  v13 = a1 + 56;
  duration.value = v14;
  v15 = *(v13 + 12);
  duration.timescale = *(v13 + 8);
  v16 = *(v13 + 16);
  if ((flags & 0x1F) != 3 && (v15 & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v38, lhs.timescale = v39, lhs.flags = flags, lhs.epoch = epoch, rhs.value = *v13, rhs.timescale = *(v13 + 8), rhs.flags = v15, rhs.epoch = v16, CMTimeSubtract(time, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, time), CMTimeMake(time, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, time) > 0))
  {
    time1.start.value = v38;
    time1.start.timescale = v39;
    time1.start.flags = flags;
    time1.start.epoch = epoch;
    *time = duration.value;
    *&time[8] = __PAIR64__(v15, duration.timescale);
    *&time[16] = v16;
    if (CMTimeCompare(&time1.start, time))
    {
      time1.start.value = v38;
      time1.start.timescale = v39;
      time1.start.flags = flags;
      time1.start.epoch = epoch;
      [v3 synchronouslySeekToDesiredTime:&time1 updatePixelBufferSource:1];
    }
  }

LABEL_44:
}

void __60__PXStoryClipLayout__updateVideoPresentationControllerState__block_invoke_421(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 desiredPlayState];
  if (*(a1 + 80) == 1)
  {
    v5 = [*(a1 + 32) wasPlayheadMovedManually];
    if (*(a1 + 80))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 81) != 1)
  {
    [v3 setDesiredPlayState:0];
    v11 = 1;
    goto LABEL_12;
  }

LABEL_6:
  if (*(a1 + 82) == 1 && [v3 desiredPlayState] != 1)
  {
    v6 = +[PXStorySettings sharedInstance];
    v7 = [v6 detectVideoLags];

    if (v7)
    {
      objc_initWeak(location, *(a1 + 32));
      v8 = dispatch_time(0, 300000000);
      v9 = [*(a1 + 32) model];
      v10 = [v9 storyQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__PXStoryClipLayout__updateVideoPresentationControllerState__block_invoke_2;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v36, location);
      dispatch_after(v8, v10, block);

      objc_destroyWeak(&v36);
      objc_destroyWeak(location);
    }
  }

  [v3 setDesiredPlayState:*(a1 + 82)];
  v11 = 0;
LABEL_12:
  if ([v3 desiredPlayState] != (v4 != 0))
  {
    v12 = *(a1 + 40);
    v13 = os_signpost_id_make_with_pointer(v12, *(a1 + 32));
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = *(a1 + 48);
        v16 = [v3 desiredPlayState];
        LODWORD(location[0]) = 134218240;
        *(location + 4) = v15;
        WORD2(location[1]) = 2050;
        *(&location[1] + 6) = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_EVENT, v14, "PXStoryClipLayoutChangedVideoDesiredPlayState", "Context=%{signpost.telemetry:string2}lu desiredPlayState=%{signpost.description:attribute, public}ld", location, 0x16u);
      }
    }
  }

  if ((v5 | v11) == 1)
  {
    v17 = [*(a1 + 32) clip];
    v50 = 0u;
    memset(location, 0, sizeof(location));
    v18 = *(a1 + 32);
    if (v18)
    {
      [v18 clipTimeRange];
    }

    v32 = *location;
    v33 = *&location[2];
    v34 = v50;
    PXStoryClipSegmentPlaybackTimeRangeIncludingJLCuts(v17, &v32, v11, &time1);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    v21 = MEMORY[0x1E6960CC0];
    if ((time1.flags & 1) == 0 || (v45 & 1) == 0 || v46 || v44 < 0)
    {
      v41 = *MEMORY[0x1E6960CC0];
      v22 = *(MEMORY[0x1E6960CC0] + 12);
      v42 = *(MEMORY[0x1E6960CC0] + 8);
      v23 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v41 = value;
      v42 = timescale;
      v23 = time1.epoch;
      v22 = time1.flags;
    }

    v39 = *(a1 + 56);
    v24 = *(a1 + 68);
    v40 = *(a1 + 64);
    v25 = *(a1 + 72);
    if ((time1.flags & 0x1F) != 3 && (v24 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.epoch = v25, lhs.value = value, lhs.timescale = timescale, lhs.flags = flags, lhs.epoch = epoch, rhs.value = *(a1 + 56), rhs.timescale = *(a1 + 64), rhs.flags = v24, CMTimeSubtract(&v32, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &v32), CMTimeMake(&v32, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &v32) > 0))
    {
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      *&v32 = v39;
      *(&v32 + 1) = __PAIR64__(v24, v40);
      *&v33 = v25;
      if (CMTimeCompare(&time1, &v32))
      {
        v26 = *(a1 + 40);
        v27 = os_signpost_id_make_with_pointer(v26, *(a1 + 32));
        if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v28 = v27;
          if (os_signpost_enabled(v26))
          {
            v29 = *(a1 + 48);
            v30 = *MEMORY[0x1E695E480];
            time1.value = v41;
            time1.timescale = v42;
            time1.flags = v22;
            time1.epoch = v23;
            v31 = CMTimeCopyDescription(v30, &time1);
            LODWORD(time1.value) = 134218242;
            *(&time1.value + 4) = v29;
            LOWORD(time1.flags) = 2114;
            *(&time1.flags + 2) = v31;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v26, OS_SIGNPOST_EVENT, v28, "PXStoryClipLayoutChangedVideoDesiredTime", "Context=%{signpost.telemetry:string2}lu desiredTime=%{signpost.description:attribute, public}@", &time1, 0x16u);
          }
        }

        time1.value = v41;
        time1.timescale = v42;
        time1.flags = v22;
        time1.epoch = v23;
        v32 = *v21;
        *&v33 = *(v21 + 16);
        *&lhs.value = v32;
        lhs.epoch = v33;
        [v3 setDesiredTime:&time1 toleranceBefore:&v32 toleranceAfter:&lhs];
      }
    }
  }

  [*(a1 + 32) currentAudioVolume];
  [v3 setVolume:0 withFade:?];
}

void __60__PXStoryClipLayout__updateVideoPresentationControllerState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _validateVideoPlaybackState];
}

- (void)_invalidateVideoPresentationControllerState
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateVideoPresentationControllerState]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1140 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateVideoPresentationController
{
  v120 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryClipLayout *)self videoPresentationController];
  v4 = [(PXStoryClipLayout *)self resource];
  if (([(PXStoryClipLayout *)self assetPresentationStyles]& 2) != 0 && v4)
  {
    v5 = [v4 px_storyResourceDisplayAsset];
    [(PXStoryClipLayout *)self model];
    v72 = v71 = v5;
    if (v3)
    {
      v6 = [(PXGDisplayAssetVideoPresentationController *)v3 displayAsset];
      v7 = v6;
      if (v6 == v5 || ([v6 isEqual:v5] & 1) != 0)
      {
        v8 = [(PXGDisplayAssetVideoPresentationController *)v3 videoSessionManager];
        v9 = [v72 videoSessionManager];
        v10 = v9;
        if (v8 == v9)
        {

LABEL_36:
          v12 = v3;
LABEL_55:

          goto LABEL_56;
        }

        v11 = [v8 isEqual:v9];

        if (v11)
        {
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v70 = [v72 isExporting];
    if (v70)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v72 isAsync] ^ 1;
    }

    v14 = [(PXStoryClipLayout *)self isReadyForAutoplay];
    v15 = +[PXStorySettings sharedInstance];
    v16 = [(PXStoryClipLayout *)self clip];
    v17 = v16;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    memset(v93, 0, sizeof(v93));
    if (v16)
    {
      [v16 info];
    }

    else
    {
      bzero(v93, 0x300uLL);
    }

    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    [(PXStoryClipLayout *)self clipTimeRange];
    v18 = v117;
    v69 = v17;
    if (*(&v94 + 1) == 5 || v14)
    {
      v64 = 1;
    }

    else
    {
      [(PXStoryClipLayout *)self segmentIdentifiers];
      v19 = v3;
      v21 = v20 = v14;
      [v72 timeline];
      v23 = v22 = v15;
      v64 = [v21 containsIndex:{objc_msgSend(v23, "firstSegmentIdentifier")}];

      v15 = v22;
      v17 = v69;

      v14 = v20;
      v3 = v19;
    }

    v24 = [v15 wantsAudioFromVideo];
    v25 = v13 & !v14;
    if (v18 < 2)
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    PXStoryClipVideoSegmentTimeRange(v17, &v87);
    *buf = v90;
    *&buf[16] = v91;
    v119 = v92;
    PXStoryClipSegmentPlaybackTimeRangeIncludingJLCuts(v17, buf, v13, &v84);
    v27 = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
    v63 = v26;
    [(PXVideoSessionManagerDisplayAssetOptions *)v27 setIsAudioAllowed:v26];
    v68 = v15;
    if ([(PXStoryClipLayout *)self shouldAutoplay])
    {
      v28 = *(MEMORY[0x1E6960C98] + 16);
      *buf = *MEMORY[0x1E6960C98];
      *&buf[16] = v28;
      v119 = *(MEMORY[0x1E6960C98] + 32);
      [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:3 segmentTimeRange:buf streamingAllowed:1];
      v62 = 0;
      v29 = v71;
LABEL_46:
      v67 = v4;
      -[PXVideoSessionManagerDisplayAssetOptions setShouldStabilizeLivePhotosIfPossible:](v27, "setShouldStabilizeLivePhotosIfPossible:", [v15 videoInlineStabilization]);
      if (*(&v94 + 1) == 3 && v14)
      {
        [(PXVideoSessionManagerDisplayAssetOptions *)v27 setShouldCrossfadeLivePhotosWhenLooping:1];
        [(PXStoryClipLayout *)self autoplayTimeRange];
        *buf = v81;
        *&buf[16] = v82;
        v119 = v83;
        [(PXVideoSessionManagerDisplayAssetOptions *)v27 setLivePhotoLoopTimeRange:buf];
        v43 = *(MEMORY[0x1E6960C98] + 16);
        v84 = *MEMORY[0x1E6960C98];
        v85 = v43;
        v86 = *(MEMORY[0x1E6960C98] + 32);
      }

      [(PXVideoSessionManagerDisplayAssetOptions *)v27 setAudioSessionKind:3];
      v44 = [(PXStoryClipLayout *)self model];
      v45 = [v44 configuration];

      [v45 videoPlaybackRate];
      v47 = v46;
      v48 = [PXGDisplayAssetVideoPresentationController alloc];
      v49 = [(PXStoryClipLayout *)self layoutQueue];
      v50 = [v72 videoSessionManager];
      v12 = [(PXGDisplayAssetVideoPresentationController *)v48 initWithDisplayAsset:v29 accessQueue:v49 videoSessionManager:v50 options:v27 loadingPriority:v62];

      v51 = [v72 log];
      [(PXGDisplayAssetVideoPresentationController *)v12 setLog:v51];

      v52 = [v72 log];
      v53 = os_signpost_id_make_with_pointer(v52, self);
      if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v54 = v53;
        if (os_signpost_enabled(v52))
        {
          v55 = [v72 logContext];
          v56 = [(PXGDisplayAssetVideoPresentationController *)v12 logContext];
          v57 = [v71 uuid];
          *buf = 134218498;
          *&buf[4] = v55;
          *&buf[12] = 2050;
          *&buf[14] = v56;
          *&buf[22] = 2114;
          *&buf[24] = v57;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v52, OS_SIGNPOST_EVENT, v54, "PXStoryClipLayoutCreatedVideoPresentationController", "Context=%{signpost.telemetry:string2}lu videoPresentationControllerContext=%{public}llu, asset.uuid=%{public}@", buf, 0x20u);
        }
      }

      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __55__PXStoryClipLayout__updateVideoPresentationController__block_invoke;
      v73[3] = &unk_1E772CF08;
      v73[4] = self;
      v78 = v70;
      v73[5] = v47;
      v79 = v63;
      v74 = 0;
      v80 = v64;
      v75 = v84;
      v76 = v85;
      v77 = v86;
      [(PXGDisplayAssetVideoPresentationController *)v12 performChanges:v73];

      v4 = v67;
      goto LABEL_55;
    }

    v30 = [v72 isInline];
    v31 = 4;
    if (v30)
    {
      v31 = 5;
    }

    v62 = v31;
    v29 = v71;
    if (v70)
    {
      v32 = v14;
      v33 = [v15 exportVideoQuality];
      *buf = v87;
      *&buf[16] = v88;
      v119 = v89;
      [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:v33 segmentTimeRange:buf streamingAllowed:0];
      v34 = *(MEMORY[0x1E6960C98] + 16);
      *buf = *MEMORY[0x1E6960C98];
      v65 = *buf;
      *&buf[16] = v34;
      v60 = v34;
      v119 = *(MEMORY[0x1E6960C98] + 32);
      v58 = v119;
      [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:v33 segmentTimeRange:buf streamingAllowed:1];
      *buf = v65;
      *&buf[16] = v60;
      v119 = v58;
      v35 = v33;
      v14 = v32;
      [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:v35 segmentTimeRange:buf streamingAllowed:0];
      goto LABEL_46;
    }

    if (*(&v94 + 1) == 3)
    {
      v36 = [v15 livePhotoLocalVideoQuality];
      *buf = v87;
      *&buf[16] = v88;
      v119 = v89;
      [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:v36 segmentTimeRange:buf streamingAllowed:0 networkAccessAllowed:0];
    }

    *buf = v87;
    *&buf[16] = v88;
    v119 = v89;
    [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:2 segmentTimeRange:buf streamingAllowed:0 networkAccessAllowed:0];
    v37 = v14;
    if ([v72 shouldLimitVideoDownloadQuality])
    {
      v38 = 3;
    }

    else
    {
      v38 = [v15 videoQuality];
    }

    v39 = [(PXStoryClipLayout *)self displayAsset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v40 = v39;

      if (v40)
      {
        v14 = v37;
        if ([v40 px_isSharedAlbumAsset])
        {
          *buf = v87;
          *&buf[16] = v88;
          v119 = v89;
          [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:v38 segmentTimeRange:buf streamingAllowed:1];
        }

        goto LABEL_45;
      }
    }

    else
    {

      v40 = 0;
    }

    v14 = v37;
LABEL_45:
    *buf = v87;
    *&buf[16] = v88;
    v119 = v89;
    [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:v38 segmentTimeRange:buf streamingAllowed:0];
    v41 = *(MEMORY[0x1E6960C98] + 16);
    *buf = *MEMORY[0x1E6960C98];
    v66 = *buf;
    *&buf[16] = v41;
    v61 = v41;
    v119 = *(MEMORY[0x1E6960C98] + 32);
    v59 = v119;
    [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:3 segmentTimeRange:buf streamingAllowed:1];
    *buf = v66;
    *&buf[16] = v61;
    v119 = v59;
    [(PXVideoSessionManagerDisplayAssetOptions *)v27 addContentDeliveryStrategyWithDeliveryQuality:3 segmentTimeRange:buf streamingAllowed:0];

    v15 = v68;
    goto LABEL_46;
  }

  v12 = 0;
LABEL_56:
  [(PXStoryClipLayout *)self setVideoPresentationController:v12];
}

void __55__PXStoryClipLayout__updateVideoPresentationController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setShouldDisplayPreviousNonNullPixelBuffer:1];
  [v3 setIsCrossfadingFromStillToVideoEnabled:*(*(a1 + 32) + 913)];
  [v3 setIsCleanApertureCompensationEnabled:*(*(a1 + 32) + 913)];
  [v3 setShouldDisableAutomaticPixelBufferUpdates:*(a1 + 100)];
  v4 = [*(a1 + 32) clip];
  if (v4)
  {
    [v4 info];
  }

  else
  {
    bzero(v5, 0x300uLL);
  }

  [*(a1 + 32) displayScale];
  PXSizeScale();
}

- (void)_invalidateVideoPresentationController
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x4000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x4000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateVideoPresentationController]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:1031 description:{@"invalidating %lu after it already has been updated", 0x4000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x4000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateAssetPresentationStyles
{
  v3 = [(PXStoryClipLayout *)self resource];
  v4 = [v3 px_storyResourceKind];

  if (v4 == 5)
  {
    goto LABEL_9;
  }

  if (v4 != 1)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  v5 = [(PXStoryClipLayout *)self clip];
  if (!v5)
  {
    bzero(&v13, 0x300uLL);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 info];

  if (v14 - 3 >= 3)
  {
    if (v14 > 2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v8 = [(PXStoryClipLayout *)self model];
  v9 = [v8 configuration];
  v10 = [v9 disableVideoPlayback];

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = [(PXStoryClipLayout *)self model];
  v12 = [v11 isExporting];

  if (v12)
  {
    v7 = 2;
  }

  else if ([(PXStoryClipLayout *)self canShowDynamicContent])
  {
    v7 = 3;
  }

  else if ([(PXStoryClipLayout *)self isReadyForAutoplay])
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

LABEL_10:
  [(PXStoryClipLayout *)self setAssetPresentationStyles:v7];
}

- (void)_invalidateAssetPresentationStyles
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x2000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x2000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateAssetPresentationStyles]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:982 description:{@"invalidating %lu after it already has been updated", 0x2000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 0x2000;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)_updateResource
{
  v4 = [(PXStoryClipLayout *)self clip];
  v3 = [v4 resource];
  [(PXStoryClipLayout *)self setResource:v3];
}

- (void)_invalidateResource
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout _invalidateResource]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryClipLayout.m" lineNumber:974 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryClipLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryClipLayout.m" lineNumber:970 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v31 handleFailureInFunction:v32 file:@"PXStoryClipLayout.m" lineNumber:882 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryClipLayout *)self _updateResource];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
        [v33 handleFailureInFunction:v34 file:@"PXStoryClipLayout.m" lineNumber:886 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryClipLayout *)self _updateColorGradeKind];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v35 handleFailureInFunction:v36 file:@"PXStoryClipLayout.m" lineNumber:889 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryClipLayout *)self _updateColorGradingEffect];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v37 handleFailureInFunction:v38 file:@"PXStoryClipLayout.m" lineNumber:892 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20000uLL;
    if ((v7 & 0x20000) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFDFFFFLL;
      [(PXStoryClipLayout *)self _updateDisplayAsset];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v39 handleFailureInFunction:v40 file:@"PXStoryClipLayout.m" lineNumber:895 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x40000uLL;
    if ((v8 & 0x40000) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFBFFFFLL;
      [(PXStoryClipLayout *)self _updateShouldAutoplay];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v41 handleFailureInFunction:v42 file:@"PXStoryClipLayout.m" lineNumber:898 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x2000uLL;
    if ((v9 & 0x2000) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFDFFFLL;
      [(PXStoryClipLayout *)self _updateAssetPresentationStyles];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v43 handleFailureInFunction:v44 file:@"PXStoryClipLayout.m" lineNumber:901 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v10 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x4000uLL;
    if ((v10 & 0x4000) != 0)
    {
      p_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFBFFFLL;
      [(PXStoryClipLayout *)self _updateVideoPresentationController];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v45 handleFailureInFunction:v46 file:@"PXStoryClipLayout.m" lineNumber:904 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v11 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v11 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXStoryClipLayout *)self _updateSegmentIdentifiers];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v47 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v47 handleFailureInFunction:v48 file:@"PXStoryClipLayout.m" lineNumber:907 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v12 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x40uLL;
    if ((v12 & 0x40) != 0)
    {
      p_updateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFFFBFLL;
      [(PXStoryClipLayout *)self _updateIsSegmentVisible];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v49 handleFailureInFunction:v50 file:@"PXStoryClipLayout.m" lineNumber:910 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v13 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x800000uLL;
    if ((v13 & 0x800000) != 0)
    {
      p_updateFlags->needsUpdate = v13 & 0xFFFFFFFFFF7FFFFFLL;
      [(PXStoryClipLayout *)self _updateOffsetFromCurrentSegment];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v51 = [MEMORY[0x1E696AAA8] currentHandler];
      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v51 handleFailureInFunction:v52 file:@"PXStoryClipLayout.m" lineNumber:913 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v14 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x100000uLL;
    if ((v14 & 0x100000) != 0)
    {
      p_updateFlags->needsUpdate = v14 & 0xFFFFFFFFFFEFFFFFLL;
      [(PXStoryClipLayout *)self _updatePlayheadState];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v53 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v53 handleFailureInFunction:v54 file:@"PXStoryClipLayout.m" lineNumber:916 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v15 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v15 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v15 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryClipLayout *)self _updateVideoPresentationControllerState];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v55 = [MEMORY[0x1E696AAA8] currentHandler];
      v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v55 handleFailureInFunction:v56 file:@"PXStoryClipLayout.m" lineNumber:919 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v16 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x400000uLL;
    if ((v16 & 0x400000) != 0)
    {
      p_updateFlags->needsUpdate = v16 & 0xFFFFFFFFFFBFFFFFLL;
      [(PXStoryClipLayout *)self _updateMusicDucking];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v57 = [MEMORY[0x1E696AAA8] currentHandler];
      v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v57 handleFailureInFunction:v58 file:@"PXStoryClipLayout.m" lineNumber:922 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v17 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x200000uLL;
    if ((v17 & 0x200000) != 0)
    {
      p_updateFlags->needsUpdate = v17 & 0xFFFFFFFFFFDFFFFFLL;
      [(PXStoryClipLayout *)self _updateContentMode];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v59 = [MEMORY[0x1E696AAA8] currentHandler];
      v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v59 handleFailureInFunction:v60 file:@"PXStoryClipLayout.m" lineNumber:925 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v18 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x1000000uLL;
    if ((v18 & 0x1000000) != 0)
    {
      p_updateFlags->needsUpdate = v18 & 0xFFFFFFFFFEFFFFFFLL;
      [(PXStoryClipLayout *)self _updateTextResourceSpriteFrame];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v61 = [MEMORY[0x1E696AAA8] currentHandler];
      v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v61 handleFailureInFunction:v62 file:@"PXStoryClipLayout.m" lineNumber:928 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v19 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x2000000uLL;
    if ((v19 & 0x2000000) != 0)
    {
      p_updateFlags->needsUpdate = v19 & 0xFFFFFFFFFDFFFFFFLL;
      [(PXStoryClipLayout *)self _updateModelPresentedTextProperties];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v63 = [MEMORY[0x1E696AAA8] currentHandler];
      v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v63 handleFailureInFunction:v64 file:@"PXStoryClipLayout.m" lineNumber:931 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v20 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v20 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v20 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXStoryClipLayout *)self _updateContent];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v65 = [MEMORY[0x1E696AAA8] currentHandler];
      v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v65 handleFailureInFunction:v66 file:@"PXStoryClipLayout.m" lineNumber:934 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v21 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x80uLL;
    if ((v21 & 0x80) != 0)
    {
      p_updateFlags->needsUpdate = v21 & 0xFFFFFFFFFFFFFF7FLL;
      [(PXStoryClipLayout *)self _updateAnimations];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v67 = [MEMORY[0x1E696AAA8] currentHandler];
      v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v67 handleFailureInFunction:v68 file:@"PXStoryClipLayout.m" lineNumber:937 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v22 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x100uLL;
    if ((v22 & 0x100) != 0)
    {
      p_updateFlags->needsUpdate = v22 & 0xFFFFFFFFFFFFFEFFLL;
      [(PXStoryClipLayout *)self _updateEdgeMaskEffects];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v69 = [MEMORY[0x1E696AAA8] currentHandler];
      v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v69 handleFailureInFunction:v70 file:@"PXStoryClipLayout.m" lineNumber:940 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v23 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x8000uLL;
    if ((v23 & 0x8000) != 0)
    {
      p_updateFlags->needsUpdate = v23 & 0xFFFFFFFFFFFF7FFFLL;
      [(PXStoryClipLayout *)self _updateColorNormalizationEffect];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v71 = [MEMORY[0x1E696AAA8] currentHandler];
      v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v71 handleFailureInFunction:v72 file:@"PXStoryClipLayout.m" lineNumber:943 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v24 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10000uLL;
    if ((v24 & 0x10000) != 0)
    {
      p_updateFlags->needsUpdate = v24 & 0xFFFFFFFFFFFEFFFFLL;
      [(PXStoryClipLayout *)self _updateTextLegibilityEffect];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v73 = [MEMORY[0x1E696AAA8] currentHandler];
      v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v73 handleFailureInFunction:v74 file:@"PXStoryClipLayout.m" lineNumber:946 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v25 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x200uLL;
    if ((v25 & 0x200) != 0)
    {
      p_updateFlags->needsUpdate = v25 & 0xFFFFFFFFFFFFFDFFLL;
      [(PXStoryClipLayout *)self _updateCombinedEffect];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v75 = [MEMORY[0x1E696AAA8] currentHandler];
      v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v75 handleFailureInFunction:v76 file:@"PXStoryClipLayout.m" lineNumber:949 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v26 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x400uLL;
    if ((v26 & 0x400) != 0)
    {
      p_updateFlags->needsUpdate = v26 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXStoryClipLayout *)self _updateContentStyle];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v77 = [MEMORY[0x1E696AAA8] currentHandler];
      v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v77 handleFailureInFunction:v78 file:@"PXStoryClipLayout.m" lineNumber:952 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v27 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x800uLL;
    if ((v27 & 0x800) != 0)
    {
      p_updateFlags->needsUpdate = v27 & 0xFFFFFFFFFFFFF7FFLL;
      [(PXStoryClipLayout *)self _updateWantsHUD];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v79 = [MEMORY[0x1E696AAA8] currentHandler];
      v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v79 handleFailureInFunction:v80 file:@"PXStoryClipLayout.m" lineNumber:955 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v28 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x1000uLL;
    if ((v28 & 0x1000) != 0)
    {
      p_updateFlags->needsUpdate = v28 & 0xFFFFFFFFFFFFEFFFLL;
      [(PXStoryClipLayout *)self _updateHUD];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v81 = [MEMORY[0x1E696AAA8] currentHandler];
      v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v81 handleFailureInFunction:v82 file:@"PXStoryClipLayout.m" lineNumber:958 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v29 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x80000uLL;
    if ((v29 & 0x80000) != 0)
    {
      p_updateFlags->needsUpdate = v29 & 0xFFFFFFFFFFF7FFFFLL;
      [(PXStoryClipLayout *)self _updateSmartGradientAdjustment];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v83 = [MEMORY[0x1E696AAA8] currentHandler];
      v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v83 handleFailureInFunction:v84 file:@"PXStoryClipLayout.m" lineNumber:961 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v30 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x4000000uLL;
    if ((v30 & 0x4000000) != 0)
    {
      p_updateFlags->needsUpdate = v30 & 0xFFFFFFFFFBFFFFFFLL;
      [(PXStoryClipLayout *)self _updateInactiveImageFilterAdjustment];
      v30 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v30)
    {
      v85 = [MEMORY[0x1E696AAA8] currentHandler];
      v86 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout update]"];
      [v85 handleFailureInFunction:v86 file:@"PXStoryClipLayout.m" lineNumber:964 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v87.receiver = self;
  v87.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v87 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryClipLayout.m" lineNumber:878 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (BOOL)_isDisplayingTextResourceType:(int64_t)a3
{
  if (self->_resourceKind != 3)
  {
    return 0;
  }

  v4 = [(PXStoryClipLayout *)self currentTextResourceInfo];
  v5 = [v4 type] == a3;

  return v5;
}

- (BOOL)_isDisplayingContentOfAsset:(id)a3
{
  if (self->_resourceKind != 1)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PXStoryClipLayout *)self displayAsset];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (id)_effectWithClass:(Class)a3 reusableInstance:(id)a4
{
  v6 = a4;
  v7 = [(PXStoryClipLayout *)self entityManager];
  if (v6)
  {
    v8 = [v6 entityManager];
    v9 = v8 != v7;
  }

  else
  {
    v9 = 1;
  }

  v10 = v6;
  if (v9)
  {
    v10 = v6;
    if (v7)
    {
      v10 = [[a3 alloc] initWithEntityManager:v7];
    }
  }

  return v10;
}

- (void)setVideoPresentationController:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_videoPresentationController != v5 && ([(PXGDisplayAssetVideoPresentationController *)v5 isEqual:?]& 1) == 0)
  {
    v7 = self->_videoPresentationController;
    objc_storeStrong(&self->_videoPresentationController, a3);
    [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
    [(PXStoryClipLayout *)self _invalidatePlayheadState];
    v8 = [(PXStoryClipLayout *)self model];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PXStoryClipLayout_setVideoPresentationController___block_invoke;
    v10[3] = &unk_1E773EC90;
    v11 = v7;
    v12 = v6;
    v9 = v7;
    [v8 performChanges:v10];
  }
}

void __52__PXStoryClipLayout_setVideoPresentationController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 removeVideoPresentationController:?];
    v3 = v4;
  }

  if (*(a1 + 40))
  {
    [v4 addVideoPresentationController:?];
    v3 = v4;
  }
}

- (void)setAssetPresentationStyles:(unint64_t)a3
{
  if (self->_assetPresentationStyles != a3)
  {
    self->_assetPresentationStyles = a3;
    [(PXStoryClipLayout *)self _invalidateContentVersion];

    [(PXStoryClipLayout *)self _invalidateVideoPresentationController];
  }
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v3 referenceDepthDidChange];
  [(PXStoryClipLayout *)self _invalidateContent];
}

- (void)contentSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v3 contentSizeDidChange];
  [(PXStoryClipLayout *)self _invalidateContentStyle];
  [(PXStoryClipLayout *)self _invalidateEdgeMaskEffects];
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v3 alphaDidChange];
  [(PXStoryClipLayout *)self _invalidateContent];
  [(PXStoryClipLayout *)self _invalidateHUD];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v3 displayScaleDidChange];
  [(PXStoryClipLayout *)self _invalidateContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v3 referenceSizeDidChange];
  [(PXStoryClipLayout *)self referenceSize];
  [(PXStoryClipLayout *)self setContentSize:?];
  [(PXStoryClipLayout *)self _invalidateTextResourceSpriteFrame];
  [(PXStoryClipLayout *)self _invalidateContent];
}

- (void)entityManagerDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v3 entityManagerDidChange];
  [(PXStoryClipLayout *)self _invalidateColorGradingEffect];
  [(PXStoryClipLayout *)self _invalidateColorNormalizationEffect];
  [(PXStoryClipLayout *)self _invalidateTextLegibilityEffect];
  [(PXStoryClipLayout *)self _invalidateEdgeMaskEffects];
}

- (void)setTextFrameProgress:(id)a3
{
  v5 = a3;
  textFrameProgress = self->_textFrameProgress;
  if (textFrameProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)textFrameProgress cancel];
    objc_storeStrong(&self->_textFrameProgress, a3);
    v5 = v7;
  }
}

- (void)setTextResourceSpriteFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_textResourceSpriteFrame = &self->_textResourceSpriteFrame;
  if (!CGRectEqualToRect(a3, self->_textResourceSpriteFrame))
  {
    p_textResourceSpriteFrame->origin.x = x;
    p_textResourceSpriteFrame->origin.y = y;
    p_textResourceSpriteFrame->size.width = width;
    p_textResourceSpriteFrame->size.height = height;
    [(PXStoryClipLayout *)self _invalidateModelPresentedTextProperties];

    [(PXStoryClipLayout *)self _invalidateContent];
  }
}

- (void)setShouldObserveInternationalStyleTitlePreferences:(BOOL)a3
{
  if (self->_shouldObserveInternationalStyleTitlePreferences != a3)
  {
    self->_shouldObserveInternationalStyleTitlePreferences = a3;
    if (a3)
    {
      PXStoryTitleInternationalStyleRegisterPreferencesObserver(self);
    }

    else
    {
      PXStoryTitleInternationalStyleUnregisterPreferencesObserver(self);
    }
  }
}

- (void)setCurrentTextResourceInfo:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentTextResourceInfo != v5)
  {
    v8 = v5;
    v7 = [(PXStoryTextResourceInfo *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_currentTextResourceInfo, a3);
      [(PXStoryClipLayout *)self setShouldObserveInternationalStyleTitlePreferences:v8 != 0];
      v6 = v8;
    }
  }
}

- (void)setRelativeZPositionAboveLegibilityGradients:(double)a3
{
  if (self->_relativeZPositionAboveLegibilityGradients != a3)
  {
    self->_relativeZPositionAboveLegibilityGradients = a3;
    [(PXStoryClipLayout *)self _invalidateContent];
  }
}

- (void)setKenBurnsAnimation:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_kenBurnsAnimation != v5)
  {
    v8 = v5;
    v7 = [(PXStoryRectAnimation *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryRectAnimation *)self->_kenBurnsAnimation unregisterChangeObserver:self context:KenBurnsAnimationObservationContext];
      objc_storeStrong(&self->_kenBurnsAnimation, a3);
      [(PXStoryRectAnimation *)self->_kenBurnsAnimation registerChangeObserver:self context:KenBurnsAnimationObservationContext];
      [(PXStoryClipLayout *)self _invalidateContentStyle];
      v6 = v8;
    }
  }
}

- (void)setDisableClippingAnimation:(BOOL)a3
{
  if (self->_disableClippingAnimation != a3)
  {
    self->_disableClippingAnimation = a3;
    [(PXStoryClipLayout *)self _invalidateAnimations];

    [(PXStoryClipLayout *)self _invalidateContentStyle];
  }
}

- (void)setClippingAnimation:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_clippingAnimation != v5)
  {
    v8 = v5;
    v7 = [(PXStoryTiltedEdgeInsetsAnimation *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryTiltedEdgeInsetsAnimation *)self->_clippingAnimation unregisterChangeObserver:self context:ClippingAnimationObservationContext];
      objc_storeStrong(&self->_clippingAnimation, a3);
      [(PXStoryTiltedEdgeInsetsAnimation *)self->_clippingAnimation registerChangeObserver:self context:ClippingAnimationObservationContext];
      [(PXStoryClipLayout *)self _invalidateEdgeMaskEffects];
      v6 = v8;
    }
  }
}

- (void)setIsReadyForAutoplay:(BOOL)a3
{
  if (self->_isReadyForAutoplay != a3)
  {
    self->_isReadyForAutoplay = a3;
    [(PXStoryClipLayout *)self _invalidateAssetPresentationStyles];

    [(PXStoryClipLayout *)self _invalidateVideoPresentationController];
  }
}

- (void)setAutoplayTimeRange:(id *)a3
{
  p_autoplayTimeRange = &self->_autoplayTimeRange;
  v6 = *&a3->var0.var3;
  *&range1.start.value = *&a3->var0.var0;
  *&range1.start.epoch = v6;
  *&range1.duration.timescale = *&a3->var1.var1;
  v7 = *&self->_autoplayTimeRange.start.epoch;
  *&v10.start.value = *&self->_autoplayTimeRange.start.value;
  *&v10.start.epoch = v7;
  *&v10.duration.timescale = *&self->_autoplayTimeRange.duration.timescale;
  if (!CMTimeRangeEqual(&range1, &v10))
  {
    v8 = *&a3->var0.var0;
    v9 = *&a3->var1.var1;
    *&p_autoplayTimeRange->start.epoch = *&a3->var0.var3;
    *&p_autoplayTimeRange->duration.timescale = v9;
    *&p_autoplayTimeRange->start.value = v8;
    [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
  }
}

- (void)setShouldAutoplay:(BOOL)a3
{
  if (self->_shouldAutoplay != a3)
  {
    self->_shouldAutoplay = a3;
    if (a3)
    {
      [(PXStoryClipLayout *)self setIsReadyForAutoplay:1];
    }

    [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
  }
}

- (void)setContentSpriteNormalizedFrameOverride:(CGRect)a3 coordinateSystem:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentSpriteNormalizedFrameOverride = &self->_contentSpriteNormalizedFrameOverride;
  if (!CGRectEqualToRect(a3, self->_contentSpriteNormalizedFrameOverride) || self->_contentSpriteNormalizedFrameOverrideCoordinateSystem != a4)
  {
    p_contentSpriteNormalizedFrameOverride->origin.x = x;
    p_contentSpriteNormalizedFrameOverride->origin.y = y;
    p_contentSpriteNormalizedFrameOverride->size.width = width;
    p_contentSpriteNormalizedFrameOverride->size.height = height;
    self->_contentSpriteNormalizedFrameOverrideCoordinateSystem = a4;

    [(PXStoryClipLayout *)self _invalidateContent];
  }
}

- (void)setDisplayAsset:(id)a3
{
  v5 = a3;
  displayAsset = self->_displayAsset;
  if (displayAsset != v5)
  {
    v9 = v5;
    if (v5 && displayAsset)
    {
      v7 = displayAsset;
      v8 = [(PXDisplayAsset *)v9 isContentEqualTo:v7];
      if (!v8)
      {
        v8 = [(PXDisplayAsset *)v7 isContentEqualTo:v9];
      }

      objc_storeStrong(&self->_displayAsset, a3);
      [(PXStoryClipLayout *)self setIsReadyForAutoplay:0];
      if (v8 != 2)
      {
        [(PXStoryClipLayout *)self _invalidateColorNormalizationEffect];
      }
    }

    else
    {
      objc_storeStrong(&self->_displayAsset, a3);
      [(PXStoryClipLayout *)self setIsReadyForAutoplay:0];
    }

    [(PXStoryClipLayout *)self _invalidateContent];
    v5 = v9;
  }
}

- (void)setIsPlayheadInVideoTimeRange:(BOOL)a3 isPlayheadInAudioTimeRange:(BOOL)a4 wasPlayheadMovedManually:(BOOL)a5 currentAudioVolume:(float)a6
{
  v8 = a4;
  v9 = a3;
  v34 = *MEMORY[0x1E69E9840];
  isPlayheadInVideoTimeRange = self->_isPlayheadInVideoTimeRange;
  if (isPlayheadInVideoTimeRange != a3)
  {
    self->_isPlayheadInVideoTimeRange = a3;
  }

  isPlayheadInAudioTimeRange = self->_isPlayheadInAudioTimeRange;
  if (isPlayheadInAudioTimeRange != a4)
  {
    self->_isPlayheadInAudioTimeRange = a4;
    v13 = [(PXStoryClipLayout *)self model];
    v14 = [v13 log];

    v15 = v14;
    v16 = os_signpost_id_make_with_pointer(v15, self);
    v17 = v16;
    if (v8)
    {
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        v26 = [(PXStoryClipLayout *)self model];
        v24 = [v26 logContext];
        v18 = [(PXStoryClipLayout *)self clip];
        v25 = v18;
        if (v18)
        {
          [v18 info];
          [(PXStoryClipLayout *)self model];
        }

        else
        {
          bzero(v27, 0x300uLL);
          [(PXStoryClipLayout *)self model];
        }
        v20 = ;
        v21 = [v20 timeline];
        *buf = 134218498;
        v29 = v24;
        v30 = 2050;
        v31 = v23;
        v32 = 2114;
        v33 = v21;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PXStoryClipLayoutPlayheadInAudioTimeRange", "Context=%{signpost.telemetry:string2}lu clipIdentifier=%{signpost.description:attribute, public}ld timeline=%{signpost.description:attribute, public}@", buf, 0x20u);
      }
    }

    else if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v19 = [(PXStoryClipLayout *)self model];
      *buf = 134217984;
      v29 = [v19 logContext];
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_END, v17, "PXStoryClipLayoutPlayheadInAudioTimeRange", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }
  }

  if (self->_currentAudioVolume != a6)
  {
    self->_currentAudioVolume = a6;
    self->_wasPlayheadMovedManually = a5;
    [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
LABEL_17:
    [(PXStoryClipLayout *)self _invalidateMusicDucking];
    return;
  }

  self->_wasPlayheadMovedManually = a5;
  if (isPlayheadInVideoTimeRange != v9 || isPlayheadInAudioTimeRange != v8)
  {
    [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
    if (isPlayheadInAudioTimeRange != v8)
    {
      goto LABEL_17;
    }
  }
}

- (void)setShouldAspectFitContent:(BOOL)a3
{
  if (self->_shouldAspectFitContent != a3)
  {
    self->_shouldAspectFitContent = a3;
    [(PXStoryClipLayout *)self _invalidateContent];
    [(PXStoryClipLayout *)self _invalidateContentStyle];
    if ([(PXStoryClipLayout *)self isSegmentVisible])
    {
      v4 = [(PXStoryClipLayout *)self createAnimation];
      [v4 setDuration:0.2];
    }
  }
}

- (void)setOffsetFromCurrentSegment:(int64_t)a3
{
  if (self->_offsetFromCurrentSegment != a3)
  {
    self->_offsetFromCurrentSegment = a3;
    [(PXStoryClipLayout *)self _invalidatePlayheadState];
  }
}

- (void)setIsSegmentVisible:(BOOL)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_isSegmentVisible != a3)
  {
    v3 = a3;
    self->_isSegmentVisible = a3;
    if (self->_isFeedThumbnail)
    {
LABEL_15:
      [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
      [(PXStoryClipLayout *)self _invalidateAnimations];
      [(PXStoryClipLayout *)self _invalidateHUD];
      [(PXStoryClipLayout *)self _invalidateContentMode];
      [(PXStoryClipLayout *)self _invalidateContentStyle];
      return;
    }

    v5 = [(PXStoryClipLayout *)self model];
    v6 = [v5 log];

    v7 = v6;
    v8 = os_signpost_id_make_with_pointer(v7, self);
    v9 = v8;
    if (v3)
    {
      if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
      {
        goto LABEL_14;
      }

      v10 = [(PXStoryClipLayout *)self model];
      v11 = [v10 logContext];
      v12 = [(PXStoryClipLayout *)self clip];
      v13 = v12;
      if (v12)
      {
        [v12 info];
        v14 = v17[0];
      }

      else
      {
        bzero(v17, 0x300uLL);
        v14 = 0;
      }

      v15 = [(PXStoryClipLayout *)self model];
      v16 = [v15 timeline];
      *buf = 134218498;
      v19 = v11;
      v20 = 2050;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PXStoryClipLayoutIsSegmentVisible", "Context=%{signpost.telemetry:string2}lu clipIdentifier=%{signpost.description:attribute, public}ld timeline=%{signpost.description:attribute, public}@", buf, 0x20u);
    }

    else
    {
      if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
      {
        goto LABEL_14;
      }

      v10 = [(PXStoryClipLayout *)self model];
      *buf = 134217984;
      v19 = [v10 logContext];
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "PXStoryClipLayoutIsSegmentVisible", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }

LABEL_14:
    goto LABEL_15;
  }
}

- (void)setHUDTimer:(id)a3
{
  v5 = a3;
  HUDTimer = self->_HUDTimer;
  if (HUDTimer != v5)
  {
    v7 = v5;
    [(NSTimer *)HUDTimer invalidate];
    objc_storeStrong(&self->_HUDTimer, a3);
    v5 = v7;
  }
}

- (void)setWantsHUD:(BOOL)a3
{
  if (self->_wantsHUD != a3)
  {
    self->_wantsHUD = a3;
    [(PXStoryClipLayout *)self _invalidateHUD];
    if (self->_wantsHUD)
    {
      v4 = [MEMORY[0x1E695DFF0] px_scheduledTimerWithTimeInterval:self weakTarget:sel__invalidateHUD selector:0 userInfo:1 repeats:1.0];
      [(PXStoryClipLayout *)self setHUDTimer:v4];
    }

    else
    {

      [(PXStoryClipLayout *)self setHUDTimer:0];
    }
  }
}

- (void)setSegmentIdentifiers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_segmentIdentifiers != v4)
  {
    v9 = v4;
    v6 = [(NSIndexSet *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSIndexSet *)v9 copy];
      segmentIdentifiers = self->_segmentIdentifiers;
      self->_segmentIdentifiers = v7;

      [(PXStoryClipLayout *)self _invalidateIsSegmentVisible];
      [(PXStoryClipLayout *)self _invalidateHUD];
      [(PXStoryClipLayout *)self _invalidateOffsetFromCurrentSegment];
      v5 = v9;
    }
  }
}

- (void)setCombinedEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_combinedEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGCombinedEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_combinedEffect, a3);
      [(PXStoryClipLayout *)self _invalidateContentStyle];
      v6 = v8;
    }
  }
}

- (void)setRightEdgeClippingMaskEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_rightEdgeClippingMaskEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGRegionMaskEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_rightEdgeClippingMaskEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      v6 = v8;
    }
  }
}

- (void)setLeftEdgeClippingMaskEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_leftEdgeClippingMaskEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGRegionMaskEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_leftEdgeClippingMaskEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      v6 = v8;
    }
  }
}

- (void)setRightEdgeMaskEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_rightEdgeMaskEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGRegionMaskEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_rightEdgeMaskEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      v6 = v8;
    }
  }
}

- (void)setBottomEdgeMaskEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_bottomEdgeMaskEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGRegionMaskEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_bottomEdgeMaskEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      v6 = v8;
    }
  }
}

- (void)setLeftEdgeMaskEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_leftEdgeMaskEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGRegionMaskEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_leftEdgeMaskEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      v6 = v8;
    }
  }
}

- (void)setTopEdgeMaskEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_topEdgeMaskEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGRegionMaskEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_topEdgeMaskEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      v6 = v8;
    }
  }
}

- (void)setTextLegibilityEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_textLegibilityEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGTextLegibilityEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_textLegibilityEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      v6 = v8;
    }
  }
}

- (void)setColorNormalizationEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_colorNormalizationEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGColorGradingEffect *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_colorNormalizationEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      v6 = v8;
    }
  }
}

- (void)setColorGradingEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_colorGradingEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGColorGradingEffect *)v5 isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_colorGradingEffect, a3);
      [(PXStoryClipLayout *)self _invalidateCombinedEffect];
      [(PXStoryClipLayout *)self _invalidateColorNormalizationEffect];
      v6 = v8;
    }
  }
}

- (void)setCustomColorGradeKind:(int64_t)a3
{
  if (self->_customColorGradeKind != a3)
  {
    self->_customColorGradeKind = a3;
    [(PXStoryClipLayout *)self _invalidateColorGradingEffect];

    [(PXStoryClipLayout *)self _invalidateColorNormalizationEffect];
  }
}

- (void)setColorGradeKind:(int64_t)a3
{
  if (self->_colorGradeKind != a3)
  {
    self->_colorGradeKind = a3;
    [(PXStoryClipLayout *)self _invalidateColorGradingEffect];
  }
}

- (void)setResource:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_resource != v5)
  {
    v9 = v5;
    v7 = [(PXStoryResource *)v5 isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_resource, a3);
      self->_resourceKind = [(PXStoryResource *)self->_resource px_storyResourceKind];
      [(PXStoryClipLayout *)self _invalidateInactiveImageFilterAdjustment];
      [(PXStoryClipLayout *)self _invalidateDisplayAsset];
      [(PXStoryClipLayout *)self _invalidateAssetPresentationStyles];
      [(PXStoryClipLayout *)self _invalidateVideoPresentationController];
      [(PXStoryClipLayout *)self _invalidateContentVersion];
      [(PXStoryClipLayout *)self _invalidateWantsHUD];
      if (self->_resourceKind == 3)
      {
        v8 = [(PXStoryResource *)self->_resource px_storyResourceTextResourceInfo];
        [(PXStoryClipLayout *)self setCurrentTextResourceInfo:v8];
      }

      else
      {
        [(PXStoryClipLayout *)self setCurrentTextResourceInfo:0];
      }

      v6 = v9;
    }
  }
}

uint64_t __37__PXStoryClipLayout_setContentAlpha___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 932) = *(a1 + 40);
  [*(a1 + 32) _invalidateContent];
  v2 = *(a1 + 32);

  return [v2 _invalidateInactiveImageFilterAdjustment];
}

- (void)setManualContentsRectAmount:(double)a3
{
  if (self->_manualContentsRectAmount != a3)
  {
    self->_manualContentsRectAmount = a3;
    [(PXStoryClipLayout *)self _invalidateEdgeMaskEffects];

    [(PXStoryClipLayout *)self _invalidateContentStyle];
  }
}

- (void)setManualContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_manualContentsRect = &self->_manualContentsRect;
  if (!CGRectEqualToRect(self->_manualContentsRect, a3))
  {
    p_manualContentsRect->origin.x = x;
    p_manualContentsRect->origin.y = y;
    p_manualContentsRect->size.width = width;
    p_manualContentsRect->size.height = height;
    [(PXStoryClipLayout *)self _invalidateEdgeMaskEffects];

    [(PXStoryClipLayout *)self _invalidateContentStyle];
  }
}

- (void)setCornerRadius:(id)a3
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(v7, self->_cornerRadius))) & 1) == 0)
  {
    self->_cornerRadius.var0.var0.topLeft = v3;
    self->_cornerRadius.var0.var0.topRight = v4;
    self->_cornerRadius.var0.var0.bottomLeft = v5;
    self->_cornerRadius.var0.var0.bottomRight = v6;
    [(PXStoryClipLayout *)self _invalidateContentStyle:*&a3.var0.var0.var0];
  }
}

- (void)setCanAspectFitContent:(BOOL)a3
{
  if (self->_canAspectFitContent != a3)
  {
    self->_canAspectFitContent = a3;
    [(PXStoryClipLayout *)self _invalidateContentMode];
  }
}

- (void)setCanShowHUD:(BOOL)a3
{
  if (self->_canShowHUD != a3)
  {
    self->_canShowHUD = a3;
    [(PXStoryClipLayout *)self _invalidateWantsHUD];
  }
}

- (void)setCanShowTextLegibilityEffect:(BOOL)a3
{
  if (self->_canShowTextLegibilityEffect != a3)
  {
    self->_canShowTextLegibilityEffect = a3;
    [(PXStoryClipLayout *)self _invalidateTextLegibilityEffect];
  }
}

- (void)setCanShowColorNormalizedContent:(BOOL)a3
{
  if (self->_canShowColorNormalizedContent != a3)
  {
    self->_canShowColorNormalizedContent = a3;
    [(PXStoryClipLayout *)self _invalidateColorNormalizationEffect];
  }
}

- (void)setCanShowDynamicContent:(BOOL)a3
{
  if (self->_canShowDynamicContent != a3)
  {
    self->_canShowDynamicContent = a3;
    [(PXStoryClipLayout *)self _invalidateAssetPresentationStyles];

    [(PXStoryClipLayout *)self _invalidateAnimations];
  }
}

- (void)setClipTimeRange:(id *)a3
{
  p_clipTimeRange = &self->_clipTimeRange;
  v6 = *&a3->var0.var3;
  *&range1.start.value = *&a3->var0.var0;
  *&range1.start.epoch = v6;
  *&range1.duration.timescale = *&a3->var1.var1;
  v7 = *&self->_clipTimeRange.start.epoch;
  *&v10.start.value = *&self->_clipTimeRange.start.value;
  *&v10.start.epoch = v7;
  *&v10.duration.timescale = *&self->_clipTimeRange.duration.timescale;
  if (!CMTimeRangeEqual(&range1, &v10))
  {
    v8 = *&a3->var0.var0;
    v9 = *&a3->var1.var1;
    *&p_clipTimeRange->start.epoch = *&a3->var0.var3;
    *&p_clipTimeRange->duration.timescale = v9;
    *&p_clipTimeRange->start.value = v8;
    [(PXStoryClipLayout *)self _invalidatePlayheadState];
    [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
    [(PXStoryClipLayout *)self _invalidateSegmentIdentifiers];
  }
}

- (void)setOverrideStyleInfo:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_overrideStyleInfo != v5)
  {
    v8 = v5;
    v7 = [(PXStoryStyleDescriptor *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_overrideStyleInfo, a3);
      [(PXStoryClipLayout *)self _invalidateColorGradeKind];
      v6 = v8;
    }
  }
}

- (void)setModel:(id)a3
{
  v5 = a3;
  model = self->_model;
  if (model != v5)
  {
    v8 = v5;
    [(PXStoryModel *)model unregisterChangeObserver:self context:ModelObservationContext];
    objc_storeStrong(&self->_model, a3);
    [(PXStoryModel *)self->_model registerChangeObserver:self context:ModelObservationContext];
    v7 = [(PXStoryModel *)self->_model viewMode]== 3 && ([(PXStoryModel *)self->_model thumbnailStyle]== 1 || [(PXStoryModel *)self->_model thumbnailStyle]== 5);
    self->_isFeedThumbnail = v7;
    [(PXStoryClipLayout *)self _invalidateColorGradeKind];
    [(PXStoryClipLayout *)self _invalidateVideoPresentationController];
    [(PXStoryClipLayout *)self _invalidateVideoPresentationControllerState];
    [(PXStoryClipLayout *)self _invalidateSegmentIdentifiers];
    [(PXStoryClipLayout *)self _invalidateIsSegmentVisible];
    [(PXStoryClipLayout *)self _invalidateWantsHUD];
    [(PXStoryClipLayout *)self _invalidateHUD];
    [(PXStoryClipLayout *)self _invalidateShouldAutoplay];
    [(PXStoryClipLayout *)self _invalidateInactiveImageFilterAdjustment];
    v5 = v8;
  }
}

- (void)setClip:(id)a3
{
  v5 = a3;
  clip = self->_clip;
  if (clip != v5)
  {
    v7 = clip;
    objc_storeStrong(&self->_clip, a3);
    if (([(PXStoryClip *)self->_clip isVisuallyEqualToClip:v7]& 1) == 0)
    {
      [(PXStoryClipLayout *)self _invalidateResource];
      [(PXStoryClipLayout *)self _invalidateAssetPresentationStyles];
      [(PXStoryClipLayout *)self _invalidateAnimations];
      [(PXStoryClipLayout *)self _invalidateHUD];
      [(PXStoryClipLayout *)self _invalidateColorGradeKind];
      [(PXStoryClipLayout *)self _invalidateColorNormalizationEffect];
      [(PXStoryClipLayout *)self _invalidateTextLegibilityEffect];
      [(PXStoryClipLayout *)self _invalidateSmartGradientAdjustment];
      [(PXStoryClipLayout *)self _invalidateInactiveImageFilterAdjustment];
      if (v7)
      {
        [(PXStoryClip *)v7 info];
        v8 = v13;
      }

      else
      {
        bzero(v12, 0x300uLL);
        v8 = 0;
      }

      v9 = self->_clip;
      if (v9)
      {
        [(PXStoryClip *)v9 info];
        v10 = v11[8];
      }

      else
      {
        bzero(v11, 0x300uLL);
        v10 = 0;
      }

      if (((v10 ^ v8) & 0xDLL) != 0)
      {
        [(PXStoryClipLayout *)self _invalidateContent];
      }
    }
  }
}

- (PXStoryAnimationController)animationController
{
  v2 = [(PXStoryClipLayout *)self model];
  v3 = [v2 animationController];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p clipIdentifier:%ld>", v5, self, -[PXStoryClip identifier](self->_clip, "identifier")];;

  return v6;
}

- (void)dealloc
{
  [(NSTimer *)self->_HUDTimer invalidate];
  [(NSProgress *)self->_textFrameProgress cancel];
  v3.receiver = self;
  v3.super_class = PXStoryClipLayout;
  [(PXStoryClipLayout *)&v3 dealloc];
}

- (PXStoryClipLayout)init
{
  v20.receiver = self;
  v20.super_class = PXStoryClipLayout;
  v2 = [(PXStoryClipLayout *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_contentAlpha = 1.0;
    v4 = MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 16);
    v2->_contentBounds.origin = *MEMORY[0x1E695F050];
    v2->_contentBounds.size = v5;
    v2->_useContentBoundsForContentEdgeInsets = 1;
    *&v2->_contentEdgeInsets.top.preRotationInset = PXStoryTiltedEdgeInsetsNull;
    *&v2->_contentEdgeInsets.top.postRotationInset = unk_1A5382490;
    *&v2->_contentEdgeInsets.bottom.postRotationInset = xmmword_1A53824C0;
    *&v2->_contentEdgeInsets.right.rotationAngle = unk_1A53824D0;
    *&v2->_contentEdgeInsets.left.rotationAngle = xmmword_1A53824A0;
    *&v2->_contentEdgeInsets.bottom.preRotationInset = unk_1A53824B0;
    v2->_manualContentsRectAmount = 0.0;
    v6 = *(off_1E77221F8 + 1);
    v2->_manualContentsRect.origin = *off_1E77221F8;
    v2->_manualContentsRect.size = v6;
    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v2->_contentsRectTransform.a = *MEMORY[0x1E695EFD0];
    *&v2->_contentsRectTransform.c = v8;
    *&v2->_contentsRectTransform.tx = *(v7 + 32);
    v2->_contentScale = 1.0;
    v9 = *off_1E7722238;
    v10 = *(off_1E7722238 + 1);
    *&v2->_contentsRectOverride.t.a = *off_1E7722238;
    *&v2->_contentsRectOverride.t.c = v10;
    v11 = *(off_1E7722238 + 2);
    *&v2->_contentsRectOverride.t.tx = v11;
    v12 = v4[1];
    v2->_contentSpriteNormalizedFrameOverride.origin = *v4;
    v2->_contentSpriteNormalizedFrameOverride.size = v12;
    *&v2->_presentedKenBurnsAnimationCurrentRect.t.a = v9;
    *&v2->_presentedKenBurnsAnimationCurrentRect.t.c = v10;
    *&v2->_presentedKenBurnsAnimationCurrentRect.t.tx = v11;
    v2->_canShowColorNormalizedContent = 1;
    v2->_canShowTextLegibilityEffect = 1;
    v13 = v4[1];
    v2->_primaryDividerBounds.origin = *v4;
    v2->_primaryDividerBounds.size = v13;
    v14 = v4[1];
    v2->_secondaryDividerBounds.origin = *v4;
    v2->_secondaryDividerBounds.size = v14;
    v2->_offsetFromCurrentSegment = 0x7FFFFFFFFFFFFFFFLL;
    *&v2->_autoplayTimeRange.start.value = 0u;
    *&v2->_autoplayTimeRange.start.epoch = 0u;
    *&v2->_autoplayTimeRange.duration.timescale = 0u;
    v2->_inactiveContentSpriteIndex = 0;
    v2->_contentSpriteIndex = 1;
    v2->_primaryDividerSpriteIndex = 2;
    v2->_secondaryDividerSpriteIndex = 3;
    v15 = +[PXStorySettings sharedInstance];
    v16 = [v15 isHUDEnabled];

    if (v16)
    {
      v17 = 4;
    }

    else
    {
      v17 = -1;
    }

    if (v16)
    {
      v18 = 5;
    }

    else
    {
      v18 = 4;
    }

    v3->_diagnosticHUDSpriteIndex = v17;
    [(PXStoryClipLayout *)v3 addSpriteCount:v18 withInitialState:0];
    [(PXStoryClipLayout *)v3 _invalidateContent];
    [(PXStoryClipLayout *)v3 setContentSource:v3];
  }

  return v3;
}

+ (BOOL)shouldContinueKenBurnsAnimationFromPreviousPresentedContentSize:(CGSize)a3 toCurrentContentSize:(CGSize)a4
{
  v4 = +[PXStorySettings sharedInstance];
  if ([v4 allowsContinuousKenBurnsAnimations])
  {
    PXSizeGetAspectRatioWithDefault();
  }

  return 0;
}

@end