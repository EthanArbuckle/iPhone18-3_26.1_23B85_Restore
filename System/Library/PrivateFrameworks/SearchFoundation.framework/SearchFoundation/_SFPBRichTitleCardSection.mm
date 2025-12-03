@interface _SFPBRichTitleCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRichTitleCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRichTitleCardSection)initWithFacade:(id)facade;
- (_SFPBRichTitleCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addButtonItems:(id)items;
- (void)addMoreGlyphs:(id)glyphs;
- (void)addOffers:(id)offers;
- (void)addPunchoutOptions:(id)options;
- (void)setAuxiliaryBottomText:(id)text;
- (void)setAuxiliaryMiddleText:(id)text;
- (void)setAuxiliaryTopText:(id)text;
- (void)setButtonItems:(id)items;
- (void)setContentAdvisory:(id)advisory;
- (void)setDescriptionText:(id)text;
- (void)setFootnote:(id)footnote;
- (void)setMoreGlyphs:(id)glyphs;
- (void)setOffers:(id)offers;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setRatingText:(id)text;
- (void)setReviewText:(id)text;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRichTitleCardSection

- (_SFPBRichTitleCardSection)initWithFacade:(id)facade
{
  v119 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRichTitleCardSection *)self init];

  if (v5)
  {
    punchoutOptions = [facadeCopy punchoutOptions];
    if (punchoutOptions)
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
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v111 objects:v118 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v111 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v111 objects:v118 count:16];
      }

      while (v10);
    }

    [(_SFPBRichTitleCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBRichTitleCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBRichTitleCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBRichTitleCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBRichTitleCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBRichTitleCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBRichTitleCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBRichTitleCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBRichTitleCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBRichTitleCardSection *)v5 setTitle:title2];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [facadeCopy subtitle];
      [(_SFPBRichTitleCardSection *)v5 setSubtitle:subtitle2];
    }

    contentAdvisory = [facadeCopy contentAdvisory];

    if (contentAdvisory)
    {
      contentAdvisory2 = [facadeCopy contentAdvisory];
      [(_SFPBRichTitleCardSection *)v5 setContentAdvisory:contentAdvisory2];
    }

    titleImage = [facadeCopy titleImage];

    if (titleImage)
    {
      v31 = [_SFPBImage alloc];
      titleImage2 = [facadeCopy titleImage];
      v33 = [(_SFPBImage *)v31 initWithFacade:titleImage2];
      [(_SFPBRichTitleCardSection *)v5 setTitleImage:v33];
    }

    if ([facadeCopy hasIsCentered])
    {
      -[_SFPBRichTitleCardSection setIsCentered:](v5, "setIsCentered:", [facadeCopy isCentered]);
    }

    descriptionText = [facadeCopy descriptionText];

    if (descriptionText)
    {
      descriptionText2 = [facadeCopy descriptionText];
      [(_SFPBRichTitleCardSection *)v5 setDescriptionText:descriptionText2];
    }

    rating = [facadeCopy rating];

    if (rating)
    {
      rating2 = [facadeCopy rating];
      [rating2 floatValue];
      [(_SFPBRichTitleCardSection *)v5 setRating:?];
    }

    ratingText = [facadeCopy ratingText];

    if (ratingText)
    {
      ratingText2 = [facadeCopy ratingText];
      [(_SFPBRichTitleCardSection *)v5 setRatingText:ratingText2];
    }

    reviewGlyph = [facadeCopy reviewGlyph];

    if (reviewGlyph)
    {
      v41 = [_SFPBImage alloc];
      reviewGlyph2 = [facadeCopy reviewGlyph];
      v43 = [(_SFPBImage *)v41 initWithFacade:reviewGlyph2];
      [(_SFPBRichTitleCardSection *)v5 setReviewGlyph:v43];
    }

    reviewText = [facadeCopy reviewText];

    if (reviewText)
    {
      reviewText2 = [facadeCopy reviewText];
      [(_SFPBRichTitleCardSection *)v5 setReviewText:reviewText2];
    }

    if ([facadeCopy hasReviewNewLine])
    {
      -[_SFPBRichTitleCardSection setReviewNewLine:](v5, "setReviewNewLine:", [facadeCopy reviewNewLine]);
    }

    moreGlyphs = [facadeCopy moreGlyphs];
    if (moreGlyphs)
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
    moreGlyphs2 = [facadeCopy moreGlyphs];
    v49 = [moreGlyphs2 countByEnumeratingWithState:&v107 objects:v117 count:16];
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
            objc_enumerationMutation(moreGlyphs2);
          }

          v53 = [[_SFPBImage alloc] initWithFacade:*(*(&v107 + 1) + 8 * j)];
          if (v53)
          {
            [v47 addObject:v53];
          }
        }

        v50 = [moreGlyphs2 countByEnumeratingWithState:&v107 objects:v117 count:16];
      }

      while (v50);
    }

    [(_SFPBRichTitleCardSection *)v5 setMoreGlyphs:v47];
    auxiliaryTopText = [facadeCopy auxiliaryTopText];

    if (auxiliaryTopText)
    {
      auxiliaryTopText2 = [facadeCopy auxiliaryTopText];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryTopText:auxiliaryTopText2];
    }

    auxiliaryMiddleText = [facadeCopy auxiliaryMiddleText];

    if (auxiliaryMiddleText)
    {
      auxiliaryMiddleText2 = [facadeCopy auxiliaryMiddleText];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryMiddleText:auxiliaryMiddleText2];
    }

    auxiliaryBottomText = [facadeCopy auxiliaryBottomText];

    if (auxiliaryBottomText)
    {
      auxiliaryBottomText2 = [facadeCopy auxiliaryBottomText];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryBottomText:auxiliaryBottomText2];
    }

    if ([facadeCopy hasAuxiliaryBottomTextColor])
    {
      -[_SFPBRichTitleCardSection setAuxiliaryBottomTextColor:](v5, "setAuxiliaryBottomTextColor:", [facadeCopy auxiliaryBottomTextColor]);
    }

    auxiliaryAlignment = [facadeCopy auxiliaryAlignment];

    if (auxiliaryAlignment)
    {
      auxiliaryAlignment2 = [facadeCopy auxiliaryAlignment];
      -[_SFPBRichTitleCardSection setAuxiliaryAlignment:](v5, "setAuxiliaryAlignment:", [auxiliaryAlignment2 intValue]);
    }

    if ([facadeCopy hasHideVerticalDivider])
    {
      -[_SFPBRichTitleCardSection setHideVerticalDivider:](v5, "setHideVerticalDivider:", [facadeCopy hideVerticalDivider]);
    }

    if ([facadeCopy hasTitleAlign])
    {
      -[_SFPBRichTitleCardSection setTitleAlign:](v5, "setTitleAlign:", [facadeCopy titleAlign]);
    }

    titleWeight = [facadeCopy titleWeight];

    if (titleWeight)
    {
      titleWeight2 = [facadeCopy titleWeight];
      -[_SFPBRichTitleCardSection setTitleWeight:](v5, "setTitleWeight:", [titleWeight2 intValue]);
    }

    if ([facadeCopy hasTitleNoWrap])
    {
      -[_SFPBRichTitleCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [facadeCopy titleNoWrap]);
    }

    if ([facadeCopy hasThumbnailCropCircle])
    {
      -[_SFPBRichTitleCardSection setThumbnailCropCircle:](v5, "setThumbnailCropCircle:", [facadeCopy thumbnailCropCircle]);
    }

    imageOverlay = [facadeCopy imageOverlay];

    if (imageOverlay)
    {
      v65 = [_SFPBImage alloc];
      imageOverlay2 = [facadeCopy imageOverlay];
      v67 = [(_SFPBImage *)v65 initWithFacade:imageOverlay2];
      [(_SFPBRichTitleCardSection *)v5 setImageOverlay:v67];
    }

    playAction = [facadeCopy playAction];

    if (playAction)
    {
      v69 = [_SFPBActionItem alloc];
      playAction2 = [facadeCopy playAction];
      v71 = [(_SFPBActionItem *)v69 initWithFacade:playAction2];
      [(_SFPBRichTitleCardSection *)v5 setPlayAction:v71];
    }

    if ([facadeCopy hasPlayActionAlign])
    {
      -[_SFPBRichTitleCardSection setPlayActionAlign:](v5, "setPlayActionAlign:", [facadeCopy playActionAlign]);
    }

    offers = [facadeCopy offers];
    if (offers)
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
    v98 = facadeCopy;
    offers2 = [facadeCopy offers];
    v75 = [offers2 countByEnumeratingWithState:&v103 objects:v116 count:16];
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
            objc_enumerationMutation(offers2);
          }

          v79 = [[_SFPBMediaOffer alloc] initWithFacade:*(*(&v103 + 1) + 8 * k)];
          if (v79)
          {
            [v73 addObject:v79];
          }
        }

        v76 = [offers2 countByEnumeratingWithState:&v103 objects:v116 count:16];
      }

      while (v76);
    }

    [(_SFPBRichTitleCardSection *)v5 setOffers:v73];
    footnote = [facadeCopy footnote];

    if (footnote)
    {
      footnote2 = [facadeCopy footnote];
      [(_SFPBRichTitleCardSection *)v5 setFootnote:footnote2];
    }

    richSubtitle = [facadeCopy richSubtitle];

    if (richSubtitle)
    {
      v83 = [_SFPBRichText alloc];
      richSubtitle2 = [facadeCopy richSubtitle];
      v85 = [(_SFPBRichText *)v83 initWithFacade:richSubtitle2];
      [(_SFPBRichTitleCardSection *)v5 setRichSubtitle:v85];
    }

    if ([facadeCopy hasSubtitleIsEmphasized])
    {
      -[_SFPBRichTitleCardSection setSubtitleIsEmphasized:](v5, "setSubtitleIsEmphasized:", [facadeCopy subtitleIsEmphasized]);
    }

    buttonItems = [facadeCopy buttonItems];
    v97 = v5;
    if (buttonItems)
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
    buttonItems2 = [facadeCopy buttonItems];
    v89 = [buttonItems2 countByEnumeratingWithState:&v99 objects:v115 count:16];
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
            objc_enumerationMutation(buttonItems2);
          }

          v93 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v99 + 1) + 8 * m)];
          if (v93)
          {
            [v87 addObject:v93];
          }
        }

        v90 = [buttonItems2 countByEnumeratingWithState:&v99 objects:v115 count:16];
      }

      while (v90);
    }

    v5 = v97;
    [(_SFPBRichTitleCardSection *)v97 setButtonItems:v87];
    v94 = v97;

    facadeCopy = v98;
  }

  v95 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRichTitleCardSection)initWithDictionary:(id)dictionary
{
  v155 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v150.receiver = self;
  v150.super_class = _SFPBRichTitleCardSection;
  v5 = [(_SFPBRichTitleCardSection *)&v150 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBRichTitleCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v103 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBRichTitleCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v102 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v132 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v131 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v130 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v129 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBRichTitleCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v128 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v127 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBRichTitleCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v126 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBRichTitleCardSection *)v5 setTitle:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v125 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBRichTitleCardSection *)v5 setSubtitle:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"contentAdvisory"];
    objc_opt_class();
    v124 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBRichTitleCardSection *)v5 setContentAdvisory:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"titleImage"];
    objc_opt_class();
    v123 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBImage alloc] initWithDictionary:v32];
      [(_SFPBRichTitleCardSection *)v5 setTitleImage:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"isCentered"];
    objc_opt_class();
    v122 = v34;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setIsCentered:](v5, "setIsCentered:", [v34 BOOLValue]);
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"descriptionText"];
    objc_opt_class();
    v121 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(_SFPBRichTitleCardSection *)v5 setDescriptionText:v36];
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"rating"];
    objc_opt_class();
    v120 = v37;
    if (objc_opt_isKindOfClass())
    {
      [v37 floatValue];
      [(_SFPBRichTitleCardSection *)v5 setRating:?];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"ratingText"];
    objc_opt_class();
    v119 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 copy];
      [(_SFPBRichTitleCardSection *)v5 setRatingText:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"reviewGlyph"];
    objc_opt_class();
    v118 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBImage alloc] initWithDictionary:v40];
      [(_SFPBRichTitleCardSection *)v5 setReviewGlyph:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"reviewText"];
    objc_opt_class();
    v117 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [v42 copy];
      [(_SFPBRichTitleCardSection *)v5 setReviewText:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"reviewNewLine"];
    objc_opt_class();
    v116 = v44;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setReviewNewLine:](v5, "setReviewNewLine:", [v44 BOOLValue]);
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"moreGlyphs"];
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

    v53 = [dictionaryCopy objectForKeyedSubscript:@"auxiliaryTopText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [v53 copy];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryTopText:v54];
    }

    v55 = [dictionaryCopy objectForKeyedSubscript:@"auxiliaryMiddleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [v55 copy];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryMiddleText:v56];
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"auxiliaryBottomText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [v57 copy];
      [(_SFPBRichTitleCardSection *)v5 setAuxiliaryBottomText:v58];
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"auxiliaryBottomTextColor"];
    objc_opt_class();
    v114 = v59;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setAuxiliaryBottomTextColor:](v5, "setAuxiliaryBottomTextColor:", [v59 intValue]);
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"auxiliaryAlignment"];
    objc_opt_class();
    v113 = v60;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setAuxiliaryAlignment:](v5, "setAuxiliaryAlignment:", [v60 intValue]);
    }

    v61 = [dictionaryCopy objectForKeyedSubscript:@"hideVerticalDivider"];
    objc_opt_class();
    v112 = v61;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setHideVerticalDivider:](v5, "setHideVerticalDivider:", [v61 BOOLValue]);
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"titleAlign"];
    objc_opt_class();
    v111 = v62;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setTitleAlign:](v5, "setTitleAlign:", [v62 intValue]);
    }

    v63 = [dictionaryCopy objectForKeyedSubscript:@"titleWeight"];
    objc_opt_class();
    v110 = v63;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setTitleWeight:](v5, "setTitleWeight:", [v63 intValue]);
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"titleNoWrap"];
    objc_opt_class();
    v109 = v64;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [v64 BOOLValue]);
    }

    v65 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailCropCircle"];
    objc_opt_class();
    v108 = v65;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setThumbnailCropCircle:](v5, "setThumbnailCropCircle:", [v65 BOOLValue]);
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"imageOverlay"];
    objc_opt_class();
    v107 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[_SFPBImage alloc] initWithDictionary:v66];
      [(_SFPBRichTitleCardSection *)v5 setImageOverlay:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"playAction"];
    objc_opt_class();
    v106 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBActionItem alloc] initWithDictionary:v68];
      [(_SFPBRichTitleCardSection *)v5 setPlayAction:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"playActionAlign"];
    objc_opt_class();
    v105 = v70;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setPlayActionAlign:](v5, "setPlayActionAlign:", [v70 intValue]);
    }

    v71 = [dictionaryCopy objectForKeyedSubscript:@"offers"];
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

    v79 = [dictionaryCopy objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v80 = [v79 copy];
      [(_SFPBRichTitleCardSection *)v5 setFootnote:v80];
    }

    v98 = v79;
    v81 = [dictionaryCopy objectForKeyedSubscript:@"richSubtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = v81;
      v83 = [[_SFPBRichText alloc] initWithDictionary:v81];
      [(_SFPBRichTitleCardSection *)v5 setRichSubtitle:v83];

      v81 = v82;
    }

    v84 = [dictionaryCopy objectForKeyedSubscript:@"subtitleIsEmphasized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRichTitleCardSection setSubtitleIsEmphasized:](v5, "setSubtitleIsEmphasized:", [v84 BOOLValue]);
    }

    v85 = [dictionaryCopy objectForKeyedSubscript:@"buttonItems"];
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

