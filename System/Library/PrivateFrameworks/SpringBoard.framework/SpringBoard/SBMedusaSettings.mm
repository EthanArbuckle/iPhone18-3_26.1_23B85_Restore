@interface SBMedusaSettings
+ (id)settingsControllerModule;
- (CAColorMatrix)coronaVibrantColorMatrixInput;
- (UIEdgeInsets)medusaSeparatorCursorEdgeInsets;
- (UIEdgeInsets)medusaWindowDraggingCursorEdgeInsets;
- (double)effectiveBlurFadeAnimationDuration;
- (void)setDefaultValues;
@end

@implementation SBMedusaSettings

- (void)setDefaultValues
{
  [(SBMedusaSettings *)self setPersistentDock:1];
  [(SBMedusaSettings *)self setNumberOfRecents:3.0];
  [(SBMedusaSettings *)self setDismissHitTestTopPadding:20.0];
  v4 = [(SBMedusaSettings *)self dockAnimationSettings];
  [v4 setDefaultValues];

  v5 = [(SBMedusaSettings *)self dockAnimationSettings];
  v77 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v5 setFrameRateRange:1114113 highFrameRateReason:{*&v77.minimum, *&v77.maximum, *&v77.preferred}];

  v6 = [(SBMedusaSettings *)self dockWithPresentedFolderAnimationSettings];
  [v6 setDefaultValues];

  v7 = [(SBMedusaSettings *)self dockWithPresentedFolderAnimationSettings];
  v78 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v7 setFrameRateRange:1114113 highFrameRateReason:{*&v78.minimum, *&v78.maximum, *&v78.preferred}];

  v8 = [(SBMedusaSettings *)self dockWithPresentedFolderAnimationSettings];
  [v8 setDampingRatio:0.9962];

  v9 = [(SBMedusaSettings *)self dockWithPresentedFolderAnimationSettings];
  [v9 setResponse:0.2721];

  [(SBMedusaSettings *)self setNarrowEdgeSwipeHitTestWidth:108.0];
  [(SBMedusaSettings *)self setWideEdgeSwipeHitTestWidth:140.0];
  [(SBMedusaSettings *)self setRimShadowRadius:0.5];
  [(SBMedusaSettings *)self setRimShadowOpacity:0.15];
  [(SBMedusaSettings *)self setFloatingAppCardScaleWhileTouched:?];
  [(SBMedusaSettings *)self setFloatingAppCardScaleWhileCursorHovered:1.012];
  [(SBMedusaSettings *)self setDiffuseShadowRadius:56.0];
  [(SBMedusaSettings *)self setDiffuseShadowOpacity:0.24];
  [(SBMedusaSettings *)self setDiffuseShadowOffsetHorizontal:10.0];
  [(SBMedusaSettings *)self setDiffuseShadowOffsetVertical:7.0];
  [(SBMedusaSettings *)self setDiffuseShadowRadiusWhileTouched:60.0];
  [(SBMedusaSettings *)self setDiffuseShadowOpacityWhileTouched:0.26];
  [(SBMedusaSettings *)self setDiffuseShadowOffsetHorizontalWhileTouched:0.0];
  [(SBMedusaSettings *)self setDiffuseShadowOffsetVerticalWhileTouched:30.0];
  [(SBMedusaSettings *)self setCoronaDiffuseShadowOpacity:1.0];
  [(SBMedusaSettings *)self setCoronaDiffuseShadowOpacityWhileTouched:1.0];
  [(SBMedusaSettings *)self setCoronaRimShadowOpacity:0.5];
  [(SBMedusaSettings *)self setVibrantColorMatrixM11:0.664];
  [(SBMedusaSettings *)self setVibrantColorMatrixM12:-0.192];
  [(SBMedusaSettings *)self setVibrantColorMatrixM13:-0.037];
  [(SBMedusaSettings *)self setVibrantColorMatrixM14:0.0];
  [(SBMedusaSettings *)self setVibrantColorMatrixM15:0.0];
  [(SBMedusaSettings *)self setVibrantColorMatrixM21:-0.097];
  [(SBMedusaSettings *)self setVibrantColorMatrixM22:0.57];
  [(SBMedusaSettings *)self setVibrantColorMatrixM23:-0.037];
  [(SBMedusaSettings *)self setVibrantColorMatrixM24:0.0];
  [(SBMedusaSettings *)self setVibrantColorMatrixM25:0.0];
  [(SBMedusaSettings *)self setVibrantColorMatrixM31:-0.098];
  [(SBMedusaSettings *)self setVibrantColorMatrixM32:-0.191];
  [(SBMedusaSettings *)self setVibrantColorMatrixM33:0.724];
  [(SBMedusaSettings *)self setVibrantColorMatrixM34:0.0];
  [(SBMedusaSettings *)self setVibrantColorMatrixM35:0.0];
  [(SBMedusaSettings *)self setVibrantColorMatrixM41:-0.26];
  [(SBMedusaSettings *)self setVibrantColorMatrixM42:-0.511];
  [(SBMedusaSettings *)self setVibrantColorMatrixM43:0.099];
  [(SBMedusaSettings *)self setVibrantColorMatrixM44:1.0];
  [(SBMedusaSettings *)self setVibrantColorMatrixM45:0.0];
  [(SBMedusaSettings *)self setBlurFadeAnimationDuration:0.25];
  [(SBMedusaSettings *)self setReduceMotionBlurFadeAnimationDuration:0.2];
  v10 = [(SBMedusaSettings *)self windowDragAnimationSettings];
  [v10 setDefaultValues];

  v11 = [(SBMedusaSettings *)self windowDragAnimationSettings];
  [v11 setTrackingDampingRatio:0.92];

  v12 = [(SBMedusaSettings *)self windowDragAnimationSettings];
  [v12 setTrackingResponse:0.1];

  v13 = [(SBMedusaSettings *)self windowDragAnimationSettings];
  v79 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v13 setFrameRateRange:1114113 highFrameRateReason:{*&v79.minimum, *&v79.maximum, *&v79.preferred}];

  v14 = [(SBMedusaSettings *)self medusaAnimationSettings];
  [v14 setDampingRatio:0.92];

  v15 = [(SBMedusaSettings *)self medusaAnimationSettings];
  [v15 setResponse:0.457];

  v16 = [(SBMedusaSettings *)self medusaAnimationSettings];
  [v16 setTrackingDampingRatio:0.9];

  v17 = [(SBMedusaSettings *)self medusaAnimationSettings];
  [v17 setTrackingResponse:0.12];

  v18 = [(SBMedusaSettings *)self medusaAnimationSettings];
  v80 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v18 setFrameRateRange:1114113 highFrameRateReason:{*&v80.minimum, *&v80.maximum, *&v80.preferred}];

  v19 = [(SBMedusaSettings *)self resizeAnimationSettings];
  [v19 setDampingRatio:1.0];

  v20 = [(SBMedusaSettings *)self resizeAnimationSettings];
  [v20 setResponse:0.42];

  v21 = [(SBMedusaSettings *)self resizeAnimationSettings];
  v81 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v21 setFrameRateRange:1114113 highFrameRateReason:{*&v81.minimum, *&v81.maximum, *&v81.preferred}];

  v22 = [(SBMedusaSettings *)self platterAnimationSettings];
  [v22 setDampingRatio:0.9];

  v23 = [(SBMedusaSettings *)self platterAnimationSettings];
  [v23 setResponse:0.42];

  v24 = [(SBMedusaSettings *)self platterAnimationSettings];
  v82 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v24 setFrameRateRange:1114113 highFrameRateReason:{*&v82.minimum, *&v82.maximum, *&v82.preferred}];

  v25 = [(SBMedusaSettings *)self dropAnimationSettings];
  [v25 setDampingRatio:0.92];

  v26 = [(SBMedusaSettings *)self dropAnimationSettings];
  [v26 setResponse:0.457];

  v27 = [(SBMedusaSettings *)self dropAnimationSettings];
  [v27 setTrackingDampingRatio:0.92];

  v28 = [(SBMedusaSettings *)self dropAnimationSettings];
  [v28 setTrackingResponse:0.457];

  v29 = [(SBMedusaSettings *)self dropAnimationSettings];
  v83 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v29 setFrameRateRange:1114113 highFrameRateReason:{*&v83.minimum, *&v83.maximum, *&v83.preferred}];

  v30 = [(SBMedusaSettings *)self switcherCardDropAnimationSettings];
  [v30 setDefaultValues];

  v31 = [(SBMedusaSettings *)self switcherCardDropAnimationSettings];
  [v31 setDampingRatio:0.92];

  v32 = [(SBMedusaSettings *)self switcherCardDropAnimationSettings];
  [v32 setResponse:0.531];

  v33 = [(SBMedusaSettings *)self switcherCardDropAnimationSettings];
  [v33 setTrackingDampingRatio:0.92];

  v34 = [(SBMedusaSettings *)self switcherCardDropAnimationSettings];
  [v34 setTrackingResponse:0.531];

  v35 = [(SBMedusaSettings *)self switcherCardDropAnimationSettings];
  v84 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v35 setFrameRateRange:1114113 highFrameRateReason:{*&v84.minimum, *&v84.maximum, *&v84.preferred}];

  v36 = [(SBMedusaSettings *)self topAffordanceExpandAnimationSettings];
  [v36 setDampingRatio:1.01];

  v37 = [(SBMedusaSettings *)self topAffordanceExpandAnimationSettings];
  [v37 setResponse:0.28];

  v38 = [(SBMedusaSettings *)self topAffordanceExpandAnimationSettings];
  [v38 setRetargetImpulse:0.016];

  v39 = [(SBMedusaSettings *)self topAffordanceExpandAnimationSettings];
  v85 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v39 setFrameRateRange:1114113 highFrameRateReason:{*&v85.minimum, *&v85.maximum, *&v85.preferred}];

  v40 = [(SBMedusaSettings *)self topAffordanceCollapseAnimationSettings];
  [v40 setDampingRatio:1.01];

  v41 = [(SBMedusaSettings *)self topAffordanceCollapseAnimationSettings];
  [v41 setResponse:0.28];

  v42 = [(SBMedusaSettings *)self topAffordanceCollapseAnimationSettings];
  [v42 setRetargetImpulse:0.016];

  v43 = [(SBMedusaSettings *)self topAffordanceCollapseAnimationSettings];
  v86 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v43 setFrameRateRange:1114113 highFrameRateReason:{*&v86.minimum, *&v86.maximum, *&v86.preferred}];

  [(SBMedusaSettings *)self setDropAnimationUnblurThresholdPercentage:0.5];
  [(SBMedusaSettings *)self setResizeAnimationUnblurThresholdPercentage:0.9];
  [(SBMedusaSettings *)self setResizeAnimationDismissItemOpacity:0.4];
  [(SBMedusaSettings *)self setMovePanGestureThresholdPercentage:0.3];
  [(SBMedusaSettings *)self setMovePanGesturePositiveVelocityThreshold:500.0];
  [(SBMedusaSettings *)self setMovePanGestureNegativeVelocityThreshold:-500.0];
  [(SBMedusaSettings *)self setIconPlatterScale:0.4];
  [(SBMedusaSettings *)self setWindowPlatterScale:0.8];
  [(SBMedusaSettings *)self setWindowPlatterScaleForReplacingEntireSpace:0.6];
  [(SBMedusaSettings *)self setCardPlatterScale:1.0];
  [(SBMedusaSettings *)self setFloatingCardPlatterScale:0.7];
  [(SBMedusaSettings *)self setSlideOverTongueExpandedScale:0.34];
  [(SBMedusaSettings *)self setCardDragOverSplitAppLayoutScale:0.96];
  [(SBMedusaSettings *)self setReflowAnimationProgressForCardHeaderFadeIn:1.0];
  [(SBMedusaSettings *)self setDraggingPlatterSideActivationGutterPadding:8.0];
  [(SBMedusaSettings *)self setDraggingPlatterFullscreenActivationRegionWidth:320.0];
  [(SBMedusaSettings *)self setDraggingPlatterFullscreenActivationRegionHeight:24.0];
  [(SBMedusaSettings *)self setSwitcherFullScreenContentPushInScale:0.98];
  [(SBMedusaSettings *)self setSwitcherCenterWindowContentPushInScale:0.9];
  [(SBMedusaSettings *)self setSwitcherSlideOverContentPushInScale:0.95];
  [(SBMedusaSettings *)self setSwitcherSlideOverDosidoLayoutOvershootMultiplicationFactor:1.2];
  [(SBMedusaSettings *)self setMedusaSeparatorCursorTopEdgeInset:-5.0];
  [(SBMedusaSettings *)self setMedusaSeparatorCursorBottomEdgeInset:-5.0];
  [(SBMedusaSettings *)self setMedusaSeparatorCursorLeftEdgeInset:-2.5];
  [(SBMedusaSettings *)self setMedusaSeparatorCursorRightEdgeInset:-2.5];
  [(SBMedusaSettings *)self setReplacementDimmingAlpha:0.06];
  [(SBMedusaSettings *)self setTopAffordanceHitTestExtendTop:20.0];
  [(SBMedusaSettings *)self setTopAffordanceHitTestExtendBottom:20.0];
  [(SBMedusaSettings *)self setTopAffordanceHitTestExtendLeft:20.0];
  [(SBMedusaSettings *)self setTopAffordanceHitTestExtendRight:20.0];
  [(SBMedusaSettings *)self setShowContentDragExclusionRects:0];
  [(SBMedusaSettings *)self setContentDraggingCommandeerGutterInsetForUniversalControl:20.0];
  [(SBMedusaSettings *)self setContentDraggingCommandeerGutterWidth:120.0];
  [(SBMedusaSettings *)self setContentDraggingSideActivationGutterWidth:60.0];
  [(SBMedusaSettings *)self setContentDraggingFloatingActivationGutterWidth:150.0];
  [(SBMedusaSettings *)self setWindowTearOffDraggingSideActivationGutterWidth:100.0];
  [(SBMedusaSettings *)self setWindowTearOffDraggingFloatingActivationGutterWidth:350.0];
  [(SBMedusaSettings *)self setWindowSplitViewDismissalGutterWidth:90.0];
  [(SBMedusaSettings *)self setMedusaWindowDraggingCursorTopEdgeInset:-4.0];
  [(SBMedusaSettings *)self setMedusaWindowDraggingCursorBottomEdgeInset:-4.0];
  [(SBMedusaSettings *)self setMedusaWindowDraggingCursorLeftEdgeInset:-7.0];
  [(SBMedusaSettings *)self setMedusaWindowDraggingCursorRightEdgeInset:-7.0];
  [(SBMedusaSettings *)self setCornerRadiusForInnerCorners:5.0];
  [(SBMedusaSettings *)self cornerRadiusForInnerCorners];
  [(SBMedusaSettings *)self setCornerRadiusForCompatibilityAppOuterCorners:?];
  [(SBMedusaSettings *)self setCornerRadiusForFloatingApps:10.0];
  v44 = __sb__runningInSpringBoard();
  v45 = v44;
  if (v44)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      [(SBMedusaSettings *)self setCornerRadiusFallbackForOldApps:0.0];
      goto LABEL_11;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
      [(SBMedusaSettings *)self setCornerRadiusFallbackForOldApps:0.0];
