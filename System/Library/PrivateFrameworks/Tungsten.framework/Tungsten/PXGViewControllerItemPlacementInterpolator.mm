@interface PXGViewControllerItemPlacementInterpolator
- (PXGViewControllerItemPlacementInterpolator)init;
- (PXGViewControllerItemPlacementInterpolator)initWithSourcePlacement:(id)placement targetPlacement:(id)targetPlacement layering:(int64_t)layering containerView:(id)view duration:(double)duration;
- (id)adjustedPlacement:(id)placement;
@end

@implementation PXGViewControllerItemPlacementInterpolator

- (id)adjustedPlacement:(id)placement
{
  placementCopy = placement;
  v5 = placementCopy;
  if (!self->_hasValidGeometry)
  {
    v25 = placementCopy;
    goto LABEL_37;
  }

  [(PXGViewControllerItemPlacementInterpolator *)self time];
  v7 = v6 / self->_duration;
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = 1.0;
  v9 = fmin(v7, 1.0);
  *&v7 = v9;
  [(CAMediaTimingFunction *)self->_mainTimingFunction _solveForInput:v7];
  v11 = v10;
  v12 = v10;
  PXRectDerivativeIntegrate();
  v58 = v12;
  PXRectByLinearlyInterpolatingRects();
  v75 = v14;
  v76 = v13;
  v73 = v16;
  v74 = v15;
  layering = self->_layering;
  if (self->_sourcePlacement == v5)
  {
    if (layering != -1)
    {
      *&v13 = v11;
      [(CAMediaTimingFunction *)self->_fadeTimingFunction _solveForInput:v13, *&v12];
      v8 = 1.0 - v26;
    }

    if (v9 < 0.332)
    {
      v27 = v9 / 0.332;
      *&v27 = v9 / 0.332;
      [(CAMediaTimingFunction *)self->_secondaryTimingFunction _solveForInput:v27];
    }

    [(PXGItemPlacement *)self->_sourcePlacement chromeAlpha];
    v20 = 0;
    PXFloatByLinearlyInterpolatingFloats();
    if (self->_alwaysHideSource)
    {
      v8 = 0.0;
    }

    else
    {
      v20 = v28;
    }

    v24 = [[PXGItemPlacement alloc] initWithContext:0 configuration:&__block_literal_global_1971];
  }

  else
  {
    if (layering == -1)
    {
      *&v13 = v11;
      [(CAMediaTimingFunction *)self->_fadeTimingFunction _solveForInput:v13, *&v12];
      v8 = v18;
    }

    if (v9 >= 0.332)
    {
      v19 = (v9 + -0.332) / 0.668;
      *&v19 = v19;
      [(CAMediaTimingFunction *)self->_secondaryTimingFunction _solveForInput:v19];
    }

    [(PXGItemPlacement *)self->_targetPlacement chromeAlpha];
    v20 = 0;
    PXFloatByLinearlyInterpolatingFloats();
    v24 = 0;
    if (self->_alwaysHideTarget)
    {
      v8 = 0.0;
    }

    else
    {
      v20 = v21;
    }
  }

  v29 = *(MEMORY[0x277D3CFE8] + 16);
  v113 = *MEMORY[0x277D3CFE8];
  v114 = v29;
  v30 = *(MEMORY[0x277D3CFE8] + 32);
  v115 = v30;
  if (self->_animatesDisplayedAssetContentsRect)
  {
    v31 = self->_targetPlacement;
    v32 = v31;
    if (self->_allowsAdjustedTargetPlacement)
    {
      adjustedPreferredPlacement = [(PXGItemPlacement *)v31 adjustedPreferredPlacement];

      v32 = adjustedPreferredPlacement;
    }

    sourcePlacement = self->_sourcePlacement;
    if (sourcePlacement)
    {
      [(PXGItemPlacement *)sourcePlacement displayedAssetContentsRect];
      if (v32)
      {
LABEL_24:
        [v32 displayedAssetContentsRect];
LABEL_27:
        PXStoryRectLinearlyInterpolatingRects();

        goto LABEL_28;
      }
    }

    else
    {
      v111 = 0u;
      v112 = 0u;
      v110 = 0u;
      if (v32)
      {
        goto LABEL_24;
      }
    }

    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    goto LABEL_27;
  }

LABEL_28:
  v72 = v20;
  LODWORD(v23) = -1.0;
  LODWORD(v22) = -1.0;
  LODWORD(v29) = -1.0;
  LODWORD(v30) = -1.0;
  if (self->_animatesCornerRadius)
  {
    [(PXGItemPlacement *)self->_sourcePlacement cornerRadius:*&v30];
    [(PXGItemPlacement *)self->_targetPlacement cornerRadius];
    v59 = v12;
    *&v30 = PXGCornerRadiusByLinearlyInterpolatingCornerRadii();
  }

  v68 = v30;
  v69 = v29;
  v70 = LODWORD(v22);
  v71 = LODWORD(v23);
  v35 = *MEMORY[0x277CBF398];
  v36 = *(MEMORY[0x277CBF398] + 8);
  v38 = *(MEMORY[0x277CBF398] + 16);
  v37 = *(MEMORY[0x277CBF398] + 24);
  v39 = v37;
  v40 = v38;
  v41 = v36;
  v42 = *MEMORY[0x277CBF398];
  if (self->_animatesNormalizedDisplayedAssetRect)
  {
    [(PXGItemPlacement *)self->_sourcePlacement normalizedDisplayedAssetRect:v42];
    PXRectDenormalize();
    [(PXGItemPlacement *)self->_targetPlacement normalizedDisplayedAssetRect];
    PXRectDenormalize();
    v59 = v12;
    PXRectByLinearlyInterpolatingRects();
    PXRectNormalize();
  }

  v64 = v42;
  v65 = v41;
  v66 = v40;
  v67 = v39;
  v43 = v35;
  v44 = v36;
  v45 = v38;
  v46 = v37;
  if (self->_animatesNormalizedTitleRect)
  {
    [(PXGItemPlacement *)self->_sourcePlacement normalizedTitleRect:v35];
    [(PXGItemPlacement *)self->_targetPlacement normalizedTitleRect];
    v59 = v12;
    PXRectByLinearlyInterpolatingRects();
  }

  v60 = v46;
  v61 = v45;
  v62 = v44;
  v63 = v43;
  if (self->_animatesNormalizedSubtitleRect)
  {
    [(PXGItemPlacement *)self->_sourcePlacement normalizedSubtitleRect];
    [(PXGItemPlacement *)self->_targetPlacement normalizedSubtitleRect];
    v59 = v12;
    PXRectByLinearlyInterpolatingRects();
    v35 = v47;
    v36 = v48;
    v38 = v49;
    v37 = v50;
  }

  [(PXGItemPlacement *)self->_sourcePlacement scrubberAlpha];
  [(PXGItemPlacement *)self->_targetPlacement scrubberAlpha];
  PXFloatByLinearlyInterpolatingFloats();
  v52 = v51;
  [(PXGItemPlacement *)self->_sourcePlacement legibilityOverlayAlpha];
  [(PXGItemPlacement *)self->_targetPlacement legibilityOverlayAlpha];
  PXFloatByLinearlyInterpolatingFloats();
  v54 = v53;
  [(PXGItemPlacement *)self->_sourcePlacement soundVolume];
  [(PXGItemPlacement *)self->_targetPlacement soundVolume];
  PXFloatByLinearlyInterpolatingFloats();
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __64__PXGViewControllerItemPlacementInterpolator_adjustedPlacement___block_invoke_2;
  v77[3] = &unk_2782A7EF0;
  *&v55 = v55;
  v79 = v76;
  v80 = v75;
  v81 = v74;
  v82 = v73;
  v83 = v8;
  v84 = v113;
  v85 = v114;
  v86 = v115;
  v102 = v68;
  v103 = v69;
  v104 = v70;
  v105 = v71;
  v87 = v64;
  v88 = v65;
  v89 = v66;
  v90 = v67;
  v91 = v63;
  v92 = v62;
  v93 = v61;
  v94 = v60;
  v95 = v35;
  v96 = v36;
  v97 = v38;
  v98 = v37;
  v99 = v72;
  v100 = v52;
  v101 = v54;
  v106 = LODWORD(v55);
  v77[4] = self;
  v78 = v24;
  v56 = v24;
  v25 = [(PXGItemPlacement *)v5 copyWithConfiguration:v77];

LABEL_37:

  return v25;
}

