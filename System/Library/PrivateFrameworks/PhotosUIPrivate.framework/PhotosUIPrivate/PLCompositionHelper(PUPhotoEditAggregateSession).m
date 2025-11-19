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
  v8 = [v6 composition];
  v122 = [v8 mediaType];

  v9 = [a1 adjustmentConstants];
  v10 = [MEMORY[0x1E695DF70] array];
  v129 = [MEMORY[0x1E69BE360] compositionControllerHasAnyAutoEnhancement:v6];
  v126 = [MEMORY[0x1E69BE360] compositionControllerHasAnyAutoEnhancement:v7];
  v11 = [v6 smartToneAdjustmentController];
  v12 = [v7 smartToneAdjustmentController];
  v13 = [v6 smartColorAdjustmentController];
  v133 = v7;
  v131 = [v7 smartColorAdjustmentController];
  v14 = [v9 PISmartToneAdjustmentKey];
  v15 = [objc_opt_class() inputLightKey];
  v16 = [a1 defaultValueForAdjustmentKey:v14 settingKey:v15];
  [v16 doubleValue];
  v18 = v17;

  v134 = v9;
  v19 = [v9 PISmartColorAdjustmentKey];
  v132 = v13;
  v20 = [objc_opt_class() inputColorKey];
  v125 = a1;
  v21 = [a1 defaultValueForAdjustmentKey:v19 settingKey:v20];
  [v21 doubleValue];
  v23 = v22;

  [v11 inputLight];
  v25 = v24;
  [v12 inputLight];
  v27 = v26;
  v28 = [v11 isAuto];
  if (v25 == v27)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  if (v126 & (v129 ^ 1))
  {
    [v11 inputLight];
    v31 = v30 != v18;
  }

  else
  {
    v31 = 1;
  }

  v124 = v11;
  v118 = v31;
  v116 = v29 ^ 1;
  [v10 pu_valuesChanged:(v29 ^ 1) & v31 forKey:*MEMORY[0x1E69BEDF0]];
  [v13 inputColor];
  v33 = v32;
  [v131 inputColor];
  v35 = v34;
  v36 = [v13 isAuto];
  if (v33 == v35)
  {
    v37 = 1;
  }

  else
  {
    v37 = v36;
  }

  if (v126 & (v129 ^ 1))
  {
    [v13 inputColor];
    v39 = v38 != v23;
  }

  else
  {
    v39 = 1;
  }

  v127 = v129 & (v126 ^ 1);
  v120 = v39;
  [v10 pu_valuesChanged:(v37 ^ 1) & v39 forKey:*MEMORY[0x1E69BEDE0]];
  v40 = [v133 composition];
  v41 = [v134 PISmartToneAdjustmentKey];
  v138[0] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:1];
  v43 = [v6 isEqual:v40 forKeys:v42 visualChangesOnly:1];

  [v10 pu_valuesChanged:v43 ^ 1u forKey:*MEMORY[0x1E69BEDF8]];
  v44 = [v133 composition];
  v45 = [v134 PISmartColorAdjustmentKey];
  v137 = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
  v47 = [v6 isEqual:v44 forKeys:v46 visualChangesOnly:1];

  [v10 pu_valuesChanged:v47 ^ 1u forKey:*MEMORY[0x1E69BEDE8]];
  if (v129)
  {
    [v10 pu_valuesChanged:v116 & v118 forKey:*MEMORY[0x1E69BED30]];
    [v10 pu_valuesChanged:v43 ^ 1u forKey:*MEMORY[0x1E69BED38]];
    [v10 pu_valuesChanged:(v37 ^ 1) & v120 forKey:*MEMORY[0x1E69BED20]];
    [v10 pu_valuesChanged:v47 ^ 1u forKey:*MEMORY[0x1E69BED28]];
  }

  [v10 pu_valuesChanged:v127 & 1 forKey:*MEMORY[0x1E69BECF8]];
  v48 = [v133 composition];
  v49 = [v134 PIRedEyeAdjustmentKey];
  v136 = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
  v51 = [v6 isEqual:v48 forKeys:v50 visualChangesOnly:1];

  [v10 pu_valuesChanged:v51 ^ 1u forKey:*MEMORY[0x1E69BEDA8]];
  v52 = [v6 cropAdjustmentController];
  v53 = [v133 cropAdjustmentController];
  v130 = v52;
  [v52 cropRect];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v128 = v53;
  [v53 cropRect];
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
  if (v122 != 2)
  {
    v67 = MEMORY[0x1E69BED48];
  }

  [v10 pu_valuesChanged:!v66 forKey:*v67];
  v68 = [v6 orientationAdjustmentController];
  v69 = [v133 orientationAdjustmentController];
  v70 = v125;
  if (v68)
  {
    [v68 orientation];
  }

  v119 = v69;
  v121 = v68;
  if (v69)
  {
    [v69 orientation];
  }

  v71 = PLOrientationBetweenOrientations();
  v72 = MEMORY[0x1E69BEDB8];
  if (v122 == 2)
  {
    v73 = MEMORY[0x1E69BED70];
  }

  else
  {
    v72 = MEMORY[0x1E69BEDC0];
    v73 = MEMORY[0x1E69BED68];
  }

  if (v122 == 2)
  {
    v74 = MEMORY[0x1E69BEE10];
  }

  else
  {
    v74 = MEMORY[0x1E69BEE08];
  }

  if (v122 == 2)
  {
    v75 = MEMORY[0x1E69BED90];
  }

  else
  {
    v75 = MEMORY[0x1E69BED88];
  }

  if (v122 == 2)
  {
    v76 = MEMORY[0x1E69BEE28];
  }

  else
  {
    v76 = MEMORY[0x1E69BEE20];
  }

  if (v122 == 2)
  {
    v77 = MEMORY[0x1E69BED80];
  }

  else
  {
    v77 = MEMORY[0x1E69BED78];
  }

  [v10 pu_valuesChanged:(v71 < 9) & (0x1E8u >> v71) forKey:*v72];
  [v10 pu_valuesChanged:(v71 < 8) & (0xB4u >> v71) forKey:*v73];
  [v130 angle];
  v79 = v78;
  [v128 angle];
  [v10 pu_valuesChanged:v79 != v80 forKey:*v74];
  [v130 pitchRadians];
  v82 = v81;
  [v128 pitchRadians];
  LODWORD(v71) = v82 != v83;
  [v10 pu_valuesChanged:v82 != v83 forKey:*v75];
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

  [v10 pu_valuesChanged:v85 != v86 forKey:*v76];
  [v10 pu_valuesChanged:v71 forKey:*v77];
  v87 = [v125 compositionController:v6 isCropConstraintEqualToCompositionController:v133];
  [v10 pu_valuesChanged:v87 ^ 1u forKey:*MEMORY[0x1E69BECF0]];
  v88 = [v6 smartBWAdjustmentController];
  v89 = [v133 smartBWAdjustmentController];
  if ([v88 enabled])
  {
    [v88 hue];
    v91 = v90;
    [v89 hue];
    [v10 pu_valuesChanged:v91 != v92 forKey:*MEMORY[0x1E69BEDD0]];
    v93 = [v133 composition];
    v94 = [v134 PISmartBWAdjustmentKey];
    v135 = v94;
    v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
    v96 = [v6 isEqual:v93 forKeys:v95 visualChangesOnly:1];

    [v10 pu_valuesChanged:v96 ^ 1u forKey:*MEMORY[0x1E69BEDD8]];
  }

  v97 = [v125 pl_aggregateNameForEffectFilterForCompositionController:v6];
  if (v97)
  {
    [v10 pu_valuesChanged:objc_msgSend(v125 forKey:{"compositionController:isEffectFilterEqualToCompositionController:", v6, v133) ^ 1, PLSAggregateDictionaryKeyForEditPhotoWithFilterName()}];
    v98 = [v125 compositionController:v6 isEffectFilterIntensityEqualToCompositionController:v133];
    v99 = [v125 pl_aggregateFilterIntensityForCompositionController:v6];
    [v10 pu_valuesChanged:v98 ^ 1u forKey:PLSAggregateDictionaryKeyForEditPhotoWithFilterIntensity()];
  }

  v123 = v88;
  v100 = [v125 pl_aggregateNameForPortraitFilterWithCompositionController:v6];
  v101 = [v125 activeEffectAdjustmentForCompositionController:v6];
  v102 = v101;
  if (v101)
  {
    v103 = [v101 kind];
    v104 = v103 != 0;
  }

  else
  {
    v104 = 0;
  }

  v117 = v89;
  if (v100 && !v104)
  {
    v105 = [v125 activeEffectAdjustmentForCompositionController:v133];
    v106 = v105;
    if (v105 && ([v105 kind], v107 = objc_claimAutoreleasedReturnValue(), v107, v107))
    {
      v108 = 1;
      v109 = v125;
    }

    else
    {
      v109 = v125;
      v108 = [v125 compositionController:v6 isPortraitEqualToCompositionController:v133] ^ 1;
    }

    [v10 pu_valuesChanged:v108 forKey:PLSAggregateDictionaryKeyForEditPhotoWithPortraitName()];
    v110 = [v109 compositionController:v6 isPortraitIntensityEqualToCompositionController:v133];
    v111 = [v109 pl_aggregatePortraitIntensityForCompositionController:v6];
    [v10 pu_valuesChanged:v110 ^ 1u forKey:PLSAggregateDictionaryKeyForEditPhotoWithPortraitIntensity()];

    v70 = v109;
  }

  v112 = [v6 depthAdjustmentController];

  if (v112)
  {
    v113 = [v70 compositionController:v6 isDepthIntensityEqualToCompositionController:v133];
    v114 = [v70 pl_aggregateDepthIntensityForCompositionController:v6];
    [v10 pu_valuesChanged:v113 ^ 1u forKey:PLSAggregateDictionaryKeyForEditPhotoWithApertureIntensity()];
  }

  return v10;
}