LABEL_10:

      goto LABEL_11;
    }
  }

  v46 = SBFEffectiveHomeButtonType();
  v47 = 39.0;
  if (v46 != 2)
  {
    v47 = 0.0;
  }

  [(SBMedusaSettings *)self setCornerRadiusFallbackForOldApps:v47];
  if ((v45 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  [(SBMedusaSettings *)self setStatusBarDebugBackgroundColorsEnabled:0];
  [(SBMedusaSettings *)self setStatusBarDebugOffsettingEnabled:0];
  [(SBMedusaSettings *)self setSwitcherShelfCardScale:0.105];
  [(SBMedusaSettings *)self setSwitcherShelfCardCornerRadius:6.0];
  [(SBMedusaSettings *)self setSwitcherShelfCardShadowRadius:24.0];
  [(SBMedusaSettings *)self setSwitcherShelfCardShadowOffsetY:16.0];
  [(SBMedusaSettings *)self setSwitcherShelfCardShadowOpacity:0.4];
  [(SBMedusaSettings *)self setSwitcherShelfLabelLineSpacing:1.0];
  [(SBMedusaSettings *)self setSwitcherShelfBottomSpacing:64.0];
  [(SBMedusaSettings *)self setSwitcherShelfBackgroundBlurPresentationThreshold:1.0];
  [(SBMedusaSettings *)self setSwitcherCenterWindowShadowRadius:20.0];
  [(SBMedusaSettings *)self setSwitcherCenterWindowShadowOffsetY:6.0];
  [(SBMedusaSettings *)self setSwitcherCenterWindowShadowOpacity:0.24];
  [(SBMedusaSettings *)self setSwitcherPeekingWindowShadowRadius:44.0];
  [(SBMedusaSettings *)self setSwitcherPeekingWindowShadowOffsetY:0.0];
  [(SBMedusaSettings *)self setSwitcherPeekingWindowShadowOpacity:0.32];
  [(SBMedusaSettings *)self setLeadingSlideOverRelocationDelay:0.4];
  [(SBMedusaSettings *)self setDefaultDimmingOpacity:0.3];
  [(SBMedusaSettings *)self setSwitcherShelfSplitViewIconInset:4.0];
  [(SBMedusaSettings *)self setSwitcherShelfIconHitTestInset:24.0];
  v48 = [(SBMedusaSettings *)self switcherShelfGenieRopeSettings];
  [v48 setDefaultValues];

  v49 = [(SBMedusaSettings *)self switcherShelfGenieRopeSettings];
  [v49 setResponse:0.375];

  v50 = [(SBMedusaSettings *)self switcherShelfGenieRopeSettings];
  [v50 setDampingRatio:1.0];

  v51 = [(SBMedusaSettings *)self switcherShelfGenieRopeSettings];
  v87 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v51 setFrameRateRange:1114113 highFrameRateReason:{*&v87.minimum, *&v87.maximum, *&v87.preferred}];

  v52 = [(SBMedusaSettings *)self switcherShelfCardGeniePresentationSettings];
  [v52 setDefaultValues];

  v53 = [(SBMedusaSettings *)self switcherShelfCardGeniePresentationSettings];
  [v53 setResponse:0.675];

  v54 = [(SBMedusaSettings *)self switcherShelfCardGeniePresentationSettings];
  [v54 setDampingRatio:1.05];

  v55 = [(SBMedusaSettings *)self switcherShelfCardGeniePresentationSettings];
  v88 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v55 setFrameRateRange:1114113 highFrameRateReason:{*&v88.minimum, *&v88.maximum, *&v88.preferred}];

  v56 = [(SBMedusaSettings *)self switcherShelfCardGenieDismissalSettings];
  [v56 setDefaultValues];

  v57 = [(SBMedusaSettings *)self switcherShelfCardGenieDismissalSettings];
  [v57 setResponse:0.5];

  v58 = [(SBMedusaSettings *)self switcherShelfCardGenieDismissalSettings];
  [v58 setDampingRatio:0.875];

  v59 = [(SBMedusaSettings *)self switcherShelfCardGenieDismissalSettings];
  v89 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v59 setFrameRateRange:1114113 highFrameRateReason:{*&v89.minimum, *&v89.maximum, *&v89.preferred}];

  [(SBMedusaSettings *)self setSwitcherShelfGenieInitialYIncrementBelowScreen:100.0];
  [(SBMedusaSettings *)self setSwitcherShelfCardGenieResponseIncrementScalar:0.08];
  [(SBMedusaSettings *)self setSwitcherShelfCardGenieDismissedScale:0.05];
  [(SBMedusaSettings *)self setSwitcherShelfGenieBezierCurvePointYDeltaFromTarget:-380.0];
  [(SBMedusaSettings *)self setSwitcherShelfGenieBezierCurveXExponent:1.6];
  [(SBMedusaSettings *)self setSwitcherShelfGenieBezierCurveYExponent:1.0];
  [(SBMedusaSettings *)self setSwitcherShelfGenieBezierCurveScaleExponent:0.98];
  v60 = [(SBMedusaSettings *)self switcherShelfNonGenieRopeSettings];
  [v60 setDefaultValues];

  v61 = [(SBMedusaSettings *)self switcherShelfNonGenieRopeSettings];
  [v61 setResponse:0.4];

  v62 = [(SBMedusaSettings *)self switcherShelfNonGenieRopeSettings];
  [v62 setDampingRatio:1.0];

  v63 = [(SBMedusaSettings *)self switcherShelfNonGenieRopeSettings];
  v90 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v63 setFrameRateRange:1114113 highFrameRateReason:{*&v90.minimum, *&v90.maximum, *&v90.preferred}];

  v64 = [(SBMedusaSettings *)self switcherShelfCardNonGeniePresentationSettings];
  [v64 setDefaultValues];

  v65 = [(SBMedusaSettings *)self switcherShelfCardNonGeniePresentationSettings];
  [v65 setResponse:0.475];

  v66 = [(SBMedusaSettings *)self switcherShelfCardNonGeniePresentationSettings];
  [v66 setDampingRatio:0.9];

  v67 = [(SBMedusaSettings *)self switcherShelfCardNonGeniePresentationSettings];
  v91 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v67 setFrameRateRange:1114113 highFrameRateReason:{*&v91.minimum, *&v91.maximum, *&v91.preferred}];

  v68 = [(SBMedusaSettings *)self switcherShelfCardNonGenieDismissalSettings];
  [v68 setDefaultValues];

  v69 = [(SBMedusaSettings *)self switcherShelfCardNonGenieDismissalSettings];
  [v69 setResponse:0.25];

  v70 = [(SBMedusaSettings *)self switcherShelfCardNonGenieDismissalSettings];
  [v70 setDampingRatio:0.85];

  v71 = [(SBMedusaSettings *)self switcherShelfCardNonGenieDismissalSettings];
  v92 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v71 setFrameRateRange:1114113 highFrameRateReason:{*&v92.minimum, *&v92.maximum, *&v92.preferred}];

  [(SBMedusaSettings *)self setSwitcherShelfCardNonGenieResponseIncrementScalar:0.02];
  [(SBMedusaSettings *)self setSwitcherShelfCardNonGenieDismissedScale:0.8];
  v72 = [(SBMedusaSettings *)self switcherShelfBounceIconSettings];
  [v72 setDefaultValues];

  v73 = [(SBMedusaSettings *)self switcherShelfBounceIconSettings];
  [v73 setResponse:0.5];

  v74 = [(SBMedusaSettings *)self switcherShelfBounceIconSettings];
  [v74 setDampingRatio:1.0];

  v75 = [(SBMedusaSettings *)self switcherShelfBounceIconSettings];
  v93 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v75 setFrameRateRange:1114113 highFrameRateReason:{*&v93.minimum, *&v93.maximum, *&v93.preferred}];

  [(SBMedusaSettings *)self setSwitcherShelfGenieIconBounceDelay:0.33];
}