void __64__PXGViewControllerItemPlacementInterpolator_adjustedPlacement___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRect:*(*(a1 + 32) + 40) velocity:*(a1 + 48) inCoordinateSpace:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *MEMORY[0x277D3CFB8], *(MEMORY[0x277D3CFB8] + 8), *(MEMORY[0x277D3CFB8] + 16), *(MEMORY[0x277D3CFB8] + 24)}];
  [v3 setAlpha:*(a1 + 80)];
  v4 = *(a1 + 104);
  v16 = *(a1 + 88);
  v17 = v4;
  v18 = *(a1 + 120);
  if ((PXStoryRectIsNull() & 1) == 0)
  {
    v7 = *(a1 + 104);
    v16 = *(a1 + 88);
    v17 = v7;
    v18 = *(a1 + 120);
    [v3 setDisplayedAssetContentsRect:&v16];
  }

  v8 = *(a1 + 256);
  __asm { FMOV            V1.4S, #-1.0 }

  v14 = vmovn_s32(vmvnq_s8(vceqq_f32(v8, _Q1)));
  if (vmaxv_u16(v14))
  {
    v14.i32[0] = HIDWORD(*(a1 + 256));
    LODWORD(v6) = HIDWORD(*(a1 + 264));
    LODWORD(v5) = *(a1 + 264);
    [v3 setCornerRadius:{*v8.i64, *&v14, v5, v6}];
  }

  if (!CGRectIsNull(*(a1 + 136)))
  {
    [v3 setNormalizedDisplayedAssetRect:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
  }

  if (!CGRectIsNull(*(a1 + 168)))
  {
    [v3 setNormalizedTitleRect:{*(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192)}];
  }

  if (!CGRectIsNull(*(a1 + 200)))
  {
    [v3 setNormalizedSubtitleRect:{*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224)}];
  }

  [v3 setChromeAlpha:{*(a1 + 232), v16, v17, v18}];
  [v3 setScrubberAlpha:*(a1 + 240)];
  [v3 setLegibilityOverlayAlpha:*(a1 + 248)];
  LODWORD(v15) = *(a1 + 272);
  [v3 setSoundVolume:v15];
  [v3 setOtherItemsPlacement:*(a1 + 40)];
}

