@interface _SFPBRichTitleCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRichTitleCardSection)initWithDictionary:(id)a3;
- (_SFPBRichTitleCardSection)initWithFacade:(id)a3;
- (_SFPBRichTitleCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addButtonItems:(id)a3;
- (void)addMoreGlyphs:(id)a3;
- (void)addOffers:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setAuxiliaryBottomText:(id)a3;
- (void)setAuxiliaryMiddleText:(id)a3;
- (void)setAuxiliaryTopText:(id)a3;
- (void)setButtonItems:(id)a3;
- (void)setContentAdvisory:(id)a3;
- (void)setDescriptionText:(id)a3;
- (void)setFootnote:(id)a3;
- (void)setMoreGlyphs:(id)a3;
- (void)setOffers:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setRatingText:(id)a3;
- (void)setReviewText:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRichTitleCardSection

- (_SFPBRichTitleCardSection)initWithFacade:(id)a3
{
  v119 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRichTitleCardSection *)self init];

  if (v5)
  {
    v6 = [v4 punchoutOptions];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v111 objects:v118 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v112;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v112 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v111 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v111 objects:v118 count:16];
      }

      while (v10);
    }

    [(_SFPBRichTitleCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBRichTitleCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBRichTitleCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBRichTitleCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBRichTitleCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBRichTitleCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBRichTitleCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBRichTitleCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBRichTitleCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [v4 title];
      [(_SFPBRichTitleCardSection *)v5 setTitle:v25];
    }

    v26 = [v4 subtitle];

    if (v26)
    {
      v27 = [v4 subtitle];
      [(_SFPBRichTitleCardSection *)v5 setSubtitle:v27];
    }

    v28 = [v4 contentAdvisory];

    if (v28)
    {
      v29 = [v4 contentAdvisory];
      [(_SFPBRichTitleCardSection *)v5 setContentAdvisory:v29];
    }

    v30 = [v4 titleImage];

    if (v30)
    {
      v31 = [_SFPBImage alloc];
      v32 = [v4 titleImage];
      v33 = [(_SFPBImage *)v31 initWithFacade:v32];
      [(_SFPBRichTitleCardSection *)v5 setTitleImage:v33];
    }

    if ([v4 hasIsCentered])
    {
      -[_SFPBRichTitleCardSection setIsCentered:](v5, "setIsCentered:", [v4 isCentered]);
    }

    v34 = [v4 descriptionText];

    if (v34)
    {
      v35 = [v4 descriptionText];
      [(_SFPBRichTitleCardSection *)v5 setDescriptionText:v35];
    }

    v36 = [v4 rating];

    if (v36)
    {
      v37 = [v4 rating];
      [v37 floatValue];
      [(_SFPBRichTitleCardSection *)v5 setRating:?];
    }

    v38 = [v4 ratingText];

    if (v38)
    {
      v39 = [v4 ratingText];
      [(_SFPBRichTitleCardSection *)v5 setRatingText:v39];
    }

    v40 = [v4 reviewGlyph];

    if (v40)
    {
      v41 = [_SFPBImage alloc];
      v42 = [v4 reviewGlyph];
      v43 = [(_SFPBImage *)v41 initWithFacade:v42];
      [(_SFPBRichTitleCardSection *)v5 setReviewGlyph:v43];
    }

    v44 = [v4 reviewText];

    if (v44)
    {
      v45 = [v4 reviewText];
      [(_SFPBRichTitleCardSection *)v5 setReviewText:v45];
    }

    if ([v4 hasReviewNewLine])
    {
      -[_SFPBRichTitleCardSection setReviewNewLine:](v5, "setReviewNewLine:", [v4 reviewNewLine]);
    }

    v46 = [v4 moreGlyphs];
    if (v46)
    {
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v47 = 0;
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v48 = [v4 moreGlyphs];
    v49 = [v48 countByEnumeratingWithState:&v107 objects:v117 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v108;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v108 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [[_SFPBImage alloc] initWithFacade:*(*(&v107 + 1) + 8 * j)];
          if (v53)
          {
            [v47 addObject:v53];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v107 objects:v117 count:16];
      }

      while (v50);
    }

    [(_SFPBRichTitleCardSection *)v5 setMoreGlyphs:v47];
    v54 = [v4 auxiliaryTopText];

    if (v54)
    {
      v55 = [v4 auxiliaryTopText];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryTopText:v55];
    }

    v56 = [v4 auxiliaryMiddleText];

    if (v56)
    {
      v57 = [v4 auxiliaryMiddleText];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryMiddleText:v57];
    }

    v58 = [v4 auxiliaryBottomText];

    if (v58)
    {
      v59 = [v4 auxiliaryBottomText];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryBottomText:v59];
    }

    if ([v4 hasAuxiliaryBottomTextColor])
    {
      -[_SFPBRichTitleCardSection setAuxiliaryBottomTextColor:](v5, "setAuxiliaryBottomTextColor:", [v4 auxiliaryBottomTextColor]);
    }

    v60 = [v4 auxiliaryAlignment];

    if (v60)
    {
      v61 = [v4 auxiliaryAlignment];
      -[_SFPBRichTitleCardSection setAuxiliaryAlignment:](v5, "setAuxiliaryAlignment:", [v61 intValue]);
    }

    if ([v4 hasHideVerticalDivider])
    {
      -[_SFPBRichTitleCardSection setHideVerticalDivider:](v5, "setHideVerticalDivider:", [v4 hideVerticalDivider]);
    }

    if ([v4 hasTitleAlign])
    {
      -[_SFPBRichTitleCardSection setTitleAlign:](v5, "setTitleAlign:", [v4 titleAlign]);
    }

    v62 = [v4 titleWeight];

    if (v62)
    {
      v63 = [v4 titleWeight];
      -[_SFPBRichTitleCardSection setTitleWeight:](v5, "setTitleWeight:", [v63 intValue]);
    }

    if ([v4 hasTitleNoWrap])
    {
      -[_SFPBRichTitleCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [v4 titleNoWrap]);
    }

    if ([v4 hasThumbnailCropCircle])
    {
      -[_SFPBRichTitleCardSection setThumbnailCropCircle:](v5, "setThumbnailCropCircle:", [v4 thumbnailCropCircle]);
    }

    v64 = [v4 imageOverlay];

    if (v64)
    {
      v65 = [_SFPBImage alloc];
      v66 = [v4 imageOverlay];
      v67 = [(_SFPBImage *)v65 initWithFacade:v66];
      [(_SFPBRichTitleCardSection *)v5 setImageOverlay:v67];
    }

    v68 = [v4 playAction];

    if (v68)
    {
      v69 = [_SFPBActionItem alloc];
      v70 = [v4 playAction];
      v71 = [(_SFPBActionItem *)v69 initWithFacade:v70];
      [(_SFPBRichTitleCardSection *)v5 setPlayAction:v71];
    }

    if ([v4 hasPlayActionAlign])
    {
      -[_SFPBRichTitleCardSection setPlayActionAlign:](v5, "setPlayActionAlign:", [v4 playActionAlign]);
    }

    v72 = [v4 offers];
    if (v72)
    {
      v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v73 = 0;
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v98 = v4;
    v74 = [v4 offers];
    v75 = [v74 countByEnumeratingWithState:&v103 objects:v116 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v104;
      do
      {
        for (k = 0; k != v76; ++k)
        {
          if (*v104 != v77)
          {
            objc_enumerationMutation(v74);
          }

          v79 = [[_SFPBMediaOffer alloc] initWithFacade:*(*(&v103 + 1) + 8 * k)];
          if (v79)
          {
            [v73 addObject:v79];
          }
        }

        v76 = [v74 countByEnumeratingWithState:&v103 objects:v116 count:16];
      }

      while (v76);
    }

    [(_SFPBRichTitleCardSection *)v5 setOffers:v73];
    v80 = [v4 footnote];

    if (v80)
    {
      v81 = [v4 footnote];
      [(_SFPBRichTitleCardSection *)v5 setFootnote:v81];
    }

    v82 = [v4 richSubtitle];

    if (v82)
    {
      v83 = [_SFPBRichText alloc];
      v84 = [v4 richSubtitle];
      v85 = [(_SFPBRichText *)v83 initWithFacade:v84];
      [(_SFPBRichTitleCardSection *)v5 setRichSubtitle:v85];
    }

    if ([v4 hasSubtitleIsEmphasized])
    {
      -[_SFPBRichTitleCardSection setSubtitleIsEmphasized:](v5, "setSubtitleIsEmphasized:", [v4 subtitleIsEmphasized]);
    }

    v86 = [v4 buttonItems];
    v97 = v5;
    if (v86)
    {
      v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v87 = 0;
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v88 = [v4 buttonItems];
    v89 = [v88 countByEnumeratingWithState:&v99 objects:v115 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v100;
      do
      {
        for (m = 0; m != v90; ++m)
        {
          if (*v100 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v99 + 1) + 8 * m)];
          if (v93)
          {
            [v87 addObject:v93];
          }
        }

        v90 = [v88 countByEnumeratingWithState:&v99 objects:v115 count:16];
      }

      while (v90);
    }

    v5 = v97;
    [(_SFPBRichTitleCardSection *)v97 setButtonItems:v87];
    v94 = v97;

    v4 = v98;
  }

  v95 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRichTitleCardSection)initWithDictionary:(id)a3
{
  v155 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v150.receiver = self;
  v150.super_class = _SFPBRichTitleCardSection;
  v5 = [(_SFPBRichTitleCardSection *)&v150 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v133 = v6;
    if (objc_opt_isKindOfClass())
    {
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v146 objects:v154 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v147;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v147 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v146 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBRichTitleCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v146 objects:v154 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBRichTitleCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v103 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBRichTitleCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v102 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v132 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v131 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v130 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v129 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBRichTitleCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v128 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v127 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBRichTitleCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v126 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBRichTitleCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v125 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBRichTitleCardSection *)v5 setSubtitle:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"contentAdvisory"];
    objc_opt_class();
    v124 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBRichTitleCardSection *)v5 setContentAdvisory:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"titleImage"];
    objc_opt_class();
    v123 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBImage alloc] initWithDictionary:v32];
      [(_SFPBRichTitleCardSection *)v5 setTitleImage:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"isCentered"];
    objc_opt_class();
    v122 = v34;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setIsCentered:](v5, "setIsCentered:", [v34 BOOLValue]);
    }

    v35 = [v4 objectForKeyedSubscript:@"descriptionText"];
    objc_opt_class();
    v121 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(_SFPBRichTitleCardSection *)v5 setDescriptionText:v36];
    }

    v37 = [v4 objectForKeyedSubscript:@"rating"];
    objc_opt_class();
    v120 = v37;
    if (objc_opt_isKindOfClass())
    {
      [v37 floatValue];
      [(_SFPBRichTitleCardSection *)v5 setRating:?];
    }

    v38 = [v4 objectForKeyedSubscript:@"ratingText"];
    objc_opt_class();
    v119 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 copy];
      [(_SFPBRichTitleCardSection *)v5 setRatingText:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"reviewGlyph"];
    objc_opt_class();
    v118 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBImage alloc] initWithDictionary:v40];
      [(_SFPBRichTitleCardSection *)v5 setReviewGlyph:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"reviewText"];
    objc_opt_class();
    v117 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [v42 copy];
      [(_SFPBRichTitleCardSection *)v5 setReviewText:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"reviewNewLine"];
    objc_opt_class();
    v116 = v44;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setReviewNewLine:](v5, "setReviewNewLine:", [v44 BOOLValue]);
    }

    v45 = [v4 objectForKeyedSubscript:@"moreGlyphs"];
    objc_opt_class();
    v115 = v45;
    if (objc_opt_isKindOfClass())
    {
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v46 = v45;
      v47 = [v46 countByEnumeratingWithState:&v142 objects:v153 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v143;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v143 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v142 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v52 = [[_SFPBImage alloc] initWithDictionary:v51];
              [(_SFPBRichTitleCardSection *)v5 addMoreGlyphs:v52];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v142 objects:v153 count:16];
        }

        while (v48);
      }
    }

    v53 = [v4 objectForKeyedSubscript:@"auxiliaryTopText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [v53 copy];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryTopText:v54];
    }

    v55 = [v4 objectForKeyedSubscript:@"auxiliaryMiddleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [v55 copy];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryMiddleText:v56];
    }

    v57 = [v4 objectForKeyedSubscript:@"auxiliaryBottomText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [v57 copy];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryBottomText:v58];
    }

    v59 = [v4 objectForKeyedSubscript:@"auxiliaryBottomTextColor"];
    objc_opt_class();
    v114 = v59;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setAuxiliaryBottomTextColor:](v5, "setAuxiliaryBottomTextColor:", [v59 intValue]);
    }

    v60 = [v4 objectForKeyedSubscript:@"auxiliaryAlignment"];
    objc_opt_class();
    v113 = v60;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setAuxiliaryAlignment:](v5, "setAuxiliaryAlignment:", [v60 intValue]);
    }

    v61 = [v4 objectForKeyedSubscript:@"hideVerticalDivider"];
    objc_opt_class();
    v112 = v61;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setHideVerticalDivider:](v5, "setHideVerticalDivider:", [v61 BOOLValue]);
    }

    v62 = [v4 objectForKeyedSubscript:@"titleAlign"];
    objc_opt_class();
    v111 = v62;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setTitleAlign:](v5, "setTitleAlign:", [v62 intValue]);
    }

    v63 = [v4 objectForKeyedSubscript:@"titleWeight"];
    objc_opt_class();
    v110 = v63;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setTitleWeight:](v5, "setTitleWeight:", [v63 intValue]);
    }

    v64 = [v4 objectForKeyedSubscript:@"titleNoWrap"];
    objc_opt_class();
    v109 = v64;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [v64 BOOLValue]);
    }

    v65 = [v4 objectForKeyedSubscript:@"thumbnailCropCircle"];
    objc_opt_class();
    v108 = v65;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setThumbnailCropCircle:](v5, "setThumbnailCropCircle:", [v65 BOOLValue]);
    }

    v66 = [v4 objectForKeyedSubscript:@"imageOverlay"];
    objc_opt_class();
    v107 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[_SFPBImage alloc] initWithDictionary:v66];
      [(_SFPBRichTitleCardSection *)v5 setImageOverlay:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"playAction"];
    objc_opt_class();
    v106 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBActionItem alloc] initWithDictionary:v68];
      [(_SFPBRichTitleCardSection *)v5 setPlayAction:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"playActionAlign"];
    objc_opt_class();
    v105 = v70;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setPlayActionAlign:](v5, "setPlayActionAlign:", [v70 intValue]);
    }

    v71 = [v4 objectForKeyedSubscript:@"offers"];
    objc_opt_class();
    v104 = v71;
    v100 = v55;
    v101 = v53;
    v99 = v57;
    if (objc_opt_isKindOfClass())
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v72 = v71;
      v73 = [v72 countByEnumeratingWithState:&v138 objects:v152 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v139;
        do
        {
          for (k = 0; k != v74; ++k)
          {
            if (*v139 != v75)
            {
              objc_enumerationMutation(v72);
            }

            v77 = *(*(&v138 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v78 = [[_SFPBMediaOffer alloc] initWithDictionary:v77];
              [(_SFPBRichTitleCardSection *)v5 addOffers:v78];
            }
          }

          v74 = [v72 countByEnumeratingWithState:&v138 objects:v152 count:16];
        }

        while (v74);
      }

      v55 = v100;
      v53 = v101;
      v57 = v99;
    }

    v79 = [v4 objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v80 = [v79 copy];
      [(_SFPBRichTitleCardSection *)v5 setFootnote:v80];
    }

    v98 = v79;
    v81 = [v4 objectForKeyedSubscript:@"richSubtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = v81;
      v83 = [[_SFPBRichText alloc] initWithDictionary:v81];
      [(_SFPBRichTitleCardSection *)v5 setRichSubtitle:v83];

      v81 = v82;
    }

    v84 = [v4 objectForKeyedSubscript:@"subtitleIsEmphasized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setSubtitleIsEmphasized:](v5, "setSubtitleIsEmphasized:", [v84 BOOLValue]);
    }

    v85 = [v4 objectForKeyedSubscript:@"buttonItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v96 = v84;
      v97 = v81;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v86 = v85;
      v87 = [v86 countByEnumeratingWithState:&v134 objects:v151 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v135;
        do
        {
          for (m = 0; m != v88; ++m)
          {
            if (*v135 != v89)
            {
              objc_enumerationMutation(v86);
            }

            v91 = *(*(&v134 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v92 = [[_SFPBButtonItem alloc] initWithDictionary:v91];
              [(_SFPBRichTitleCardSection *)v5 addButtonItems:v92];
            }
          }

          v88 = [v86 countByEnumeratingWithState:&v134 objects:v151 count:16];
        }

        while (v88);
      }

      v55 = v100;
      v53 = v101;
      v57 = v99;
      v84 = v96;
      v81 = v97;
    }

    v93 = v5;
  }

  v94 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRichTitleCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRichTitleCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRichTitleCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v125 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = 0x1E696A000uLL;
  if (self->_auxiliaryAlignment)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRichTitleCardSection auxiliaryAlignment](self, "auxiliaryAlignment")}];
    [v3 setObject:v5 forKeyedSubscript:@"auxiliaryAlignment"];
  }

  if (self->_auxiliaryBottomText)
  {
    v6 = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"auxiliaryBottomText"];
  }

  if (self->_auxiliaryBottomTextColor)
  {
    v8 = [(_SFPBRichTitleCardSection *)self auxiliaryBottomTextColor];
    if (v8 >= 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7ACE470[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"auxiliaryBottomTextColor"];
  }

  if (self->_auxiliaryMiddleText)
  {
    v10 = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"auxiliaryMiddleText"];
  }

  if (self->_auxiliaryTopText)
  {
    v12 = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"auxiliaryTopText"];
  }

  if (self->_backgroundColor)
  {
    v14 = [(_SFPBRichTitleCardSection *)self backgroundColor];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if ([(NSArray *)self->_buttonItems count])
  {
    v17 = [MEMORY[0x1E695DF70] array];
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v18 = self->_buttonItems;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v117 objects:v124 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v118;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v118 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v117 + 1) + 8 * i) dictionaryRepresentation];
          if (v23)
          {
            [v17 addObject:v23];
          }

          else
          {
            v24 = [MEMORY[0x1E695DFB0] null];
            [v17 addObject:v24];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v117 objects:v124 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"buttonItems"];
    v4 = 0x1E696A000uLL;
  }

  if (self->_canBeHidden)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v25 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_contentAdvisory)
  {
    v26 = [(_SFPBRichTitleCardSection *)self contentAdvisory];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"contentAdvisory"];
  }

  if (self->_descriptionText)
  {
    v28 = [(_SFPBRichTitleCardSection *)self descriptionText];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"descriptionText"];
  }

  if (self->_footnote)
  {
    v30 = [(_SFPBRichTitleCardSection *)self footnote];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"footnote"];
  }

  if (self->_hasBottomPadding)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v32 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v33 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_hideVerticalDivider)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection hideVerticalDivider](self, "hideVerticalDivider")}];
    [v3 setObject:v34 forKeyedSubscript:@"hideVerticalDivider"];
  }

  if (self->_imageOverlay)
  {
    v35 = [(_SFPBRichTitleCardSection *)self imageOverlay];
    v36 = [v35 dictionaryRepresentation];
    if (v36)
    {
      [v3 setObject:v36 forKeyedSubscript:@"imageOverlay"];
    }

    else
    {
      v37 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v37 forKeyedSubscript:@"imageOverlay"];
    }
  }

  if (self->_isCentered)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection isCentered](self, "isCentered")}];
    [v3 setObject:v38 forKeyedSubscript:@"isCentered"];
  }

  if ([(NSArray *)self->_moreGlyphs count])
  {
    v39 = [MEMORY[0x1E695DF70] array];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v40 = self->_moreGlyphs;
    v41 = [(NSArray *)v40 countByEnumeratingWithState:&v113 objects:v123 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v114;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v114 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v113 + 1) + 8 * j) dictionaryRepresentation];
          if (v45)
          {
            [v39 addObject:v45];
          }

          else
          {
            v46 = [MEMORY[0x1E695DFB0] null];
            [v39 addObject:v46];
          }
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v113 objects:v123 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKeyedSubscript:@"moreGlyphs"];
    v4 = 0x1E696A000;
  }

  if ([(NSArray *)self->_offers count])
  {
    v47 = [MEMORY[0x1E695DF70] array];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v48 = self->_offers;
    v49 = [(NSArray *)v48 countByEnumeratingWithState:&v109 objects:v122 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v110;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v110 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [*(*(&v109 + 1) + 8 * k) dictionaryRepresentation];
          if (v53)
          {
            [v47 addObject:v53];
          }

          else
          {
            v54 = [MEMORY[0x1E695DFB0] null];
            [v47 addObject:v54];
          }
        }

        v50 = [(NSArray *)v48 countByEnumeratingWithState:&v109 objects:v122 count:16];
      }

      while (v50);
    }

    [v3 setObject:v47 forKeyedSubscript:@"offers"];
    v4 = 0x1E696A000;
  }

  if (self->_playAction)
  {
    v55 = [(_SFPBRichTitleCardSection *)self playAction];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"playAction"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"playAction"];
    }
  }

  if (self->_playActionAlign)
  {
    v58 = [(_SFPBRichTitleCardSection *)self playActionAlign];
    if (v58 >= 6)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v58];
    }

    else
    {
      v59 = off_1E7ACE580[v58];
    }

    [v3 setObject:v59 forKeyedSubscript:@"playActionAlign"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v60 = [MEMORY[0x1E695DF70] array];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v61 = self->_punchoutOptions;
    v62 = [(NSArray *)v61 countByEnumeratingWithState:&v105 objects:v121 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v106;
      do
      {
        for (m = 0; m != v63; ++m)
        {
          if (*v106 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = [*(*(&v105 + 1) + 8 * m) dictionaryRepresentation];
          if (v66)
          {
            [v60 addObject:v66];
          }

          else
          {
            v67 = [MEMORY[0x1E695DFB0] null];
            [v60 addObject:v67];
          }
        }

        v63 = [(NSArray *)v61 countByEnumeratingWithState:&v105 objects:v121 count:16];
      }

      while (v63);
    }

    [v3 setObject:v60 forKeyedSubscript:@"punchoutOptions"];
    v4 = 0x1E696A000uLL;
  }

  if (self->_punchoutPickerDismissText)
  {
    v68 = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
    v69 = [v68 copy];
    [v3 setObject:v69 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v70 = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
    v71 = [v70 copy];
    [v3 setObject:v71 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_rating != 0.0)
  {
    v72 = *(v4 + 3480);
    [(_SFPBRichTitleCardSection *)self rating];
    v73 = [v72 numberWithFloat:?];
    [v3 setObject:v73 forKeyedSubscript:@"rating"];
  }

  if (self->_ratingText)
  {
    v74 = [(_SFPBRichTitleCardSection *)self ratingText];
    v75 = [v74 copy];
    [v3 setObject:v75 forKeyedSubscript:@"ratingText"];
  }

  if (self->_reviewGlyph)
  {
    v76 = [(_SFPBRichTitleCardSection *)self reviewGlyph];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"reviewGlyph"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"reviewGlyph"];
    }
  }

  if (self->_reviewNewLine)
  {
    v79 = [*(v4 + 3480) numberWithBool:{-[_SFPBRichTitleCardSection reviewNewLine](self, "reviewNewLine")}];
    [v3 setObject:v79 forKeyedSubscript:@"reviewNewLine"];
  }

  if (self->_reviewText)
  {
    v80 = [(_SFPBRichTitleCardSection *)self reviewText];
    v81 = [v80 copy];
    [v3 setObject:v81 forKeyedSubscript:@"reviewText"];
  }

  if (self->_richSubtitle)
  {
    v82 = [(_SFPBRichTitleCardSection *)self richSubtitle];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"richSubtitle"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"richSubtitle"];
    }
  }

  if (self->_separatorStyle)
  {
    v85 = [(_SFPBRichTitleCardSection *)self separatorStyle];
    if (v85 >= 6)
    {
      v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v85];
    }

    else
    {
      v86 = off_1E7ACE580[v85];
    }

    [v3 setObject:v86 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    v87 = [(_SFPBRichTitleCardSection *)self subtitle];
    v88 = [v87 copy];
    [v3 setObject:v88 forKeyedSubscript:@"subtitle"];
  }

  if (self->_subtitleIsEmphasized)
  {
    v89 = [*(v4 + 3480) numberWithBool:{-[_SFPBRichTitleCardSection subtitleIsEmphasized](self, "subtitleIsEmphasized")}];
    [v3 setObject:v89 forKeyedSubscript:@"subtitleIsEmphasized"];
  }

  if (self->_thumbnailCropCircle)
  {
    v90 = [*(v4 + 3480) numberWithBool:{-[_SFPBRichTitleCardSection thumbnailCropCircle](self, "thumbnailCropCircle")}];
    [v3 setObject:v90 forKeyedSubscript:@"thumbnailCropCircle"];
  }

  if (self->_title)
  {
    v91 = [(_SFPBRichTitleCardSection *)self title];
    v92 = [v91 copy];
    [v3 setObject:v92 forKeyedSubscript:@"title"];
  }

  if (self->_titleAlign)
  {
    v93 = [(_SFPBRichTitleCardSection *)self titleAlign];
    if (v93 >= 3)
    {
      v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v93];
    }

    else
    {
      v94 = off_1E7ACE548[v93];
    }

    [v3 setObject:v94 forKeyedSubscript:@"titleAlign"];
  }

  if (self->_titleImage)
  {
    v95 = [(_SFPBRichTitleCardSection *)self titleImage];
    v96 = [v95 dictionaryRepresentation];
    if (v96)
    {
      [v3 setObject:v96 forKeyedSubscript:@"titleImage"];
    }

    else
    {
      v97 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v97 forKeyedSubscript:@"titleImage"];
    }
  }

  if (self->_titleNoWrap)
  {
    v98 = [*(v4 + 3480) numberWithBool:{-[_SFPBRichTitleCardSection titleNoWrap](self, "titleNoWrap")}];
    [v3 setObject:v98 forKeyedSubscript:@"titleNoWrap"];
  }

  if (self->_titleWeight)
  {
    v99 = [*(v4 + 3480) numberWithInt:{-[_SFPBRichTitleCardSection titleWeight](self, "titleWeight")}];
    [v3 setObject:v99 forKeyedSubscript:@"titleWeight"];
  }

  if (self->_type)
  {
    v100 = [(_SFPBRichTitleCardSection *)self type];
    v101 = [v100 copy];
    [v3 setObject:v101 forKeyedSubscript:@"type"];
  }

  v102 = v3;

  v103 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)hash
{
  v61 = [(NSArray *)self->_punchoutOptions hash];
  v60 = [(NSString *)self->_punchoutPickerTitle hash];
  v59 = [(NSString *)self->_punchoutPickerDismissText hash];
  canBeHidden = self->_canBeHidden;
  hasTopPadding = self->_hasTopPadding;
  hasBottomPadding = self->_hasBottomPadding;
  v58 = [(NSString *)self->_type hash];
  separatorStyle = self->_separatorStyle;
  v57 = [(_SFPBColor *)self->_backgroundColor hash];
  v55 = [(NSString *)self->_title hash];
  v56 = [(NSString *)self->_subtitle hash];
  v54 = [(NSString *)self->_contentAdvisory hash];
  v53 = [(_SFPBImage *)self->_titleImage hash];
  isCentered = self->_isCentered;
  v52 = [(NSString *)self->_descriptionText hash];
  rating = self->_rating;
  v11 = rating < 0.0;
  if (rating == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = rating;
    if (v11)
    {
      v12 = -v12;
    }

    *v8.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v9, v8).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v15 += v13;
      }
    }

    else
    {
      v15 -= fabs(v13);
    }
  }

  if (isCentered)
  {
    v16 = 2654435761;
  }

  else
  {
    v16 = 0;
  }

  v50 = v15;
  v51 = v16;
  v48 = 2654435761 * separatorStyle;
  if (hasBottomPadding)
  {
    v17 = 2654435761;
  }

  else
  {
    v17 = 0;
  }

  v46 = v17;
  if (hasTopPadding)
  {
    v18 = 2654435761;
  }

  else
  {
    v18 = 0;
  }

  if (canBeHidden)
  {
    v19 = 2654435761;
  }

  else
  {
    v19 = 0;
  }

  v43 = v19;
  v44 = v18;
  v49 = [(NSString *)self->_ratingText hash];
  v47 = [(_SFPBImage *)self->_reviewGlyph hash];
  v45 = [(NSString *)self->_reviewText hash];
  if (self->_reviewNewLine)
  {
    v20 = 2654435761;
  }

  else
  {
    v20 = 0;
  }

  v42 = v20;
  v41 = [(NSArray *)self->_moreGlyphs hash];
  v40 = [(NSString *)self->_auxiliaryTopText hash];
  v39 = [(NSString *)self->_auxiliaryMiddleText hash];
  v21 = [(NSString *)self->_auxiliaryBottomText hash];
  v37 = 2654435761 * self->_auxiliaryBottomTextColor;
  v38 = v21;
  if (self->_hideVerticalDivider)
  {
    v22 = 2654435761;
  }

  else
  {
    v22 = 0;
  }

  v35 = v22;
  v36 = 2654435761 * self->_auxiliaryAlignment;
  v34 = 2654435761 * self->_titleAlign;
  v23 = 2654435761 * self->_titleWeight;
  if (self->_titleNoWrap)
  {
    v24 = 2654435761;
  }

  else
  {
    v24 = 0;
  }

  if (self->_thumbnailCropCircle)
  {
    v25 = 2654435761;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(_SFPBImage *)self->_imageOverlay hash];
  v27 = [(_SFPBActionItem *)self->_playAction hash];
  v28 = 2654435761 * self->_playActionAlign;
  v29 = [(NSArray *)self->_offers hash];
  v30 = [(NSString *)self->_footnote hash];
  v31 = [(_SFPBRichText *)self->_richSubtitle hash];
  if (self->_subtitleIsEmphasized)
  {
    v32 = 2654435761;
  }

  else
  {
    v32 = 0;
  }

  return v60 ^ v61 ^ v59 ^ v43 ^ v44 ^ v46 ^ v58 ^ v48 ^ v57 ^ v55 ^ v56 ^ v54 ^ v53 ^ v51 ^ v52 ^ v50 ^ v49 ^ v47 ^ v45 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ [(NSArray *)self->_buttonItems hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v7 = [(_SFPBRichTitleCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRichTitleCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v12 = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v17 = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_133;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_133;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v25 = [(_SFPBRichTitleCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBRichTitleCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v31 = [(_SFPBRichTitleCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBRichTitleCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v36 = [(_SFPBRichTitleCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBRichTitleCardSection *)self title];
    v39 = [v4 title];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v41 = [(_SFPBRichTitleCardSection *)self subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBRichTitleCardSection *)self subtitle];
    v44 = [v4 subtitle];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self contentAdvisory];
  v6 = [v4 contentAdvisory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v46 = [(_SFPBRichTitleCardSection *)self contentAdvisory];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBRichTitleCardSection *)self contentAdvisory];
    v49 = [v4 contentAdvisory];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self titleImage];
  v6 = [v4 titleImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v51 = [(_SFPBRichTitleCardSection *)self titleImage];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBRichTitleCardSection *)self titleImage];
    v54 = [v4 titleImage];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  isCentered = self->_isCentered;
  if (isCentered != [v4 isCentered])
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self descriptionText];
  v6 = [v4 descriptionText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v57 = [(_SFPBRichTitleCardSection *)self descriptionText];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBRichTitleCardSection *)self descriptionText];
    v60 = [v4 descriptionText];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  rating = self->_rating;
  [v4 rating];
  if (rating != v63)
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self ratingText];
  v6 = [v4 ratingText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v64 = [(_SFPBRichTitleCardSection *)self ratingText];
  if (v64)
  {
    v65 = v64;
    v66 = [(_SFPBRichTitleCardSection *)self ratingText];
    v67 = [v4 ratingText];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self reviewGlyph];
  v6 = [v4 reviewGlyph];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v69 = [(_SFPBRichTitleCardSection *)self reviewGlyph];
  if (v69)
  {
    v70 = v69;
    v71 = [(_SFPBRichTitleCardSection *)self reviewGlyph];
    v72 = [v4 reviewGlyph];
    v73 = [v71 isEqual:v72];

    if (!v73)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self reviewText];
  v6 = [v4 reviewText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v74 = [(_SFPBRichTitleCardSection *)self reviewText];
  if (v74)
  {
    v75 = v74;
    v76 = [(_SFPBRichTitleCardSection *)self reviewText];
    v77 = [v4 reviewText];
    v78 = [v76 isEqual:v77];

    if (!v78)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  reviewNewLine = self->_reviewNewLine;
  if (reviewNewLine != [v4 reviewNewLine])
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self moreGlyphs];
  v6 = [v4 moreGlyphs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v80 = [(_SFPBRichTitleCardSection *)self moreGlyphs];
  if (v80)
  {
    v81 = v80;
    v82 = [(_SFPBRichTitleCardSection *)self moreGlyphs];
    v83 = [v4 moreGlyphs];
    v84 = [v82 isEqual:v83];

    if (!v84)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
  v6 = [v4 auxiliaryTopText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v85 = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
  if (v85)
  {
    v86 = v85;
    v87 = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
    v88 = [v4 auxiliaryTopText];
    v89 = [v87 isEqual:v88];

    if (!v89)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
  v6 = [v4 auxiliaryMiddleText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v90 = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
  if (v90)
  {
    v91 = v90;
    v92 = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
    v93 = [v4 auxiliaryMiddleText];
    v94 = [v92 isEqual:v93];

    if (!v94)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
  v6 = [v4 auxiliaryBottomText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v95 = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
  if (v95)
  {
    v96 = v95;
    v97 = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
    v98 = [v4 auxiliaryBottomText];
    v99 = [v97 isEqual:v98];

    if (!v99)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  auxiliaryBottomTextColor = self->_auxiliaryBottomTextColor;
  if (auxiliaryBottomTextColor != [v4 auxiliaryBottomTextColor])
  {
    goto LABEL_133;
  }

  auxiliaryAlignment = self->_auxiliaryAlignment;
  if (auxiliaryAlignment != [v4 auxiliaryAlignment])
  {
    goto LABEL_133;
  }

  hideVerticalDivider = self->_hideVerticalDivider;
  if (hideVerticalDivider != [v4 hideVerticalDivider])
  {
    goto LABEL_133;
  }

  titleAlign = self->_titleAlign;
  if (titleAlign != [v4 titleAlign])
  {
    goto LABEL_133;
  }

  titleWeight = self->_titleWeight;
  if (titleWeight != [v4 titleWeight])
  {
    goto LABEL_133;
  }

  titleNoWrap = self->_titleNoWrap;
  if (titleNoWrap != [v4 titleNoWrap])
  {
    goto LABEL_133;
  }

  thumbnailCropCircle = self->_thumbnailCropCircle;
  if (thumbnailCropCircle != [v4 thumbnailCropCircle])
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self imageOverlay];
  v6 = [v4 imageOverlay];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v107 = [(_SFPBRichTitleCardSection *)self imageOverlay];
  if (v107)
  {
    v108 = v107;
    v109 = [(_SFPBRichTitleCardSection *)self imageOverlay];
    v110 = [v4 imageOverlay];
    v111 = [v109 isEqual:v110];

    if (!v111)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self playAction];
  v6 = [v4 playAction];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v112 = [(_SFPBRichTitleCardSection *)self playAction];
  if (v112)
  {
    v113 = v112;
    v114 = [(_SFPBRichTitleCardSection *)self playAction];
    v115 = [v4 playAction];
    v116 = [v114 isEqual:v115];

    if (!v116)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  playActionAlign = self->_playActionAlign;
  if (playActionAlign != [v4 playActionAlign])
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self offers];
  v6 = [v4 offers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v118 = [(_SFPBRichTitleCardSection *)self offers];
  if (v118)
  {
    v119 = v118;
    v120 = [(_SFPBRichTitleCardSection *)self offers];
    v121 = [v4 offers];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self footnote];
  v6 = [v4 footnote];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v123 = [(_SFPBRichTitleCardSection *)self footnote];
  if (v123)
  {
    v124 = v123;
    v125 = [(_SFPBRichTitleCardSection *)self footnote];
    v126 = [v4 footnote];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRichTitleCardSection *)self richSubtitle];
  v6 = [v4 richSubtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_132;
  }

  v128 = [(_SFPBRichTitleCardSection *)self richSubtitle];
  if (v128)
  {
    v129 = v128;
    v130 = [(_SFPBRichTitleCardSection *)self richSubtitle];
    v131 = [v4 richSubtitle];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  subtitleIsEmphasized = self->_subtitleIsEmphasized;
  if (subtitleIsEmphasized != [v4 subtitleIsEmphasized])
  {
    goto LABEL_133;
  }

  v5 = [(_SFPBRichTitleCardSection *)self buttonItems];
  v6 = [v4 buttonItems];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_132:

    goto LABEL_133;
  }

  v134 = [(_SFPBRichTitleCardSection *)self buttonItems];
  if (!v134)
  {

LABEL_136:
    v139 = 1;
    goto LABEL_134;
  }

  v135 = v134;
  v136 = [(_SFPBRichTitleCardSection *)self buttonItems];
  v137 = [v4 buttonItems];
  v138 = [v136 isEqual:v137];

  if (v138)
  {
    goto LABEL_136;
  }

LABEL_133:
  v139 = 0;
LABEL_134:

  return v139;
}

- (void)writeTo:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_SFPBRichTitleCardSection *)self punchoutOptions];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v5 = v65 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v63;
    do
    {
      v9 = 0;
      do
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v62 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRichTitleCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRichTitleCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRichTitleCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBRichTitleCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRichTitleCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBRichTitleCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBRichTitleCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBRichTitleCardSection *)self subtitle];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = [(_SFPBRichTitleCardSection *)self contentAdvisory];
  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(_SFPBRichTitleCardSection *)self titleImage];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRichTitleCardSection *)self isCentered])
  {
    PBDataWriterWriteBOOLField();
  }

  v19 = [(_SFPBRichTitleCardSection *)self descriptionText];
  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  [(_SFPBRichTitleCardSection *)self rating];
  if (v20 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  v21 = [(_SFPBRichTitleCardSection *)self ratingText];
  if (v21)
  {
    PBDataWriterWriteStringField();
  }

  v22 = [(_SFPBRichTitleCardSection *)self reviewGlyph];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBRichTitleCardSection *)self reviewText];
  if (v23)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRichTitleCardSection *)self reviewNewLine])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_SFPBRichTitleCardSection *)self moreGlyphs];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v24 = v61 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v59;
    do
    {
      v28 = 0;
      do
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v58 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v26);
  }

  v30 = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
  if (v30)
  {
    PBDataWriterWriteStringField();
  }

  v31 = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
  if (v31)
  {
    PBDataWriterWriteStringField();
  }

  v32 = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
  if (v32)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRichTitleCardSection *)self auxiliaryBottomTextColor])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRichTitleCardSection *)self auxiliaryAlignment])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRichTitleCardSection *)self hideVerticalDivider])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRichTitleCardSection *)self titleAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRichTitleCardSection *)self titleWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRichTitleCardSection *)self titleNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRichTitleCardSection *)self thumbnailCropCircle])
  {
    PBDataWriterWriteBOOLField();
  }

  v33 = [(_SFPBRichTitleCardSection *)self imageOverlay];
  if (v33)
  {
    PBDataWriterWriteSubmessage();
  }

  v34 = [(_SFPBRichTitleCardSection *)self playAction];
  if (v34)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRichTitleCardSection *)self playActionAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBRichTitleCardSection *)self offers];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v57 = 0u;
  v36 = [v35 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v55;
    do
    {
      v39 = 0;
      do
      {
        if (*v55 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v54 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v37);
  }

  v41 = [(_SFPBRichTitleCardSection *)self footnote];
  if (v41)
  {
    PBDataWriterWriteStringField();
  }

  v42 = [(_SFPBRichTitleCardSection *)self richSubtitle];
  if (v42)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRichTitleCardSection *)self subtitleIsEmphasized])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_SFPBRichTitleCardSection *)self buttonItems];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v43 = v53 = 0u;
  v44 = [v43 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v51;
    do
    {
      v47 = 0;
      do
      {
        if (*v51 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v50 + 1) + 8 * v47);
        PBDataWriterWriteSubmessage();
        ++v47;
      }

      while (v45 != v47);
      v45 = [v43 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v45);
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (void)addButtonItems:(id)a3
{
  v4 = a3;
  buttonItems = self->_buttonItems;
  v8 = v4;
  if (!buttonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_buttonItems;
    self->_buttonItems = v6;

    v4 = v8;
    buttonItems = self->_buttonItems;
  }

  [(NSArray *)buttonItems addObject:v4];
}

- (void)setButtonItems:(id)a3
{
  v4 = [a3 copy];
  buttonItems = self->_buttonItems;
  self->_buttonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFootnote:(id)a3
{
  v4 = [a3 copy];
  footnote = self->_footnote;
  self->_footnote = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addOffers:(id)a3
{
  v4 = a3;
  offers = self->_offers;
  v8 = v4;
  if (!offers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_offers;
    self->_offers = v6;

    v4 = v8;
    offers = self->_offers;
  }

  [(NSArray *)offers addObject:v4];
}

- (void)setOffers:(id)a3
{
  v4 = [a3 copy];
  offers = self->_offers;
  self->_offers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAuxiliaryBottomText:(id)a3
{
  v4 = [a3 copy];
  auxiliaryBottomText = self->_auxiliaryBottomText;
  self->_auxiliaryBottomText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAuxiliaryMiddleText:(id)a3
{
  v4 = [a3 copy];
  auxiliaryMiddleText = self->_auxiliaryMiddleText;
  self->_auxiliaryMiddleText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAuxiliaryTopText:(id)a3
{
  v4 = [a3 copy];
  auxiliaryTopText = self->_auxiliaryTopText;
  self->_auxiliaryTopText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addMoreGlyphs:(id)a3
{
  v4 = a3;
  moreGlyphs = self->_moreGlyphs;
  v8 = v4;
  if (!moreGlyphs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_moreGlyphs;
    self->_moreGlyphs = v6;

    v4 = v8;
    moreGlyphs = self->_moreGlyphs;
  }

  [(NSArray *)moreGlyphs addObject:v4];
}

- (void)setMoreGlyphs:(id)a3
{
  v4 = [a3 copy];
  moreGlyphs = self->_moreGlyphs;
  self->_moreGlyphs = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setReviewText:(id)a3
{
  v4 = [a3 copy];
  reviewText = self->_reviewText;
  self->_reviewText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRatingText:(id)a3
{
  v4 = [a3 copy];
  ratingText = self->_ratingText;
  self->_ratingText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDescriptionText:(id)a3
{
  v4 = [a3 copy];
  descriptionText = self->_descriptionText;
  self->_descriptionText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContentAdvisory:(id)a3
{
  v4 = [a3 copy];
  contentAdvisory = self->_contentAdvisory;
  self->_contentAdvisory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSubtitle:(id)a3
{
  v4 = [a3 copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)a3
{
  v4 = [a3 copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)a3
{
  v4 = a3;
  punchoutOptions = self->_punchoutOptions;
  v8 = v4;
  if (!punchoutOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = v6;

    v4 = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:v4];
}

- (void)setPunchoutOptions:(id)a3
{
  v4 = [a3 copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end