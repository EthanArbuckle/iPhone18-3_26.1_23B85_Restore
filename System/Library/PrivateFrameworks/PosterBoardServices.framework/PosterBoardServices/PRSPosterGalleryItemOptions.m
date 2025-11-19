@interface PRSPosterGalleryItemOptions
+ (id)itemOptionsWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (PRSPosterGalleryItemOptions)init;
- (PRSPosterGalleryItemOptions)initWithCoder:(id)a3;
- (PRSPosterGalleryItemOptions)initWithModularComplications:(id)a3 modularLandscapeComplications:(id)a4 inlineComplication:(id)a5 allowsSystemSuggestedComplications:(BOOL)a6 allowsSystemSuggestedComplicationsInLandscape:(BOOL)a7 featuredConfidenceLevel:(int64_t)a8 displayNameLocalizationKey:(id)a9 spokenNameLocalizationKey:(id)a10 descriptiveTextLocalizationKey:(id)a11 hero:(BOOL)a12 shouldShowAsShuffleStack:(BOOL)a13 photoSubtype:(int64_t)a14 focus:(int64_t)a15 onlyEligibleForMadeForFocusSection:(BOOL)a16;
- (PRSPosterGalleryItemOptions)initWithProactiveRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)proactiveRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSPosterGalleryItemOptions

- (PRSPosterGalleryItemOptions)init
{
  LOBYTE(v4) = 0;
  LOWORD(v3) = 0;
  return [(PRSPosterGalleryItemOptions *)self initWithModularComplications:0 modularLandscapeComplications:0 inlineComplication:0 allowsSystemSuggestedComplications:0 allowsSystemSuggestedComplicationsInLandscape:0 featuredConfidenceLevel:1 displayNameLocalizationKey:0 spokenNameLocalizationKey:0 descriptiveTextLocalizationKey:0 hero:v3 shouldShowAsShuffleStack:0 photoSubtype:0 focus:v4 onlyEligibleForMadeForFocusSection:?];
}

- (PRSPosterGalleryItemOptions)initWithModularComplications:(id)a3 modularLandscapeComplications:(id)a4 inlineComplication:(id)a5 allowsSystemSuggestedComplications:(BOOL)a6 allowsSystemSuggestedComplicationsInLandscape:(BOOL)a7 featuredConfidenceLevel:(int64_t)a8 displayNameLocalizationKey:(id)a9 spokenNameLocalizationKey:(id)a10 descriptiveTextLocalizationKey:(id)a11 hero:(BOOL)a12 shouldShowAsShuffleStack:(BOOL)a13 photoSubtype:(int64_t)a14 focus:(int64_t)a15 onlyEligibleForMadeForFocusSection:(BOOL)a16
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v42.receiver = self;
  v42.super_class = PRSPosterGalleryItemOptions;
  v27 = [(PRSPosterGalleryItemOptions *)&v42 init];
  if (v27)
  {
    v28 = [v21 copy];
    modularComplications = v27->_modularComplications;
    v27->_modularComplications = v28;

    v30 = [v22 copy];
    modularLandscapeComplications = v27->_modularLandscapeComplications;
    v27->_modularLandscapeComplications = v30;

    v32 = [v23 copy];
    inlineComplication = v27->_inlineComplication;
    v27->_inlineComplication = v32;

    v27->_allowsSystemSuggestedComplications = a6;
    v27->_allowsSystemSuggestedComplicationsInLandscape = a7;
    v27->_featuredConfidenceLevel = a8;
    v34 = [v24 copy];
    displayNameLocalizationKey = v27->_displayNameLocalizationKey;
    v27->_displayNameLocalizationKey = v34;

    v36 = [v25 copy];
    spokenNameLocalizationKey = v27->_spokenNameLocalizationKey;
    v27->_spokenNameLocalizationKey = v36;

    v38 = [v26 copy];
    descriptiveTextLocalizationKey = v27->_descriptiveTextLocalizationKey;
    v27->_descriptiveTextLocalizationKey = v38;

    v27->_hero = a12;
    v27->_shouldShowAsShuffleStack = a13;
    v27->_photoSubtype = a14;
    v27->_focus = a15;
    v27->_onlyEligibleForMadeForFocusSection = a16;
  }

  return v27;
}

