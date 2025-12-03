@interface WKWallpaperAdjustmentTraitOffset
- (BOOL)isEqual:(id)equal;
- (CGPoint)moreSpaceModeOffsetLandscape;
- (CGPoint)moreSpaceModeOffsetPortrait;
- (CGPoint)offsetForCurrentScreenScaleModeWithInterfaceOrientation:(int64_t)orientation;
- (CGPoint)zoomedModeOffsetLandscape;
- (CGPoint)zoomedModeOffsetPortrait;
- (NSString)description;
- (WKWallpaperAdjustmentTraitOffset)initWithAttributeDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (id)wk_descriptionBuilder;
- (unint64_t)hash;
@end

@implementation WKWallpaperAdjustmentTraitOffset

- (WKWallpaperAdjustmentTraitOffset)initWithAttributeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v105.receiver = self;
  v105.super_class = WKWallpaperAdjustmentTraitOffset;
  v5 = [(WKWallpaperAdjustmentTraitOffset *)&v105 init];
  if (v5)
  {
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    objc_opt_class();
    v8 = [dictionaryCopy objectForKeyedSubscript:@"screenScaleModeZoomed"];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = v7;
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (v10)
    {
      objc_opt_class();
      v15 = [v10 objectForKeyedSubscript:@"interfaceOrientationAny"];
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        objc_opt_class();
        v17 = [v10 objectForKeyedSubscript:@"interfaceOrientationAny"];
        v18 = [v17 objectForKeyedSubscript:@"x"];
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        objc_opt_class();
        v21 = [v10 objectForKeyedSubscript:@"interfaceOrientationAny"];
        v22 = [v21 objectForKeyedSubscript:@"y"];
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        [v20 floatValue];
        v14 = v25;
        [v24 floatValue];
        v13 = v26;
        [v20 floatValue];
        v28 = v27;

        v12 = v28;
        [v24 floatValue];
        v30 = v29;

        v11 = v30;
      }

      else
      {
        objc_opt_class();
        v31 = [v10 objectForKeyedSubscript:@"interfaceOrientationLandscape"];
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;

        v13 = v7;
        v14 = v6;
        if (v33)
        {
          objc_opt_class();
          v34 = [v33 objectForKeyedSubscript:@"x"];
          if (objc_opt_isKindOfClass())
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;

          objc_opt_class();
          v37 = [v33 objectForKeyedSubscript:@"y"];
          if (objc_opt_isKindOfClass())
          {
            v38 = v37;
          }

          else
          {
            v38 = 0;
          }

          v39 = v38;

          [v36 floatValue];
          v41 = v40;

          v14 = v41;
          [v39 floatValue];
          v43 = v42;

          v13 = v43;
        }

        objc_opt_class();
        v44 = [v10 objectForKeyedSubscript:@"interfaceOrientationPortrait"];
        if (objc_opt_isKindOfClass())
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        v46 = v45;

        v11 = v7;
        v12 = v6;
        if (v46)
        {
          objc_opt_class();
          v47 = [v46 objectForKeyedSubscript:@"x"];
          if (objc_opt_isKindOfClass())
          {
            v48 = v47;
          }

          else
          {
            v48 = 0;
          }

          v49 = v48;

          objc_opt_class();
          v50 = [v46 objectForKeyedSubscript:@"y"];
          if (objc_opt_isKindOfClass())
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v52 = v51;

          [v49 floatValue];
          v54 = v53;

          v12 = v54;
          [v52 floatValue];
          v56 = v55;

          v11 = v56;
        }
      }
    }

    v104 = v13;
    v57 = [dictionaryCopy objectForKeyedSubscript:@"screenScaleModeMoreSpace"];
    v58 = v14;
    if (v57)
    {
      objc_opt_class();
      v59 = [v57 objectForKeyedSubscript:@"interfaceOrientationAny"];
      if (objc_opt_isKindOfClass())
      {
        v60 = v59;
      }

      else
      {
        v60 = 0;
      }

      if (v60)
      {
        objc_opt_class();
        v61 = [v57 objectForKeyedSubscript:@"interfaceOrientationAny"];
        v62 = [v61 objectForKeyedSubscript:@"x"];
        if (objc_opt_isKindOfClass())
        {
          v63 = v62;
        }

        else
        {
          v63 = 0;
        }

        v64 = v63;

        objc_opt_class();
        v65 = [v57 objectForKeyedSubscript:@"interfaceOrientationAny"];
        v66 = [v65 objectForKeyedSubscript:@"y"];
        if (objc_opt_isKindOfClass())
        {
          v67 = v66;
        }

        else
        {
          v67 = 0;
        }

        v68 = v67;

        [v64 floatValue];
        v70 = v69;
        [v68 floatValue];
        v72 = v71;
        [v64 floatValue];
        v74 = v73;

        v6 = v74;
        [v68 floatValue];
        v76 = v75;

        v7 = v76;
      }

      else
      {
        objc_opt_class();
        v77 = [v57 objectForKeyedSubscript:@"interfaceOrientationLandscape"];
        if (objc_opt_isKindOfClass())
        {
          v78 = v77;
        }

        else
        {
          v78 = 0;
        }

        v79 = v78;

        v72 = v7;
        v70 = v6;
        if (v79)
        {
          objc_opt_class();
          v80 = [v79 objectForKeyedSubscript:@"x"];
          if (objc_opt_isKindOfClass())
          {
            v81 = v80;
          }

          else
          {
            v81 = 0;
          }

          v82 = v81;

          objc_opt_class();
          v83 = [v79 objectForKeyedSubscript:@"y"];
          if (objc_opt_isKindOfClass())
          {
            v84 = v83;
          }

          else
          {
            v84 = 0;
          }

          v85 = v84;

          [v82 floatValue];
          v87 = v86;

          v70 = v87;
          [v85 floatValue];
          v89 = v88;

          v72 = v89;
        }

        objc_opt_class();
        v90 = [v57 objectForKeyedSubscript:@"interfaceOrientationPortrait"];
        if (objc_opt_isKindOfClass())
        {
          v91 = v90;
        }

        else
        {
          v91 = 0;
        }

        v92 = v91;

        if (v92)
        {
          objc_opt_class();
          v93 = [v92 objectForKeyedSubscript:@"x"];
          if (objc_opt_isKindOfClass())
          {
            v94 = v93;
          }

          else
          {
            v94 = 0;
          }

          v95 = v94;

          objc_opt_class();
          v96 = [v92 objectForKeyedSubscript:@"y"];
          if (objc_opt_isKindOfClass())
          {
            v97 = v96;
          }

          else
          {
            v97 = 0;
          }

          v98 = v97;

          [v95 floatValue];
          v100 = v99;

          v6 = v100;
          [v98 floatValue];
          v102 = v101;

          v7 = v102;
        }
      }
    }

    else
    {
      v72 = v7;
      v70 = v6;
    }

    v5->_zoomedModeOffsetLandscape.x = v58;
    v5->_zoomedModeOffsetLandscape.y = v104;
    v5->_zoomedModeOffsetPortrait.x = v12;
    v5->_zoomedModeOffsetPortrait.y = v11;
    v5->_moreSpaceModeOffsetLandscape.x = v70;
    v5->_moreSpaceModeOffsetLandscape.y = v72;
    v5->_moreSpaceModeOffsetPortrait.x = v6;
    v5->_moreSpaceModeOffsetPortrait.y = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  propertyListRepresentation = [(WKWallpaperAdjustmentTraitOffset *)self propertyListRepresentation];
  v6 = [v4 initWithAttributeDictionary:propertyListRepresentation];

  return v6;
}