+ (id)settingsControllerModule
{
  v437[1] = *MEMORY[0x277D85DE8];
  v343 = [MEMORY[0x277D431D8] rowWithTitle:@"Medusa 1.0" childSettingsKeyPath:@"medusa1oSettings"];
  v2 = MEMORY[0x277D43210];
  v437[0] = v343;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v437 count:1];
  v414 = [v2 sectionWithRows:v3];

  v4 = MEMORY[0x277D43290];
  v5 = NSStringFromSelector(sel_switcherShelfLabelLineSpacing);
  v6 = [v4 rowWithTitle:@"Shelf Label Line Spacing" valueKeyPath:v5];
  v342 = [v6 minValue:0.0 maxValue:5.0];

  v7 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Split View Icon Inset" valueKeyPath:@"switcherShelfSplitViewIconInset"];
  v341 = [v7 between:-10.0 and:50.0];

  v8 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Icon Hit Test Inset" valueKeyPath:@"switcherShelfIconHitTestInset"];
  v340 = [v8 between:0.0 and:50.0];

  v9 = MEMORY[0x277D43210];
  v436[0] = v342;
  v436[1] = v341;
  v436[2] = v340;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v436 count:3];
  v413 = [v9 sectionWithRows:v10 title:@"Shelf Layout"];

  v412 = [MEMORY[0x277D431D8] rowWithTitle:@"Shelf Genie Rope" childSettingsKeyPath:@"switcherShelfGenieRopeSettings"];
  v411 = [MEMORY[0x277D431D8] rowWithTitle:@"Shelf Genie Presentation" childSettingsKeyPath:@"switcherShelfCardGeniePresentationSettings"];
  v410 = [MEMORY[0x277D431D8] rowWithTitle:@"Shelf Genie Dismissal" childSettingsKeyPath:@"switcherShelfCardGenieDismissalSettings"];
  v339 = [MEMORY[0x277D431D8] rowWithTitle:@"Shelf Bounce Icon" childSettingsKeyPath:@"switcherShelfBounceIconSettings"];
  v11 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Genie Icon Bounce Delay" valueKeyPath:@"switcherShelfGenieIconBounceDelay"];
  v338 = [v11 between:0.0 and:2.0];

  v12 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Genie Y Below Screen" valueKeyPath:@"switcherShelfGenieInitialYIncrementBelowScreen"];
  v337 = [v12 between:0.0 and:200.0];

  v13 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Gengie Response Increment" valueKeyPath:@"switcherShelfCardGenieResponseIncrementScalar"];
  v336 = [v13 between:0.0 and:1.0];

  v14 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Genie Dismissed Scale" valueKeyPath:@"switcherShelfCardGenieDismissedScale"];
  v335 = [v14 between:0.0 and:1.0];

  v15 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Genie Bezier Y Delta" valueKeyPath:@"switcherShelfGenieBezierCurvePointYDeltaFromTarget"];
  v334 = [v15 between:-1000.0 and:1000.0];

  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Genie Bezier X Exponent" valueKeyPath:@"switcherShelfGenieBezierCurveXExponent"];
  v333 = [v16 between:0.0 and:10.0];

  v17 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Genie Bezier Y Exponent" valueKeyPath:@"switcherShelfGenieBezierCurveYExponent"];
  v332 = [v17 between:0.0 and:10.0];

  v18 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Genie Bezier Scale Exponent" valueKeyPath:@"switcherShelfGenieBezierCurveScaleExponent"];
  v331 = [v18 between:0.0 and:10.0];

  v19 = MEMORY[0x277D43210];
  v435[0] = v412;
  v435[1] = v411;
  v435[2] = v410;
  v435[3] = v339;
  v435[4] = v338;
  v435[5] = v337;
  v435[6] = v336;
  v435[7] = v335;
  v435[8] = v334;
  v435[9] = v333;
  v435[10] = v332;
  v435[11] = v331;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v435 count:12];
  v409 = [v19 sectionWithRows:v20 title:@"Shelf Genie"];

  v330 = [MEMORY[0x277D431D8] rowWithTitle:@"Shelf Non-Genie Rope" childSettingsKeyPath:@"switcherShelfNonGenieRopeSettings"];
  v329 = [MEMORY[0x277D431D8] rowWithTitle:@"Shelf Non-Genie Presentation" childSettingsKeyPath:@"switcherShelfCardNonGeniePresentationSettings"];
  v328 = [MEMORY[0x277D431D8] rowWithTitle:@"Shelf Non-Genie Dismissal" childSettingsKeyPath:@"switcherShelfCardNonGenieDismissalSettings"];
  v21 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Non-Genie Response Increment" valueKeyPath:@"switcherShelfCardNonGenieResponseIncrementScalar"];
  v327 = [v21 between:0.0 and:1.0];

  v22 = [MEMORY[0x277D431E8] rowWithTitle:@"Shelf Non-Genie Dismissed Scale" valueKeyPath:@"switcherShelfCardNonGenieDismissedScale"];
  v326 = [v22 between:0.0 and:1.0];

  v23 = MEMORY[0x277D43210];
  v434[0] = v330;
  v434[1] = v329;
  v434[2] = v328;
  v434[3] = v327;
  v434[4] = v326;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v434 count:5];
  v408 = [v23 sectionWithRows:v24 title:@"Shelf Non-Genie"];

  v325 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Persistent Dock" valueKeyPath:@"persistentDock"];
  v25 = [MEMORY[0x277D431E8] rowWithTitle:@"Number Of Recents" valueKeyPath:@"numberOfRecents"];
  v26 = [v25 precision:0];
  v324 = [v26 between:0.0 and:3.0];

  v27 = [MEMORY[0x277D431E8] rowWithTitle:@"Dismiss Hit-Test Top Padding" valueKeyPath:@"dismissHitTestTopPadding"];
  v28 = [v27 precision:2];
  v323 = [v28 between:0.0 and:50.0];

  v29 = MEMORY[0x277D43210];
  v433[0] = v325;
  v433[1] = v324;
  v433[2] = v323;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v433 count:3];
  v407 = [v29 sectionWithRows:v30 title:@"Floating Dock Settings"];

  v31 = MEMORY[0x277D43210];
  v32 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"Floating Dock Animation Settings"];
  v406 = [v31 submoduleWithModule:v32 childSettingsKeyPath:@"dockAnimationSettings"];

  v33 = MEMORY[0x277D43210];
  v34 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"Floating Dock w/ Folder Animation Settings"];
  v405 = [v33 submoduleWithModule:v34 childSettingsKeyPath:@"dockWithPresentedFolderAnimationSettings"];

  v35 = MEMORY[0x277D43210];
  v36 = MEMORY[0x277D43290];
  v37 = NSStringFromSelector(sel_narrowEdgeSwipeHitTestWidth);
  v38 = [v36 rowWithTitle:@"Narrow Edge Swipe Hit Test Width" valueKeyPath:v37];
  v39 = [v38 minValue:0.0 maxValue:1000.0];
  v432[0] = v39;
  v40 = MEMORY[0x277D43290];
  v41 = NSStringFromSelector(sel_wideEdgeSwipeHitTestWidth);
  v42 = [v40 rowWithTitle:@"Wide Edge Swipe Hit Test Width" valueKeyPath:v41];
  v43 = [v42 minValue:0.0 maxValue:1000.0];
  v432[1] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v432 count:2];
  v404 = [v35 sectionWithRows:v44 title:@"Floating Application (Slide Over) Settings"];

  v402 = MEMORY[0x277D43210];
  v45 = MEMORY[0x277D43290];
  v399 = NSStringFromSelector(sel_rimShadowOpacity);
  v396 = [v45 rowWithTitle:@"Rim Shadow Opacity" valueKeyPath:v399];
  v393 = [v396 minValue:0.0 maxValue:100.0];
  v431[0] = v393;
  v46 = MEMORY[0x277D43290];
  v390 = NSStringFromSelector(sel_rimShadowRadius);
  v388 = [v46 rowWithTitle:@"Rim Shadow Radius" valueKeyPath:v390];
  v386 = [v388 minValue:0.0 maxValue:100.0];
  v431[1] = v386;
  v47 = MEMORY[0x277D43290];
  v384 = NSStringFromSelector(sel_floatingAppCardScaleWhileTouched);
  v382 = [v47 rowWithTitle:@"Card Scale When Touched/Dragged" valueKeyPath:v384];
  v380 = [v382 minValue:0.899999976 maxValue:1.10000002];
  v431[2] = v380;
  v48 = MEMORY[0x277D43290];
  v378 = NSStringFromSelector(sel_floatingAppCardScaleWhileCursorHovered);
  v376 = [v48 rowWithTitle:@"Card Scale When Cursor Hovers" valueKeyPath:v378];
  v374 = [v376 minValue:0.899999976 maxValue:1.10000002];
  v431[3] = v374;
  v49 = MEMORY[0x277D431E8];
  v372 = NSStringFromSelector(sel_floatingAppCardScaleWhileCursorHovered);
  v370 = [v49 rowWithTitle:&stru_283094718 valueKeyPath:v372];
  v368 = [v370 precision:4];
  v366 = [v368 between:0.899999976 and:1.10000002];
  v431[4] = v366;
  v50 = MEMORY[0x277D43290];
  v364 = NSStringFromSelector(sel_diffuseShadowRadius);
  v362 = [v50 rowWithTitle:@"Diffuse Shadow Radius" valueKeyPath:v364];
  v360 = [v362 minValue:0.0 maxValue:1000.0];
  v431[5] = v360;
  v51 = MEMORY[0x277D43290];
  v52 = NSStringFromSelector(sel_diffuseShadowOpacity);
  v53 = [v51 rowWithTitle:@"Diffuse Shadow Opacity" valueKeyPath:v52];
  v54 = [v53 minValue:0.0 maxValue:100.0];
  v431[6] = v54;
  v55 = MEMORY[0x277D43290];
  v56 = NSStringFromSelector(sel_diffuseShadowOffsetHorizontal);
  v57 = [v55 rowWithTitle:@"Diffuse Shadow Offset Horizontal" valueKeyPath:v56];
  v58 = [v57 minValue:0.0 maxValue:100.0];
  v431[7] = v58;
  v59 = MEMORY[0x277D43290];
  v60 = NSStringFromSelector(sel_diffuseShadowOffsetVertical);
  v61 = [v59 rowWithTitle:@"Diffuse Shadow Offset Vertical" valueKeyPath:v60];
  v62 = [v61 minValue:0.0 maxValue:100.0];
  v431[8] = v62;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v431 count:9];
  v403 = [v402 sectionWithRows:v63 title:@"Floating App Shadow Settings"];

  v400 = MEMORY[0x277D43210];
  v64 = MEMORY[0x277D43290];
  v397 = NSStringFromSelector(sel_diffuseShadowRadiusWhileTouched);
  v394 = [v64 rowWithTitle:@"Diffuse Shadow Radius While Touched" valueKeyPath:v397];
  v391 = [v394 minValue:0.0 maxValue:100.0];
  v430[0] = v391;
  v65 = MEMORY[0x277D43290];
  v66 = NSStringFromSelector(sel_diffuseShadowOpacityWhileTouched);
  v67 = [v65 rowWithTitle:@"Diffuse Shadow Opacity While Touched" valueKeyPath:v66];
  v68 = [v67 minValue:0.0 maxValue:1.0];
  v430[1] = v68;
  v69 = MEMORY[0x277D43290];
  v70 = NSStringFromSelector(sel_diffuseShadowOffsetHorizontalWhileTouched);
  v71 = [v69 rowWithTitle:@"Diffuse Shadow Offset Horizontal While Touched" valueKeyPath:v70];
  v72 = [v71 minValue:0.0 maxValue:50.0];
  v430[2] = v72;
  v73 = MEMORY[0x277D43290];
  v74 = NSStringFromSelector(sel_diffuseShadowOffsetVerticalWhileTouched);
  v75 = [v73 rowWithTitle:@"Diffuse Shadow Offset Vertical While Touched" valueKeyPath:v74];
  v76 = [v75 minValue:0.0 maxValue:50.0];
  v430[3] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v430 count:4];
  v401 = [v400 sectionWithRows:v77 title:@"Floating App Shadow Settings While Touched"];

  v78 = MEMORY[0x277D43290];
  v79 = NSStringFromSelector(sel_coronaDiffuseShadowOpacity);
  v80 = [v78 rowWithTitle:@"Corona Diffuse Shadow Opacity" valueKeyPath:v79];
  v398 = [v80 minValue:0.0 maxValue:1.0];

  v81 = MEMORY[0x277D43290];
  v82 = NSStringFromSelector(sel_coronaDiffuseShadowOpacityWhileTouched);
  v83 = [v81 rowWithTitle:@"Corona Diffuse Shadow Opacity While Touched" valueKeyPath:v82];
  v395 = [v83 minValue:0.0 maxValue:1.0];

  v84 = [MEMORY[0x277D431E8] rowWithTitle:@"Corona Rim Shadow Opacity" valueKeyPath:@"coronaRimShadowOpacity"];
  v85 = [v84 precision:2];
  v392 = [v85 between:0.0 and:100.0];

  v86 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m11" valueKeyPath:@"vibrantColorMatrixM11"];
  v87 = [v86 precision:3];
  v389 = [v87 between:-1.0 and:1.0];

  v88 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m12" valueKeyPath:@"vibrantColorMatrixM12"];
  v89 = [v88 precision:3];
  v387 = [v89 between:-1.0 and:1.0];

  v90 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m13" valueKeyPath:@"vibrantColorMatrixM13"];
  v91 = [v90 precision:3];
  v385 = [v91 between:-1.0 and:1.0];

  v92 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m14" valueKeyPath:@"vibrantColorMatrixM14"];
  v93 = [v92 precision:3];
  v383 = [v93 between:-1.0 and:1.0];

  v94 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m15" valueKeyPath:@"vibrantColorMatrixM15"];
  v95 = [v94 precision:3];
  v381 = [v95 between:-1.0 and:1.0];

  v96 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m21" valueKeyPath:@"vibrantColorMatrixM21"];
  v97 = [v96 precision:3];
  v379 = [v97 between:-1.0 and:1.0];

  v98 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m22" valueKeyPath:@"vibrantColorMatrixM22"];
  v99 = [v98 precision:3];
  v377 = [v99 between:-1.0 and:1.0];

  v100 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m23" valueKeyPath:@"vibrantColorMatrixM23"];
  v101 = [v100 precision:3];
  v375 = [v101 between:-1.0 and:1.0];

  v102 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m24" valueKeyPath:@"vibrantColorMatrixM24"];
  v103 = [v102 precision:3];
  v373 = [v103 between:-1.0 and:1.0];

  v104 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m25" valueKeyPath:@"vibrantColorMatrixM25"];
  v105 = [v104 precision:3];
  v371 = [v105 between:-1.0 and:1.0];

  v106 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m31" valueKeyPath:@"vibrantColorMatrixM31"];
  v107 = [v106 precision:3];
  v369 = [v107 between:-1.0 and:1.0];

  v108 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m32" valueKeyPath:@"vibrantColorMatrixM32"];
  v109 = [v108 precision:3];
  v367 = [v109 between:-1.0 and:1.0];

  v110 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m33" valueKeyPath:@"vibrantColorMatrixM33"];
  v111 = [v110 precision:3];
  v365 = [v111 between:-1.0 and:1.0];

  v112 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m34" valueKeyPath:@"vibrantColorMatrixM34"];
  v113 = [v112 precision:3];
  v322 = [v113 between:-1.0 and:1.0];

  v114 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m35" valueKeyPath:@"vibrantColorMatrixM35"];
  v115 = [v114 precision:3];
  v321 = [v115 between:-1.0 and:1.0];

  v116 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m41" valueKeyPath:@"vibrantColorMatrixM41"];
  v117 = [v116 precision:3];
  v320 = [v117 between:-1.0 and:1.0];

  v118 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m42" valueKeyPath:@"vibrantColorMatrixM42"];
  v119 = [v118 precision:3];
  v319 = [v119 between:-1.0 and:1.0];

  v120 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m43" valueKeyPath:@"vibrantColorMatrixM43"];
  v121 = [v120 precision:3];
  v318 = [v121 between:-1.0 and:1.0];

  v122 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m44" valueKeyPath:@"vibrantColorMatrixM44"];
  v123 = [v122 precision:3];
  v317 = [v123 between:-1.0 and:1.0];

  v124 = [MEMORY[0x277D431E8] rowWithTitle:@"vibrantColorMatrix m45" valueKeyPath:@"vibrantColorMatrixM45"];
  v125 = [v124 precision:3];
  v316 = [v125 between:-1.0 and:1.0];

  v126 = MEMORY[0x277D43210];
  v429[0] = v398;
  v429[1] = v395;
  v429[2] = v392;
  v429[3] = v389;
  v429[4] = v387;
  v429[5] = v385;
  v429[6] = v383;
  v429[7] = v381;
  v429[8] = v379;
  v429[9] = v377;
  v429[10] = v375;
  v429[11] = v373;
  v429[12] = v371;
  v429[13] = v369;
  v429[14] = v367;
  v429[15] = v365;
  v429[16] = v322;
  v429[17] = v321;
  v429[18] = v320;
  v429[19] = v319;
  v429[20] = v318;
  v429[21] = v317;
  v429[22] = v316;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v429 count:23];
  v363 = [v126 sectionWithRows:v127 title:@"Corona Floating Application Shadow Settings"];

  v315 = [MEMORY[0x277D431D8] rowWithTitle:@"Window Drag Animation Settings" childSettingsKeyPath:@"windowDragAnimationSettings"];
  v314 = [MEMORY[0x277D431D8] rowWithTitle:@"Medusa Animation Settings" childSettingsKeyPath:@"medusaAnimationSettings"];
  v313 = [MEMORY[0x277D431D8] rowWithTitle:@"Resize Animation Settings" childSettingsKeyPath:@"resizeAnimationSettings"];
  v312 = [MEMORY[0x277D431D8] rowWithTitle:@"Platter Animation Settings" childSettingsKeyPath:@"platterAnimationSettings"];
  v311 = [MEMORY[0x277D431D8] rowWithTitle:@"Drop Animation Settings" childSettingsKeyPath:@"dropAnimationSettings"];
  v310 = [MEMORY[0x277D431D8] rowWithTitle:@"Switcher Card Drop Animation Settings" childSettingsKeyPath:@"switcherCardDropAnimationSettings"];
  v309 = [MEMORY[0x277D431D8] rowWithTitle:@"Top Affordance Expansion Settings" childSettingsKeyPath:@"topAffordanceExpandAnimationSettings"];
  v308 = [MEMORY[0x277D431D8] rowWithTitle:@"Top Affordance Collapse Settings" childSettingsKeyPath:@"topAffordanceCollapseAnimationSettings"];
  v128 = MEMORY[0x277D43210];
  v428[0] = v315;
  v428[1] = v314;
  v428[2] = v313;
  v428[3] = v312;
  v428[4] = v311;
  v428[5] = v310;
  v428[6] = v309;
  v428[7] = v308;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v428 count:8];
  v361 = [v128 sectionWithRows:v129 title:@"Animation Settings"];

  v130 = [MEMORY[0x277D431E8] rowWithTitle:@"Blur Fade Animation Duration" valueKeyPath:@"blurFadeAnimationDuration"];
  v131 = [v130 precision:2];
  v359 = [v131 between:0.0 and:100.0];

  v132 = [MEMORY[0x277D431E8] rowWithTitle:@"Reduce Motion Blur Fade Animation Duration" valueKeyPath:@"reduceMotionBlurFadeAnimationDuration"];
  v133 = [v132 precision:2];
  v358 = [v133 between:0.0 and:100.0];

  v134 = [MEMORY[0x277D431E8] rowWithTitle:@"Drop Animation Unblur Threshold Percentage" valueKeyPath:@"dropAnimationUnblurThresholdPercentage"];
  v135 = [v134 precision:2];
  v357 = [v135 between:0.0 and:1.0];

  v136 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Animation Unblur Threshold Percentage" valueKeyPath:@"resizeAnimationUnblurThresholdPercentage"];
  v137 = [v136 precision:2];
  v356 = [v137 between:0.0 and:1.0];

  v138 = [MEMORY[0x277D431E8] rowWithTitle:@"Move Pan Gesture Threshold Percentage" valueKeyPath:@"movePanGestureThresholdPercentage"];
  v139 = [v138 precision:2];
  v307 = [v139 between:0.0 and:1.0];

  v140 = [MEMORY[0x277D431E8] rowWithTitle:@"Move Pan Gesture Positive Velocity Threshold" valueKeyPath:@"movePanGesturePositiveVelocityThreshold"];
  v141 = [v140 precision:5];
  v306 = [v141 between:0.0 and:10000.0];

  v142 = [MEMORY[0x277D431E8] rowWithTitle:@"Move Pan Gesture Negative Velocity Threshold" valueKeyPath:@"movePanGestureNegativeVelocityThreshold"];
  v143 = [v142 precision:5];
  v305 = [v143 between:-10000.0 and:0.0];

  v144 = [MEMORY[0x277D431E8] rowWithTitle:@"Top Affordance Hit Test Extend Top" valueKeyPath:@"topAffordanceHitTestExtendTop"];
  v145 = [v144 precision:0];
  v304 = [v145 between:0.0 and:100.0];

  v146 = [MEMORY[0x277D431E8] rowWithTitle:@"Top Affordance Hit Test Extend Bottom" valueKeyPath:@"topAffordanceHitTestExtendBottom"];
  v147 = [v146 precision:0];
  v303 = [v147 between:0.0 and:100.0];

  v148 = [MEMORY[0x277D431E8] rowWithTitle:@"Top Affordance Hit Test Extend Left" valueKeyPath:@"topAffordanceHitTestExtendLeft"];
  v149 = [v148 precision:0];
  v302 = [v149 between:0.0 and:100.0];

  v150 = [MEMORY[0x277D431E8] rowWithTitle:@"Top Affordance Hit Test Extend Right" valueKeyPath:@"topAffordanceHitTestExtendRight"];
  v151 = [v150 precision:0];
  v301 = [v151 between:0.0 and:100.0];

  v152 = MEMORY[0x277D43210];
  v427[0] = v359;
  v427[1] = v358;
  v427[2] = v357;
  v427[3] = v356;
  v427[4] = v307;
  v427[5] = v306;
  v427[6] = v305;
  v427[7] = v304;
  v427[8] = v303;
  v427[9] = v302;
  v427[10] = v301;
  v153 = [MEMORY[0x277CBEA60] arrayWithObjects:v427 count:11];
  v355 = [v152 sectionWithRows:v153 title:@"Medusa User Interaction Settings"];

  v154 = [MEMORY[0x277D431E8] rowWithTitle:@"Icon Platter Scale" valueKeyPath:@"iconPlatterScale"];
  v155 = [v154 precision:3];
  v354 = [v155 between:0.0 and:1.0];

  v156 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Platter Scale" valueKeyPath:@"windowPlatterScale"];
  v157 = [v156 precision:3];
  v353 = [v157 between:0.0 and:1.0];

  v158 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Platter Scale For Replacing Entire Space" valueKeyPath:@"windowPlatterScaleForReplacingEntireSpace"];
  v159 = [v158 precision:3];
  v352 = [v159 between:0.0 and:1.0];

  v160 = [MEMORY[0x277D431E8] rowWithTitle:@"Card Platter Scale" valueKeyPath:@"cardPlatterScale"];
  v161 = [v160 precision:3];
  v351 = [v161 between:0.0 and:1.0];

  v162 = [MEMORY[0x277D431E8] rowWithTitle:@"Floating Card Platter Scale" valueKeyPath:@"floatingCardPlatterScale"];
  v163 = [v162 precision:3];
  v300 = [v163 between:0.0 and:1.0];

  v164 = [MEMORY[0x277D431E8] rowWithTitle:@"Slide Over Tongue Expanded Scale" valueKeyPath:@"slideOverTongueExpandedScale"];
  v165 = [v164 precision:3];
  v299 = [v165 between:0.0 and:1.0];

  v166 = [MEMORY[0x277D431E8] rowWithTitle:@"Card Drag Over Split App Layout Scale" valueKeyPath:@"cardPlatterScale"];
  v167 = [v166 precision:3];
  v298 = [v167 between:0.0 and:1.0];

  v168 = [MEMORY[0x277D431E8] rowWithTitle:@"Reflow Animation Progress for Card Header Fade-In" valueKeyPath:@"reflowAnimationProgressForCardHeaderFadeIn"];
  v169 = [v168 precision:3];
  v297 = [v169 between:0.0 and:1.0];

  v170 = [MEMORY[0x277D431E8] rowWithTitle:@"Platter Side Activation Padding" valueKeyPath:@"draggingPlatterSideActivationGutterPadding"];
  v171 = [v170 precision:3];
  v296 = [v171 between:0.0 and:500.0];

  v172 = [MEMORY[0x277D431E8] rowWithTitle:@"Platter Fullscreen Activation Region Width" valueKeyPath:@"draggingPlatterFullscreenActivationRegionWidth"];
  v173 = [v172 precision:3];
  v295 = [v173 between:0.0 and:500.0];

  v174 = [MEMORY[0x277D431E8] rowWithTitle:@"Platter Fullscreen Activation Region Height" valueKeyPath:@"draggingPlatterFullscreenActivationRegionHeight"];
  v175 = [v174 precision:3];
  v294 = [v175 between:0.0 and:500.0];

  v176 = MEMORY[0x277D43210];
  v426[0] = v354;
  v426[1] = v353;
  v426[2] = v352;
  v426[3] = v351;
  v426[4] = v300;
  v426[5] = v299;
  v426[6] = v298;
  v426[7] = v297;
  v426[8] = v296;
  v426[9] = v295;
  v426[10] = v294;
  v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v426 count:11];
  v350 = [v176 sectionWithRows:v177 title:@"Medusa Dragging Platter Sizes"];

  v348 = MEMORY[0x277D43210];
  v178 = MEMORY[0x277D431E8];
  v346 = NSStringFromSelector(sel_switcherFullScreenContentPushInScale);
  v344 = [v178 rowWithTitle:@"Full Screen Content Push In Scale" valueKeyPath:v346];
  v292 = [v344 precision:2];
  v290 = [v292 between:0.0 and:1.0];
  v425[0] = v290;
  v179 = MEMORY[0x277D431E8];
  v288 = NSStringFromSelector(sel_switcherCenterWindowContentPushInScale);
  v286 = [v179 rowWithTitle:@"Center Window Content Push In Scale" valueKeyPath:v288];
  v284 = [v286 precision:2];
  v180 = [v284 between:0.0 and:1.0];
  v425[1] = v180;
  v181 = MEMORY[0x277D431E8];
  v182 = NSStringFromSelector(sel_switcherSlideOverContentPushInScale);
  v183 = [v181 rowWithTitle:@"Slide Over Content Push In Scale" valueKeyPath:v182];
  v184 = [v183 precision:2];
  v185 = [v184 between:0.0 and:1.0];
  v425[2] = v185;
  v186 = MEMORY[0x277D431E8];
  v187 = NSStringFromSelector(sel_switcherSlideOverDosidoLayoutOvershootMultiplicationFactor);
  v188 = [v186 rowWithTitle:@"Slide Over Dosido Layout Overshoot Multiplication Factor" valueKeyPath:v187];
  v189 = [v188 precision:2];
  v190 = [v189 between:0.0 and:5.0];
  v425[3] = v190;
  v191 = [MEMORY[0x277CBEA60] arrayWithObjects:v425 count:4];
  v349 = [v348 sectionWithRows:v191 title:@"Medusa Replacement Animations"];

  v192 = [MEMORY[0x277D431E8] rowWithTitle:@"Content Drag Commandeer Inset for Universal Control" valueKeyPath:@"contentDraggingCommandeerGutterInsetForUniversalControl"];
  v193 = [v192 precision:3];
  v293 = [v193 between:0.0 and:500.0];

  v194 = [MEMORY[0x277D431E8] rowWithTitle:@"Content Drag Commandeer Gutter" valueKeyPath:@"contentDraggingCommandeerGutterWidth"];
  v195 = [v194 precision:3];
  v291 = [v195 between:0.0 and:500.0];

  v196 = [MEMORY[0x277D431E8] rowWithTitle:@"Content Drag Side Activation Gutter" valueKeyPath:@"contentDraggingSideActivationGutterWidth"];
  v197 = [v196 precision:3];
  v289 = [v197 between:0.0 and:500.0];

  v198 = [MEMORY[0x277D431E8] rowWithTitle:@"Content Drag Floating Activation Gutter" valueKeyPath:@"contentDraggingFloatingActivationGutterWidth"];
  v199 = [v198 precision:3];
  v287 = [v199 between:0.0 and:500.0];

  v200 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Tear-Off Drag Side Activation Gutter" valueKeyPath:@"windowTearOffDraggingSideActivationGutterWidth"];
  v201 = [v200 precision:3];
  v285 = [v201 between:0.0 and:500.0];

  v202 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Tear-Off Drag Floating Activation Gutter" valueKeyPath:@"windowTearOffDraggingFloatingActivationGutterWidth"];
  v203 = [v202 precision:3];
  v283 = [v203 between:0.0 and:500.0];

  v204 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Split View Dismissal Gutter Width" valueKeyPath:@"windowSplitViewDismissalGutterWidth"];
  v205 = [v204 precision:3];
  v282 = [v205 between:0.0 and:500.0];

  v206 = MEMORY[0x277D43210];
  v424[0] = v293;
  v424[1] = v291;
  v424[2] = v289;
  v424[3] = v287;
  v424[4] = v285;
  v424[5] = v283;
  v424[6] = v282;
  v207 = [MEMORY[0x277CBEA60] arrayWithObjects:v424 count:7];
  v347 = [v206 sectionWithRows:v207 title:@"Medusa Multi-Window Settings"];

  v208 = [MEMORY[0x277D431E8] rowWithTitle:@"Separator Cursor Top Edge Inset" valueKeyPath:@"medusaSeparatorCursorTopEdgeInset"];
  v209 = [v208 precision:1];
  v281 = [v209 between:0.0 and:10.0];

  v210 = [MEMORY[0x277D431E8] rowWithTitle:@"Separator Cursor Bottom Edge Inset" valueKeyPath:@"medusaSeparatorCursorBottomEdgeInset"];
  v211 = [v210 precision:1];
  v280 = [v211 between:0.0 and:10.0];

  v212 = [MEMORY[0x277D431E8] rowWithTitle:@"Separator Cursor Left Edge Inset" valueKeyPath:@"medusaSeparatorCursorLeftEdgeInset"];
  v213 = [v212 precision:1];
  v279 = [v213 between:0.0 and:10.0];

  v214 = [MEMORY[0x277D431E8] rowWithTitle:@"Separator Cursor Right Edge Inset" valueKeyPath:@"medusaSeparatorCursorRightEdgeInset"];
  v215 = [v214 precision:1];
  v278 = [v215 between:0.0 and:10.0];

  v216 = MEMORY[0x277D43210];
  v423[0] = v281;
  v423[1] = v279;
  v423[2] = v280;
  v423[3] = v278;
  v217 = [MEMORY[0x277CBEA60] arrayWithObjects:v423 count:4];
  v345 = [v216 sectionWithRows:v217 title:@"Medusa Separator Cursor Insets"];

  v277 = [MEMORY[0x277D432A8] rowWithTitle:@"Show Content Drag Exclusion Rects" valueKeyPath:@"showContentDragExclusionRects"];
  v218 = MEMORY[0x277D43210];
  v422 = v277;
  v219 = [MEMORY[0x277CBEA60] arrayWithObjects:&v422 count:1];
  v276 = [v218 sectionWithRows:v219 title:@"Drag and Drop Debugging Aids"];

  v220 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Dragging Cursor Top Edge Inset" valueKeyPath:@"medusaWindowDraggingCursorTopEdgeInset"];
  v221 = [v220 precision:1];
  v275 = [v221 between:0.0 and:10.0];

  v222 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Dragging Cursor Bottom Edge Inset" valueKeyPath:@"medusaWindowDraggingCursorBottomEdgeInset"];
  v223 = [v222 precision:1];
  v274 = [v223 between:0.0 and:10.0];

  v224 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Dragging Cursor Left Edge Inset" valueKeyPath:@"medusaWindowDraggingCursorLeftEdgeInset"];
  v225 = [v224 precision:1];
  v273 = [v225 between:0.0 and:10.0];

  v226 = [MEMORY[0x277D431E8] rowWithTitle:@"Window Dragging Cursor Right Edge Inset" valueKeyPath:@"medusaWindowDraggingCursorRightEdgeInset"];
  v227 = [v226 precision:1];
  v272 = [v227 between:0.0 and:10.0];

  v228 = MEMORY[0x277D43210];
  v421[0] = v275;
  v421[1] = v273;
  v421[2] = v274;
  v421[3] = v272;
  v229 = [MEMORY[0x277CBEA60] arrayWithObjects:v421 count:4];
  v271 = [v228 sectionWithRows:v229 title:@"Medusa Window Dragging Cursor Insets"];

  v230 = [MEMORY[0x277D431E8] rowWithTitle:@"App Inner Corners" valueKeyPath:@"cornerRadiusForInnerCorners"];
  v231 = [v230 precision:3];
  v270 = [v231 between:0.0 and:100.0];

  v232 = [MEMORY[0x277D431E8] rowWithTitle:@"Medusa Compatibility App Corners" valueKeyPath:@"cornerRadiusForCompatibilityAppOuterCorners"];
  v233 = [v232 precision:3];
  v269 = [v233 between:0.0 and:100.0];

  v234 = [MEMORY[0x277D431E8] rowWithTitle:@"Floating App Corners" valueKeyPath:@"cornerRadiusForFloatingApps"];
  v235 = [v234 precision:3];
  v268 = [v235 between:0.0 and:100.0];

  v236 = [MEMORY[0x277D431E8] rowWithTitle:@"Fallback for old apps" valueKeyPath:@"cornerRadiusFallbackForOldApps"];
  v237 = [v236 precision:3];
  v267 = [v237 between:0.0 and:100.0];

  v238 = MEMORY[0x277D43210];
  v420[0] = v270;
  v420[1] = v269;
  v420[2] = v268;
  v420[3] = v267;
  v239 = [MEMORY[0x277CBEA60] arrayWithObjects:v420 count:4];
  v265 = [v238 sectionWithRows:v239 title:@"Medusa Corner Radii"];

  v240 = MEMORY[0x277D43290];
  v241 = NSStringFromSelector(sel_leadingSlideOverRelocationDelay);
  v242 = [v240 rowWithTitle:@"Leading Slide Over Teleportation Delay" valueKeyPath:v241];
  v266 = [v242 minValue:0.0 maxValue:0.5];

  v243 = MEMORY[0x277D43210];
  v419 = v266;
  v244 = [MEMORY[0x277CBEA60] arrayWithObjects:&v419 count:1];
  v262 = [v243 sectionWithRows:v244 title:@"Slide Over"];

  v264 = [MEMORY[0x277D432A8] rowWithTitle:@"Debug Background Colors" valueKeyPath:@"statusBarDebugBackgroundColorsEnabled"];
  v263 = [MEMORY[0x277D432A8] rowWithTitle:@"Debug Offset for App Status Bar" valueKeyPath:@"statusBarDebugOffsettingEnabled"];
  v245 = MEMORY[0x277D43210];
  v418[0] = v264;
  v418[1] = v263;
  v246 = [MEMORY[0x277CBEA60] arrayWithObjects:v418 count:2];
  v247 = [v245 sectionWithRows:v246 title:@"Status Bar Settings"];

  v261 = [MEMORY[0x277D431B0] rowWithTitle:@"Kill SpringBoard" outletKeyPath:@"killSpringBoardOutlet"];
  v248 = MEMORY[0x277D43210];
  v417 = v261;
  v249 = [MEMORY[0x277CBEA60] arrayWithObjects:&v417 count:1];
  v250 = [v248 sectionWithRows:v249];

  v251 = MEMORY[0x277D431B0];
  v252 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v253 = [v251 rowWithTitle:@"Restore Defaults" action:v252];

  v254 = MEMORY[0x277D43210];
  v416 = v253;
  v255 = [MEMORY[0x277CBEA60] arrayWithObjects:&v416 count:1];
  v256 = [v254 sectionWithRows:v255];

  v257 = MEMORY[0x277D43210];
  v415[0] = v413;
  v415[1] = v409;
  v415[2] = v408;
  v415[3] = v414;
  v415[4] = v407;
  v415[5] = v406;
  v415[6] = v405;
  v415[7] = v404;
  v415[8] = v403;
  v415[9] = v401;
  v415[10] = v363;
  v415[11] = v361;
  v415[12] = v355;
  v415[13] = v350;
  v415[14] = v349;
  v415[15] = v347;
  v415[16] = v345;
  v415[17] = v276;
  v415[18] = v271;
  v415[19] = v265;
  v415[20] = v262;
  v415[21] = v247;
  v415[22] = v250;
  v415[23] = v256;
  v258 = [MEMORY[0x277CBEA60] arrayWithObjects:v415 count:24];
  v259 = [v257 moduleWithTitle:@"Medusa" contents:v258];

  return v259;
}