- (PRSPosterGalleryItemOptions)initWithProactiveRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 modularComplications];
  v25 = [v4 bs_map:&__block_literal_global_2];

  v5 = [v3 modularLandscapeComplications];
  v23 = [v5 bs_map:&__block_literal_global_21];

  v24 = [v3 inlineComplication];
  v6 = [v24 posterBoardRepresentation];
  v22 = [v3 allowsSystemSuggestedComplications];
  v21 = [v3 allowsSystemSuggestedComplicationsInLandscape];
  v7 = [v3 featuredConfidenceLevel];
  v8 = [v3 displayNameLocalizationKey];
  v9 = [v3 spokenNameLocalizationKey];
  v10 = [v3 descriptiveTextLocalizationKey];
  v11 = [v3 isHero];
  v12 = [v3 shouldShowAsShuffleStack];
  v13 = [v3 photoSubtype];
  if ((v13 - 1) >= 8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v3 focus];
  if ((v15 - 1) >= 9)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  if (v7 != 2)
  {
    v7 = v7 == 1;
  }

  LOBYTE(v20) = [v3 isOnlyEligibleForMadeForFocusSection];
  BYTE1(v19) = v12;
  LOBYTE(v19) = v11;
  v17 = [(PRSPosterGalleryItemOptions *)self initWithModularComplications:v25 modularLandscapeComplications:v23 inlineComplication:v6 allowsSystemSuggestedComplications:v22 allowsSystemSuggestedComplicationsInLandscape:v21 featuredConfidenceLevel:v7 displayNameLocalizationKey:v8 spokenNameLocalizationKey:v9 descriptiveTextLocalizationKey:v10 hero:v19 shouldShowAsShuffleStack:v14 photoSubtype:v16 focus:v20 onlyEligibleForMadeForFocusSection:?];

  return v17;
}

- (id)proactiveRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E698AF20]) initWithPosterBoardRepresentation:self];

  return v2;
}