- (CGPoint)offsetForCurrentScreenScaleModeWithInterfaceOrientation:(int64_t)orientation
{
  overrideScreenScaleMode = [(WKWallpaperAdjustmentTraitOffset *)self overrideScreenScaleMode];

  if (overrideScreenScaleMode)
  {
    [(WKWallpaperAdjustmentTraitOffset *)self overrideScreenScaleMode];
  }

  else
  {
    WKCurrentScreenScaleMode();
  }
  v6 = ;
  if ([v6 isEqualToString:@"screenScaleModeZoomed"])
  {
    if ((orientation - 1) > 1)
    {
      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetLandscape];
    }

    else
    {
      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait];
    }

LABEL_13:
    v9 = v7;
    v10 = v8;
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"screenScaleModeMoreSpace"])
  {
    if ((orientation - 1) > 1)
    {
      [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetLandscape];
    }

    else
    {
      [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait];
    }

    goto LABEL_13;
  }

  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_14:

  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)propertyListRepresentation
{
  v106[1] = *MEMORY[0x1E69E9840];
  [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetLandscape];
  v5 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = *MEMORY[0x1E695EFF8] == v6 && v4 == v3;
  if (!v7 || (([(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait], v5 == v9) ? (v10 = v4 == v8) : (v10 = 0), !v10 || (([(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetLandscape], v5 == v12) ? (v13 = v4 == v11) : (v13 = 0), !v13 || (([(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait], v5 == v15) ? (v16 = v4 == v14) : (v16 = 0), !v16))))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetLandscape];
    if (v5 == v19 && v4 == v18)
    {
      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait];
      if (v5 == v22 && v4 == v21)
      {
LABEL_44:
        [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetLandscape];
        if (v5 == v55 && v4 == v54)
        {
          [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait];
          if (v5 == v58 && v4 == v57)
          {
            goto LABEL_66;
          }
        }

        [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait];
        v61 = v60;
        v63 = v62;
        [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetLandscape];
        if (v61 == v65 && v63 == v64)
        {
          v97 = @"interfaceOrientationAny";
          v95[0] = @"x";
          v66 = MEMORY[0x1E696AD98];
          [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait];
          v67 = [v66 numberWithDouble:?];
          v95[1] = @"y";
          v96[0] = v67;
          v68 = MEMORY[0x1E696AD98];
          [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait];
          v70 = [v68 numberWithDouble:v69];
          v96[1] = v70;
          v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
          v98 = v71;
          dictionary2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        }

        else
        {
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetLandscape];
          if (v5 != v74 || v4 != v73)
          {
            v93[0] = @"x";
            v76 = MEMORY[0x1E696AD98];
            [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetLandscape];
            v77 = [v76 numberWithDouble:?];
            v93[1] = @"y";
            v94[0] = v77;
            v78 = MEMORY[0x1E696AD98];
            [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetLandscape];
            v80 = [v78 numberWithDouble:v79];
            v94[1] = v80;
            v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];

            [dictionary2 na_safeSetObject:v81 forKey:@"interfaceOrientationLandscape"];
          }

          [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait];
          if (v5 == v83 && v4 == v82)
          {
            goto LABEL_65;
          }

          v84 = MEMORY[0x1E696AD98];
          [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait];
          v85 = [v84 numberWithDouble:?];
          v91[1] = @"y";
          v92[0] = v85;
          v86 = MEMORY[0x1E696AD98];
          [(WKWallpaperAdjustmentTraitOffset *)self moreSpaceModeOffsetPortrait];
          v88 = [v86 numberWithDouble:v87];
          v92[1] = v88;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];

          [dictionary2 na_safeSetObject:v67 forKey:@"interfaceOrientationPortrait"];
        }

LABEL_65:
        [dictionary na_safeSetObject:dictionary2 forKey:@"screenScaleModeMoreSpace"];

        goto LABEL_66;
      }
    }

    [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait];
    v25 = v24;
    v27 = v26;
    [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetLandscape];
    if (v25 == v29 && v27 == v28)
    {
      v105 = @"interfaceOrientationAny";
      v103[0] = @"x";
      v30 = MEMORY[0x1E696AD98];
      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait];
      v31 = [v30 numberWithDouble:?];
      v104[0] = v31;
      v103[1] = @"y";
      v32 = MEMORY[0x1E696AD98];
      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait];
      v34 = [v32 numberWithDouble:v33];
      v104[1] = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];
      v106[0] = v35;
      dictionary3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    }

    else
    {
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetLandscape];
      if (v5 != v38 || v4 != v37)
      {
        v101[0] = @"x";
        v40 = MEMORY[0x1E696AD98];
        [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetLandscape];
        v41 = [v40 numberWithDouble:?];
        v101[1] = @"y";
        v102[0] = v41;
        v42 = MEMORY[0x1E696AD98];
        [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetLandscape];
        v44 = [v42 numberWithDouble:v43];
        v102[1] = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];

        [dictionary3 na_safeSetObject:v45 forKey:@"interfaceOrientationLandscape"];
      }

      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait];
      if (v5 == v47 && v4 == v46)
      {
        goto LABEL_43;
      }

      v99[0] = @"x";
      v49 = MEMORY[0x1E696AD98];
      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait];
      v50 = [v49 numberWithDouble:?];
      v99[1] = @"y";
      v100[0] = v50;
      v51 = MEMORY[0x1E696AD98];
      [(WKWallpaperAdjustmentTraitOffset *)self zoomedModeOffsetPortrait];
      v53 = [v51 numberWithDouble:v52];
      v100[1] = v53;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];

      [dictionary3 na_safeSetObject:v31 forKey:@"interfaceOrientationPortrait"];
    }