- (CAColorMatrix)coronaVibrantColorMatrixInput
{
  v3 = *&self[11].var4;
  v4 = *&self[11].var6;
  retstr->var0 = v3;
  retstr->var1 = v4;
  v5 = *&self[11].var8;
  v6 = *&self[11].var10;
  retstr->var2 = v5;
  retstr->var3 = v6;
  v7 = *&self[11].var12;
  v8 = *&self[11].var14;
  retstr->var4 = v7;
  retstr->var5 = v8;
  v9 = *&self[11].var16;
  v10 = *&self[11].var18;
  retstr->var6 = v9;
  retstr->var7 = v10;
  v11 = *&self[12].var0;
  v12 = *&self[12].var2;
  retstr->var8 = v11;
  retstr->var9 = v12;
  v13 = *&self[12].var4;
  v14 = *&self[12].var6;
  retstr->var10 = v13;
  retstr->var11 = v14;
  v15 = *&self[12].var8;
  v16 = *&self[12].var10;
  retstr->var12 = v15;
  retstr->var13 = v16;
  v17 = *&self[12].var12;
  v18 = *&self[12].var14;
  retstr->var14 = v17;
  retstr->var15 = v18;
  v19 = *&self[12].var16;
  v20 = *&self[12].var18;
  retstr->var16 = v19;
  retstr->var17 = v20;
  v21 = *&self[13].var0;
  v22 = *&self[13].var2;
  retstr->var18 = v21;
  retstr->var19 = v22;
  return self;
}

