@interface NCListAnimationSettings
+ (id)moduleWithSectionTitle:(id)title;
- (void)setDefaultValues;
@end

@implementation NCListAnimationSettings

+ (id)moduleWithSectionTitle:(id)title
{
  v167[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  titleCopy = title;
  array = [v3 array];
  v6 = [MEMORY[0x277D432A0] rowWithTitle:@"Internal Tools Button Hidden" valueKeyPath:@"internalToolsButtonHidden"];
  [array addObject:v6];

  v7 = [MEMORY[0x277D432A0] rowWithTitle:@"C2 only animations" valueKeyPath:@"onlyC2"];
  [array addObject:v7];

  v8 = [MEMORY[0x277D432A0] rowWithTitle:@"High frame rate animations" valueKeyPath:@"highFrameRateInteractiveAnimations"];
  [array addObject:v8];

  v9 = [MEMORY[0x277D431F0] rowWithTitle:@"viewVisibilityMargin" valueKeyPath:@"viewVisibilityMargin"];
  v10 = [v9 between:0.0 and:500.0];
  v11 = [v10 precision:1];
  [array addObject:v11];

  v12 = [MEMORY[0x277D431F0] rowWithTitle:@"viewSpacing" valueKeyPath:@"viewSpacing"];
  v13 = [v12 between:-320.0 and:320.0];
  v14 = [v13 precision:1];
  [array addObject:v14];

  v15 = [MEMORY[0x277D431F0] rowWithTitle:@"headerSpacing" valueKeyPath:@"headerSpacing"];
  v16 = [v15 between:0.0 and:320.0];
  v17 = [v16 precision:1];
  [array addObject:v17];

  v18 = [MEMORY[0x277D431F0] rowWithTitle:@"viewOverlap" valueKeyPath:@"viewOverlap"];
  v19 = [v18 between:-20.0 and:20.0];
  v20 = [v19 precision:1];
  [array addObject:v20];

  v21 = [MEMORY[0x277D431F0] rowWithTitle:@"featuredLeadingViewSpacing" valueKeyPath:@"featuredLeadingViewSpacing"];
  v22 = [v21 between:-32.0 and:32.0];
  v23 = [v22 precision:1];
  [array addObject:v23];

  v24 = [MEMORY[0x277D431F0] rowWithTitle:@"titleViewMargin" valueKeyPath:@"titleViewMargin"];
  v25 = [v24 between:0.0 and:100.0];
  v26 = [v25 precision:1];
  [array addObject:v26];

  v27 = [MEMORY[0x277D431F0] rowWithTitle:@"titleViewHeight" valueKeyPath:@"titleViewHeight"];
  v28 = [v27 between:0.0 and:500.0];
  v29 = [v28 precision:1];
  [array addObject:v29];

  v30 = [MEMORY[0x277D431F0] rowWithTitle:@"animationTension" valueKeyPath:@"animationTension"];
  v31 = [v30 between:0.0 and:1450.0];
  v32 = [v31 precision:1];
  [array addObject:v32];

  v33 = [MEMORY[0x277D431F0] rowWithTitle:@"animationFriction" valueKeyPath:@"animationFriction"];
  v34 = [v33 between:0.0 and:220.0];
  v35 = [v34 precision:1];
  [array addObject:v35];

  v36 = [MEMORY[0x277D431F0] rowWithTitle:@"animationTensionVelocityFactor" valueKeyPath:@"animationTensionVelocityFactor"];
  v37 = [v36 between:0.0 and:0.25];
  v38 = [v37 precision:0];
  [array addObject:v38];

  v39 = [MEMORY[0x277D431F0] rowWithTitle:@"animationFrictionVelocityFactor" valueKeyPath:@"animationFrictionVelocityFactor"];
  v40 = [v39 between:0.0002 and:0.2];
  v41 = [v40 precision:4];
  [array addObject:v41];

  v42 = [MEMORY[0x277D431F0] rowWithTitle:@"animationScale" valueKeyPath:@"animationScale"];
  v43 = [v42 between:0.03 and:3.0];
  v44 = [v43 precision:3];
  [array addObject:v44];

  v45 = [MEMORY[0x277D431F0] rowWithTitle:@"animationScaleGroupInsertion" valueKeyPath:@"animationScaleGroupInsertion"];
  v46 = [v45 between:0.11 and:11.1];
  v47 = [v46 precision:2];
  [array addObject:v47];

  v48 = [MEMORY[0x277D431F0] rowWithTitle:@"animationScaleWhileGrouping" valueKeyPath:@"animationScaleWhileGrouping"];
  v49 = [v48 between:0.01 and:1.0];
  v50 = [v49 precision:3];
  [array addObject:v50];

  v51 = [MEMORY[0x277D431F0] rowWithTitle:@"animationTranslation" valueKeyPath:@"animationTranslation"];
  v52 = [v51 between:0.0 and:200.0];
  v53 = [v52 precision:1];
  [array addObject:v53];

  v54 = [MEMORY[0x277D431F0] rowWithTitle:@"animationTranslationWhileGrouping" valueKeyPath:@"animationTranslationWhileGrouping"];
  v55 = [v54 between:0.0 and:400.0];
  v56 = [v55 precision:1];
  [array addObject:v56];

  v57 = [MEMORY[0x277D431F0] rowWithTitle:@"animationInsertionStartAlpha" valueKeyPath:@"animationInsertionStartAlpha"];
  v58 = [v57 between:0.02 and:2.0];
  v59 = [v58 precision:3];
  [array addObject:v59];

  v60 = [MEMORY[0x277D431F0] rowWithTitle:@"animationYTranslationThresholdForRollUnderGlassTransition" valueKeyPath:@"animationYTranslationThresholdForRollUnderGlassTransition"];
  v61 = [v60 between:-10.0 and:0.0];
  v62 = [v61 precision:3];
  [array addObject:v62];

  v63 = [MEMORY[0x277D431F0] rowWithTitle:@"revealHintingAnimationTension" valueKeyPath:@"revealHintingAnimationTension"];
  v64 = [v63 between:0.0 and:1450.0];
  v65 = [v64 precision:1];
  [array addObject:v65];

  v66 = [MEMORY[0x277D431F0] rowWithTitle:@"revealHintingAnimationFriction" valueKeyPath:@"revealHintingAnimationFriction"];
  v67 = [v66 between:0.0 and:240.0];
  v68 = [v67 precision:1];
  [array addObject:v68];

  v69 = [MEMORY[0x277D431F0] rowWithTitle:@"revealHintingAnimationTensionVelocityFactor" valueKeyPath:@"revealHintingAnimationTensionVelocityFactor"];
  v70 = [v69 between:0.0 and:250.0];
  v71 = [v70 precision:1];
  [array addObject:v71];

  v72 = [MEMORY[0x277D431F0] rowWithTitle:@"revealHintingAnimationFrictionVelocityFactor" valueKeyPath:@"revealHintingAnimationFrictionVelocityFactor"];
  v73 = [v72 between:0.0 and:20.0];
  v74 = [v73 precision:2];
  [array addObject:v74];

  v75 = [MEMORY[0x277D431F0] rowWithTitle:@"revealGestureAnimationRevealDelayStep" valueKeyPath:@"revealGestureAnimationRevealDelayStep"];
  v76 = [v75 between:0.003 and:0.3];
  v77 = [v76 precision:3];
  [array addObject:v77];

  v78 = [MEMORY[0x277D431F0] rowWithTitle:@"insertionTension" valueKeyPath:@"insertionTension"];
  v79 = [v78 between:0.0 and:700.0];
  v80 = [v79 precision:2];
  [array addObject:v80];

  v81 = [MEMORY[0x277D431F0] rowWithTitle:@"insertionFriction" valueKeyPath:@"insertionFriction"];
  v82 = [v81 between:0.0 and:120.0];
  v83 = [v82 precision:1];
  [array addObject:v83];

  v84 = [MEMORY[0x277D431F0] rowWithTitle:@"groupListMaxViewCount" valueKeyPath:@"groupListMaxViewCount"];
  v85 = [v84 between:0.0 and:20.0];
  v86 = [v85 precision:1];
  [array addObject:v86];

  v87 = [MEMORY[0x277D431F0] rowWithTitle:@"revealHintingTriggerOffset" valueKeyPath:@"revealHintingTriggerOffset"];
  v88 = [v87 between:0.0 and:500.0];
  v89 = [v88 precision:1];
  [array addObject:v89];

  v90 = [MEMORY[0x277D431F0] rowWithTitle:@"revealHintingOffset" valueKeyPath:@"revealHintingOffset"];
  v91 = [v90 between:0.0 and:700.0];
  v92 = [v91 precision:1];
  [array addObject:v92];

  v93 = [MEMORY[0x277D431F0] rowWithTitle:@"hoverViewMovingTopMargin" valueKeyPath:@"hoverViewMovingTopMargin"];
  v94 = [v93 between:0.0 and:50.0];
  v95 = [v94 precision:1];
  [array addObject:v95];

  v96 = [MEMORY[0x277D431F0] rowWithTitle:@"hoverViewTrailingMargin" valueKeyPath:@"hoverViewTrailingMargin"];
  v97 = [v96 between:0.0 and:60.0];
  v98 = [v97 precision:1];
  [array addObject:v98];

  v99 = [MEMORY[0x277D431F0] rowWithTitle:@"hoverViewFadeInsertionMargin" valueKeyPath:@"hoverViewFadeInsertionMargin"];
  v100 = [v99 between:0.0 and:250.0];
  v101 = [v100 precision:1];
  [array addObject:v101];

  v102 = [MEMORY[0x277D431F0] rowWithTitle:@"hoverViewBottomMarginMinimum" valueKeyPath:@"hoverViewBottomMarginMinimum"];
  v103 = [v102 between:0.0 and:2000.0];
  v104 = [v103 precision:1];
  [array addObject:v104];

  v105 = [MEMORY[0x277D431F0] rowWithTitle:@"featuredViewOcclusionMinimumAlpha" valueKeyPath:@"featuredViewOcclusionMinimumAlpha"];
  v106 = [v105 between:0.0 and:1.0];
  v107 = [v106 precision:2];
  [array addObject:v107];

  v108 = [MEMORY[0x277D431F0] rowWithTitle:@"overlayFooterViewMaxHeight" valueKeyPath:@"overlayFooterViewMaxHeight"];
  v109 = [v108 between:100.0 and:100.0];
  v110 = [v109 precision:3];
  [array addObject:v110];

  v111 = [MEMORY[0x277D431F0] rowWithTitle:@"overlayFooterViewAnimationScale" valueKeyPath:@"overlayFooterViewAnimationScale"];
  v112 = [v111 between:0.0 and:0.5];
  v113 = [v112 precision:3];
  [array addObject:v113];

  v114 = [MEMORY[0x277D431F0] rowWithTitle:@"interactionTranslationOffsetMax" valueKeyPath:@"interactionTranslationOffsetMax"];
  v115 = [v114 between:0.0 and:300.0];
  v116 = [v115 precision:1];
  [array addObject:v116];

  v117 = [MEMORY[0x277D431F0] rowWithTitle:@"interactionTranslationVerticalOffsetMax" valueKeyPath:@"interactionTranslationVerticalOffsetMax"];
  v118 = [v117 between:0.0 and:500.0];
  v119 = [v118 precision:1];
  [array addObject:v119];

  v120 = [MEMORY[0x277D431F0] rowWithTitle:@"interactionTranslationCollapseVerticalOffsetFactor" valueKeyPath:@"interactionTranslationCollapseVerticalOffsetFactor"];
  v121 = [v120 between:0.05 and:5.0];
  v122 = [v121 precision:3];
  [array addObject:v122];

  v123 = [MEMORY[0x277D431F0] rowWithTitle:@"rollUnderScaleMinimum" valueKeyPath:@"rollUnderScaleMinimum"];
  v124 = [v123 between:0.065 and:6.5];
  v125 = [v124 precision:3];
  [array addObject:v125];

  v126 = [MEMORY[0x277D431F0] rowWithTitle:@"rollUnderTranslationMaximum" valueKeyPath:@"rollUnderTranslationMaximum"];
  v127 = [v126 between:0.0 and:1500.0];
  v128 = [v127 precision:2];
  [array addObject:v128];

  v129 = [MEMORY[0x277D431F0] rowWithTitle:@"rollUnderLimitHeightMax" valueKeyPath:@"rollUnderLimitHeightMax"];
  v130 = [v129 between:135.0 and:135.0];
  v131 = [v130 precision:3];
  [array addObject:v131];

  v132 = [MEMORY[0x277D431F0] rowWithTitle:@"rollUnderNotVisibleTranslation" valueKeyPath:@"rollUnderNotVisibleTranslation"];
  v133 = [v132 between:0.0 and:2200.0];
  v134 = [v133 precision:2];
  [array addObject:v134];

  v135 = [MEMORY[0x277D431F0] rowWithTitle:@"rollUnderNotRevealedScale" valueKeyPath:@"rollUnderNotRevealedScale"];
  v136 = [v135 between:0.005 and:0.5];
  v137 = [v136 precision:3];
  [array addObject:v137];

  v138 = [MEMORY[0x277D431F0] rowWithTitle:@"rollUnderNotRevealedTranslationY" valueKeyPath:@"rollUnderNotRevealedTranslationY"];
  v139 = [v138 between:-1200.0 and:1200.0];
  v140 = [v139 precision:2];
  [array addObject:v140];

  v141 = [MEMORY[0x277D431F0] rowWithTitle:@"headerViewInitialOffsetHeightPercentage" valueKeyPath:@"headerViewInitialOffsetHeightPercentage"];
  v142 = [v141 between:0.05 and:5.0];
  v143 = [v142 precision:3];
  [array addObject:v143];

  v144 = [MEMORY[0x277D431F0] rowWithTitle:@"headerViewRevealAlphaPercentage" valueKeyPath:@"headerViewRevealAlphaPercentage"];
  v145 = [v144 between:0.08 and:8.0];
  v146 = [v145 precision:3];
  [array addObject:v146];

  v147 = [MEMORY[0x277D431F0] rowWithTitle:@"headerViewRemoveAnimationTransform" valueKeyPath:@"headerViewRemoveAnimationTransform"];
  v148 = [v147 between:0.02 and:2.0];
  v149 = [v148 precision:3];
  [array addObject:v149];

  v150 = [MEMORY[0x277D431F0] rowWithTitle:@"headerViewRevealBlurRadiusMax" valueKeyPath:@"headerViewRevealBlurRadiusMax"];
  v151 = [v150 between:0.0 and:100.0];
  v152 = [v151 precision:2];
  [array addObject:v152];

  v153 = [MEMORY[0x277D431F0] rowWithTitle:@"headerViewRevealBlurTranslationDistance" valueKeyPath:@"headerViewRevealBlurTranslationDistance"];
  v154 = [v153 between:0.0 and:1000.0];
  v155 = [v154 precision:2];
  [array addObject:v155];

  v156 = [MEMORY[0x277D431F0] rowWithTitle:@"notRevealedPlacementOffset" valueKeyPath:@"notRevealedPlacementOffset"];
  v157 = [v156 between:0.0 and:800.0];
  v158 = [v157 precision:2];
  [array addObject:v158];

  v159 = [MEMORY[0x277D431F0] rowWithTitle:@"bottomListPadding" valueKeyPath:@"bottomListPadding"];
  v160 = [v159 between:0.0 and:200.0];
  v161 = [v160 precision:2];
  [array addObject:v161];

  v162 = MEMORY[0x277D43218];
  v163 = [MEMORY[0x277D43218] sectionWithRows:array title:titleCopy];

  v167[0] = v163;
  v164 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:1];
  v165 = [v162 moduleWithTitle:0 contents:v164];

  return v165;
}

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = NCListAnimationSettings;
  [(PTSettings *)&v9 setDefaultValues];
  [(NCListAnimationSettings *)self setInternalToolsButtonHidden:1];
  [(NCListAnimationSettings *)self setOnlyC2:1];
  [(NCListAnimationSettings *)self setHighFrameRateInteractiveAnimations:1];
  [(NCListAnimationSettings *)self setViewVisibilityMargin:100.0];
  [(NCListAnimationSettings *)self setViewSpacing:8.0];
  [(NCListAnimationSettings *)self setHeaderSpacing:0.0];
  [(NCListAnimationSettings *)self setViewOverlap:8.0];
  [(NCListAnimationSettings *)self setFeaturedLeadingViewSpacing:10.0];
  [(NCListAnimationSettings *)self setTitleViewMargin:20.0];
  [(NCListAnimationSettings *)self setTitleViewHeight:50.0];
  [(NCListAnimationSettings *)self setAnimationTension:145.0];
  [(NCListAnimationSettings *)self setAnimationFriction:22.0];
  [(NCListAnimationSettings *)self setAnimationTensionVelocityFactor:0.25];
  [(NCListAnimationSettings *)self setAnimationFrictionVelocityFactor:0.02];
  [(NCListAnimationSettings *)self setAnimationScale:0.3];
  [(NCListAnimationSettings *)self setAnimationScaleGroupInsertion:1.1];
  [(NCListAnimationSettings *)self setAnimationScaleWhileGrouping:0.1];
  [(NCListAnimationSettings *)self setAnimationTranslation:20.0];
  [(NCListAnimationSettings *)self setAnimationTranslationWhileGrouping:40.0];
  [(NCListAnimationSettings *)self setAnimationInsertionStartAlpha:0.2];
  [(NCListAnimationSettings *)self setAnimationYTranslationThresholdForRollUnderGlassTransition:-3.0];
  [(NCListAnimationSettings *)self setRevealHintingAnimationTension:145.0];
  [(NCListAnimationSettings *)self setRevealHintingAnimationFriction:24.0];
  [(NCListAnimationSettings *)self setRevealHintingAnimationTensionVelocityFactor:25.0];
  [(NCListAnimationSettings *)self setRevealHintingAnimationFrictionVelocityFactor:2.0];
  [(NCListAnimationSettings *)self setRevealGestureAnimationRevealDelayStep:0.03];
  [(NCListAnimationSettings *)self setInsertionAnimationStartingScale:0.02];
  insertionAnimation_scaleX = [(NCListAnimationSettings *)self insertionAnimation_scaleX];
  [insertionAnimation_scaleX setDefaultValues];

  insertionAnimation_scaleX2 = [(NCListAnimationSettings *)self insertionAnimation_scaleX];
  [insertionAnimation_scaleX2 setDampingRatio:0.69762];

  insertionAnimation_scaleX3 = [(NCListAnimationSettings *)self insertionAnimation_scaleX];
  [insertionAnimation_scaleX3 setResponse:0.728];

  insertionAnimation_scaleY = [(NCListAnimationSettings *)self insertionAnimation_scaleY];
  [insertionAnimation_scaleY setDefaultValues];

  insertionAnimation_scaleY2 = [(NCListAnimationSettings *)self insertionAnimation_scaleY];
  [insertionAnimation_scaleY2 setDampingRatio:0.62275];

  insertionAnimation_scaleY3 = [(NCListAnimationSettings *)self insertionAnimation_scaleY];
  [insertionAnimation_scaleY3 setResponse:0.48669];

  [(NCListAnimationSettings *)self setGroupListMaxViewCount:3.0];
  [(NCListAnimationSettings *)self setRevealHintingTriggerOffset:50.0];
  [(NCListAnimationSettings *)self setRevealHintingOffset:70.0];
  [(NCListAnimationSettings *)self setHoverViewMovingTopMargin:5.0];
  [(NCListAnimationSettings *)self setHoverViewTrailingMargin:6.0];
  [(NCListAnimationSettings *)self setHoverViewFadeInsertionMargin:25.0];
  [(NCListAnimationSettings *)self setHoverViewBottomMarginMinimum:200.0];
  [(NCListAnimationSettings *)self setFeaturedViewOcclusionMinimumAlpha:0.5];
  [(NCListAnimationSettings *)self setOverlayFooterViewMaxHeight:100.0];
  [(NCListAnimationSettings *)self setOverlayFooterViewAnimationScale:0.05];
  [(NCListAnimationSettings *)self setInteractionTranslationOffsetMax:30.0];
  [(NCListAnimationSettings *)self setInteractionTranslationVerticalOffsetMax:50.0];
  [(NCListAnimationSettings *)self setInteractionTranslationCollapseVerticalOffsetFactor:0.5];
  [(NCListAnimationSettings *)self setRollUnderScaleMinimum:0.65];
  [(NCListAnimationSettings *)self setRollUnderTranslationMaximum:150.0];
  [(NCListAnimationSettings *)self setRollUnderLimitHeightMax:135.0];
  [(NCListAnimationSettings *)self setRollUnderNotVisibleTranslation:220.0];
  [(NCListAnimationSettings *)self setRollUnderNotRevealedScale:0.05];
  [(NCListAnimationSettings *)self setRollUnderNotRevealedTranslationY:-600.0];
  [(NCListAnimationSettings *)self setHeaderViewInitialOffsetHeightPercentage:0.5];
  [(NCListAnimationSettings *)self setHeaderViewRevealAlphaPercentage:0.8];
  [(NCListAnimationSettings *)self setHeaderViewRemoveAnimationTransform:0.2];
  [(NCListAnimationSettings *)self setHeaderViewRevealBlurRadiusMax:10.0];
  [(NCListAnimationSettings *)self setHeaderViewRevealBlurTranslationDistance:100.0];
  [(NCListAnimationSettings *)self setNotRevealedPlacementOffset:80.0];
  [(NCListAnimationSettings *)self setBottomListPadding:20.0];
}

@end