LABEL_43:
    [dictionary na_safeSetObject:dictionary3 forKey:@"screenScaleModeZoomed"];

    goto LABEL_44;
  }

  dictionary = 0;
LABEL_66:
  v89 = *MEMORY[0x1E69E9840];

  return dictionary;
}

id __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke()
{
  if (WKWallpaperAdjustmentTraitOffsetValueYKey_block_invoke_na_once_token_0 != -1)
  {
    __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke_cold_1();
  }

  v1 = WKWallpaperAdjustmentTraitOffsetValueYKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke_2()
{
  WKWallpaperAdjustmentTraitOffsetValueYKey_block_invoke_na_once_object_0 = __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_16_0];
  v2 = [v0 appendCharacteristic:&__block_literal_global_19];
  v3 = [v0 appendCharacteristic:&__block_literal_global_21];
  v4 = [v0 appendCharacteristic:&__block_literal_global_23];
  v5 = [v0 build];

  return v5;
}

uint64_t __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696B098];
  [a2 zoomedModeOffsetPortrait];

  return [v2 valueWithCGPoint:?];
}

uint64_t __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696B098];
  [a2 zoomedModeOffsetLandscape];

  return [v2 valueWithCGPoint:?];
}

uint64_t __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696B098];
  [a2 moreSpaceModeOffsetPortrait];

  return [v2 valueWithCGPoint:?];
}