+ (id)pl_aggregateNameForPortraitFilterWithCompositionController:()PUPhotoEditAggregateSession
{
  v3 = a3;
  v4 = [v3 portraitAdjustmentController];
  v5 = [v4 kind];
  v6 = [PUPhotoEditEffectsSupport lightingEffectTypeForIdentifier:v5];

  if (!v6)
  {
    v7 = [v4 portraitInfo];
    v6 = v7 != 0;
  }

  v8 = [MEMORY[0x1E6993870] aggdNameForLightingType:v6];

  return v8;
}

+ (id)pl_aggregateDepthIntensityForCompositionController:()PUPhotoEditAggregateSession
{
  v4 = [a3 depthAdjustmentController];
  [v4 aperture];
  v5 = [a1 _classificationForIntensityValue:? min:? default:? max:?];

  return v5;
}

+ (id)pl_aggregatePortraitIntensityForCompositionController:()PUPhotoEditAggregateSession
{
  v4 = [a3 portraitAdjustmentController];
  [v4 strength];
  v5 = [a1 _classificationForIntensityValue:? min:? default:? max:?];

  return v5;
}

+ (id)pl_aggregateFilterIntensityForCompositionController:()PUPhotoEditAggregateSession
{
  v2 = [a1 activeEffectAdjustmentForCompositionController:?];
  [v2 intensity];
  v3 = [a1 _classificationForIntensityValue:? min:? default:? max:?];

  return v3;
}

+ (__CFString)_classificationForIntensityValue:()PUPhotoEditAggregateSession min:default:max:
{
  if (a2 >= a1)
  {
    a1 = a2;
  }

  if (a1 > a4)
  {
    a1 = a4;
  }

  v4 = (a4 - a2) * 0.01;
  if (v4 + a2 >= a1)
  {
    return @"min";
  }

  if (a4 - v4 <= a1)
  {
    return @"max";
  }

  if (a3 - v4 > a1)
  {
    return @"low";
  }

  if (v4 + a3 >= a1)
  {
    return @"default";
  }

  return @"high";
}

+ (id)pl_aggregateNameForEffectFilterForCompositionController:()PUPhotoEditAggregateSession
{
  v1 = [a1 activeEffectAdjustmentForCompositionController:?];
  v2 = [v1 kind];
  v3 = [v2 lowercaseString];

  return v3;
}

@end