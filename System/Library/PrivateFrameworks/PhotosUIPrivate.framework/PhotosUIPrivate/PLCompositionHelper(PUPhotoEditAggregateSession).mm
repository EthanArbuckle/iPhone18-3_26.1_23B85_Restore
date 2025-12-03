@interface PLCompositionHelper(PUPhotoEditAggregateSession)
+ (__CFString)_classificationForIntensityValue:()PUPhotoEditAggregateSession min:default:max:;
+ (id)compositionController:()PUPhotoEditAggregateSession aggregateKeysForPreviousComposition:;
+ (id)pl_aggregateDepthIntensityForCompositionController:()PUPhotoEditAggregateSession;
+ (id)pl_aggregateFilterIntensityForCompositionController:()PUPhotoEditAggregateSession;
+ (id)pl_aggregateNameForEffectFilterForCompositionController:()PUPhotoEditAggregateSession;
+ (id)pl_aggregateNameForPortraitFilterWithCompositionController:()PUPhotoEditAggregateSession;
+ (id)pl_aggregatePortraitIntensityForCompositionController:()PUPhotoEditAggregateSession;
@end

@implementation PLCompositionHelper(PUPhotoEditAggregateSession)

+ (id)compositionController:()PUPhotoEditAggregateSession aggregateKeysForPreviousComposition:
{
  v138[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  composition = [v6 composition];
  mediaType = [composition mediaType];

  adjustmentConstants = [self adjustmentConstants];
  array = [MEMORY[0x1E695DF70] array];
  v129 = [MEMORY[0x1E69BE360] compositionControllerHasAnyAutoEnhancement:v6];
  v126 = [MEMORY[0x1E69BE360] compositionControllerHasAnyAutoEnhancement:v7];
  smartToneAdjustmentController = [v6 smartToneAdjustmentController];
  smartToneAdjustmentController2 = [v7 smartToneAdjustmentController];
  smartColorAdjustmentController = [v6 smartColorAdjustmentController];
  v133 = v7;
  smartColorAdjustmentController2 = [v7 smartColorAdjustmentController];
  pISmartToneAdjustmentKey = [adjustmentConstants PISmartToneAdjustmentKey];
  inputLightKey = [objc_opt_class() inputLightKey];
  v16 = [self defaultValueForAdjustmentKey:pISmartToneAdjustmentKey settingKey:inputLightKey];
  [v16 doubleValue];
  v18 = v17;

  v134 = adjustmentConstants;
  pISmartColorAdjustmentKey = [adjustmentConstants PISmartColorAdjustmentKey];
  v132 = smartColorAdjustmentController;
  inputColorKey = [objc_opt_class() inputColorKey];
  selfCopy = self;
  v21 = [self defaultValueForAdjustmentKey:pISmartColorAdjustmentKey settingKey:inputColorKey];
  [v21 doubleValue];
  v23 = v22;

  [smartToneAdjustmentController inputLight];
  v25 = v24;
  [smartToneAdjustmentController2 inputLight];
  v27 = v26;
  isAuto = [smartToneAdjustmentController isAuto];
  if (v25 == v27)
  {
    v29 = 1;
  }

  else
  {
    v29 = isAuto;
  }

  if (v126 & (v129 ^ 1))
  {
    [smartToneAdjustmentController inputLight];
    v31 = v30 != v18;
  }

  else
  {
    v31 = 1;
  }

  v124 = smartToneAdjustmentController;
  v118 = v31;
  v116 = v29 ^ 1;
  [array pu_valuesChanged:(v29 ^ 1) & v31 forKey:*MEMORY[0x1E69BEDF0]];
  [smartColorAdjustmentController inputColor];
  v33 = v32;
  [smartColorAdjustmentController2 inputColor];
  v35 = v34;
  isAuto2 = [smartColorAdjustmentController isAuto];
  if (v33 == v35)
  {
    v37 = 1;
  }

  else
  {
    v37 = isAuto2;
  }

  if (v126 & (v129 ^ 1))
  {
    [smartColorAdjustmentController inputColor];
    v39 = v38 != v23;
  }

  else
  {
    v39 = 1;
  }

  v127 = v129 & (v126 ^ 1);
  v120 = v39;
  [array pu_valuesChanged:(v37 ^ 1) & v39 forKey:*MEMORY[0x1E69BEDE0]];
  composition2 = [v133 composition];
  pISmartToneAdjustmentKey2 = [v134 PISmartToneAdjustmentKey];
  v138[0] = pISmartToneAdjustmentKey2;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:1];
  v43 = [v6 isEqual:composition2 forKeys:v42 visualChangesOnly:1];

  [array pu_valuesChanged:v43 ^ 1u forKey:*MEMORY[0x1E69BEDF8]];
  composition3 = [v133 composition];
  pISmartColorAdjustmentKey2 = [v134 PISmartColorAdjustmentKey];
  v137 = pISmartColorAdjustmentKey2;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
  v47 = [v6 isEqual:composition3 forKeys:v46 visualChangesOnly:1];

  [array pu_valuesChanged:v47 ^ 1u forKey:*MEMORY[0x1E69BEDE8]];
  if (v129)
  {
    [array pu_valuesChanged:v116 & v118 forKey:*MEMORY[0x1E69BED30]];
    [array pu_valuesChanged:v43 ^ 1u forKey:*MEMORY[0x1E69BED38]];
    [array pu_valuesChanged:(v37 ^ 1) & v120 forKey:*MEMORY[0x1E69BED20]];
    [array pu_valuesChanged:v47 ^ 1u forKey:*MEMORY[0x1E69BED28]];
  }

  [array pu_valuesChanged:v127 & 1 forKey:*MEMORY[0x1E69BECF8]];
  composition4 = [v133 composition];
  pIRedEyeAdjustmentKey = [v134 PIRedEyeAdjustmentKey];
  v136 = pIRedEyeAdjustmentKey;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
  v51 = [v6 isEqual:composition4 forKeys:v50 visualChangesOnly:1];

  [array pu_valuesChanged:v51 ^ 1u forKey:*MEMORY[0x1E69BEDA8]];
  cropAdjustmentController = [v6 cropAdjustmentController];
  cropAdjustmentController2 = [v133 cropAdjustmentController];
  v130 = cropAdjustmentController;
  [cropAdjustmentController cropRect];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v128 = cropAdjustmentController2;
  [cropAdjustmentController2 cropRect];
  v141.origin.x = v62;
  v141.origin.y = v63;
  v141.size.width = v64;
  v141.size.height = v65;
  v140.origin.x = v55;
  v140.origin.y = v57;
  v140.size.width = v59;
  v140.size.height = v61;
  v66 = CGRectEqualToRect(v140, v141);
  v67 = MEMORY[0x1E69BED50];
  if (mediaType != 2)
  {
    v67 = MEMORY[0x1E69BED48];
  }

  [array pu_valuesChanged:!v66 forKey:*v67];
  orientationAdjustmentController = [v6 orientationAdjustmentController];
  orientationAdjustmentController2 = [v133 orientationAdjustmentController];
  v70 = selfCopy;
  if (orientationAdjustmentController)
  {
    [orientationAdjustmentController orientation];
  }

  v119 = orientationAdjustmentController2;
  v121 = orientationAdjustmentController;
  if (orientationAdjustmentController2)
  {
    [orientationAdjustmentController2 orientation];
  }

  v71 = PLOrientationBetweenOrientations();
  v72 = MEMORY[0x1E69BEDB8];
  if (mediaType == 2)
  {
    v73 = MEMORY[0x1E69BED70];
  }

  else
  {
    v72 = MEMORY[0x1E69BEDC0];
    v73 = MEMORY[0x1E69BED68];
  }

  if (mediaType == 2)
  {
    v74 = MEMORY[0x1E69BEE10];
  }

  else
  {
    v74 = MEMORY[0x1E69BEE08];
  }

  if (mediaType == 2)
  {
    v75 = MEMORY[0x1E69BED90];
  }

  else
  {
    v75 = MEMORY[0x1E69BED88];
  }

  if (mediaType == 2)
  {
    v76 = MEMORY[0x1E69BEE28];
  }

  else
  {
    v76 = MEMORY[0x1E69BEE20];
  }

  if (mediaType == 2)
  {
    v77 = MEMORY[0x1E69BED80];
  }

  else
  {
    v77 = MEMORY[0x1E69BED78];
  }

  [array pu_valuesChanged:(v71 < 9) & (0x1E8u >> v71) forKey:*v72];
  [array pu_valuesChanged:(v71 < 8) & (0xB4u >> v71) forKey:*v73];
  [v130 angle];
  v79 = v78;
  [v128 angle];
  [array pu_valuesChanged:v79 != v80 forKey:*v74];
  [v130 pitchRadians];
  v82 = v81;
  [v128 pitchRadians];
  LODWORD(v71) = v82 != v83;
  [array pu_valuesChanged:v82 != v83 forKey:*v75];
  [v130 yawRadians];
  v85 = v84;
  [v128 yawRadians];
  if (v85 == v86)
  {
    v71 = v71;
  }

  else
  {
    v71 = 1;
  }

  [array pu_valuesChanged:v85 != v86 forKey:*v76];
  [array pu_valuesChanged:v71 forKey:*v77];
  v87 = [selfCopy compositionController:v6 isCropConstraintEqualToCompositionController:v133];
  [array pu_valuesChanged:v87 ^ 1u forKey:*MEMORY[0x1E69BECF0]];
  smartBWAdjustmentController = [v6 smartBWAdjustmentController];
  smartBWAdjustmentController2 = [v133 smartBWAdjustmentController];
  if ([smartBWAdjustmentController enabled])
  {
    [smartBWAdjustmentController hue];
    v91 = v90;
    [smartBWAdjustmentController2 hue];
    [array pu_valuesChanged:v91 != v92 forKey:*MEMORY[0x1E69BEDD0]];
    composition5 = [v133 composition];
    pISmartBWAdjustmentKey = [v134 PISmartBWAdjustmentKey];
    v135 = pISmartBWAdjustmentKey;
    v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
    v96 = [v6 isEqual:composition5 forKeys:v95 visualChangesOnly:1];

    [array pu_valuesChanged:v96 ^ 1u forKey:*MEMORY[0x1E69BEDD8]];
  }

  v97 = [selfCopy pl_aggregateNameForEffectFilterForCompositionController:v6];
  if (v97)
  {
    [array pu_valuesChanged:objc_msgSend(selfCopy forKey:{"compositionController:isEffectFilterEqualToCompositionController:", v6, v133) ^ 1, PLSAggregateDictionaryKeyForEditPhotoWithFilterName()}];
    v98 = [selfCopy compositionController:v6 isEffectFilterIntensityEqualToCompositionController:v133];
    v99 = [selfCopy pl_aggregateFilterIntensityForCompositionController:v6];
    [array pu_valuesChanged:v98 ^ 1u forKey:PLSAggregateDictionaryKeyForEditPhotoWithFilterIntensity()];
  }

  v123 = smartBWAdjustmentController;
  v100 = [selfCopy pl_aggregateNameForPortraitFilterWithCompositionController:v6];
  v101 = [selfCopy activeEffectAdjustmentForCompositionController:v6];
  v102 = v101;
  if (v101)
  {
    kind = [v101 kind];
    v104 = kind != 0;
  }

  else
  {
    v104 = 0;
  }

  v117 = smartBWAdjustmentController2;
  if (v100 && !v104)
  {
    v105 = [selfCopy activeEffectAdjustmentForCompositionController:v133];
    v106 = v105;
    if (v105 && ([v105 kind], v107 = objc_claimAutoreleasedReturnValue(), v107, v107))
    {
      v108 = 1;
      v109 = selfCopy;
    }

    else
    {
      v109 = selfCopy;
      v108 = [selfCopy compositionController:v6 isPortraitEqualToCompositionController:v133] ^ 1;
    }

    [array pu_valuesChanged:v108 forKey:PLSAggregateDictionaryKeyForEditPhotoWithPortraitName()];
    v110 = [v109 compositionController:v6 isPortraitIntensityEqualToCompositionController:v133];
    v111 = [v109 pl_aggregatePortraitIntensityForCompositionController:v6];
    [array pu_valuesChanged:v110 ^ 1u forKey:PLSAggregateDictionaryKeyForEditPhotoWithPortraitIntensity()];

    v70 = v109;
  }

  depthAdjustmentController = [v6 depthAdjustmentController];

  if (depthAdjustmentController)
  {
    v113 = [v70 compositionController:v6 isDepthIntensityEqualToCompositionController:v133];
    v114 = [v70 pl_aggregateDepthIntensityForCompositionController:v6];
    [array pu_valuesChanged:v113 ^ 1u forKey:PLSAggregateDictionaryKeyForEditPhotoWithApertureIntensity()];
  }

  return array;
}