- (double)effectiveBlurFadeAnimationDuration
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {

    [(SBMedusaSettings *)self reduceMotionBlurFadeAnimationDuration];
  }

  else
  {

    [(SBMedusaSettings *)self blurFadeAnimationDuration];
  }

  return result;
}

- (UIEdgeInsets)medusaSeparatorCursorEdgeInsets
{
  medusaSeparatorCursorTopEdgeInset = self->_medusaSeparatorCursorTopEdgeInset;
  medusaSeparatorCursorLeftEdgeInset = self->_medusaSeparatorCursorLeftEdgeInset;
  medusaSeparatorCursorBottomEdgeInset = self->_medusaSeparatorCursorBottomEdgeInset;
  medusaSeparatorCursorRightEdgeInset = self->_medusaSeparatorCursorRightEdgeInset;
  result.right = medusaSeparatorCursorRightEdgeInset;
  result.bottom = medusaSeparatorCursorBottomEdgeInset;
  result.left = medusaSeparatorCursorLeftEdgeInset;
  result.top = medusaSeparatorCursorTopEdgeInset;
  return result;
}

- (UIEdgeInsets)medusaWindowDraggingCursorEdgeInsets
{
  medusaWindowDraggingCursorTopEdgeInset = self->_medusaWindowDraggingCursorTopEdgeInset;
  medusaWindowDraggingCursorLeftEdgeInset = self->_medusaWindowDraggingCursorLeftEdgeInset;
  medusaWindowDraggingCursorBottomEdgeInset = self->_medusaWindowDraggingCursorBottomEdgeInset;
  medusaWindowDraggingCursorRightEdgeInset = self->_medusaWindowDraggingCursorRightEdgeInset;
  result.right = medusaWindowDraggingCursorRightEdgeInset;
  result.bottom = medusaWindowDraggingCursorBottomEdgeInset;
  result.left = medusaWindowDraggingCursorLeftEdgeInset;
  result.top = medusaWindowDraggingCursorTopEdgeInset;
  return result;
}

@end