+ (id)itemOptionsWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v141 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = NSStringFromSelector(sel_modularComplications);
  v7 = [v5 objectForKey:v6];
  v8 = 0x1E695D000uLL;
  v9 = objc_opt_class();
  v10 = v7;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = 0x1E695D000uLL;
  v128 = v12;
  v129 = v5;
  if (v12)
  {
    v130 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v135 objects:v140 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v136;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v136 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v135 + 1) + 8 * i);
          v20 = objc_opt_class();
          v21 = v19;
          if (v20)
          {
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          if (v23)
          {
            v24 = [PRSPosterGallerySuggestedComplication suggestedComplicationWithDictionaryRepresentation:v23 error:a4];
            v25 = v24;
            if (a4 && *a4)
            {
              v33 = 0;
              v34 = v129;
              v35 = v14;
              goto LABEL_143;
            }

            if (v24)
            {
              [v130 addObject:v24];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v135 objects:v140 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v26 = [v130 copy];
    v130 = v26;
    v5 = v129;
    v8 = 0x1E695D000;
    v13 = 0x1E695D000;
  }

  else
  {
    v130 = 0;
  }

  v27 = NSStringFromSelector(sel_modularLandscapeComplications);
  v28 = [v5 objectForKey:v27];
  v29 = *(v8 + 3784);
  v30 = objc_opt_class();
  v31 = v28;
  if (v30)
  {
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v35 = v32;

  v127 = v35;
  if (v35)
  {
    v23 = objc_alloc_init(*(v13 + 3952));
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v25 = v35;
    v36 = [v25 countByEnumeratingWithState:&v131 objects:v139 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v132;
      while (2)
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v132 != v38)
          {
            objc_enumerationMutation(v25);
          }

          v40 = *(*(&v131 + 1) + 8 * j);
          v41 = objc_opt_class();
          v42 = v40;
          if (v41)
          {
            if (objc_opt_isKindOfClass())
            {
              v43 = v42;
            }

            else
            {
              v43 = 0;
            }
          }

          else
          {
            v43 = 0;
          }

          v44 = v43;

          if (v44)
          {
            v45 = [PRSPosterGallerySuggestedComplication suggestedComplicationWithDictionaryRepresentation:v44 error:a4];
            v46 = v45;
            if (a4 && *a4)
            {
              v33 = 0;
              v34 = v129;
              v35 = v127;
              goto LABEL_141;
            }

            if (v45)
            {
              [v23 addObject:v45];
            }
          }
        }

        v37 = [v25 countByEnumeratingWithState:&v131 objects:v139 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    v47 = [v23 copy];
    v23 = v47;
    v35 = v127;
  }

  else
  {
    v23 = 0;
  }

  v48 = NSStringFromSelector(sel_inlineComplication);
  v34 = v129;
  v49 = [v129 objectForKey:v48];
  v50 = objc_opt_class();
  v51 = v49;
  if (v50)
  {
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  v44 = v52;

  if (!v44)
  {
    v25 = 0;
LABEL_65:
    v53 = NSStringFromSelector(sel_allowsSystemSuggestedComplications);
    v54 = [v129 objectForKey:v53];
    v55 = objc_opt_class();
    v56 = v54;
    if (v55)
    {
      if (objc_opt_isKindOfClass())
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      v57 = 0;
    }

    v46 = v57;

    if (v46)
    {
      v125 = [v46 BOOLValue];
    }

    else
    {
      v125 = 0;
    }

    v58 = NSStringFromSelector(sel_allowsSystemSuggestedComplicationsInLandscape);
    v59 = [v129 objectForKey:v58];
    v60 = objc_opt_class();
    v61 = v59;
    if (v60)
    {
      if (objc_opt_isKindOfClass())
      {
        v62 = v61;
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v62 = 0;
    }

    v63 = v62;

    v124 = v63;
    if (v63)
    {
      v123 = [v63 BOOLValue];
    }

    else
    {
      v123 = 0;
    }

    v64 = NSStringFromSelector(sel_featuredConfidenceLevel);
    v65 = [v129 objectForKey:v64];
    v66 = objc_opt_class();
    v67 = v65;
    if (v66)
    {
      if (objc_opt_isKindOfClass())
      {
        v68 = v67;
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v68 = 0;
    }

    v69 = v68;

    v122 = v69;
    if (v69)
    {
      v121 = [v69 integerValue];
    }

    else
    {
      v121 = 0;
    }

    v70 = NSStringFromSelector(sel_displayNameLocalizationKey);
    v71 = [v129 objectForKey:v70];
    v72 = objc_opt_class();
    v73 = v71;
    if (v72)
    {
      if (objc_opt_isKindOfClass())
      {
        v74 = v73;
      }

      else
      {
        v74 = 0;
      }
    }

    else
    {
      v74 = 0;
    }

    v120 = v74;

    v75 = [v129 objectForKey:@"hero"];
    v76 = objc_opt_class();
    v77 = v75;
    if (v76)
    {
      if (objc_opt_isKindOfClass())
      {
        v78 = v77;
      }

      else
      {
        v78 = 0;
      }
    }

    else
    {
      v78 = 0;
    }

    v79 = v78;

    if (v79)
    {
      v80 = v79;
    }

    else
    {
      v81 = [v129 objectForKey:@"blankTemplate"];
      v82 = objc_opt_class();
      v83 = v81;
      if (v82)
      {
        if (objc_opt_isKindOfClass())
        {
          v84 = v83;
        }

        else
        {
          v84 = 0;
        }
      }

      else
      {
        v84 = 0;
      }

      v85 = v84;

      v80 = v85;
      if (!v80)
      {
        v119 = 0;
LABEL_108:
        v86 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
        v87 = [v129 objectForKey:v86];
        v88 = objc_opt_class();
        v89 = v87;
        if (v88)
        {
          if (objc_opt_isKindOfClass())
          {
            v90 = v89;
          }

          else
          {
            v90 = 0;
          }
        }

        else
        {
          v90 = 0;
        }

        v91 = v90;

        v118 = v91;
        if (v91)
        {
          v117 = [v91 BOOLValue];
        }

        else
        {
          v117 = 0;
        }

        v92 = NSStringFromSelector(sel_photoSubtype);
        v93 = [v129 objectForKey:v92];
        v94 = objc_opt_class();
        v95 = v93;
        if (v94)
        {
          if (objc_opt_isKindOfClass())
          {
            v96 = v95;
          }

          else
          {
            v96 = 0;
          }
        }

        else
        {
          v96 = 0;
        }

        v97 = v96;

        if (v97)
        {
          v115 = [v97 integerValue];
        }

        else
        {
          v115 = 0;
        }

        v98 = NSStringFromSelector(sel_focus);
        v99 = [v129 objectForKey:v98];
        v100 = objc_opt_class();
        v101 = v99;
        if (v100)
        {
          if (objc_opt_isKindOfClass())
          {
            v102 = v101;
          }

          else
          {
            v102 = 0;
          }
        }

        else
        {
          v102 = 0;
        }

        v103 = v102;

        v116 = v97;
        if (v103)
        {
          v104 = [v103 integerValue];
        }

        else
        {
          v104 = 0;
        }

        v105 = [v129 objectForKey:@"onlyEligibleForMadeForFocusSection"];
        v106 = objc_opt_class();
        v107 = v105;
        if (v106)
        {
          if (objc_opt_isKindOfClass())
          {
            v108 = v107;
          }

          else
          {
            v108 = 0;
          }
        }

        else
        {
          v108 = 0;
        }

        v35 = v127;
        v109 = v108;

        if (v109)
        {
          v110 = [v109 BOOLValue];
        }

        else
        {
          v110 = 0;
        }

        LOBYTE(v114) = v110;
        BYTE1(v113) = v117;
        LOBYTE(v113) = v119;
        v33 = [[a1 alloc] initWithModularComplications:v130 modularLandscapeComplications:v23 inlineComplication:v25 allowsSystemSuggestedComplications:v125 allowsSystemSuggestedComplicationsInLandscape:v123 featuredConfidenceLevel:v121 displayNameLocalizationKey:v120 spokenNameLocalizationKey:0 descriptiveTextLocalizationKey:0 hero:v113 shouldShowAsShuffleStack:v115 photoSubtype:v104 focus:v114 onlyEligibleForMadeForFocusSection:?];

LABEL_141:
        goto LABEL_142;
      }
    }

    v119 = [v80 BOOLValue];

    goto LABEL_108;
  }

  v25 = [PRSPosterGallerySuggestedComplication suggestedComplicationWithDictionaryRepresentation:v44 error:a4];
  if (!a4 || !*a4)
  {
    goto LABEL_65;
  }

  v33 = 0;
LABEL_142:

LABEL_143:
  v111 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)dictionaryRepresentation
{
  v36[12] = *MEMORY[0x1E69E9840];
  v34 = NSStringFromSelector(sel_modularComplications);
  v35[0] = v34;
  v3 = [(NSArray *)self->_modularComplications bs_map:&__block_literal_global_50];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v36[0] = v3;
  v32 = NSStringFromSelector(sel_modularLandscapeComplications);
  v35[1] = v32;
  v5 = [(NSArray *)self->_modularLandscapeComplications bs_map:&__block_literal_global_53];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v6;
  v33 = v4;
  v21 = v5;
  v36[1] = v5;
  v30 = NSStringFromSelector(sel_inlineComplication);
  v35[2] = v30;
  inlineComplication = self->_inlineComplication;
  v29 = inlineComplication;
  if (!inlineComplication)
  {
    inlineComplication = [MEMORY[0x1E695DFB0] null];
  }

  v20 = inlineComplication;
  v36[2] = inlineComplication;
  v28 = NSStringFromSelector(sel_allowsSystemSuggestedComplications);
  v35[3] = v28;
  v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsSystemSuggestedComplications];
  v36[3] = v27;
  v26 = NSStringFromSelector(sel_allowsSystemSuggestedComplicationsInLandscape);
  v35[4] = v26;
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsSystemSuggestedComplicationsInLandscape];
  v36[4] = v25;
  v24 = NSStringFromSelector(sel_featuredConfidenceLevel);
  v35[5] = v24;
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:self->_featuredConfidenceLevel];
  v36[5] = v23;
  v8 = NSStringFromSelector(sel_displayNameLocalizationKey);
  v36[6] = self->_displayNameLocalizationKey;
  v35[6] = v8;
  v35[7] = @"hero";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hero];
  v36[7] = v9;
  v10 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  v35[8] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldShowAsShuffleStack];
  v36[8] = v11;
  v12 = NSStringFromSelector(sel_photoSubtype);
  v35[9] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_photoSubtype];
  v36[9] = v13;
  v14 = NSStringFromSelector(sel_focus);
  v35[10] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_focus];
  v36[10] = v15;
  v35[11] = @"onlyEligibleForMadeForFocusSection";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_onlyEligibleForMadeForFocusSection];
  v36[11] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:12];

  if (!v29)
  {
  }

  if (!v31)
  {
  }

  if (!v33)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOBYTE(v7) = self->_onlyEligibleForMadeForFocusSection;
  LOWORD(v6) = *&self->_hero;
  return [v4 initWithModularComplications:self->_modularComplications modularLandscapeComplications:self->_modularLandscapeComplications inlineComplication:self->_inlineComplication allowsSystemSuggestedComplications:self->_allowsSystemSuggestedComplications allowsSystemSuggestedComplicationsInLandscape:self->_allowsSystemSuggestedComplicationsInLandscape featuredConfidenceLevel:self->_featuredConfidenceLevel displayNameLocalizationKey:self->_displayNameLocalizationKey spokenNameLocalizationKey:self->_spokenNameLocalizationKey descriptiveTextLocalizationKey:self->_descriptiveTextLocalizationKey hero:v6 shouldShowAsShuffleStack:self->_photoSubtype photoSubtype:self->_focus focus:v7 onlyEligibleForMadeForFocusSection:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9)
    {
      v10 = [MEMORY[0x1E698E6A0] builder];
      modularComplications = self->_modularComplications;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke;
      v82[3] = &unk_1E818CD58;
      v12 = v9;
      v83 = v12;
      v13 = [v10 appendObject:modularComplications counterpart:v82];
      modularLandscapeComplications = self->_modularLandscapeComplications;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_2;
      v80[3] = &unk_1E818CD58;
      v15 = v12;
      v81 = v15;
      v16 = [v10 appendObject:modularLandscapeComplications counterpart:v80];
      inlineComplication = self->_inlineComplication;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_3;
      v78[3] = &unk_1E818CD58;
      v18 = v15;
      v79 = v18;
      v19 = [v10 appendObject:inlineComplication counterpart:v78];
      allowsSystemSuggestedComplications = self->_allowsSystemSuggestedComplications;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_4;
      v76[3] = &unk_1E818CD80;
      v21 = v18;
      v77 = v21;
      v22 = [v10 appendBool:allowsSystemSuggestedComplications counterpart:v76];
      allowsSystemSuggestedComplicationsInLandscape = self->_allowsSystemSuggestedComplicationsInLandscape;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_5;
      v74[3] = &unk_1E818CD80;
      v24 = v21;
      v75 = v24;
      v25 = [v10 appendBool:allowsSystemSuggestedComplicationsInLandscape counterpart:v74];
      featuredConfidenceLevel = self->_featuredConfidenceLevel;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_6;
      v72[3] = &unk_1E818CDA8;
      v27 = v24;
      v73 = v27;
      v28 = [v10 appendInteger:featuredConfidenceLevel counterpart:v72];
      displayNameLocalizationKey = self->_displayNameLocalizationKey;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_7;
      v70[3] = &unk_1E818CD58;
      v30 = v27;
      v71 = v30;
      v31 = [v10 appendObject:displayNameLocalizationKey counterpart:v70];
      spokenNameLocalizationKey = self->_spokenNameLocalizationKey;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_8;
      v68[3] = &unk_1E818CD58;
      v33 = v30;
      v69 = v33;
      v34 = [v10 appendObject:spokenNameLocalizationKey counterpart:v68];
      descriptiveTextLocalizationKey = self->_descriptiveTextLocalizationKey;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_9;
      v66[3] = &unk_1E818CD58;
      v36 = v33;
      v67 = v36;
      v37 = [v10 appendObject:descriptiveTextLocalizationKey counterpart:v66];
      hero = self->_hero;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_10;
      v64[3] = &unk_1E818CD80;
      v39 = v36;
      v65 = v39;
      v40 = [v10 appendBool:hero counterpart:v64];
      shouldShowAsShuffleStack = self->_shouldShowAsShuffleStack;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_11;
      v62[3] = &unk_1E818CD80;
      v42 = v39;
      v63 = v42;
      v43 = [v10 appendBool:shouldShowAsShuffleStack counterpart:v62];
      photoSubtype = self->_photoSubtype;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_12;
      v60[3] = &unk_1E818CDA8;
      v45 = v42;
      v61 = v45;
      v46 = [v10 appendInteger:photoSubtype counterpart:v60];
      focus = self->_focus;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_13;
      v58[3] = &unk_1E818CDA8;
      v48 = v45;
      v59 = v48;
      v49 = [v10 appendInteger:focus counterpart:v58];
      onlyEligibleForMadeForFocusSection = self->_onlyEligibleForMadeForFocusSection;
      v53 = MEMORY[0x1E69E9820];
      v54 = 3221225472;
      v55 = __39__PRSPosterGalleryItemOptions_isEqual___block_invoke_14;
      v56 = &unk_1E818CD80;
      v57 = v48;
      v51 = [v10 appendBool:onlyEligibleForMadeForFocusSection counterpart:&v53];
      v8 = [v10 isEqual];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E6B8] builder];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = self->_modularComplications;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 appendObject:*(*(&v35 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = self->_modularLandscapeComplications;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v3 appendObject:{*(*(&v31 + 1) + 8 * v14++), v31}];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v12);
  }

  v16 = [v3 appendObject:self->_inlineComplication];
  v17 = [v3 appendBool:self->_allowsSystemSuggestedComplications];
  v18 = [v3 appendBool:self->_allowsSystemSuggestedComplicationsInLandscape];
  v19 = [v3 appendInteger:self->_featuredConfidenceLevel];
  v20 = [v3 appendObject:self->_displayNameLocalizationKey];
  v21 = [v3 appendObject:self->_spokenNameLocalizationKey];
  v22 = [v3 appendObject:self->_descriptiveTextLocalizationKey];
  v23 = [v3 appendBool:self->_hero];
  v24 = [v3 appendBool:self->_shouldShowAsShuffleStack];
  v25 = [v3 appendInteger:self->_photoSubtype];
  v26 = [v3 appendInteger:self->_focus];
  v27 = [v3 appendBool:self->_onlyEligibleForMadeForFocusSection];
  v28 = [v3 hash];

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (PRSPosterGalleryItemOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_modularComplications);
  v38 = [v3 decodeArrayOfObjectsOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_modularLandscapeComplications);
  v37 = [v3 decodeArrayOfObjectsOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_inlineComplication);
  v36 = [v3 decodeObjectOfClass:v8 forKey:v9];

  v10 = NSStringFromSelector(sel_allowsSystemSuggestedComplications);
  v35 = [v3 decodeBoolForKey:v10];

  v11 = NSStringFromSelector(sel_allowsSystemSuggestedComplicationsInLandscape);
  v34 = [v3 decodeBoolForKey:v11];

  v12 = NSStringFromSelector(sel_featuredConfidenceLevel);
  v33 = [v3 decodeIntegerForKey:v12];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_displayNameLocalizationKey);
  v15 = [v3 decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_spokenNameLocalizationKey);
  v18 = [v3 decodeObjectOfClass:v16 forKey:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_descriptiveTextLocalizationKey);
  v21 = [v3 decodeObjectOfClass:v19 forKey:v20];

  v22 = NSStringFromSelector(sel_isHero);
  LOBYTE(v20) = [v3 decodeBoolForKey:v22];

  v23 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  LOBYTE(v22) = [v3 decodeBoolForKey:v23];

  v24 = NSStringFromSelector(sel_photoSubtype);
  v25 = [v3 decodeIntegerForKey:v24];

  v26 = NSStringFromSelector(sel_focus);
  v27 = [v3 decodeIntegerForKey:v26];

  v28 = NSStringFromSelector(sel_isOnlyEligibleForMadeForFocusSection);
  LOBYTE(v7) = [v3 decodeBoolForKey:v28];

  LOBYTE(v32) = v7;
  BYTE1(v31) = v22;
  LOBYTE(v31) = v20;
  v29 = [(PRSPosterGalleryItemOptions *)self initWithModularComplications:v38 modularLandscapeComplications:v37 inlineComplication:v36 allowsSystemSuggestedComplications:v35 allowsSystemSuggestedComplicationsInLandscape:v34 featuredConfidenceLevel:v33 displayNameLocalizationKey:v15 spokenNameLocalizationKey:v18 descriptiveTextLocalizationKey:v21 hero:v31 shouldShowAsShuffleStack:v25 photoSubtype:v27 focus:v32 onlyEligibleForMadeForFocusSection:?];

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  modularComplications = self->_modularComplications;
  v5 = a3;
  v6 = NSStringFromSelector(sel_modularComplications);
  [v5 encodeObject:modularComplications forKey:v6];

  modularLandscapeComplications = self->_modularLandscapeComplications;
  v8 = NSStringFromSelector(sel_modularLandscapeComplications);
  [v5 encodeObject:modularLandscapeComplications forKey:v8];

  inlineComplication = self->_inlineComplication;
  v10 = NSStringFromSelector(sel_inlineComplication);
  [v5 encodeObject:inlineComplication forKey:v10];

  allowsSystemSuggestedComplications = self->_allowsSystemSuggestedComplications;
  v12 = NSStringFromSelector(sel_allowsSystemSuggestedComplications);
  [v5 encodeBool:allowsSystemSuggestedComplications forKey:v12];

  allowsSystemSuggestedComplicationsInLandscape = self->_allowsSystemSuggestedComplicationsInLandscape;
  v14 = NSStringFromSelector(sel_allowsSystemSuggestedComplicationsInLandscape);
  [v5 encodeBool:allowsSystemSuggestedComplicationsInLandscape forKey:v14];

  featuredConfidenceLevel = self->_featuredConfidenceLevel;
  v16 = NSStringFromSelector(sel_featuredConfidenceLevel);
  [v5 encodeInteger:featuredConfidenceLevel forKey:v16];

  displayNameLocalizationKey = self->_displayNameLocalizationKey;
  v18 = NSStringFromSelector(sel_displayNameLocalizationKey);
  [v5 encodeObject:displayNameLocalizationKey forKey:v18];

  spokenNameLocalizationKey = self->_spokenNameLocalizationKey;
  v20 = NSStringFromSelector(sel_spokenNameLocalizationKey);
  [v5 encodeObject:spokenNameLocalizationKey forKey:v20];

  descriptiveTextLocalizationKey = self->_descriptiveTextLocalizationKey;
  v22 = NSStringFromSelector(sel_descriptiveTextLocalizationKey);
  [v5 encodeObject:descriptiveTextLocalizationKey forKey:v22];

  hero = self->_hero;
  v24 = NSStringFromSelector(sel_isHero);
  [v5 encodeBool:hero forKey:v24];

  shouldShowAsShuffleStack = self->_shouldShowAsShuffleStack;
  v26 = NSStringFromSelector(sel_shouldShowAsShuffleStack);
  [v5 encodeBool:shouldShowAsShuffleStack forKey:v26];

  photoSubtype = self->_photoSubtype;
  v28 = NSStringFromSelector(sel_photoSubtype);
  [v5 encodeInteger:photoSubtype forKey:v28];

  focus = self->_focus;
  v30 = NSStringFromSelector(sel_focus);
  [v5 encodeInteger:focus forKey:v30];

  onlyEligibleForMadeForFocusSection = self->_onlyEligibleForMadeForFocusSection;
  v32 = NSStringFromSelector(sel_isOnlyEligibleForMadeForFocusSection);
  [v5 encodeBool:onlyEligibleForMadeForFocusSection forKey:v32];
}

@end