+ (id)pl_aggregateNameForPortraitFilterWithCompositionController:()PUPhotoEditAggregateSession
{
  v3 = a3;
  portraitAdjustmentController = [v3 portraitAdjustmentController];
  kind = [portraitAdjustmentController kind];
  v6 = [PUPhotoEditEffectsSupport lightingEffectTypeForIdentifier:kind];

  if (!v6)
  {
    portraitInfo = [portraitAdjustmentController portraitInfo];
    v6 = portraitInfo != 0;
  }

  v8 = [MEMORY[0x1E6993870] aggdNameForLightingType:v6];

  return v8;
}

+ (id)pl_aggregateDepthIntensityForCompositionController:()PUPhotoEditAggregateSession
{
  depthAdjustmentController = [a3 depthAdjustmentController];
  [depthAdjustmentController aperture];
  v5 = [self _classificationForIntensityValue:? min:? default:? max:?];

  return v5;
}

+ (id)pl_aggregatePortraitIntensityForCompositionController:()PUPhotoEditAggregateSession
{
  portraitAdjustmentController = [a3 portraitAdjustmentController];
  [portraitAdjustmentController strength];
  v5 = [self _classificationForIntensityValue:? min:? default:? max:?];

  return v5;
}

+ (id)pl_aggregateFilterIntensityForCompositionController:()PUPhotoEditAggregateSession
{
  v2 = [self activeEffectAdjustmentForCompositionController:?];
  [v2 intensity];
  v3 = [self _classificationForIntensityValue:? min:? default:? max:?];

  return v3;
}

+ (__CFString)_classificationForIntensityValue:()PUPhotoEditAggregateSession min:default:max:
{
  if (a2 >= self)
  {
    self = a2;
  }

  if (self > a4)
  {
    self = a4;
  }

  v4 = (a4 - a2) * 0.01;
  if (v4 + a2 >= self)
  {
    return @"min";
  }

  if (a4 - v4 <= self)
  {
    return @"max";
  }

  if (a3 - v4 > self)
  {
    return @"low";
  }

  if (v4 + a3 >= self)
  {
    return @"default";
  }

  return @"high";
}

+ (id)pl_aggregateNameForEffectFilterForCompositionController:()PUPhotoEditAggregateSession
{
  v1 = [self activeEffectAdjustmentForCompositionController:?];
  kind = [v1 kind];
  lowercaseString = [kind lowercaseString];

  return lowercaseString;
}

@end