- (_SFPBRichTitleCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRichTitleCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRichTitleCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = 0x1E696A000uLL;
  if (self->_auxiliaryAlignment)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRichTitleCardSection auxiliaryAlignment](self, "auxiliaryAlignment")}];
    [dictionary setObject:v5 forKeyedSubscript:@"auxiliaryAlignment"];
  }

  if (self->_auxiliaryBottomText)
  {
    auxiliaryBottomText = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
    v7 = [auxiliaryBottomText copy];
    [dictionary setObject:v7 forKeyedSubscript:@"auxiliaryBottomText"];
  }

  if (self->_auxiliaryBottomTextColor)
  {
    auxiliaryBottomTextColor = [(_SFPBRichTitleCardSection *)self auxiliaryBottomTextColor];
    if (auxiliaryBottomTextColor >= 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", auxiliaryBottomTextColor];
    }

    else
    {
      v9 = off_1E7ACE470[auxiliaryBottomTextColor];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"auxiliaryBottomTextColor"];
  }

  if (self->_auxiliaryMiddleText)
  {
    auxiliaryMiddleText = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
    v11 = [auxiliaryMiddleText copy];
    [dictionary setObject:v11 forKeyedSubscript:@"auxiliaryMiddleText"];
  }

  if (self->_auxiliaryTopText)
  {
    auxiliaryTopText = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
    v13 = [auxiliaryTopText copy];
    [dictionary setObject:v13 forKeyedSubscript:@"auxiliaryTopText"];
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBRichTitleCardSection *)self backgroundColor];
    dictionaryRepresentation = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundColor"];
    }
  }

  if ([(NSArray *)self->_buttonItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v117 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v117 objects:v124 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array forKeyedSubscript:@"buttonItems"];
    v4 = 0x1E696A000uLL;
  }

  if (self->_canBeHidden)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v25 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_contentAdvisory)
  {
    contentAdvisory = [(_SFPBRichTitleCardSection *)self contentAdvisory];
    v27 = [contentAdvisory copy];
    [dictionary setObject:v27 forKeyedSubscript:@"contentAdvisory"];
  }

  if (self->_descriptionText)
  {
    descriptionText = [(_SFPBRichTitleCardSection *)self descriptionText];
    v29 = [descriptionText copy];
    [dictionary setObject:v29 forKeyedSubscript:@"descriptionText"];
  }

  if (self->_footnote)
  {
    footnote = [(_SFPBRichTitleCardSection *)self footnote];
    v31 = [footnote copy];
    [dictionary setObject:v31 forKeyedSubscript:@"footnote"];
  }

  if (self->_hasBottomPadding)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v32 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v33 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_hideVerticalDivider)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection hideVerticalDivider](self, "hideVerticalDivider")}];
    [dictionary setObject:v34 forKeyedSubscript:@"hideVerticalDivider"];
  }

  if (self->_imageOverlay)
  {
    imageOverlay = [(_SFPBRichTitleCardSection *)self imageOverlay];
    dictionaryRepresentation3 = [imageOverlay dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"imageOverlay"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"imageOverlay"];
    }
  }

  if (self->_isCentered)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRichTitleCardSection isCentered](self, "isCentered")}];
    [dictionary setObject:v38 forKeyedSubscript:@"isCentered"];
  }

  if ([(NSArray *)self->_moreGlyphs count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v113 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v113 objects:v123 count:16];
      }

      while (v42);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"moreGlyphs"];
    v4 = 0x1E696A000;
  }

  if ([(NSArray *)self->_offers count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v109 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array3 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null5];
          }
        }

        v50 = [(NSArray *)v48 countByEnumeratingWithState:&v109 objects:v122 count:16];
      }

      while (v50);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"offers"];
    v4 = 0x1E696A000;
  }

  if (self->_playAction)
  {
    playAction = [(_SFPBRichTitleCardSection *)self playAction];
    dictionaryRepresentation6 = [playAction dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"playAction"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"playAction"];
    }
  }

  if (self->_playActionAlign)
  {
    playActionAlign = [(_SFPBRichTitleCardSection *)self playActionAlign];
    if (playActionAlign >= 6)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", playActionAlign];
    }

    else
    {
      v59 = off_1E7ACE580[playActionAlign];
    }

    [dictionary setObject:v59 forKeyedSubscript:@"playActionAlign"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation7 = [*(*(&v105 + 1) + 8 * m) dictionaryRepresentation];
          if (dictionaryRepresentation7)
          {
            [array4 addObject:dictionaryRepresentation7];
          }

          else
          {
            null7 = [MEMORY[0x1E695DFB0] null];
            [array4 addObject:null7];
          }
        }

        v63 = [(NSArray *)v61 countByEnumeratingWithState:&v105 objects:v121 count:16];
      }

      while (v63);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"punchoutOptions"];
    v4 = 0x1E696A000uLL;
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
    v69 = [punchoutPickerDismissText copy];
    [dictionary setObject:v69 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
    v71 = [punchoutPickerTitle copy];
    [dictionary setObject:v71 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_rating != 0.0)
  {
    v72 = *(v4 + 3480);
    [(_SFPBRichTitleCardSection *)self rating];
    v73 = [v72 numberWithFloat:?];
    [dictionary setObject:v73 forKeyedSubscript:@"rating"];
  }

  if (self->_ratingText)
  {
    ratingText = [(_SFPBRichTitleCardSection *)self ratingText];
    v75 = [ratingText copy];
    [dictionary setObject:v75 forKeyedSubscript:@"ratingText"];
  }

  if (self->_reviewGlyph)
  {
    reviewGlyph = [(_SFPBRichTitleCardSection *)self reviewGlyph];
    dictionaryRepresentation8 = [reviewGlyph dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"reviewGlyph"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"reviewGlyph"];
    }
  }

  if (self->_reviewNewLine)
  {
    v79 = [*(v4 + 3480) numberWithBool:{-[_SFPBRichTitleCardSection reviewNewLine](self, "reviewNewLine")}];
    [dictionary setObject:v79 forKeyedSubscript:@"reviewNewLine"];
  }

  if (self->_reviewText)
  {
    reviewText = [(_SFPBRichTitleCardSection *)self reviewText];
    v81 = [reviewText copy];
    [dictionary setObject:v81 forKeyedSubscript:@"reviewText"];
  }

  if (self->_richSubtitle)
  {
    richSubtitle = [(_SFPBRichTitleCardSection *)self richSubtitle];
    dictionaryRepresentation9 = [richSubtitle dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"richSubtitle"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"richSubtitle"];
    }
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBRichTitleCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v86 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v86 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBRichTitleCardSection *)self subtitle];
    v88 = [subtitle copy];
    [dictionary setObject:v88 forKeyedSubscript:@"subtitle"];
  }

  if (self->_subtitleIsEmphasized)
  {
    v89 = [*(v4 + 3480) numberWithBool:{-[_SFPBRichTitleCardSection subtitleIsEmphasized](self, "subtitleIsEmphasized")}];
    [dictionary setObject:v89 forKeyedSubscript:@"subtitleIsEmphasized"];
  }

  if (self->_thumbnailCropCircle)
  {
    v90 = [*(v4 + 3480) numberWithBool:{-[_SFPBRichTitleCardSection thumbnailCropCircle](self, "thumbnailCropCircle")}];
    [dictionary setObject:v90 forKeyedSubscript:@"thumbnailCropCircle"];
  }

  if (self->_title)
  {
    title = [(_SFPBRichTitleCardSection *)self title];
    v92 = [title copy];
    [dictionary setObject:v92 forKeyedSubscript:@"title"];
  }

  if (self->_titleAlign)
  {
    titleAlign = [(_SFPBRichTitleCardSection *)self titleAlign];
    if (titleAlign >= 3)
    {
      v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", titleAlign];
    }

    else
    {
      v94 = off_1E7ACE548[titleAlign];
    }

    [dictionary setObject:v94 forKeyedSubscript:@"titleAlign"];
  }

  if (self->_titleImage)
  {
    titleImage = [(_SFPBRichTitleCardSection *)self titleImage];
    dictionaryRepresentation10 = [titleImage dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"titleImage"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"titleImage"];
    }
  }

  if (self->_titleNoWrap)
  {
    v98 = [*(v4 + 3480) numberWithBool:{-[_SFPBRichTitleCardSection titleNoWrap](self, "titleNoWrap")}];
    [dictionary setObject:v98 forKeyedSubscript:@"titleNoWrap"];
  }

  if (self->_titleWeight)
  {
    v99 = [*(v4 + 3480) numberWithInt:{-[_SFPBRichTitleCardSection titleWeight](self, "titleWeight")}];
    [dictionary setObject:v99 forKeyedSubscript:@"titleWeight"];
  }

  if (self->_type)
  {
    type = [(_SFPBRichTitleCardSection *)self type];
    v101 = [type copy];
    [dictionary setObject:v101 forKeyedSubscript:@"type"];
  }

  v102 = dictionary;

  v103 = *MEMORY[0x1E69E9840];
  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  punchoutOptions3 = [(_SFPBRichTitleCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBRichTitleCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  punchoutPickerTitle = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  punchoutPickerDismissText = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_133;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_133;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  type = [(_SFPBRichTitleCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBRichTitleCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  backgroundColor = [(_SFPBRichTitleCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBRichTitleCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  title = [(_SFPBRichTitleCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBRichTitleCardSection *)self title];
    title3 = [equalCopy title];
    v40 = [title2 isEqual:title3];

    if (!v40)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  subtitle = [(_SFPBRichTitleCardSection *)self subtitle];
  if (subtitle)
  {
    v42 = subtitle;
    subtitle2 = [(_SFPBRichTitleCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v45 = [subtitle2 isEqual:subtitle3];

    if (!v45)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self contentAdvisory];
  punchoutOptions2 = [equalCopy contentAdvisory];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  contentAdvisory = [(_SFPBRichTitleCardSection *)self contentAdvisory];
  if (contentAdvisory)
  {
    v47 = contentAdvisory;
    contentAdvisory2 = [(_SFPBRichTitleCardSection *)self contentAdvisory];
    contentAdvisory3 = [equalCopy contentAdvisory];
    v50 = [contentAdvisory2 isEqual:contentAdvisory3];

    if (!v50)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self titleImage];
  punchoutOptions2 = [equalCopy titleImage];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  titleImage = [(_SFPBRichTitleCardSection *)self titleImage];
  if (titleImage)
  {
    v52 = titleImage;
    titleImage2 = [(_SFPBRichTitleCardSection *)self titleImage];
    titleImage3 = [equalCopy titleImage];
    v55 = [titleImage2 isEqual:titleImage3];

    if (!v55)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  isCentered = self->_isCentered;
  if (isCentered != [equalCopy isCentered])
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self descriptionText];
  punchoutOptions2 = [equalCopy descriptionText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  descriptionText = [(_SFPBRichTitleCardSection *)self descriptionText];
  if (descriptionText)
  {
    v58 = descriptionText;
    descriptionText2 = [(_SFPBRichTitleCardSection *)self descriptionText];
    descriptionText3 = [equalCopy descriptionText];
    v61 = [descriptionText2 isEqual:descriptionText3];

    if (!v61)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  rating = self->_rating;
  [equalCopy rating];
  if (rating != v63)
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self ratingText];
  punchoutOptions2 = [equalCopy ratingText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  ratingText = [(_SFPBRichTitleCardSection *)self ratingText];
  if (ratingText)
  {
    v65 = ratingText;
    ratingText2 = [(_SFPBRichTitleCardSection *)self ratingText];
    ratingText3 = [equalCopy ratingText];
    v68 = [ratingText2 isEqual:ratingText3];

    if (!v68)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self reviewGlyph];
  punchoutOptions2 = [equalCopy reviewGlyph];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  reviewGlyph = [(_SFPBRichTitleCardSection *)self reviewGlyph];
  if (reviewGlyph)
  {
    v70 = reviewGlyph;
    reviewGlyph2 = [(_SFPBRichTitleCardSection *)self reviewGlyph];
    reviewGlyph3 = [equalCopy reviewGlyph];
    v73 = [reviewGlyph2 isEqual:reviewGlyph3];

    if (!v73)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self reviewText];
  punchoutOptions2 = [equalCopy reviewText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  reviewText = [(_SFPBRichTitleCardSection *)self reviewText];
  if (reviewText)
  {
    v75 = reviewText;
    reviewText2 = [(_SFPBRichTitleCardSection *)self reviewText];
    reviewText3 = [equalCopy reviewText];
    v78 = [reviewText2 isEqual:reviewText3];

    if (!v78)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  reviewNewLine = self->_reviewNewLine;
  if (reviewNewLine != [equalCopy reviewNewLine])
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self moreGlyphs];
  punchoutOptions2 = [equalCopy moreGlyphs];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  moreGlyphs = [(_SFPBRichTitleCardSection *)self moreGlyphs];
  if (moreGlyphs)
  {
    v81 = moreGlyphs;
    moreGlyphs2 = [(_SFPBRichTitleCardSection *)self moreGlyphs];
    moreGlyphs3 = [equalCopy moreGlyphs];
    v84 = [moreGlyphs2 isEqual:moreGlyphs3];

    if (!v84)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
  punchoutOptions2 = [equalCopy auxiliaryTopText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  auxiliaryTopText = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
  if (auxiliaryTopText)
  {
    v86 = auxiliaryTopText;
    auxiliaryTopText2 = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
    auxiliaryTopText3 = [equalCopy auxiliaryTopText];
    v89 = [auxiliaryTopText2 isEqual:auxiliaryTopText3];

    if (!v89)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
  punchoutOptions2 = [equalCopy auxiliaryMiddleText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  auxiliaryMiddleText = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
  if (auxiliaryMiddleText)
  {
    v91 = auxiliaryMiddleText;
    auxiliaryMiddleText2 = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
    auxiliaryMiddleText3 = [equalCopy auxiliaryMiddleText];
    v94 = [auxiliaryMiddleText2 isEqual:auxiliaryMiddleText3];

    if (!v94)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
  punchoutOptions2 = [equalCopy auxiliaryBottomText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  auxiliaryBottomText = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
  if (auxiliaryBottomText)
  {
    v96 = auxiliaryBottomText;
    auxiliaryBottomText2 = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
    auxiliaryBottomText3 = [equalCopy auxiliaryBottomText];
    v99 = [auxiliaryBottomText2 isEqual:auxiliaryBottomText3];

    if (!v99)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  auxiliaryBottomTextColor = self->_auxiliaryBottomTextColor;
  if (auxiliaryBottomTextColor != [equalCopy auxiliaryBottomTextColor])
  {
    goto LABEL_133;
  }

  auxiliaryAlignment = self->_auxiliaryAlignment;
  if (auxiliaryAlignment != [equalCopy auxiliaryAlignment])
  {
    goto LABEL_133;
  }

  hideVerticalDivider = self->_hideVerticalDivider;
  if (hideVerticalDivider != [equalCopy hideVerticalDivider])
  {
    goto LABEL_133;
  }

  titleAlign = self->_titleAlign;
  if (titleAlign != [equalCopy titleAlign])
  {
    goto LABEL_133;
  }

  titleWeight = self->_titleWeight;
  if (titleWeight != [equalCopy titleWeight])
  {
    goto LABEL_133;
  }

  titleNoWrap = self->_titleNoWrap;
  if (titleNoWrap != [equalCopy titleNoWrap])
  {
    goto LABEL_133;
  }

  thumbnailCropCircle = self->_thumbnailCropCircle;
  if (thumbnailCropCircle != [equalCopy thumbnailCropCircle])
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self imageOverlay];
  punchoutOptions2 = [equalCopy imageOverlay];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  imageOverlay = [(_SFPBRichTitleCardSection *)self imageOverlay];
  if (imageOverlay)
  {
    v108 = imageOverlay;
    imageOverlay2 = [(_SFPBRichTitleCardSection *)self imageOverlay];
    imageOverlay3 = [equalCopy imageOverlay];
    v111 = [imageOverlay2 isEqual:imageOverlay3];

    if (!v111)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self playAction];
  punchoutOptions2 = [equalCopy playAction];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  playAction = [(_SFPBRichTitleCardSection *)self playAction];
  if (playAction)
  {
    v113 = playAction;
    playAction2 = [(_SFPBRichTitleCardSection *)self playAction];
    playAction3 = [equalCopy playAction];
    v116 = [playAction2 isEqual:playAction3];

    if (!v116)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  playActionAlign = self->_playActionAlign;
  if (playActionAlign != [equalCopy playActionAlign])
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self offers];
  punchoutOptions2 = [equalCopy offers];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  offers = [(_SFPBRichTitleCardSection *)self offers];
  if (offers)
  {
    v119 = offers;
    offers2 = [(_SFPBRichTitleCardSection *)self offers];
    offers3 = [equalCopy offers];
    v122 = [offers2 isEqual:offers3];

    if (!v122)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self footnote];
  punchoutOptions2 = [equalCopy footnote];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  footnote = [(_SFPBRichTitleCardSection *)self footnote];
  if (footnote)
  {
    v124 = footnote;
    footnote2 = [(_SFPBRichTitleCardSection *)self footnote];
    footnote3 = [equalCopy footnote];
    v127 = [footnote2 isEqual:footnote3];

    if (!v127)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self richSubtitle];
  punchoutOptions2 = [equalCopy richSubtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_132;
  }

  richSubtitle = [(_SFPBRichTitleCardSection *)self richSubtitle];
  if (richSubtitle)
  {
    v129 = richSubtitle;
    richSubtitle2 = [(_SFPBRichTitleCardSection *)self richSubtitle];
    richSubtitle3 = [equalCopy richSubtitle];
    v132 = [richSubtitle2 isEqual:richSubtitle3];

    if (!v132)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  subtitleIsEmphasized = self->_subtitleIsEmphasized;
  if (subtitleIsEmphasized != [equalCopy subtitleIsEmphasized])
  {
    goto LABEL_133;
  }

  punchoutOptions = [(_SFPBRichTitleCardSection *)self buttonItems];
  punchoutOptions2 = [equalCopy buttonItems];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_132:

    goto LABEL_133;
  }

  buttonItems = [(_SFPBRichTitleCardSection *)self buttonItems];
  if (!buttonItems)
  {

LABEL_136:
    v139 = 1;
    goto LABEL_134;
  }

  v135 = buttonItems;
  buttonItems2 = [(_SFPBRichTitleCardSection *)self buttonItems];
  buttonItems3 = [equalCopy buttonItems];
  v138 = [buttonItems2 isEqual:buttonItems3];

  if (v138)
  {
    goto LABEL_136;
  }

LABEL_133:
  v139 = 0;
LABEL_134:

  return v139;
}

- (void)writeTo:(id)to
{
  v70 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  punchoutPickerTitle = [(_SFPBRichTitleCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBRichTitleCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
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

  type = [(_SFPBRichTitleCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRichTitleCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBRichTitleCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBRichTitleCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  subtitle = [(_SFPBRichTitleCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteStringField();
  }

  contentAdvisory = [(_SFPBRichTitleCardSection *)self contentAdvisory];
  if (contentAdvisory)
  {
    PBDataWriterWriteStringField();
  }

  titleImage = [(_SFPBRichTitleCardSection *)self titleImage];
  if (titleImage)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRichTitleCardSection *)self isCentered])
  {
    PBDataWriterWriteBOOLField();
  }

  descriptionText = [(_SFPBRichTitleCardSection *)self descriptionText];
  if (descriptionText)
  {
    PBDataWriterWriteStringField();
  }

  [(_SFPBRichTitleCardSection *)self rating];
  if (v20 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  ratingText = [(_SFPBRichTitleCardSection *)self ratingText];
  if (ratingText)
  {
    PBDataWriterWriteStringField();
  }

  reviewGlyph = [(_SFPBRichTitleCardSection *)self reviewGlyph];
  if (reviewGlyph)
  {
    PBDataWriterWriteSubmessage();
  }

  reviewText = [(_SFPBRichTitleCardSection *)self reviewText];
  if (reviewText)
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

  auxiliaryTopText = [(_SFPBRichTitleCardSection *)self auxiliaryTopText];
  if (auxiliaryTopText)
  {
    PBDataWriterWriteStringField();
  }

  auxiliaryMiddleText = [(_SFPBRichTitleCardSection *)self auxiliaryMiddleText];
  if (auxiliaryMiddleText)
  {
    PBDataWriterWriteStringField();
  }

  auxiliaryBottomText = [(_SFPBRichTitleCardSection *)self auxiliaryBottomText];
  if (auxiliaryBottomText)
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

  imageOverlay = [(_SFPBRichTitleCardSection *)self imageOverlay];
  if (imageOverlay)
  {
    PBDataWriterWriteSubmessage();
  }

  playAction = [(_SFPBRichTitleCardSection *)self playAction];
  if (playAction)
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

  footnote = [(_SFPBRichTitleCardSection *)self footnote];
  if (footnote)
  {
    PBDataWriterWriteStringField();
  }

  richSubtitle = [(_SFPBRichTitleCardSection *)self richSubtitle];
  if (richSubtitle)
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

- (void)addButtonItems:(id)items
{
  itemsCopy = items;
  buttonItems = self->_buttonItems;
  v8 = itemsCopy;
  if (!buttonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_buttonItems;
    self->_buttonItems = array;

    itemsCopy = v8;
    buttonItems = self->_buttonItems;
  }

  [(NSArray *)buttonItems addObject:itemsCopy];
}

- (void)setButtonItems:(id)items
{
  v4 = [items copy];
  buttonItems = self->_buttonItems;
  self->_buttonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFootnote:(id)footnote
{
  v4 = [footnote copy];
  footnote = self->_footnote;
  self->_footnote = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addOffers:(id)offers
{
  offersCopy = offers;
  offers = self->_offers;
  v8 = offersCopy;
  if (!offers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_offers;
    self->_offers = array;

    offersCopy = v8;
    offers = self->_offers;
  }

  [(NSArray *)offers addObject:offersCopy];
}

- (void)setOffers:(id)offers
{
  v4 = [offers copy];
  offers = self->_offers;
  self->_offers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAuxiliaryBottomText:(id)text
{
  v4 = [text copy];
  auxiliaryBottomText = self->_auxiliaryBottomText;
  self->_auxiliaryBottomText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAuxiliaryMiddleText:(id)text
{
  v4 = [text copy];
  auxiliaryMiddleText = self->_auxiliaryMiddleText;
  self->_auxiliaryMiddleText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAuxiliaryTopText:(id)text
{
  v4 = [text copy];
  auxiliaryTopText = self->_auxiliaryTopText;
  self->_auxiliaryTopText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addMoreGlyphs:(id)glyphs
{
  glyphsCopy = glyphs;
  moreGlyphs = self->_moreGlyphs;
  v8 = glyphsCopy;
  if (!moreGlyphs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_moreGlyphs;
    self->_moreGlyphs = array;

    glyphsCopy = v8;
    moreGlyphs = self->_moreGlyphs;
  }

  [(NSArray *)moreGlyphs addObject:glyphsCopy];
}

- (void)setMoreGlyphs:(id)glyphs
{
  v4 = [glyphs copy];
  moreGlyphs = self->_moreGlyphs;
  self->_moreGlyphs = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setReviewText:(id)text
{
  v4 = [text copy];
  reviewText = self->_reviewText;
  self->_reviewText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRatingText:(id)text
{
  v4 = [text copy];
  ratingText = self->_ratingText;
  self->_ratingText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDescriptionText:(id)text
{
  v4 = [text copy];
  descriptionText = self->_descriptionText;
  self->_descriptionText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContentAdvisory:(id)advisory
{
  v4 = [advisory copy];
  contentAdvisory = self->_contentAdvisory;
  self->_contentAdvisory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)text
{
  v4 = [text copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)title
{
  v4 = [title copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)options
{
  optionsCopy = options;
  punchoutOptions = self->_punchoutOptions;
  v8 = optionsCopy;
  if (!punchoutOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = array;

    optionsCopy = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:optionsCopy];
}

- (void)setPunchoutOptions:(id)options
{
  v4 = [options copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end