- (PXGViewControllerItemPlacementInterpolator)initWithSourcePlacement:(id)placement targetPlacement:(id)targetPlacement layering:(int64_t)layering containerView:(id)view duration:(double)duration
{
  placementCopy = placement;
  targetPlacementCopy = targetPlacement;
  viewCopy = view;
  v71.receiver = self;
  v71.super_class = PXGViewControllerItemPlacementInterpolator;
  v16 = [(PXGViewControllerItemPlacementInterpolator *)&v71 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sourcePlacement, placement);
    objc_storeStrong(&v17->_targetPlacement, targetPlacement);
    v17->_layering = layering;
    objc_storeStrong(&v17->_containerView, view);
    v17->_duration = duration;
    LODWORD(v18) = 1043207291;
    LODWORD(v19) = 1045220557;
    LODWORD(v20) = 1.0;
    LODWORD(v21) = 1043207291;
    v22 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v18 :v21 :v19 :v20];
    mainTimingFunction = v17->_mainTimingFunction;
    v17->_mainTimingFunction = v22;

    LODWORD(v24) = 1051260355;
    LODWORD(v25) = 1059816735;
    LODWORD(v26) = 1.0;
    v27 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v24 :0.0 :v25 :v26];
    secondaryTimingFunction = v17->_secondaryTimingFunction;
    v17->_secondaryTimingFunction = v27;

    sourcePlacement = v17->_sourcePlacement;
    if (sourcePlacement)
    {
      [(PXGItemPlacement *)sourcePlacement rectInCoordinateSpace:v17->_containerView velocity:&v17->_sourceRectVelocity];
      v17->_sourceRect.origin.x = v30;
      v17->_sourceRect.origin.y = v31;
      v17->_sourceRect.size.width = v32;
      v17->_sourceRect.size.height = v33;
    }

    else
    {
      v34 = *(MEMORY[0x277CBF398] + 16);
      v17->_sourceRect.origin = *MEMORY[0x277CBF398];
      v17->_sourceRect.size = v34;
    }

    [(PXGItemPlacement *)v17->_targetPlacement rectInCoordinateSpace:v17->_containerView velocity:0];
    v17->_targetRect.origin.x = v35;
    v17->_targetRect.origin.y = v36;
    v17->_targetRect.size.width = v37;
    v17->_targetRect.size.height = v38;
    IsValid = PXRectIsValid();
    if (IsValid)
    {
      LOBYTE(IsValid) = PXRectIsValid();
    }

    v17->_hasValidGeometry = IsValid;
    v40 = +[PXTungstenSettings sharedInstance];
    v17->_alwaysHideSource = [v40 hideSummaryContentDuringTransition];
    hideDetailContentDuringTransition = [v40 hideDetailContentDuringTransition];
    v17->_alwaysHideTarget = hideDetailContentDuringTransition;
    if (v17->_layering == 1)
    {
      alwaysHideSource = v17->_alwaysHideSource;
      v17->_alwaysHideSource = hideDetailContentDuringTransition;
      v17->_alwaysHideTarget = alwaysHideSource;
    }

    displayedAsset = [(PXGItemPlacement *)v17->_sourcePlacement displayedAsset];
    displayedAsset2 = [(PXGItemPlacement *)v17->_targetPlacement displayedAsset];
    v45 = [displayedAsset isEqual:displayedAsset2];

    if (!v45)
    {
      goto LABEL_14;
    }

    v46 = v17->_sourcePlacement;
    if (v46)
    {
      [(PXGItemPlacement *)v46 displayedAssetContentsRect];
    }

    else
    {
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
    }

    if ((PXStoryRectIsNull() & 1) == 0)
    {
      targetPlacement = v17->_targetPlacement;
      if (targetPlacement)
      {
        [(PXGItemPlacement *)targetPlacement displayedAssetContentsRect];
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
      }

      v47 = PXStoryRectIsNull() ^ 1;
    }

    else
    {
LABEL_14:
      v47 = 0;
    }

    v17->_animatesDisplayedAssetContentsRect = v47;
    v17->_allowsAdjustedTargetPlacement = v17->_layering == -1;
    [(PXGItemPlacement *)v17->_sourcePlacement cornerRadius:v68];
    if (v52 == -1.0 && v49 == -1.0 && v50 == -1.0 && v51 == -1.0)
    {
      v53 = 0;
    }

    else
    {
      [(PXGItemPlacement *)v17->_targetPlacement cornerRadius];
      v53 = 1;
      if (v57 == -1.0 && v54 == -1.0 && v55 == -1.0)
      {
        v53 = v56 != -1.0;
      }
    }

    v17->_animatesCornerRadius = v53;
    if (!v45 || ([(PXGItemPlacement *)v17->_sourcePlacement normalizedDisplayedAssetRect], CGRectIsNull(v72)) || ([(PXGItemPlacement *)v17->_targetPlacement normalizedDisplayedAssetRect], CGRectIsNull(v73)))
    {
      LOBYTE(v58) = 0;
    }

    else
    {
      [(PXGItemPlacement *)v17->_sourcePlacement normalizedDisplayedAssetRect];
      if (PXRectApproximatelyEqualToRect())
      {
        [(PXGItemPlacement *)v17->_targetPlacement normalizedDisplayedAssetRect];
        v58 = PXRectApproximatelyEqualToRect() ^ 1;
      }

      else
      {
        LOBYTE(v58) = 1;
      }
    }

    v17->_animatesNormalizedDisplayedAssetRect = v58;
    [(PXGItemPlacement *)v17->_sourcePlacement normalizedTitleRect];
    if (CGRectIsNull(v74))
    {
      LOBYTE(v59) = 0;
    }

    else
    {
      [(PXGItemPlacement *)v17->_targetPlacement normalizedTitleRect];
      v59 = !CGRectIsNull(v75);
    }

    v17->_animatesNormalizedTitleRect = v59;
    [(PXGItemPlacement *)v17->_sourcePlacement normalizedSubtitleRect];
    if (CGRectIsNull(v76))
    {
      v64 = 0;
    }

    else
    {
      [(PXGItemPlacement *)v17->_targetPlacement normalizedSubtitleRect];
      v64 = !CGRectIsNull(v77);
    }

    v17->_animatesNormalizedSubtitleRect = v64;
    if (v17->_animatesNormalizedDisplayedAssetRect)
    {
      if (v17->_layering == -1)
      {
        v60 = 0.0;
        LODWORD(v61) = 1.0;
        LODWORD(v62) = 0.5;
        LODWORD(v63) = 1.0;
      }

      else
      {
        LODWORD(v60) = 1.0;
        LODWORD(v61) = 1.0;
        LODWORD(v62) = 1.0;
        LODWORD(v63) = 0.5;
      }

      v65 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v60 :v61 :v62 :v63];
    }

    else
    {
      v65 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    }

    fadeTimingFunction = v17->_fadeTimingFunction;
    v17->_fadeTimingFunction = v65;
  }

  return v17;
}

- (PXGViewControllerItemPlacementInterpolator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewControllerItemPlacementInterpolator.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXGViewControllerItemPlacementInterpolator init]"}];

  abort();
}

@end