uint64_t __47__WKWallpaperAdjustmentTraitOffset_na_identity__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696B098];
  [a2 moreSpaceModeOffsetLandscape];

  return [v2 valueWithCGPoint:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (id)wk_descriptionBuilder
{
  v3 = [MEMORY[0x1E69B3778] builderWithObject:self];
  objc_initWeak(&location, self);
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__WKWallpaperAdjustmentTraitOffset_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __57__WKWallpaperAdjustmentTraitOffset_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (NSString)description
{
  wk_descriptionBuilder = [(WKWallpaperAdjustmentTraitOffset *)self wk_descriptionBuilder];
  build = [wk_descriptionBuilder build];

  return build;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__WKWallpaperAdjustmentTraitOffset_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __59__WKWallpaperAdjustmentTraitOffset_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained zoomedModeOffsetPortrait];
  v4 = NSStringFromCGPoint(v10);
  [v3 appendString:v4 withName:@"zoomedModeOffsetPortrait"];

  [WeakRetained zoomedModeOffsetLandscape];
  v5 = NSStringFromCGPoint(v11);
  [v3 appendString:v5 withName:@"zoomedModeOffsetLandscape"];

  [WeakRetained moreSpaceModeOffsetPortrait];
  v6 = NSStringFromCGPoint(v12);
  [v3 appendString:v6 withName:@"moreSpaceModeOffsetPortrait"];

  [WeakRetained moreSpaceModeOffsetLandscape];
  v7 = NSStringFromCGPoint(v13);
  [v3 appendString:v7 withName:@"moreSpaceModeOffsetLandscape"];
}

- (CGPoint)zoomedModeOffsetLandscape
{
  x = self->_zoomedModeOffsetLandscape.x;
  y = self->_zoomedModeOffsetLandscape.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)zoomedModeOffsetPortrait
{
  x = self->_zoomedModeOffsetPortrait.x;
  y = self->_zoomedModeOffsetPortrait.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)moreSpaceModeOffsetLandscape
{
  x = self->_moreSpaceModeOffsetLandscape.x;
  y = self->_moreSpaceModeOffsetLandscape.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)moreSpaceModeOffsetPortrait
{
  x = self->_moreSpaceModeOffsetPortrait.x;
  y = self->_moreSpaceModeOffsetPortrait.y;
  result.y = y;
  result.x = x;
  return result;
}

@end