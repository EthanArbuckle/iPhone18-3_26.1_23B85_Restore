@interface SFRichTitleCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRichTitleCardSection)initWithCoder:(id)a3;
- (SFRichTitleCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRichTitleCardSection

- (SFRichTitleCardSection)initWithProtobuf:(id)a3
{
  v119 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v114.receiver = self;
  v114.super_class = SFRichTitleCardSection;
  v5 = [(SFCardSection *)&v114 init];

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

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v110 objects:v118 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v111;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v111 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v110 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v110 objects:v118 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(SFTitleCardSection *)v5 setType:v19];
    }

    if ([v4 separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [SFColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:v22];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [v4 title];
      [(SFTitleCardSection *)v5 setTitle:v25];
    }

    v26 = [v4 subtitle];

    if (v26)
    {
      v27 = [v4 subtitle];
      [(SFTitleCardSection *)v5 setSubtitle:v27];
    }

    v28 = [v4 contentAdvisory];

    if (v28)
    {
      v29 = [v4 contentAdvisory];
      [(SFRichTitleCardSection *)v5 setContentAdvisory:v29];
    }

    v30 = [v4 titleImage];

    if (v30)
    {
      v31 = [SFImage alloc];
      v32 = [v4 titleImage];
      v33 = [(SFImage *)v31 initWithProtobuf:v32];
      [(SFRichTitleCardSection *)v5 setTitleImage:v33];
    }

    if ([v4 isCentered])
    {
      -[SFTitleCardSection setIsCentered:](v5, "setIsCentered:", [v4 isCentered]);
    }

    v34 = [v4 descriptionText];

    if (v34)
    {
      v35 = [v4 descriptionText];
      [(SFRichTitleCardSection *)v5 setDescriptionText:v35];
    }

    [v4 rating];
    if (v36 != 0.0)
    {
      v37 = MEMORY[0x1E696AD98];
      [v4 rating];
      v38 = [v37 numberWithFloat:?];
      [(SFRichTitleCardSection *)v5 setRating:v38];
    }

    v39 = [v4 ratingText];

    if (v39)
    {
      v40 = [v4 ratingText];
      [(SFRichTitleCardSection *)v5 setRatingText:v40];
    }

    v41 = [v4 reviewGlyph];

    if (v41)
    {
      v42 = [SFImage alloc];
      v43 = [v4 reviewGlyph];
      v44 = [(SFImage *)v42 initWithProtobuf:v43];
      [(SFRichTitleCardSection *)v5 setReviewGlyph:v44];
    }

    v45 = [v4 reviewText];

    if (v45)
    {
      v46 = [v4 reviewText];
      [(SFRichTitleCardSection *)v5 setReviewText:v46];
    }

    if ([v4 reviewNewLine])
    {
      -[SFRichTitleCardSection setReviewNewLine:](v5, "setReviewNewLine:", [v4 reviewNewLine]);
    }

    v47 = [v4 moreGlyphs];
    v97 = v5;
    if (v47)
    {
      v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v48 = 0;
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v49 = [v4 moreGlyphs];
    v50 = [v49 countByEnumeratingWithState:&v106 objects:v117 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v107;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v107 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = [[SFImage alloc] initWithProtobuf:*(*(&v106 + 1) + 8 * j)];
          if (v54)
          {
            [v48 addObject:v54];
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v106 objects:v117 count:16];
      }

      while (v51);
    }

    [(SFRichTitleCardSection *)v97 setMoreGlyphs:v48];
    v55 = [v4 auxiliaryTopText];

    if (v55)
    {
      v56 = [v4 auxiliaryTopText];
      [(SFRichTitleCardSection *)v97 setAuxiliaryTopText:v56];
    }

    v57 = [v4 auxiliaryMiddleText];

    if (v57)
    {
      v58 = [v4 auxiliaryMiddleText];
      [(SFRichTitleCardSection *)v97 setAuxiliaryMiddleText:v58];
    }

    v59 = [v4 auxiliaryBottomText];

    if (v59)
    {
      v60 = [v4 auxiliaryBottomText];
      [(SFRichTitleCardSection *)v97 setAuxiliaryBottomText:v60];
    }

    if ([v4 auxiliaryBottomTextColor])
    {
      -[SFRichTitleCardSection setAuxiliaryBottomTextColor:](v97, "setAuxiliaryBottomTextColor:", [v4 auxiliaryBottomTextColor]);
    }

    if ([v4 auxiliaryAlignment])
    {
      v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "auxiliaryAlignment")}];
      [(SFRichTitleCardSection *)v97 setAuxiliaryAlignment:v61];
    }

    if ([v4 hideVerticalDivider])
    {
      -[SFRichTitleCardSection setHideVerticalDivider:](v97, "setHideVerticalDivider:", [v4 hideVerticalDivider]);
    }

    if ([v4 titleAlign])
    {
      -[SFRichTitleCardSection setTitleAlign:](v97, "setTitleAlign:", [v4 titleAlign]);
    }

    if ([v4 titleWeight])
    {
      v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "titleWeight")}];
      [(SFRichTitleCardSection *)v97 setTitleWeight:v62];
    }

    if ([v4 titleNoWrap])
    {
      -[SFRichTitleCardSection setTitleNoWrap:](v97, "setTitleNoWrap:", [v4 titleNoWrap]);
    }

    if ([v4 thumbnailCropCircle])
    {
      -[SFRichTitleCardSection setThumbnailCropCircle:](v97, "setThumbnailCropCircle:", [v4 thumbnailCropCircle]);
    }

    v63 = [v4 imageOverlay];

    if (v63)
    {
      v64 = [SFImage alloc];
      v65 = [v4 imageOverlay];
      v66 = [(SFImage *)v64 initWithProtobuf:v65];
      [(SFRichTitleCardSection *)v97 setImageOverlay:v66];
    }

    v67 = [v4 playAction];

    if (v67)
    {
      v68 = [SFActionItem alloc];
      v69 = [v4 playAction];
      v70 = [(SFActionItem *)v68 initWithProtobuf:v69];
      [(SFRichTitleCardSection *)v97 setPlayAction:v70];
    }

    if ([v4 playActionAlign])
    {
      -[SFRichTitleCardSection setPlayActionAlign:](v97, "setPlayActionAlign:", [v4 playActionAlign]);
    }

    v71 = [v4 offers];
    if (v71)
    {
      v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v72 = 0;
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v73 = [v4 offers];
    v74 = [v73 countByEnumeratingWithState:&v102 objects:v116 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v103;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v103 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = [[SFMediaOffer alloc] initWithProtobuf:*(*(&v102 + 1) + 8 * k)];
          if (v78)
          {
            [v72 addObject:v78];
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v102 objects:v116 count:16];
      }

      while (v75);
    }

    [(SFRichTitleCardSection *)v97 setOffers:v72];
    v79 = [v4 footnote];

    if (v79)
    {
      v80 = [v4 footnote];
      [(SFRichTitleCardSection *)v97 setFootnote:v80];
    }

    v81 = [v4 richSubtitle];

    if (v81)
    {
      v82 = [SFRichText alloc];
      v83 = [v4 richSubtitle];
      v84 = [(SFRichText *)v82 initWithProtobuf:v83];
      [(SFRichTitleCardSection *)v97 setRichSubtitle:v84];
    }

    if ([v4 subtitleIsEmphasized])
    {
      -[SFRichTitleCardSection setSubtitleIsEmphasized:](v97, "setSubtitleIsEmphasized:", [v4 subtitleIsEmphasized]);
    }

    v85 = [v4 buttonItems];
    if (v85)
    {
      v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v86 = 0;
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = v4;
    v87 = [v4 buttonItems];
    v88 = [v87 countByEnumeratingWithState:&v98 objects:v115 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v99;
      do
      {
        for (m = 0; m != v89; ++m)
        {
          if (*v99 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v92 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v98 + 1) + 8 * m)];
          if (v92)
          {
            [v86 addObject:v92];
          }
        }

        v89 = [v87 countByEnumeratingWithState:&v98 objects:v115 count:16];
      }

      while (v89);
    }

    v5 = v97;
    [(SFRichTitleCardSection *)v97 setButtonItems:v86];
    v93 = v97;

    v4 = v96;
  }

  v94 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v70.receiver = self;
  v70.super_class = SFRichTitleCardSection;
  v3 = [(SFTitleCardSection *)&v70 hash];
  v69 = [(SFCardSection *)self punchoutOptions];
  v4 = [v69 hash];
  v68 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v68 hash];
  v67 = [(SFCardSection *)self punchoutPickerDismissText];
  v6 = v5 ^ [v67 hash];
  v7 = v6 ^ [(SFCardSection *)self canBeHidden];
  v8 = v7 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v9 = [(SFCardSection *)self hasBottomPadding];
  v66 = [(SFTitleCardSection *)self type];
  v10 = v9 ^ [v66 hash];
  v11 = v10 ^ [(SFCardSection *)self separatorStyle];
  v65 = [(SFCardSection *)self backgroundColor];
  v12 = v11 ^ [v65 hash];
  v64 = [(SFTitleCardSection *)self title];
  v13 = v8 ^ v12 ^ [v64 hash];
  v63 = [(SFTitleCardSection *)self subtitle];
  v14 = [v63 hash];
  v62 = [(SFRichTitleCardSection *)self contentAdvisory];
  v15 = v14 ^ [v62 hash];
  v61 = [(SFRichTitleCardSection *)self titleImage];
  v16 = v15 ^ [v61 hash];
  v17 = v16 ^ [(SFTitleCardSection *)self isCentered];
  v60 = [(SFRichTitleCardSection *)self descriptionText];
  v18 = v17 ^ [v60 hash];
  v59 = [(SFRichTitleCardSection *)self rating];
  v19 = v18 ^ [v59 hash];
  v58 = [(SFRichTitleCardSection *)self ratingText];
  v20 = v13 ^ v19 ^ [v58 hash];
  v57 = [(SFRichTitleCardSection *)self reviewGlyph];
  v21 = [v57 hash];
  v56 = [(SFRichTitleCardSection *)self reviewText];
  v22 = v21 ^ [v56 hash];
  v23 = v22 ^ [(SFRichTitleCardSection *)self reviewNewLine];
  v55 = [(SFRichTitleCardSection *)self moreGlyphs];
  v24 = v23 ^ [v55 hash];
  v54 = [(SFRichTitleCardSection *)self auxiliaryTopText];
  v25 = v24 ^ [v54 hash];
  v53 = [(SFRichTitleCardSection *)self auxiliaryMiddleText];
  v26 = v25 ^ [v53 hash];
  v27 = [(SFRichTitleCardSection *)self auxiliaryBottomText];
  v28 = v26 ^ [v27 hash];
  v29 = v20 ^ v28 ^ [(SFRichTitleCardSection *)self auxiliaryBottomTextColor];
  v30 = [(SFRichTitleCardSection *)self auxiliaryAlignment];
  v31 = [v30 hash];
  v32 = v31 ^ [(SFRichTitleCardSection *)self hideVerticalDivider];
  v33 = v32 ^ [(SFRichTitleCardSection *)self titleAlign];
  v34 = [(SFRichTitleCardSection *)self titleWeight];
  v35 = v33 ^ [v34 hash];
  v36 = v35 ^ [(SFRichTitleCardSection *)self titleNoWrap];
  v37 = v36 ^ [(SFRichTitleCardSection *)self thumbnailCropCircle];
  v38 = [(SFRichTitleCardSection *)self imageOverlay];
  v39 = v37 ^ [v38 hash];
  v40 = [(SFRichTitleCardSection *)self playAction];
  v52 = v29 ^ v39 ^ [v40 hash];
  v41 = [(SFRichTitleCardSection *)self playActionAlign];
  v42 = [(SFRichTitleCardSection *)self offers];
  v43 = v41 ^ [v42 hash];
  v44 = [(SFRichTitleCardSection *)self footnote];
  v45 = v43 ^ [v44 hash];
  v46 = [(SFRichTitleCardSection *)self richSubtitle];
  v47 = v45 ^ [v46 hash];
  v48 = v47 ^ [(SFRichTitleCardSection *)self subtitleIsEmphasized];
  v49 = [(SFRichTitleCardSection *)self buttonItems];
  v50 = v48 ^ [v49 hash];

  return v52 ^ v50;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_165;
  }

  if (![(SFRichTitleCardSection *)v4 isMemberOfClass:objc_opt_class()]|| (v290.receiver = self, v290.super_class = SFRichTitleCardSection, ![(SFTitleCardSection *)&v290 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_165;
  }

  v5 = v4;
  v282 = [(SFCardSection *)self punchoutOptions];
  v281 = [(SFCardSection *)v5 punchoutOptions];
  v279 = v281 == 0;
  v280 = v282 != 0;
  v289 = v5;
  if (v280 == v279)
  {
    v264 = 0;
    v262 = 0;
    v260 = 0;
    v10 = 0;
    memset(v278, 0, sizeof(v278));
    v259 = 0;
    v277 = 0;
    v257 = 0;
    v258 = 0;
    v288 = 0;
    v11 = 0;
    v12 = 0;
    v252 = 0;
    v254 = 0;
    v287 = 0;
    v247 = 0;
    v251 = 0;
    v286 = 0;
    v243 = 0;
    v244 = 0;
    v285 = 0;
    v242 = 0;
    v245 = 0;
    v284 = 0;
    v238 = 0;
    v241 = 0;
    v283 = 0;
    v235 = 0;
    v237 = 0;
    v276 = 0;
    v232 = 0;
    v236 = 0;
    v275 = 0;
    v227 = 0;
    v274 = 0;
    v228 = 0;
    v234 = 0;
    v273 = 0;
    v226 = 0;
    v233 = 0;
    v272 = 0;
    v224 = 0;
    v230 = 0;
    v271 = 0;
    v223 = 0;
    v225 = 0;
    v270 = 0;
    v229 = 0;
    v231 = 0;
    v269 = 0;
    v239 = 0;
    v240 = 0;
    v268 = 0;
    v246 = 0;
    v249 = 0;
    v267 = 0;
    v248 = 0;
    v250 = 0;
    v266 = 0;
    v253 = 0;
    v256 = 0;
    v265 = 0;
    v255 = 0;
    v13 = 0;
    v263 = 0;
    v14 = 0;
    v15 = 0;
    v261 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v7 = [(SFCardSection *)self punchoutOptions];
  v8 = v7 != 0;
  v222 = v7;
  if (v7)
  {
    v9 = [(SFCardSection *)self punchoutOptions];
    [(SFCardSection *)v5 punchoutOptions];
    v218 = v219 = v9;
    if (![v9 isEqual:?])
    {
      v264 = 0;
      v262 = 0;
      *v278 = 0;
      v260 = 0;
      v10 = 0;
      v259 = 0;
      v277 = 0;
      v257 = 0;
      v258 = 0;
      v288 = 0;
      v11 = 0;
      v12 = 0;
      v252 = 0;
      v254 = 0;
      v287 = 0;
      v247 = 0;
      v251 = 0;
      v286 = 0;
      v243 = 0;
      v244 = 0;
      v285 = 0;
      v242 = 0;
      v245 = 0;
      v284 = 0;
      v238 = 0;
      v241 = 0;
      v283 = 0;
      v235 = 0;
      v237 = 0;
      v276 = 0;
      v232 = 0;
      v236 = 0;
      v275 = 0;
      v227 = 0;
      v274 = 0;
      v228 = 0;
      v234 = 0;
      v273 = 0;
      v226 = 0;
      v233 = 0;
      v272 = 0;
      v224 = 0;
      v230 = 0;
      v271 = 0;
      v223 = 0;
      v225 = 0;
      v270 = 0;
      v229 = 0;
      v231 = 0;
      v269 = 0;
      v239 = 0;
      v240 = 0;
      v268 = 0;
      v246 = 0;
      v249 = 0;
      v267 = 0;
      v248 = 0;
      v250 = 0;
      v266 = 0;
      v253 = 0;
      v256 = 0;
      v265 = 0;
      v255 = 0;
      v13 = 0;
      v263 = 0;
      v14 = 0;
      v15 = 0;
      v261 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v278[8] = 1;
      goto LABEL_16;
    }
  }

  v221 = [(SFCardSection *)self punchoutPickerTitle];
  v220 = [(SFCardSection *)v5 punchoutPickerTitle];
  *&v278[8] = v8;
  if ((v221 != 0) == (v220 == 0))
  {
    v262 = 0;
    *v278 = 0;
    v260 = 0;
    v10 = 0;
    v259 = 0;
    v277 = 0;
    v257 = 0;
    v258 = 0;
    v288 = 0;
    v11 = 0;
    v12 = 0;
    v252 = 0;
    v254 = 0;
    v287 = 0;
    v247 = 0;
    v251 = 0;
    v286 = 0;
    v243 = 0;
    v244 = 0;
    v285 = 0;
    v242 = 0;
    v245 = 0;
    v284 = 0;
    v238 = 0;
    v241 = 0;
    v283 = 0;
    v235 = 0;
    v237 = 0;
    v276 = 0;
    v232 = 0;
    v236 = 0;
    v275 = 0;
    v227 = 0;
    v274 = 0;
    v228 = 0;
    v234 = 0;
    v273 = 0;
    v226 = 0;
    v233 = 0;
    v272 = 0;
    v224 = 0;
    v230 = 0;
    v271 = 0;
    v223 = 0;
    v225 = 0;
    v270 = 0;
    v229 = 0;
    v231 = 0;
    v269 = 0;
    v239 = 0;
    v240 = 0;
    v268 = 0;
    v246 = 0;
    v249 = 0;
    v267 = 0;
    v248 = 0;
    v250 = 0;
    v266 = 0;
    v253 = 0;
    v256 = 0;
    v265 = 0;
    v255 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v261 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v263 = 0;
    v264 = 1;
    goto LABEL_16;
  }

  v20 = [(SFCardSection *)self punchoutPickerTitle];
  v21 = v20 != 0;
  v217 = v20;
  if (v20)
  {
    v22 = [(SFCardSection *)self punchoutPickerTitle];
    [(SFCardSection *)v5 punchoutPickerTitle];
    v213 = v214 = v22;
    if (![v22 isEqual:?])
    {
      v260 = 0;
      v10 = 0;
      *v278 = 0;
      v259 = 0;
      v277 = 0;
      v257 = 0;
      v258 = 0;
      v288 = 0;
      v11 = 0;
      v12 = 0;
      v252 = 0;
      v254 = 0;
      v287 = 0;
      v247 = 0;
      v251 = 0;
      v286 = 0;
      v243 = 0;
      v244 = 0;
      v285 = 0;
      v242 = 0;
      v245 = 0;
      v284 = 0;
      v238 = 0;
      v241 = 0;
      v283 = 0;
      v235 = 0;
      v237 = 0;
      v276 = 0;
      v232 = 0;
      v236 = 0;
      v275 = 0;
      v227 = 0;
      v274 = 0;
      v228 = 0;
      v234 = 0;
      v273 = 0;
      v226 = 0;
      v233 = 0;
      v272 = 0;
      v224 = 0;
      v230 = 0;
      v271 = 0;
      v223 = 0;
      v225 = 0;
      v270 = 0;
      v229 = 0;
      v231 = 0;
      v269 = 0;
      v239 = 0;
      v240 = 0;
      v268 = 0;
      v246 = 0;
      v249 = 0;
      v267 = 0;
      v248 = 0;
      v250 = 0;
      v266 = 0;
      v253 = 0;
      v256 = 0;
      v265 = 0;
      v255 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v263 = 0;
      v264 = 1;
      v261 = 0;
      v262 = 1;
      *&v278[4] = 1;
      goto LABEL_16;
    }
  }

  v216 = [(SFCardSection *)self punchoutPickerDismissText];
  v215 = [(SFCardSection *)v5 punchoutPickerDismissText];
  *&v278[4] = v21;
  if ((v216 != 0) == (v215 == 0))
  {
    v10 = 0;
    *v278 = 0;
    v260 = 0x100000000;
    v259 = 0;
    v277 = 0;
    v257 = 0;
    v258 = 0;
    v288 = 0;
    v11 = 0;
    v12 = 0;
    v252 = 0;
    v254 = 0;
    v287 = 0;
    v247 = 0;
    v251 = 0;
    v286 = 0;
    v243 = 0;
    v244 = 0;
    v285 = 0;
    v242 = 0;
    v245 = 0;
    v284 = 0;
    v238 = 0;
    v241 = 0;
    v283 = 0;
    v235 = 0;
    v237 = 0;
    v276 = 0;
    v232 = 0;
    v236 = 0;
    v275 = 0;
    v227 = 0;
    v274 = 0;
    v228 = 0;
    v234 = 0;
    v273 = 0;
    v226 = 0;
    v233 = 0;
    v272 = 0;
    v224 = 0;
    v230 = 0;
    v271 = 0;
    v223 = 0;
    v225 = 0;
    v270 = 0;
    v229 = 0;
    v231 = 0;
    v269 = 0;
    v239 = 0;
    v240 = 0;
    v268 = 0;
    v246 = 0;
    v249 = 0;
    v267 = 0;
    v248 = 0;
    v250 = 0;
    v266 = 0;
    v253 = 0;
    v256 = 0;
    v265 = 0;
    v255 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v263 = 0;
    v264 = 1;
    v261 = 0;
    v262 = 1;
    goto LABEL_16;
  }

  v33 = [(SFCardSection *)self punchoutPickerDismissText];
  v34 = v33 != 0;
  v212 = v33;
  if (v33)
  {
    v35 = [(SFCardSection *)self punchoutPickerDismissText];
    [(SFCardSection *)v5 punchoutPickerDismissText];
    v210 = v211 = v35;
    if (![v35 isEqual:?])
    {
      v260 = 0x100000000;
      v259 = 0;
      v277 = 0;
      v257 = 0;
      v258 = 0;
      v288 = 0;
      v11 = 0;
      v12 = 0;
      v252 = 0;
      v254 = 0;
      v287 = 0;
      v247 = 0;
      v251 = 0;
      v286 = 0;
      v243 = 0;
      v244 = 0;
      v285 = 0;
      v242 = 0;
      v245 = 0;
      v284 = 0;
      v238 = 0;
      v241 = 0;
      v283 = 0;
      v235 = 0;
      v237 = 0;
      v276 = 0;
      v232 = 0;
      v236 = 0;
      v275 = 0;
      v227 = 0;
      v274 = 0;
      v228 = 0;
      v234 = 0;
      v273 = 0;
      v226 = 0;
      v233 = 0;
      v272 = 0;
      v224 = 0;
      v230 = 0;
      v271 = 0;
      v223 = 0;
      v225 = 0;
      v270 = 0;
      v229 = 0;
      v231 = 0;
      v269 = 0;
      v239 = 0;
      v240 = 0;
      v268 = 0;
      v246 = 0;
      v249 = 0;
      v267 = 0;
      v248 = 0;
      v250 = 0;
      v266 = 0;
      v253 = 0;
      v256 = 0;
      v265 = 0;
      v255 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v263 = 0;
      v264 = 1;
      v261 = 0;
      v262 = 1;
      v10 = 1;
      *v278 = 1;
      goto LABEL_16;
    }

    *v278 = v34;
  }

  else
  {
    *v278 = 0;
  }

  v36 = [(SFCardSection *)self canBeHidden];
  if (v36 != [(SFCardSection *)v5 canBeHidden]|| (v37 = [(SFCardSection *)self hasTopPadding], v37 != [(SFCardSection *)v5 hasTopPadding]) || (v38 = [(SFCardSection *)self hasBottomPadding], v38 != [(SFCardSection *)v5 hasBottomPadding]))
  {
    v260 = 0x100000000;
    v259 = 0;
    v277 = 0;
    v257 = 0;
    v258 = 0;
    v288 = 0;
    v11 = 0;
    v12 = 0;
    v252 = 0;
    v254 = 0;
    v287 = 0;
    v247 = 0;
    v251 = 0;
    v286 = 0;
    v243 = 0;
    v244 = 0;
    v285 = 0;
    v242 = 0;
    v245 = 0;
    v284 = 0;
    v238 = 0;
    v241 = 0;
    v283 = 0;
    v235 = 0;
    v237 = 0;
    v276 = 0;
    v232 = 0;
    v236 = 0;
    v275 = 0;
    v227 = 0;
    v274 = 0;
    v228 = 0;
    v234 = 0;
    v273 = 0;
    v226 = 0;
    v233 = 0;
    v272 = 0;
    v224 = 0;
    v230 = 0;
    v271 = 0;
    v223 = 0;
    v225 = 0;
    v270 = 0;
    v229 = 0;
    v231 = 0;
    v269 = 0;
    v239 = 0;
    v240 = 0;
    v268 = 0;
    v246 = 0;
    v249 = 0;
    v267 = 0;
    v248 = 0;
    v250 = 0;
    v266 = 0;
    v253 = 0;
    v256 = 0;
    v265 = 0;
    v255 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v263 = 0;
    v264 = 1;
    v261 = 0;
    v262 = 1;
    v10 = 1;
    goto LABEL_16;
  }

  v209 = [(SFTitleCardSection *)self type];
  v208 = [(SFTitleCardSection *)v5 type];
  if ((v209 != 0) == (v208 == 0))
  {
    v259 = 0;
    v277 = 0;
    v257 = 0;
    v258 = 0;
    v288 = 0;
    v11 = 0;
    v12 = 0;
    v252 = 0;
    v254 = 0;
    v287 = 0;
    v247 = 0;
    v251 = 0;
    v286 = 0;
    v243 = 0;
    v244 = 0;
    v285 = 0;
    v242 = 0;
    v245 = 0;
    v284 = 0;
    v238 = 0;
    v241 = 0;
    v283 = 0;
    v235 = 0;
    v237 = 0;
    v276 = 0;
    v232 = 0;
    v236 = 0;
    v275 = 0;
    v227 = 0;
    v274 = 0;
    v228 = 0;
    v234 = 0;
    v273 = 0;
    v226 = 0;
    v233 = 0;
    v272 = 0;
    v224 = 0;
    v230 = 0;
    v271 = 0;
    v223 = 0;
    v225 = 0;
    v270 = 0;
    v229 = 0;
    v231 = 0;
    v269 = 0;
    v239 = 0;
    v240 = 0;
    v268 = 0;
    v246 = 0;
    v249 = 0;
    v267 = 0;
    v248 = 0;
    v250 = 0;
    v266 = 0;
    v253 = 0;
    v256 = 0;
    v265 = 0;
    v255 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v263 = 0;
    v264 = 1;
    v261 = 0;
    v262 = 1;
    v10 = 1;
    v260 = 0x100000001;
    goto LABEL_16;
  }

  v39 = [(SFTitleCardSection *)self type];
  v40 = v39 != 0;
  v207 = v39;
  if (v39)
  {
    v41 = [(SFTitleCardSection *)self type];
    [(SFTitleCardSection *)v5 type];
    v205 = v206 = v41;
    if (![v41 isEqual:?])
    {
      v257 = 0;
      v258 = 0;
      v288 = 0;
      v11 = 0;
      v12 = 0;
      v252 = 0;
      v254 = 0;
      v287 = 0;
      v247 = 0;
      v251 = 0;
      v286 = 0;
      v243 = 0;
      v244 = 0;
      v285 = 0;
      v242 = 0;
      v245 = 0;
      v284 = 0;
      v238 = 0;
      v241 = 0;
      v283 = 0;
      v235 = 0;
      v237 = 0;
      v276 = 0;
      v232 = 0;
      v236 = 0;
      v275 = 0;
      v227 = 0;
      v274 = 0;
      v228 = 0;
      v234 = 0;
      v273 = 0;
      v226 = 0;
      v233 = 0;
      v272 = 0;
      v224 = 0;
      v230 = 0;
      v271 = 0;
      v223 = 0;
      v225 = 0;
      v270 = 0;
      v229 = 0;
      v231 = 0;
      v269 = 0;
      v239 = 0;
      v240 = 0;
      v268 = 0;
      v246 = 0;
      v249 = 0;
      v267 = 0;
      v248 = 0;
      v250 = 0;
      v266 = 0;
      v253 = 0;
      v256 = 0;
      v265 = 0;
      v255 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v263 = 0;
      v264 = 1;
      v261 = 0;
      v262 = 1;
      v260 = 0x100000001;
      v10 = 1;
      v259 = 1;
      v277 = 1;
      goto LABEL_16;
    }

    v277 = v40;
  }

  else
  {
    v277 = 0;
  }

  v42 = [(SFCardSection *)self separatorStyle];
  if (v42 == [(SFCardSection *)v5 separatorStyle])
  {
    v204 = [(SFCardSection *)self backgroundColor];
    v203 = [(SFCardSection *)v5 backgroundColor];
    if ((v204 != 0) == (v203 == 0))
    {
      v258 = 0;
      v288 = 0;
      v11 = 0;
      v12 = 0;
      v252 = 0;
      v254 = 0;
      v287 = 0;
      v247 = 0;
      v251 = 0;
      v286 = 0;
      v243 = 0;
      v244 = 0;
      v285 = 0;
      v242 = 0;
      v245 = 0;
      v284 = 0;
      v238 = 0;
      v241 = 0;
      v283 = 0;
      v235 = 0;
      v237 = 0;
      v276 = 0;
      v232 = 0;
      v236 = 0;
      v275 = 0;
      v227 = 0;
      v274 = 0;
      v228 = 0;
      v234 = 0;
      v273 = 0;
      v226 = 0;
      v233 = 0;
      v272 = 0;
      v224 = 0;
      v230 = 0;
      v271 = 0;
      v223 = 0;
      v225 = 0;
      v270 = 0;
      v229 = 0;
      v231 = 0;
      v269 = 0;
      v239 = 0;
      v240 = 0;
      v268 = 0;
      v246 = 0;
      v249 = 0;
      v267 = 0;
      v248 = 0;
      v250 = 0;
      v266 = 0;
      v253 = 0;
      v256 = 0;
      v265 = 0;
      v255 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v263 = 0;
      v264 = 1;
      v261 = 0;
      v262 = 1;
      v260 = 0x100000001;
      v10 = 1;
      v259 = 1;
      v257 = 1;
    }

    else
    {
      v43 = [(SFCardSection *)self backgroundColor];
      HIDWORD(v288) = v43 != 0;
      v202 = v43;
      if (!v43 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v44 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v5, "backgroundColor"), v199 = v44, v198 = objc_claimAutoreleasedReturnValue(), [v44 isEqual:?]))
      {
        v201 = [(SFTitleCardSection *)self title];
        v200 = [(SFTitleCardSection *)v5 title];
        if ((v201 != 0) == (v200 == 0))
        {
          v12 = 0;
          LODWORD(v288) = 0;
          v252 = 0;
          v254 = 0;
          v287 = 0;
          v247 = 0;
          v251 = 0;
          v286 = 0;
          v243 = 0;
          v244 = 0;
          v285 = 0;
          v242 = 0;
          v245 = 0;
          v284 = 0;
          v238 = 0;
          v241 = 0;
          v283 = 0;
          v235 = 0;
          v237 = 0;
          v276 = 0;
          v232 = 0;
          v236 = 0;
          v275 = 0;
          v227 = 0;
          v274 = 0;
          v228 = 0;
          v234 = 0;
          v273 = 0;
          v226 = 0;
          v233 = 0;
          v272 = 0;
          v224 = 0;
          v230 = 0;
          v271 = 0;
          v223 = 0;
          v225 = 0;
          v270 = 0;
          v229 = 0;
          v231 = 0;
          v269 = 0;
          v239 = 0;
          v240 = 0;
          v268 = 0;
          v246 = 0;
          v249 = 0;
          v267 = 0;
          v248 = 0;
          v250 = 0;
          v266 = 0;
          v253 = 0;
          v256 = 0;
          v265 = 0;
          v255 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v263 = 0;
          v264 = 1;
          v261 = 0;
          v262 = 1;
          v260 = 0x100000001;
          v10 = 1;
          v259 = 1;
          v257 = 1;
          v258 = 1;
          v11 = 1;
        }

        else
        {
          v45 = [(SFTitleCardSection *)self title];
          LODWORD(v288) = v45 != 0;
          v197 = v45;
          if (!v45 || (-[SFTitleCardSection title](self, "title"), v46 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection title](v5, "title"), v194 = v46, v193 = objc_claimAutoreleasedReturnValue(), [v46 isEqual:?]))
          {
            v196 = [(SFTitleCardSection *)self subtitle];
            v195 = [(SFTitleCardSection *)v5 subtitle];
            if ((v196 != 0) == (v195 == 0))
            {
              v254 = 0;
              v287 = 0;
              v247 = 0;
              v251 = 0;
              v286 = 0;
              v243 = 0;
              v244 = 0;
              v285 = 0;
              v242 = 0;
              v245 = 0;
              v284 = 0;
              v238 = 0;
              v241 = 0;
              v283 = 0;
              v235 = 0;
              v237 = 0;
              v276 = 0;
              v232 = 0;
              v236 = 0;
              v275 = 0;
              v227 = 0;
              v274 = 0;
              v228 = 0;
              v234 = 0;
              v273 = 0;
              v226 = 0;
              v233 = 0;
              v272 = 0;
              v224 = 0;
              v230 = 0;
              v271 = 0;
              v223 = 0;
              v225 = 0;
              v270 = 0;
              v229 = 0;
              v231 = 0;
              v269 = 0;
              v239 = 0;
              v240 = 0;
              v268 = 0;
              v246 = 0;
              v249 = 0;
              v267 = 0;
              v248 = 0;
              v250 = 0;
              v266 = 0;
              v253 = 0;
              v256 = 0;
              v265 = 0;
              v255 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v263 = 0;
              v264 = 1;
              v261 = 0;
              v262 = 1;
              v260 = 0x100000001;
              v10 = 1;
              v259 = 1;
              v257 = 1;
              v258 = 1;
              v11 = 1;
              v12 = 1;
              v252 = 1;
            }

            else
            {
              v47 = [(SFTitleCardSection *)self subtitle];
              v287 = v47 != 0;
              v192 = v47;
              if (!v47 || (-[SFTitleCardSection subtitle](self, "subtitle"), v48 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection subtitle](v5, "subtitle"), v189 = v48, v188 = objc_claimAutoreleasedReturnValue(), [v48 isEqual:?]))
              {
                v191 = [(SFRichTitleCardSection *)self contentAdvisory];
                v190 = [(SFRichTitleCardSection *)v5 contentAdvisory];
                if ((v191 != 0) == (v190 == 0))
                {
                  v251 = 0;
                  v286 = 0;
                  v243 = 0;
                  v244 = 0;
                  v285 = 0;
                  v242 = 0;
                  v245 = 0;
                  v284 = 0;
                  v238 = 0;
                  v241 = 0;
                  v283 = 0;
                  v235 = 0;
                  v237 = 0;
                  v276 = 0;
                  v232 = 0;
                  v236 = 0;
                  v275 = 0;
                  v227 = 0;
                  v274 = 0;
                  v228 = 0;
                  v234 = 0;
                  v273 = 0;
                  v226 = 0;
                  v233 = 0;
                  v272 = 0;
                  v224 = 0;
                  v230 = 0;
                  v271 = 0;
                  v223 = 0;
                  v225 = 0;
                  v270 = 0;
                  v229 = 0;
                  v231 = 0;
                  v269 = 0;
                  v239 = 0;
                  v240 = 0;
                  v268 = 0;
                  v246 = 0;
                  v249 = 0;
                  v267 = 0;
                  v248 = 0;
                  v250 = 0;
                  v266 = 0;
                  v253 = 0;
                  v256 = 0;
                  v265 = 0;
                  v255 = 0;
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v263 = 0;
                  v264 = 1;
                  v261 = 0;
                  v262 = 1;
                  v260 = 0x100000001;
                  v10 = 1;
                  v259 = 1;
                  v257 = 1;
                  v258 = 1;
                  v11 = 1;
                  v12 = 1;
                  v252 = 1;
                  v254 = 1;
                  v247 = 1;
                }

                else
                {
                  v49 = [(SFRichTitleCardSection *)self contentAdvisory];
                  v286 = v49 != 0;
                  v187 = v49;
                  if (!v49 || (-[SFRichTitleCardSection contentAdvisory](self, "contentAdvisory"), v50 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection contentAdvisory](v5, "contentAdvisory"), v184 = v50, v183 = objc_claimAutoreleasedReturnValue(), [v50 isEqual:?]))
                  {
                    v186 = [(SFRichTitleCardSection *)self titleImage];
                    v185 = [(SFRichTitleCardSection *)v5 titleImage];
                    if ((v186 != 0) == (v185 == 0))
                    {
                      v244 = 0;
                      v285 = 0;
                      v242 = 0;
                      v245 = 0;
                      v284 = 0;
                      v238 = 0;
                      v241 = 0;
                      v283 = 0;
                      v235 = 0;
                      v237 = 0;
                      v276 = 0;
                      v232 = 0;
                      v236 = 0;
                      v275 = 0;
                      v227 = 0;
                      v274 = 0;
                      v228 = 0;
                      v234 = 0;
                      v273 = 0;
                      v226 = 0;
                      v233 = 0;
                      v272 = 0;
                      v224 = 0;
                      v230 = 0;
                      v271 = 0;
                      v223 = 0;
                      v225 = 0;
                      v270 = 0;
                      v229 = 0;
                      v231 = 0;
                      v269 = 0;
                      v239 = 0;
                      v240 = 0;
                      v268 = 0;
                      v246 = 0;
                      v249 = 0;
                      v267 = 0;
                      v248 = 0;
                      v250 = 0;
                      v266 = 0;
                      v253 = 0;
                      v256 = 0;
                      v265 = 0;
                      v255 = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v263 = 0;
                      v264 = 1;
                      v261 = 0;
                      v262 = 1;
                      v260 = 0x100000001;
                      v10 = 1;
                      v259 = 1;
                      v257 = 1;
                      v258 = 1;
                      v11 = 1;
                      v12 = 1;
                      v252 = 1;
                      v254 = 1;
                      v247 = 1;
                      v251 = 1;
                      v243 = 1;
                    }

                    else
                    {
                      v51 = [(SFRichTitleCardSection *)self titleImage];
                      v285 = v51 != 0;
                      v182 = v51;
                      if (!v51 || (-[SFRichTitleCardSection titleImage](self, "titleImage"), v52 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection titleImage](v5, "titleImage"), v181 = v52, v180 = objc_claimAutoreleasedReturnValue(), [v52 isEqual:?]))
                      {
                        v53 = [(SFTitleCardSection *)self isCentered];
                        if (v53 == [(SFTitleCardSection *)v5 isCentered])
                        {
                          v179 = [(SFRichTitleCardSection *)self descriptionText];
                          v178 = [(SFRichTitleCardSection *)v5 descriptionText];
                          if ((v179 != 0) == (v178 == 0))
                          {
                            v245 = 0;
                            v284 = 0;
                            v238 = 0;
                            v241 = 0;
                            v283 = 0;
                            v235 = 0;
                            v237 = 0;
                            v276 = 0;
                            v232 = 0;
                            v236 = 0;
                            v275 = 0;
                            v227 = 0;
                            v274 = 0;
                            v228 = 0;
                            v234 = 0;
                            v273 = 0;
                            v226 = 0;
                            v233 = 0;
                            v272 = 0;
                            v224 = 0;
                            v230 = 0;
                            v271 = 0;
                            v223 = 0;
                            v225 = 0;
                            v270 = 0;
                            v229 = 0;
                            v231 = 0;
                            v269 = 0;
                            v239 = 0;
                            v240 = 0;
                            v268 = 0;
                            v246 = 0;
                            v249 = 0;
                            v267 = 0;
                            v248 = 0;
                            v250 = 0;
                            v266 = 0;
                            v253 = 0;
                            v256 = 0;
                            v265 = 0;
                            v255 = 0;
                            v13 = 0;
                            v14 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v263 = 0;
                            v264 = 1;
                            v261 = 0;
                            v262 = 1;
                            v260 = 0x100000001;
                            v10 = 1;
                            v259 = 1;
                            v257 = 1;
                            v258 = 1;
                            v11 = 1;
                            v12 = 1;
                            v252 = 1;
                            v254 = 1;
                            v247 = 1;
                            v251 = 1;
                            v243 = 1;
                            v244 = 1;
                            v242 = 1;
                          }

                          else
                          {
                            v54 = [(SFRichTitleCardSection *)self descriptionText];
                            v284 = v54 != 0;
                            v177 = v54;
                            if (!v54 || (-[SFRichTitleCardSection descriptionText](self, "descriptionText"), v55 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection descriptionText](v5, "descriptionText"), v174 = v55, v173 = objc_claimAutoreleasedReturnValue(), [v55 isEqual:?]))
                            {
                              v176 = [(SFRichTitleCardSection *)self rating];
                              v175 = [(SFRichTitleCardSection *)v5 rating];
                              if ((v176 != 0) == (v175 == 0))
                              {
                                v241 = 0;
                                v283 = 0;
                                v235 = 0;
                                v237 = 0;
                                v276 = 0;
                                v232 = 0;
                                v236 = 0;
                                v275 = 0;
                                v227 = 0;
                                v274 = 0;
                                v228 = 0;
                                v234 = 0;
                                v273 = 0;
                                v226 = 0;
                                v233 = 0;
                                v272 = 0;
                                v224 = 0;
                                v230 = 0;
                                v271 = 0;
                                v223 = 0;
                                v225 = 0;
                                v270 = 0;
                                v229 = 0;
                                v231 = 0;
                                v269 = 0;
                                v239 = 0;
                                v240 = 0;
                                v268 = 0;
                                v246 = 0;
                                v249 = 0;
                                v267 = 0;
                                v248 = 0;
                                v250 = 0;
                                v266 = 0;
                                v253 = 0;
                                v256 = 0;
                                v265 = 0;
                                v255 = 0;
                                v13 = 0;
                                v14 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v263 = 0;
                                v264 = 1;
                                v261 = 0;
                                v262 = 1;
                                v260 = 0x100000001;
                                v10 = 1;
                                v259 = 1;
                                v257 = 1;
                                v258 = 1;
                                v11 = 1;
                                v12 = 1;
                                v252 = 1;
                                v254 = 1;
                                v247 = 1;
                                v251 = 1;
                                v243 = 1;
                                v244 = 1;
                                v242 = 1;
                                v245 = 1;
                                v238 = 1;
                              }

                              else
                              {
                                v56 = [(SFRichTitleCardSection *)self rating];
                                v283 = v56 != 0;
                                v172 = v56;
                                if (!v56 || (-[SFRichTitleCardSection rating](self, "rating"), v57 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection rating](v5, "rating"), v171 = v57, v170 = objc_claimAutoreleasedReturnValue(), [v57 isEqual:?]))
                                {
                                  v169 = [(SFRichTitleCardSection *)self ratingText];
                                  v168 = [(SFRichTitleCardSection *)v5 ratingText];
                                  if ((v169 != 0) == (v168 == 0))
                                  {
                                    v237 = 0;
                                    v276 = 0;
                                    v232 = 0;
                                    v236 = 0;
                                    v275 = 0;
                                    v227 = 0;
                                    v274 = 0;
                                    v228 = 0;
                                    v234 = 0;
                                    v273 = 0;
                                    v226 = 0;
                                    v233 = 0;
                                    v272 = 0;
                                    v224 = 0;
                                    v230 = 0;
                                    v271 = 0;
                                    v223 = 0;
                                    v225 = 0;
                                    v270 = 0;
                                    v229 = 0;
                                    v231 = 0;
                                    v269 = 0;
                                    v239 = 0;
                                    v240 = 0;
                                    v268 = 0;
                                    v246 = 0;
                                    v249 = 0;
                                    v267 = 0;
                                    v248 = 0;
                                    v250 = 0;
                                    v266 = 0;
                                    v253 = 0;
                                    v256 = 0;
                                    v265 = 0;
                                    v255 = 0;
                                    v13 = 0;
                                    v14 = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v263 = 0;
                                    v264 = 1;
                                    v261 = 0;
                                    v262 = 1;
                                    v260 = 0x100000001;
                                    v10 = 1;
                                    v259 = 1;
                                    v257 = 1;
                                    v258 = 1;
                                    v11 = 1;
                                    v12 = 1;
                                    v252 = 1;
                                    v254 = 1;
                                    v247 = 1;
                                    v251 = 1;
                                    v243 = 1;
                                    v244 = 1;
                                    v242 = 1;
                                    v245 = 1;
                                    v238 = 1;
                                    v241 = 1;
                                    v235 = 1;
                                  }

                                  else
                                  {
                                    v58 = [(SFRichTitleCardSection *)self ratingText];
                                    v276 = v58 != 0;
                                    v167 = v58;
                                    if (!v58 || (-[SFRichTitleCardSection ratingText](self, "ratingText"), v59 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection ratingText](v5, "ratingText"), v166 = v59, v165 = objc_claimAutoreleasedReturnValue(), [v59 isEqual:?]))
                                    {
                                      v164 = [(SFRichTitleCardSection *)self reviewGlyph];
                                      v163 = [(SFRichTitleCardSection *)v5 reviewGlyph];
                                      if ((v164 != 0) == (v163 == 0))
                                      {
                                        v236 = 0;
                                        v275 = 0;
                                        v227 = 0;
                                        v274 = 0;
                                        v228 = 0;
                                        v234 = 0;
                                        v273 = 0;
                                        v226 = 0;
                                        v233 = 0;
                                        v272 = 0;
                                        v224 = 0;
                                        v230 = 0;
                                        v271 = 0;
                                        v223 = 0;
                                        v225 = 0;
                                        v270 = 0;
                                        v229 = 0;
                                        v231 = 0;
                                        v269 = 0;
                                        v239 = 0;
                                        v240 = 0;
                                        v268 = 0;
                                        v246 = 0;
                                        v249 = 0;
                                        v267 = 0;
                                        v248 = 0;
                                        v250 = 0;
                                        v266 = 0;
                                        v253 = 0;
                                        v256 = 0;
                                        v265 = 0;
                                        v255 = 0;
                                        v13 = 0;
                                        v14 = 0;
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v263 = 0;
                                        v264 = 1;
                                        v261 = 0;
                                        v262 = 1;
                                        v260 = 0x100000001;
                                        v10 = 1;
                                        v259 = 1;
                                        v257 = 1;
                                        v258 = 1;
                                        v11 = 1;
                                        v12 = 1;
                                        v252 = 1;
                                        v254 = 1;
                                        v247 = 1;
                                        v251 = 1;
                                        v243 = 1;
                                        v244 = 1;
                                        v242 = 1;
                                        v245 = 1;
                                        v238 = 1;
                                        v241 = 1;
                                        v235 = 1;
                                        v237 = 1;
                                        v232 = 1;
                                      }

                                      else
                                      {
                                        v60 = [(SFRichTitleCardSection *)self reviewGlyph];
                                        v275 = v60 != 0;
                                        v160 = v60;
                                        if (!v60 || (-[SFRichTitleCardSection reviewGlyph](self, "reviewGlyph"), v61 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection reviewGlyph](v5, "reviewGlyph"), v162 = v61, v161 = objc_claimAutoreleasedReturnValue(), [v61 isEqual:?]))
                                        {
                                          v159 = [(SFRichTitleCardSection *)self reviewText];
                                          v158 = [(SFRichTitleCardSection *)v5 reviewText];
                                          if ((v159 != 0) == (v158 == 0))
                                          {
                                            v274 = 0;
                                            v228 = 0;
                                            v234 = 0;
                                            v273 = 0;
                                            v226 = 0;
                                            v233 = 0;
                                            v272 = 0;
                                            v224 = 0;
                                            v230 = 0;
                                            v271 = 0;
                                            v223 = 0;
                                            v225 = 0;
                                            v270 = 0;
                                            v229 = 0;
                                            v231 = 0;
                                            v269 = 0;
                                            v239 = 0;
                                            v240 = 0;
                                            v268 = 0;
                                            v246 = 0;
                                            v249 = 0;
                                            v267 = 0;
                                            v248 = 0;
                                            v250 = 0;
                                            v266 = 0;
                                            v253 = 0;
                                            v256 = 0;
                                            v265 = 0;
                                            v255 = 0;
                                            v13 = 0;
                                            v14 = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            v263 = 0;
                                            v264 = 1;
                                            v261 = 0;
                                            v262 = 1;
                                            v260 = 0x100000001;
                                            v10 = 1;
                                            v259 = 1;
                                            v257 = 1;
                                            v258 = 1;
                                            v11 = 1;
                                            v12 = 1;
                                            v252 = 1;
                                            v254 = 1;
                                            v247 = 1;
                                            v251 = 1;
                                            v243 = 1;
                                            v244 = 1;
                                            v242 = 1;
                                            v245 = 1;
                                            v238 = 1;
                                            v241 = 1;
                                            v235 = 1;
                                            v237 = 1;
                                            v232 = 1;
                                            v236 = 1;
                                            v227 = 1;
                                          }

                                          else
                                          {
                                            v62 = [(SFRichTitleCardSection *)self reviewText];
                                            v274 = v62 != 0;
                                            v153 = v62;
                                            if (!v62 || (-[SFRichTitleCardSection reviewText](self, "reviewText"), v63 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection reviewText](v5, "reviewText"), v156 = objc_claimAutoreleasedReturnValue(), v157 = v63, [v63 isEqual:?]))
                                            {
                                              v64 = [(SFRichTitleCardSection *)self reviewNewLine];
                                              if (v64 == [(SFRichTitleCardSection *)v5 reviewNewLine])
                                              {
                                                v150 = [(SFRichTitleCardSection *)self moreGlyphs];
                                                v149 = [(SFRichTitleCardSection *)v5 moreGlyphs];
                                                if ((v150 != 0) == (v149 == 0))
                                                {
                                                  v234 = 0;
                                                  v273 = 0;
                                                  v226 = 0;
                                                  v233 = 0;
                                                  v272 = 0;
                                                  v224 = 0;
                                                  v230 = 0;
                                                  v271 = 0;
                                                  v223 = 0;
                                                  v225 = 0;
                                                  v270 = 0;
                                                  v229 = 0;
                                                  v231 = 0;
                                                  v269 = 0;
                                                  v239 = 0;
                                                  v240 = 0;
                                                  v268 = 0;
                                                  v246 = 0;
                                                  v249 = 0;
                                                  v267 = 0;
                                                  v248 = 0;
                                                  v250 = 0;
                                                  v266 = 0;
                                                  v253 = 0;
                                                  v256 = 0;
                                                  v265 = 0;
                                                  v255 = 0;
                                                  v13 = 0;
                                                  v14 = 0;
                                                  v15 = 0;
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v18 = 0;
                                                  v19 = 0;
                                                  v263 = 0;
                                                  v264 = 1;
                                                  v261 = 0;
                                                  v262 = 1;
                                                  v260 = 0x100000001;
                                                  v10 = 1;
                                                  v259 = 1;
                                                  v257 = 1;
                                                  v258 = 1;
                                                  v11 = 1;
                                                  v12 = 1;
                                                  v252 = 1;
                                                  v254 = 1;
                                                  v247 = 1;
                                                  v251 = 1;
                                                  v243 = 1;
                                                  v244 = 1;
                                                  v242 = 1;
                                                  v245 = 1;
                                                  v238 = 1;
                                                  v241 = 1;
                                                  v235 = 1;
                                                  v237 = 1;
                                                  v232 = 1;
                                                  v236 = 1;
                                                  v227 = 0x100000001;
                                                  v228 = 1;
                                                }

                                                else
                                                {
                                                  v65 = [(SFRichTitleCardSection *)self moreGlyphs];
                                                  v273 = v65 != 0;
                                                  v146 = v65;
                                                  if (!v65 || (-[SFRichTitleCardSection moreGlyphs](self, "moreGlyphs"), v66 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection moreGlyphs](v5, "moreGlyphs"), v154 = objc_claimAutoreleasedReturnValue(), v155 = v66, [v66 isEqual:?]))
                                                  {
                                                    v145 = [(SFRichTitleCardSection *)self auxiliaryTopText];
                                                    v144 = [(SFRichTitleCardSection *)v5 auxiliaryTopText];
                                                    if ((v145 != 0) == (v144 == 0))
                                                    {
                                                      v233 = 0;
                                                      v272 = 0;
                                                      v224 = 0;
                                                      v230 = 0;
                                                      v271 = 0;
                                                      v223 = 0;
                                                      v225 = 0;
                                                      v270 = 0;
                                                      v229 = 0;
                                                      v231 = 0;
                                                      v269 = 0;
                                                      v239 = 0;
                                                      v240 = 0;
                                                      v268 = 0;
                                                      v246 = 0;
                                                      v249 = 0;
                                                      v267 = 0;
                                                      v248 = 0;
                                                      v250 = 0;
                                                      v266 = 0;
                                                      v253 = 0;
                                                      v256 = 0;
                                                      v265 = 0;
                                                      v255 = 0;
                                                      v13 = 0;
                                                      v14 = 0;
                                                      v15 = 0;
                                                      v16 = 0;
                                                      v17 = 0;
                                                      v18 = 0;
                                                      v19 = 0;
                                                      v263 = 0;
                                                      v264 = 1;
                                                      v261 = 0;
                                                      v262 = 1;
                                                      v260 = 0x100000001;
                                                      v10 = 1;
                                                      v259 = 1;
                                                      v257 = 1;
                                                      v258 = 1;
                                                      v11 = 1;
                                                      v12 = 1;
                                                      v252 = 1;
                                                      v254 = 1;
                                                      v247 = 1;
                                                      v251 = 1;
                                                      v243 = 1;
                                                      v244 = 1;
                                                      v242 = 1;
                                                      v245 = 1;
                                                      v238 = 1;
                                                      v241 = 1;
                                                      v235 = 1;
                                                      v237 = 1;
                                                      v232 = 1;
                                                      v236 = 1;
                                                      v227 = 0x100000001;
                                                      v228 = 1;
                                                      v234 = 1;
                                                      v226 = 1;
                                                    }

                                                    else
                                                    {
                                                      v67 = [(SFRichTitleCardSection *)self auxiliaryTopText];
                                                      v272 = v67 != 0;
                                                      v141 = v67;
                                                      if (!v67 || (-[SFRichTitleCardSection auxiliaryTopText](self, "auxiliaryTopText"), v68 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection auxiliaryTopText](v5, "auxiliaryTopText"), v151 = objc_claimAutoreleasedReturnValue(), v152 = v68, [v68 isEqual:?]))
                                                      {
                                                        v140 = [(SFRichTitleCardSection *)self auxiliaryMiddleText];
                                                        v139 = [(SFRichTitleCardSection *)v5 auxiliaryMiddleText];
                                                        if ((v140 != 0) == (v139 == 0))
                                                        {
                                                          v230 = 0;
                                                          v271 = 0;
                                                          v223 = 0;
                                                          v225 = 0;
                                                          v270 = 0;
                                                          v229 = 0;
                                                          v231 = 0;
                                                          v269 = 0;
                                                          v239 = 0;
                                                          v240 = 0;
                                                          v268 = 0;
                                                          v246 = 0;
                                                          v249 = 0;
                                                          v267 = 0;
                                                          v248 = 0;
                                                          v250 = 0;
                                                          v266 = 0;
                                                          v253 = 0;
                                                          v256 = 0;
                                                          v265 = 0;
                                                          v255 = 0;
                                                          v13 = 0;
                                                          v14 = 0;
                                                          v15 = 0;
                                                          v16 = 0;
                                                          v17 = 0;
                                                          v18 = 0;
                                                          v19 = 0;
                                                          v263 = 0;
                                                          v264 = 1;
                                                          v261 = 0;
                                                          v262 = 1;
                                                          v260 = 0x100000001;
                                                          v10 = 1;
                                                          v259 = 1;
                                                          v257 = 1;
                                                          v258 = 1;
                                                          v11 = 1;
                                                          v12 = 1;
                                                          v252 = 1;
                                                          v254 = 1;
                                                          v247 = 1;
                                                          v251 = 1;
                                                          v243 = 1;
                                                          v244 = 1;
                                                          v242 = 1;
                                                          v245 = 1;
                                                          v238 = 1;
                                                          v241 = 1;
                                                          v235 = 1;
                                                          v237 = 1;
                                                          v232 = 1;
                                                          v236 = 1;
                                                          v227 = 0x100000001;
                                                          v228 = 1;
                                                          v234 = 1;
                                                          v226 = 1;
                                                          v233 = 1;
                                                          v224 = 1;
                                                        }

                                                        else
                                                        {
                                                          v69 = [(SFRichTitleCardSection *)self auxiliaryMiddleText];
                                                          v271 = v69 != 0;
                                                          v138 = v69;
                                                          if (!v69 || (-[SFRichTitleCardSection auxiliaryMiddleText](self, "auxiliaryMiddleText"), v70 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection auxiliaryMiddleText](v5, "auxiliaryMiddleText"), v147 = objc_claimAutoreleasedReturnValue(), v148 = v70, [v70 isEqual:?]))
                                                          {
                                                            v135 = [(SFRichTitleCardSection *)self auxiliaryBottomText];
                                                            v134 = [(SFRichTitleCardSection *)v5 auxiliaryBottomText];
                                                            if ((v135 != 0) == (v134 == 0))
                                                            {
                                                              v225 = 0;
                                                              v270 = 0;
                                                              v229 = 0;
                                                              v231 = 0;
                                                              v269 = 0;
                                                              v239 = 0;
                                                              v240 = 0;
                                                              v268 = 0;
                                                              v246 = 0;
                                                              v249 = 0;
                                                              v267 = 0;
                                                              v248 = 0;
                                                              v250 = 0;
                                                              v266 = 0;
                                                              v253 = 0;
                                                              v256 = 0;
                                                              v265 = 0;
                                                              v255 = 0;
                                                              v13 = 0;
                                                              v14 = 0;
                                                              v15 = 0;
                                                              v16 = 0;
                                                              v17 = 0;
                                                              v18 = 0;
                                                              v19 = 0;
                                                              v263 = 0;
                                                              v264 = 1;
                                                              v261 = 0;
                                                              v262 = 1;
                                                              v260 = 0x100000001;
                                                              v10 = 1;
                                                              v259 = 1;
                                                              v257 = 1;
                                                              v258 = 1;
                                                              v11 = 1;
                                                              v12 = 1;
                                                              v252 = 1;
                                                              v254 = 1;
                                                              v247 = 1;
                                                              v251 = 1;
                                                              v243 = 1;
                                                              v244 = 1;
                                                              v242 = 1;
                                                              v245 = 1;
                                                              v238 = 1;
                                                              v241 = 1;
                                                              v235 = 1;
                                                              v237 = 1;
                                                              v232 = 1;
                                                              v236 = 1;
                                                              v227 = 0x100000001;
                                                              v228 = 1;
                                                              v234 = 1;
                                                              v226 = 1;
                                                              v233 = 1;
                                                              v224 = 1;
                                                              v230 = 1;
                                                              v223 = 1;
                                                            }

                                                            else
                                                            {
                                                              v71 = [(SFRichTitleCardSection *)self auxiliaryBottomText];
                                                              v270 = v71 != 0;
                                                              v133 = v71;
                                                              if (!v71 || (-[SFRichTitleCardSection auxiliaryBottomText](self, "auxiliaryBottomText"), v72 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection auxiliaryBottomText](v5, "auxiliaryBottomText"), v142 = objc_claimAutoreleasedReturnValue(), v143 = v72, [v72 isEqual:?]))
                                                              {
                                                                v73 = [(SFRichTitleCardSection *)self auxiliaryBottomTextColor];
                                                                if (v73 == [(SFRichTitleCardSection *)v5 auxiliaryBottomTextColor])
                                                                {
                                                                  v130 = [(SFRichTitleCardSection *)self auxiliaryAlignment];
                                                                  v129 = [(SFRichTitleCardSection *)v5 auxiliaryAlignment];
                                                                  if ((v130 != 0) == (v129 == 0))
                                                                  {
                                                                    v231 = 0;
                                                                    v269 = 0;
                                                                    v239 = 0;
                                                                    v240 = 0;
                                                                    v268 = 0;
                                                                    v246 = 0;
                                                                    v249 = 0;
                                                                    v267 = 0;
                                                                    v248 = 0;
                                                                    v250 = 0;
                                                                    v266 = 0;
                                                                    v253 = 0;
                                                                    v256 = 0;
                                                                    v265 = 0;
                                                                    v255 = 0;
                                                                    v13 = 0;
                                                                    v14 = 0;
                                                                    v15 = 0;
                                                                    v16 = 0;
                                                                    v17 = 0;
                                                                    v18 = 0;
                                                                    v19 = 0;
                                                                    v263 = 0;
                                                                    v264 = 1;
                                                                    v261 = 0;
                                                                    v262 = 1;
                                                                    v260 = 0x100000001;
                                                                    v10 = 1;
                                                                    v259 = 1;
                                                                    v257 = 1;
                                                                    v258 = 1;
                                                                    v11 = 1;
                                                                    v12 = 1;
                                                                    v252 = 1;
                                                                    v254 = 1;
                                                                    v247 = 1;
                                                                    v251 = 1;
                                                                    v243 = 1;
                                                                    v244 = 1;
                                                                    v242 = 1;
                                                                    v245 = 1;
                                                                    v238 = 1;
                                                                    v241 = 1;
                                                                    v235 = 1;
                                                                    v237 = 1;
                                                                    v232 = 1;
                                                                    v236 = 1;
                                                                    v227 = 0x100000001;
                                                                    v228 = 1;
                                                                    v234 = 1;
                                                                    v226 = 1;
                                                                    v233 = 1;
                                                                    v224 = 1;
                                                                    v230 = 1;
                                                                    v223 = 1;
                                                                    v225 = 1;
                                                                    v229 = 1;
                                                                  }

                                                                  else
                                                                  {
                                                                    v74 = [(SFRichTitleCardSection *)self auxiliaryAlignment];
                                                                    v269 = v74 != 0;
                                                                    v128 = v74;
                                                                    if (!v74 || (-[SFRichTitleCardSection auxiliaryAlignment](self, "auxiliaryAlignment"), v75 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection auxiliaryAlignment](v5, "auxiliaryAlignment"), v136 = objc_claimAutoreleasedReturnValue(), v137 = v75, [v75 isEqual:?]))
                                                                    {
                                                                      v76 = [(SFRichTitleCardSection *)self hideVerticalDivider];
                                                                      if (v76 == [(SFRichTitleCardSection *)v5 hideVerticalDivider]&& (v77 = [(SFRichTitleCardSection *)self titleAlign], v77 == [(SFRichTitleCardSection *)v5 titleAlign]))
                                                                      {
                                                                        v125 = [(SFRichTitleCardSection *)self titleWeight];
                                                                        v124 = [(SFRichTitleCardSection *)v5 titleWeight];
                                                                        if ((v125 != 0) == (v124 == 0))
                                                                        {
                                                                          v240 = 0;
                                                                          v268 = 0;
                                                                          v246 = 0;
                                                                          v249 = 0;
                                                                          v267 = 0;
                                                                          v248 = 0;
                                                                          v250 = 0;
                                                                          v266 = 0;
                                                                          v253 = 0;
                                                                          v256 = 0;
                                                                          v265 = 0;
                                                                          v255 = 0;
                                                                          v13 = 0;
                                                                          v14 = 0;
                                                                          v15 = 0;
                                                                          v16 = 0;
                                                                          v17 = 0;
                                                                          v18 = 0;
                                                                          v19 = 0;
                                                                          v263 = 0;
                                                                          v264 = 1;
                                                                          v261 = 0;
                                                                          v262 = 1;
                                                                          v260 = 0x100000001;
                                                                          v10 = 1;
                                                                          v259 = 1;
                                                                          v257 = 1;
                                                                          v258 = 1;
                                                                          v11 = 1;
                                                                          v12 = 1;
                                                                          v252 = 1;
                                                                          v254 = 1;
                                                                          v247 = 1;
                                                                          v251 = 1;
                                                                          v243 = 1;
                                                                          v244 = 1;
                                                                          v242 = 1;
                                                                          v245 = 1;
                                                                          v238 = 1;
                                                                          v241 = 1;
                                                                          v235 = 1;
                                                                          v237 = 1;
                                                                          v232 = 1;
                                                                          v236 = 1;
                                                                          v227 = 0x100000001;
                                                                          v228 = 1;
                                                                          v234 = 1;
                                                                          v226 = 1;
                                                                          v233 = 1;
                                                                          v224 = 1;
                                                                          v230 = 1;
                                                                          v223 = 1;
                                                                          v225 = 1;
                                                                          v229 = 1;
                                                                          v231 = 1;
                                                                          v239 = 1;
                                                                        }

                                                                        else
                                                                        {
                                                                          v78 = [(SFRichTitleCardSection *)self titleWeight];
                                                                          v268 = v78 != 0;
                                                                          v123 = v78;
                                                                          if (!v78 || (-[SFRichTitleCardSection titleWeight](self, "titleWeight"), v79 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection titleWeight](v5, "titleWeight"), v131 = objc_claimAutoreleasedReturnValue(), v132 = v79, [v79 isEqual:?]))
                                                                          {
                                                                            v80 = [(SFRichTitleCardSection *)self titleNoWrap];
                                                                            if (v80 == [(SFRichTitleCardSection *)v5 titleNoWrap]&& (v81 = [(SFRichTitleCardSection *)self thumbnailCropCircle], v81 == [(SFRichTitleCardSection *)v5 thumbnailCropCircle]))
                                                                            {
                                                                              v120 = [(SFRichTitleCardSection *)self imageOverlay];
                                                                              v119 = [(SFRichTitleCardSection *)v5 imageOverlay];
                                                                              if ((v120 != 0) == (v119 == 0))
                                                                              {
                                                                                v249 = 0;
                                                                                v267 = 0;
                                                                                v248 = 0;
                                                                                v250 = 0;
                                                                                v266 = 0;
                                                                                v253 = 0;
                                                                                v256 = 0;
                                                                                v265 = 0;
                                                                                v255 = 0;
                                                                                v13 = 0;
                                                                                v14 = 0;
                                                                                v15 = 0;
                                                                                v16 = 0;
                                                                                v17 = 0;
                                                                                v18 = 0;
                                                                                v19 = 0;
                                                                                v263 = 0;
                                                                                v264 = 1;
                                                                                v261 = 0;
                                                                                v262 = 1;
                                                                                v260 = 0x100000001;
                                                                                v10 = 1;
                                                                                v259 = 1;
                                                                                v257 = 1;
                                                                                v258 = 1;
                                                                                v11 = 1;
                                                                                v12 = 1;
                                                                                v252 = 1;
                                                                                v254 = 1;
                                                                                v247 = 1;
                                                                                v251 = 1;
                                                                                v243 = 1;
                                                                                v244 = 1;
                                                                                v242 = 1;
                                                                                v245 = 1;
                                                                                v238 = 1;
                                                                                v241 = 1;
                                                                                v235 = 1;
                                                                                v237 = 1;
                                                                                v232 = 1;
                                                                                v236 = 1;
                                                                                v227 = 0x100000001;
                                                                                v228 = 1;
                                                                                v234 = 1;
                                                                                v226 = 1;
                                                                                v233 = 1;
                                                                                v224 = 1;
                                                                                v230 = 1;
                                                                                v223 = 1;
                                                                                v225 = 1;
                                                                                v229 = 1;
                                                                                v231 = 1;
                                                                                v239 = 1;
                                                                                v240 = 1;
                                                                                v246 = 1;
                                                                              }

                                                                              else
                                                                              {
                                                                                v82 = [(SFRichTitleCardSection *)self imageOverlay];
                                                                                v267 = v82 != 0;
                                                                                v118 = v82;
                                                                                if (!v82 || (-[SFRichTitleCardSection imageOverlay](self, "imageOverlay"), v83 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection imageOverlay](v5, "imageOverlay"), v126 = objc_claimAutoreleasedReturnValue(), v127 = v83, [v83 isEqual:?]))
                                                                                {
                                                                                  v115 = [(SFRichTitleCardSection *)self playAction];
                                                                                  v114 = [(SFRichTitleCardSection *)v5 playAction];
                                                                                  if ((v115 != 0) == (v114 == 0))
                                                                                  {
                                                                                    v250 = 0;
                                                                                    v266 = 0;
                                                                                    v253 = 0;
                                                                                    v256 = 0;
                                                                                    v265 = 0;
                                                                                    v255 = 0;
                                                                                    v13 = 0;
                                                                                    v14 = 0;
                                                                                    v15 = 0;
                                                                                    v16 = 0;
                                                                                    v17 = 0;
                                                                                    v18 = 0;
                                                                                    v19 = 0;
                                                                                    v263 = 0;
                                                                                    v264 = 1;
                                                                                    v261 = 0;
                                                                                    v262 = 1;
                                                                                    v260 = 0x100000001;
                                                                                    v10 = 1;
                                                                                    v259 = 1;
                                                                                    v257 = 1;
                                                                                    v258 = 1;
                                                                                    v11 = 1;
                                                                                    v12 = 1;
                                                                                    v252 = 1;
                                                                                    v254 = 1;
                                                                                    v247 = 1;
                                                                                    v251 = 1;
                                                                                    v243 = 1;
                                                                                    v244 = 1;
                                                                                    v242 = 1;
                                                                                    v245 = 1;
                                                                                    v238 = 1;
                                                                                    v241 = 1;
                                                                                    v235 = 1;
                                                                                    v237 = 1;
                                                                                    v232 = 1;
                                                                                    v236 = 1;
                                                                                    v227 = 0x100000001;
                                                                                    v228 = 1;
                                                                                    v234 = 1;
                                                                                    v226 = 1;
                                                                                    v233 = 1;
                                                                                    v224 = 1;
                                                                                    v230 = 1;
                                                                                    v223 = 1;
                                                                                    v225 = 1;
                                                                                    v229 = 1;
                                                                                    v231 = 1;
                                                                                    v239 = 1;
                                                                                    v240 = 1;
                                                                                    v246 = 1;
                                                                                    v249 = 1;
                                                                                    v248 = 1;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v84 = [(SFRichTitleCardSection *)self playAction];
                                                                                    v266 = v84 != 0;
                                                                                    v113 = v84;
                                                                                    if (!v84 || (-[SFRichTitleCardSection playAction](self, "playAction"), v85 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection playAction](v5, "playAction"), v121 = objc_claimAutoreleasedReturnValue(), v122 = v85, [v85 isEqual:?]))
                                                                                    {
                                                                                      v86 = [(SFRichTitleCardSection *)self playActionAlign];
                                                                                      if (v86 == [(SFRichTitleCardSection *)v5 playActionAlign])
                                                                                      {
                                                                                        v110 = [(SFRichTitleCardSection *)self offers];
                                                                                        v109 = [(SFRichTitleCardSection *)v5 offers];
                                                                                        if ((v110 != 0) == (v109 == 0))
                                                                                        {
                                                                                          v256 = 0;
                                                                                          v265 = 0;
                                                                                          v255 = 0;
                                                                                          v13 = 0;
                                                                                          v14 = 0;
                                                                                          v15 = 0;
                                                                                          v16 = 0;
                                                                                          v17 = 0;
                                                                                          v18 = 0;
                                                                                          v19 = 0;
                                                                                          v263 = 0;
                                                                                          v264 = 1;
                                                                                          v261 = 0;
                                                                                          v262 = 1;
                                                                                          v260 = 0x100000001;
                                                                                          v10 = 1;
                                                                                          v259 = 1;
                                                                                          v257 = 1;
                                                                                          v258 = 1;
                                                                                          v11 = 1;
                                                                                          v12 = 1;
                                                                                          v252 = 1;
                                                                                          v254 = 1;
                                                                                          v247 = 1;
                                                                                          v251 = 1;
                                                                                          v243 = 1;
                                                                                          v244 = 1;
                                                                                          v242 = 1;
                                                                                          v245 = 1;
                                                                                          v238 = 1;
                                                                                          v241 = 1;
                                                                                          v235 = 1;
                                                                                          v237 = 1;
                                                                                          v232 = 1;
                                                                                          v236 = 1;
                                                                                          v227 = 0x100000001;
                                                                                          v228 = 1;
                                                                                          v234 = 1;
                                                                                          v226 = 1;
                                                                                          v233 = 1;
                                                                                          v224 = 1;
                                                                                          v230 = 1;
                                                                                          v223 = 1;
                                                                                          v225 = 1;
                                                                                          v229 = 1;
                                                                                          v231 = 1;
                                                                                          v239 = 1;
                                                                                          v240 = 1;
                                                                                          v246 = 1;
                                                                                          v249 = 1;
                                                                                          v248 = 1;
                                                                                          v250 = 1;
                                                                                          v253 = 1;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v87 = [(SFRichTitleCardSection *)self offers];
                                                                                          v265 = v87 != 0;
                                                                                          v108 = v87;
                                                                                          if (!v87 || (-[SFRichTitleCardSection offers](self, "offers"), v88 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection offers](v5, "offers"), v116 = objc_claimAutoreleasedReturnValue(), v117 = v88, [v88 isEqual:?]))
                                                                                          {
                                                                                            v106 = [(SFRichTitleCardSection *)self footnote];
                                                                                            v104 = [(SFRichTitleCardSection *)v5 footnote];
                                                                                            if ((v106 != 0) == (v104 == 0))
                                                                                            {
                                                                                              v13 = 0;
                                                                                              v14 = 0;
                                                                                              v15 = 0;
                                                                                              v16 = 0;
                                                                                              v17 = 0;
                                                                                              v18 = 0;
                                                                                              v19 = 0;
                                                                                              v263 = 0;
                                                                                              v264 = 1;
                                                                                              v261 = 0;
                                                                                              v262 = 1;
                                                                                              v260 = 0x100000001;
                                                                                              v10 = 1;
                                                                                              v259 = 1;
                                                                                              v257 = 1;
                                                                                              v258 = 1;
                                                                                              v11 = 1;
                                                                                              v12 = 1;
                                                                                              v252 = 1;
                                                                                              v254 = 1;
                                                                                              v247 = 1;
                                                                                              v251 = 1;
                                                                                              v243 = 1;
                                                                                              v244 = 1;
                                                                                              v242 = 1;
                                                                                              v245 = 1;
                                                                                              v238 = 1;
                                                                                              v241 = 1;
                                                                                              v235 = 1;
                                                                                              v237 = 1;
                                                                                              v232 = 1;
                                                                                              v236 = 1;
                                                                                              v227 = 0x100000001;
                                                                                              v228 = 1;
                                                                                              v234 = 1;
                                                                                              v226 = 1;
                                                                                              v233 = 1;
                                                                                              v224 = 1;
                                                                                              v230 = 1;
                                                                                              v223 = 1;
                                                                                              v225 = 1;
                                                                                              v229 = 1;
                                                                                              v231 = 1;
                                                                                              v239 = 1;
                                                                                              v240 = 1;
                                                                                              v246 = 1;
                                                                                              v249 = 1;
                                                                                              v248 = 1;
                                                                                              v250 = 1;
                                                                                              v253 = 1;
                                                                                              v256 = 1;
                                                                                              v255 = 1;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v89 = [(SFRichTitleCardSection *)self footnote];
                                                                                              v263 = v89 != 0;
                                                                                              v103 = v89;
                                                                                              if (!v89 || (-[SFRichTitleCardSection footnote](self, "footnote"), v90 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection footnote](v5, "footnote"), v111 = objc_claimAutoreleasedReturnValue(), v112 = v90, [v90 isEqual:?]))
                                                                                              {
                                                                                                v102 = [(SFRichTitleCardSection *)self richSubtitle];
                                                                                                v101 = [(SFRichTitleCardSection *)v5 richSubtitle];
                                                                                                if ((v102 != 0) == (v101 == 0))
                                                                                                {
                                                                                                  v15 = 0;
                                                                                                  v16 = 0;
                                                                                                  v17 = 0;
                                                                                                  v18 = 0;
                                                                                                  v19 = 0;
                                                                                                  v264 = 1;
                                                                                                  v261 = 0;
                                                                                                  v262 = 1;
                                                                                                  v260 = 0x100000001;
                                                                                                  v10 = 1;
                                                                                                  v259 = 1;
                                                                                                  v257 = 1;
                                                                                                  v258 = 1;
                                                                                                  v11 = 1;
                                                                                                  v12 = 1;
                                                                                                  v252 = 1;
                                                                                                  v254 = 1;
                                                                                                  v247 = 1;
                                                                                                  v251 = 1;
                                                                                                  v243 = 1;
                                                                                                  v244 = 1;
                                                                                                  v242 = 1;
                                                                                                  v245 = 1;
                                                                                                  v238 = 1;
                                                                                                  v241 = 1;
                                                                                                  v235 = 1;
                                                                                                  v237 = 1;
                                                                                                  v232 = 1;
                                                                                                  v236 = 1;
                                                                                                  v227 = 0x100000001;
                                                                                                  v228 = 1;
                                                                                                  v234 = 1;
                                                                                                  v226 = 1;
                                                                                                  v233 = 1;
                                                                                                  v224 = 1;
                                                                                                  v230 = 1;
                                                                                                  v223 = 1;
                                                                                                  v225 = 1;
                                                                                                  v229 = 1;
                                                                                                  v231 = 1;
                                                                                                  v239 = 1;
                                                                                                  v240 = 1;
                                                                                                  v246 = 1;
                                                                                                  v249 = 1;
                                                                                                  v248 = 1;
                                                                                                  v250 = 1;
                                                                                                  v253 = 1;
                                                                                                  v256 = 1;
                                                                                                  v255 = 1;
                                                                                                  v13 = 1;
                                                                                                  v14 = 1;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v91 = [(SFRichTitleCardSection *)self richSubtitle];
                                                                                                  v261 = v91 != 0;
                                                                                                  v99 = v91;
                                                                                                  if (!v91 || (-[SFRichTitleCardSection richSubtitle](self, "richSubtitle"), v92 = objc_claimAutoreleasedReturnValue(), -[SFRichTitleCardSection richSubtitle](v5, "richSubtitle"), v107 = v92, v105 = objc_claimAutoreleasedReturnValue(), [v92 isEqual:?]))
                                                                                                  {
                                                                                                    v93 = [(SFRichTitleCardSection *)self subtitleIsEmphasized];
                                                                                                    if (v93 == [(SFRichTitleCardSection *)v5 subtitleIsEmphasized])
                                                                                                    {
                                                                                                      v97 = [(SFRichTitleCardSection *)self buttonItems];
                                                                                                      v96 = [(SFRichTitleCardSection *)v5 buttonItems];
                                                                                                      if ((v97 != 0) == (v96 == 0))
                                                                                                      {
                                                                                                        v17 = 0;
                                                                                                        v18 = 0;
                                                                                                        v19 = 0;
                                                                                                        v264 = 1;
                                                                                                        v262 = 1;
                                                                                                        v260 = 0x100000001;
                                                                                                        v10 = 1;
                                                                                                        v259 = 1;
                                                                                                        v257 = 1;
                                                                                                        v258 = 1;
                                                                                                        v11 = 1;
                                                                                                        v12 = 1;
                                                                                                        v252 = 1;
                                                                                                        v254 = 1;
                                                                                                        v247 = 1;
                                                                                                        v251 = 1;
                                                                                                        v243 = 1;
                                                                                                        v244 = 1;
                                                                                                        v242 = 1;
                                                                                                        v245 = 1;
                                                                                                        v238 = 1;
                                                                                                        v241 = 1;
                                                                                                        v235 = 1;
                                                                                                        v237 = 1;
                                                                                                        v232 = 1;
                                                                                                        v236 = 1;
                                                                                                        v227 = 0x100000001;
                                                                                                        v228 = 1;
                                                                                                        v234 = 1;
                                                                                                        v226 = 1;
                                                                                                        v233 = 1;
                                                                                                        v224 = 1;
                                                                                                        v230 = 1;
                                                                                                        v223 = 1;
                                                                                                        v225 = 1;
                                                                                                        v229 = 1;
                                                                                                        v231 = 1;
                                                                                                        v239 = 1;
                                                                                                        v240 = 1;
                                                                                                        v246 = 1;
                                                                                                        v249 = 1;
                                                                                                        v248 = 1;
                                                                                                        v250 = 1;
                                                                                                        v253 = 1;
                                                                                                        v256 = 1;
                                                                                                        v255 = 1;
                                                                                                        v13 = 1;
                                                                                                        v14 = 1;
                                                                                                        v15 = 1;
                                                                                                        v16 = 1;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v100 = [(SFRichTitleCardSection *)self buttonItems:v96];
                                                                                                        if (v100)
                                                                                                        {
                                                                                                          v94 = [(SFRichTitleCardSection *)self buttonItems];
                                                                                                          v95 = [(SFRichTitleCardSection *)v5 buttonItems];
                                                                                                          v98 = v94;
                                                                                                          v19 = [v94 isEqual:v95];
                                                                                                          v6 = v95;
                                                                                                          v18 = 1;
                                                                                                          v264 = 1;
                                                                                                          v262 = 1;
                                                                                                          v260 = 0x100000001;
                                                                                                          v10 = 1;
                                                                                                          v259 = 1;
                                                                                                          v257 = 1;
                                                                                                          v258 = 1;
                                                                                                          v11 = 1;
                                                                                                          v12 = 1;
                                                                                                          v252 = 1;
                                                                                                          v254 = 1;
                                                                                                          v247 = 1;
                                                                                                          v251 = 1;
                                                                                                          v243 = 1;
                                                                                                          v244 = 1;
                                                                                                          v242 = 1;
                                                                                                          v245 = 1;
                                                                                                          v238 = 1;
                                                                                                          v241 = 1;
                                                                                                          v235 = 1;
                                                                                                          v237 = 1;
                                                                                                          v232 = 1;
                                                                                                          v236 = 1;
                                                                                                          v227 = 0x100000001;
                                                                                                          v228 = 1;
                                                                                                          v234 = 1;
                                                                                                          v226 = 1;
                                                                                                          v233 = 1;
                                                                                                          v224 = 1;
                                                                                                          v230 = 1;
                                                                                                          v223 = 1;
                                                                                                          v225 = 1;
                                                                                                          v229 = 1;
                                                                                                          v231 = 1;
                                                                                                          v239 = 1;
                                                                                                          v240 = 1;
                                                                                                          v246 = 1;
                                                                                                          v249 = 1;
                                                                                                          v248 = 1;
                                                                                                          v250 = 1;
                                                                                                          v253 = 1;
                                                                                                          v256 = 1;
                                                                                                          v255 = 1;
                                                                                                          v13 = 1;
                                                                                                          v14 = 1;
                                                                                                          v15 = 1;
                                                                                                          v16 = 1;
                                                                                                          v17 = 1;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v100 = 0;
                                                                                                          v18 = 0;
                                                                                                          v264 = 1;
                                                                                                          v262 = 1;
                                                                                                          v260 = 0x100000001;
                                                                                                          v10 = 1;
                                                                                                          v259 = 1;
                                                                                                          v257 = 1;
                                                                                                          v258 = 1;
                                                                                                          v11 = 1;
                                                                                                          v12 = 1;
                                                                                                          v252 = 1;
                                                                                                          v254 = 1;
                                                                                                          v247 = 1;
                                                                                                          v251 = 1;
                                                                                                          v243 = 1;
                                                                                                          v244 = 1;
                                                                                                          v242 = 1;
                                                                                                          v245 = 1;
                                                                                                          v238 = 1;
                                                                                                          v241 = 1;
                                                                                                          v235 = 1;
                                                                                                          v237 = 1;
                                                                                                          v232 = 1;
                                                                                                          v236 = 1;
                                                                                                          v227 = 0x100000001;
                                                                                                          v228 = 1;
                                                                                                          v234 = 1;
                                                                                                          v226 = 1;
                                                                                                          v233 = 1;
                                                                                                          v224 = 1;
                                                                                                          v230 = 1;
                                                                                                          v223 = 1;
                                                                                                          v225 = 1;
                                                                                                          v229 = 1;
                                                                                                          v231 = 1;
                                                                                                          v239 = 1;
                                                                                                          v240 = 1;
                                                                                                          v246 = 1;
                                                                                                          v249 = 1;
                                                                                                          v248 = 1;
                                                                                                          v250 = 1;
                                                                                                          v253 = 1;
                                                                                                          v256 = 1;
                                                                                                          v255 = 1;
                                                                                                          v13 = 1;
                                                                                                          v14 = 1;
                                                                                                          v15 = 1;
                                                                                                          v16 = 1;
                                                                                                          v17 = 1;
                                                                                                          v19 = 1;
                                                                                                        }
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v16 = 0;
                                                                                                      v17 = 0;
                                                                                                      v18 = 0;
                                                                                                      v19 = 0;
                                                                                                      v264 = 1;
                                                                                                      v262 = 1;
                                                                                                      v260 = 0x100000001;
                                                                                                      v10 = 1;
                                                                                                      v259 = 1;
                                                                                                      v257 = 1;
                                                                                                      v258 = 1;
                                                                                                      v11 = 1;
                                                                                                      v12 = 1;
                                                                                                      v252 = 1;
                                                                                                      v254 = 1;
                                                                                                      v247 = 1;
                                                                                                      v251 = 1;
                                                                                                      v243 = 1;
                                                                                                      v244 = 1;
                                                                                                      v242 = 1;
                                                                                                      v245 = 1;
                                                                                                      v238 = 1;
                                                                                                      v241 = 1;
                                                                                                      v235 = 1;
                                                                                                      v237 = 1;
                                                                                                      v232 = 1;
                                                                                                      v236 = 1;
                                                                                                      v227 = 0x100000001;
                                                                                                      v228 = 1;
                                                                                                      v234 = 1;
                                                                                                      v226 = 1;
                                                                                                      v233 = 1;
                                                                                                      v224 = 1;
                                                                                                      v230 = 1;
                                                                                                      v223 = 1;
                                                                                                      v225 = 1;
                                                                                                      v229 = 1;
                                                                                                      v231 = 1;
                                                                                                      v239 = 1;
                                                                                                      v240 = 1;
                                                                                                      v246 = 1;
                                                                                                      v249 = 1;
                                                                                                      v248 = 1;
                                                                                                      v250 = 1;
                                                                                                      v253 = 1;
                                                                                                      v256 = 1;
                                                                                                      v255 = 1;
                                                                                                      v13 = 1;
                                                                                                      v14 = 1;
                                                                                                      v15 = 1;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v16 = 0;
                                                                                                    v17 = 0;
                                                                                                    v18 = 0;
                                                                                                    v19 = 0;
                                                                                                    v264 = 1;
                                                                                                    v262 = 1;
                                                                                                    v260 = 0x100000001;
                                                                                                    v10 = 1;
                                                                                                    v259 = 1;
                                                                                                    v257 = 1;
                                                                                                    v258 = 1;
                                                                                                    v11 = 1;
                                                                                                    v12 = 1;
                                                                                                    v252 = 1;
                                                                                                    v254 = 1;
                                                                                                    v247 = 1;
                                                                                                    v251 = 1;
                                                                                                    v243 = 1;
                                                                                                    v244 = 1;
                                                                                                    v242 = 1;
                                                                                                    v245 = 1;
                                                                                                    v238 = 1;
                                                                                                    v241 = 1;
                                                                                                    v235 = 1;
                                                                                                    v237 = 1;
                                                                                                    v232 = 1;
                                                                                                    v236 = 1;
                                                                                                    v227 = 0x100000001;
                                                                                                    v228 = 1;
                                                                                                    v234 = 1;
                                                                                                    v226 = 1;
                                                                                                    v233 = 1;
                                                                                                    v224 = 1;
                                                                                                    v230 = 1;
                                                                                                    v223 = 1;
                                                                                                    v225 = 1;
                                                                                                    v229 = 1;
                                                                                                    v231 = 1;
                                                                                                    v239 = 1;
                                                                                                    v240 = 1;
                                                                                                    v246 = 1;
                                                                                                    v249 = 1;
                                                                                                    v248 = 1;
                                                                                                    v250 = 1;
                                                                                                    v253 = 1;
                                                                                                    v256 = 1;
                                                                                                    v255 = 1;
                                                                                                    v13 = 1;
                                                                                                    v14 = 1;
                                                                                                    v15 = 1;
                                                                                                    v261 = 1;
                                                                                                  }
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v14 = 0;
                                                                                                v15 = 0;
                                                                                                v16 = 0;
                                                                                                v17 = 0;
                                                                                                v18 = 0;
                                                                                                v19 = 0;
                                                                                                v264 = 1;
                                                                                                v261 = 0;
                                                                                                v262 = 1;
                                                                                                v260 = 0x100000001;
                                                                                                v10 = 1;
                                                                                                v259 = 1;
                                                                                                v257 = 1;
                                                                                                v258 = 1;
                                                                                                v11 = 1;
                                                                                                v12 = 1;
                                                                                                v252 = 1;
                                                                                                v254 = 1;
                                                                                                v247 = 1;
                                                                                                v251 = 1;
                                                                                                v243 = 1;
                                                                                                v244 = 1;
                                                                                                v242 = 1;
                                                                                                v245 = 1;
                                                                                                v238 = 1;
                                                                                                v241 = 1;
                                                                                                v235 = 1;
                                                                                                v237 = 1;
                                                                                                v232 = 1;
                                                                                                v236 = 1;
                                                                                                v227 = 0x100000001;
                                                                                                v228 = 1;
                                                                                                v234 = 1;
                                                                                                v226 = 1;
                                                                                                v233 = 1;
                                                                                                v224 = 1;
                                                                                                v230 = 1;
                                                                                                v223 = 1;
                                                                                                v225 = 1;
                                                                                                v229 = 1;
                                                                                                v231 = 1;
                                                                                                v239 = 1;
                                                                                                v240 = 1;
                                                                                                v246 = 1;
                                                                                                v249 = 1;
                                                                                                v248 = 1;
                                                                                                v250 = 1;
                                                                                                v253 = 1;
                                                                                                v256 = 1;
                                                                                                v255 = 1;
                                                                                                v13 = 1;
                                                                                                v263 = 1;
                                                                                              }
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v255 = 0;
                                                                                            v13 = 0;
                                                                                            v14 = 0;
                                                                                            v15 = 0;
                                                                                            v16 = 0;
                                                                                            v17 = 0;
                                                                                            v18 = 0;
                                                                                            v19 = 0;
                                                                                            v263 = 0;
                                                                                            v264 = 1;
                                                                                            v261 = 0;
                                                                                            v262 = 1;
                                                                                            v260 = 0x100000001;
                                                                                            v10 = 1;
                                                                                            v259 = 1;
                                                                                            v257 = 1;
                                                                                            v258 = 1;
                                                                                            v11 = 1;
                                                                                            v12 = 1;
                                                                                            v252 = 1;
                                                                                            v254 = 1;
                                                                                            v247 = 1;
                                                                                            v251 = 1;
                                                                                            v243 = 1;
                                                                                            v244 = 1;
                                                                                            v242 = 1;
                                                                                            v245 = 1;
                                                                                            v238 = 1;
                                                                                            v241 = 1;
                                                                                            v235 = 1;
                                                                                            v237 = 1;
                                                                                            v232 = 1;
                                                                                            v236 = 1;
                                                                                            v227 = 0x100000001;
                                                                                            v228 = 1;
                                                                                            v234 = 1;
                                                                                            v226 = 1;
                                                                                            v233 = 1;
                                                                                            v224 = 1;
                                                                                            v230 = 1;
                                                                                            v223 = 1;
                                                                                            v225 = 1;
                                                                                            v229 = 1;
                                                                                            v231 = 1;
                                                                                            v239 = 1;
                                                                                            v240 = 1;
                                                                                            v246 = 1;
                                                                                            v249 = 1;
                                                                                            v248 = 1;
                                                                                            v250 = 1;
                                                                                            v253 = 1;
                                                                                            v256 = 1;
                                                                                            v265 = 1;
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v253 = 0;
                                                                                        v256 = 0;
                                                                                        v265 = 0;
                                                                                        v255 = 0;
                                                                                        v13 = 0;
                                                                                        v14 = 0;
                                                                                        v15 = 0;
                                                                                        v16 = 0;
                                                                                        v17 = 0;
                                                                                        v18 = 0;
                                                                                        v19 = 0;
                                                                                        v263 = 0;
                                                                                        v264 = 1;
                                                                                        v261 = 0;
                                                                                        v262 = 1;
                                                                                        v260 = 0x100000001;
                                                                                        v10 = 1;
                                                                                        v259 = 1;
                                                                                        v257 = 1;
                                                                                        v258 = 1;
                                                                                        v11 = 1;
                                                                                        v12 = 1;
                                                                                        v252 = 1;
                                                                                        v254 = 1;
                                                                                        v247 = 1;
                                                                                        v251 = 1;
                                                                                        v243 = 1;
                                                                                        v244 = 1;
                                                                                        v242 = 1;
                                                                                        v245 = 1;
                                                                                        v238 = 1;
                                                                                        v241 = 1;
                                                                                        v235 = 1;
                                                                                        v237 = 1;
                                                                                        v232 = 1;
                                                                                        v236 = 1;
                                                                                        v227 = 0x100000001;
                                                                                        v228 = 1;
                                                                                        v234 = 1;
                                                                                        v226 = 1;
                                                                                        v233 = 1;
                                                                                        v224 = 1;
                                                                                        v230 = 1;
                                                                                        v223 = 1;
                                                                                        v225 = 1;
                                                                                        v229 = 1;
                                                                                        v231 = 1;
                                                                                        v239 = 1;
                                                                                        v240 = 1;
                                                                                        v246 = 1;
                                                                                        v249 = 1;
                                                                                        v248 = 1;
                                                                                        v250 = 1;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v253 = 0;
                                                                                      v256 = 0;
                                                                                      v265 = 0;
                                                                                      v255 = 0;
                                                                                      v13 = 0;
                                                                                      v14 = 0;
                                                                                      v15 = 0;
                                                                                      v16 = 0;
                                                                                      v17 = 0;
                                                                                      v18 = 0;
                                                                                      v19 = 0;
                                                                                      v263 = 0;
                                                                                      v264 = 1;
                                                                                      v261 = 0;
                                                                                      v262 = 1;
                                                                                      v260 = 0x100000001;
                                                                                      v10 = 1;
                                                                                      v259 = 1;
                                                                                      v257 = 1;
                                                                                      v258 = 1;
                                                                                      v11 = 1;
                                                                                      v12 = 1;
                                                                                      v252 = 1;
                                                                                      v254 = 1;
                                                                                      v247 = 1;
                                                                                      v251 = 1;
                                                                                      v243 = 1;
                                                                                      v244 = 1;
                                                                                      v242 = 1;
                                                                                      v245 = 1;
                                                                                      v238 = 1;
                                                                                      v241 = 1;
                                                                                      v235 = 1;
                                                                                      v237 = 1;
                                                                                      v232 = 1;
                                                                                      v236 = 1;
                                                                                      v227 = 0x100000001;
                                                                                      v228 = 1;
                                                                                      v234 = 1;
                                                                                      v226 = 1;
                                                                                      v233 = 1;
                                                                                      v224 = 1;
                                                                                      v230 = 1;
                                                                                      v223 = 1;
                                                                                      v225 = 1;
                                                                                      v229 = 1;
                                                                                      v231 = 1;
                                                                                      v239 = 1;
                                                                                      v240 = 1;
                                                                                      v246 = 1;
                                                                                      v249 = 1;
                                                                                      v248 = 1;
                                                                                      v250 = 1;
                                                                                      v266 = 1;
                                                                                    }
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v248 = 0;
                                                                                  v250 = 0;
                                                                                  v266 = 0;
                                                                                  v253 = 0;
                                                                                  v256 = 0;
                                                                                  v265 = 0;
                                                                                  v255 = 0;
                                                                                  v13 = 0;
                                                                                  v14 = 0;
                                                                                  v15 = 0;
                                                                                  v16 = 0;
                                                                                  v17 = 0;
                                                                                  v18 = 0;
                                                                                  v19 = 0;
                                                                                  v263 = 0;
                                                                                  v264 = 1;
                                                                                  v261 = 0;
                                                                                  v262 = 1;
                                                                                  v260 = 0x100000001;
                                                                                  v10 = 1;
                                                                                  v259 = 1;
                                                                                  v257 = 1;
                                                                                  v258 = 1;
                                                                                  v11 = 1;
                                                                                  v12 = 1;
                                                                                  v252 = 1;
                                                                                  v254 = 1;
                                                                                  v247 = 1;
                                                                                  v251 = 1;
                                                                                  v243 = 1;
                                                                                  v244 = 1;
                                                                                  v242 = 1;
                                                                                  v245 = 1;
                                                                                  v238 = 1;
                                                                                  v241 = 1;
                                                                                  v235 = 1;
                                                                                  v237 = 1;
                                                                                  v232 = 1;
                                                                                  v236 = 1;
                                                                                  v227 = 0x100000001;
                                                                                  v228 = 1;
                                                                                  v234 = 1;
                                                                                  v226 = 1;
                                                                                  v233 = 1;
                                                                                  v224 = 1;
                                                                                  v230 = 1;
                                                                                  v223 = 1;
                                                                                  v225 = 1;
                                                                                  v229 = 1;
                                                                                  v231 = 1;
                                                                                  v239 = 1;
                                                                                  v240 = 1;
                                                                                  v246 = 1;
                                                                                  v249 = 1;
                                                                                  v267 = 1;
                                                                                }
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v246 = 0;
                                                                              v249 = 0;
                                                                              v267 = 0;
                                                                              v248 = 0;
                                                                              v250 = 0;
                                                                              v266 = 0;
                                                                              v253 = 0;
                                                                              v256 = 0;
                                                                              v265 = 0;
                                                                              v255 = 0;
                                                                              v13 = 0;
                                                                              v14 = 0;
                                                                              v15 = 0;
                                                                              v16 = 0;
                                                                              v17 = 0;
                                                                              v18 = 0;
                                                                              v19 = 0;
                                                                              v263 = 0;
                                                                              v264 = 1;
                                                                              v261 = 0;
                                                                              v262 = 1;
                                                                              v260 = 0x100000001;
                                                                              v10 = 1;
                                                                              v259 = 1;
                                                                              v257 = 1;
                                                                              v258 = 1;
                                                                              v11 = 1;
                                                                              v12 = 1;
                                                                              v252 = 1;
                                                                              v254 = 1;
                                                                              v247 = 1;
                                                                              v251 = 1;
                                                                              v243 = 1;
                                                                              v244 = 1;
                                                                              v242 = 1;
                                                                              v245 = 1;
                                                                              v238 = 1;
                                                                              v241 = 1;
                                                                              v235 = 1;
                                                                              v237 = 1;
                                                                              v232 = 1;
                                                                              v236 = 1;
                                                                              v227 = 0x100000001;
                                                                              v228 = 1;
                                                                              v234 = 1;
                                                                              v226 = 1;
                                                                              v233 = 1;
                                                                              v224 = 1;
                                                                              v230 = 1;
                                                                              v223 = 1;
                                                                              v225 = 1;
                                                                              v229 = 1;
                                                                              v231 = 1;
                                                                              v239 = 1;
                                                                              v240 = 1;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v246 = 0;
                                                                            v249 = 0;
                                                                            v267 = 0;
                                                                            v248 = 0;
                                                                            v250 = 0;
                                                                            v266 = 0;
                                                                            v253 = 0;
                                                                            v256 = 0;
                                                                            v265 = 0;
                                                                            v255 = 0;
                                                                            v13 = 0;
                                                                            v14 = 0;
                                                                            v15 = 0;
                                                                            v16 = 0;
                                                                            v17 = 0;
                                                                            v18 = 0;
                                                                            v19 = 0;
                                                                            v263 = 0;
                                                                            v264 = 1;
                                                                            v261 = 0;
                                                                            v262 = 1;
                                                                            v260 = 0x100000001;
                                                                            v10 = 1;
                                                                            v259 = 1;
                                                                            v257 = 1;
                                                                            v258 = 1;
                                                                            v11 = 1;
                                                                            v12 = 1;
                                                                            v252 = 1;
                                                                            v254 = 1;
                                                                            v247 = 1;
                                                                            v251 = 1;
                                                                            v243 = 1;
                                                                            v244 = 1;
                                                                            v242 = 1;
                                                                            v245 = 1;
                                                                            v238 = 1;
                                                                            v241 = 1;
                                                                            v235 = 1;
                                                                            v237 = 1;
                                                                            v232 = 1;
                                                                            v236 = 1;
                                                                            v227 = 0x100000001;
                                                                            v228 = 1;
                                                                            v234 = 1;
                                                                            v226 = 1;
                                                                            v233 = 1;
                                                                            v224 = 1;
                                                                            v230 = 1;
                                                                            v223 = 1;
                                                                            v225 = 1;
                                                                            v229 = 1;
                                                                            v231 = 1;
                                                                            v239 = 1;
                                                                            v240 = 1;
                                                                            v268 = 1;
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v239 = 0;
                                                                        v240 = 0;
                                                                        v268 = 0;
                                                                        v246 = 0;
                                                                        v249 = 0;
                                                                        v267 = 0;
                                                                        v248 = 0;
                                                                        v250 = 0;
                                                                        v266 = 0;
                                                                        v253 = 0;
                                                                        v256 = 0;
                                                                        v265 = 0;
                                                                        v255 = 0;
                                                                        v13 = 0;
                                                                        v14 = 0;
                                                                        v15 = 0;
                                                                        v16 = 0;
                                                                        v17 = 0;
                                                                        v18 = 0;
                                                                        v19 = 0;
                                                                        v263 = 0;
                                                                        v264 = 1;
                                                                        v261 = 0;
                                                                        v262 = 1;
                                                                        v260 = 0x100000001;
                                                                        v10 = 1;
                                                                        v259 = 1;
                                                                        v257 = 1;
                                                                        v258 = 1;
                                                                        v11 = 1;
                                                                        v12 = 1;
                                                                        v252 = 1;
                                                                        v254 = 1;
                                                                        v247 = 1;
                                                                        v251 = 1;
                                                                        v243 = 1;
                                                                        v244 = 1;
                                                                        v242 = 1;
                                                                        v245 = 1;
                                                                        v238 = 1;
                                                                        v241 = 1;
                                                                        v235 = 1;
                                                                        v237 = 1;
                                                                        v232 = 1;
                                                                        v236 = 1;
                                                                        v227 = 0x100000001;
                                                                        v228 = 1;
                                                                        v234 = 1;
                                                                        v226 = 1;
                                                                        v233 = 1;
                                                                        v224 = 1;
                                                                        v230 = 1;
                                                                        v223 = 1;
                                                                        v225 = 1;
                                                                        v229 = 1;
                                                                        v231 = 1;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v239 = 0;
                                                                      v240 = 0;
                                                                      v268 = 0;
                                                                      v246 = 0;
                                                                      v249 = 0;
                                                                      v267 = 0;
                                                                      v248 = 0;
                                                                      v250 = 0;
                                                                      v266 = 0;
                                                                      v253 = 0;
                                                                      v256 = 0;
                                                                      v265 = 0;
                                                                      v255 = 0;
                                                                      v13 = 0;
                                                                      v14 = 0;
                                                                      v15 = 0;
                                                                      v16 = 0;
                                                                      v17 = 0;
                                                                      v18 = 0;
                                                                      v19 = 0;
                                                                      v263 = 0;
                                                                      v264 = 1;
                                                                      v261 = 0;
                                                                      v262 = 1;
                                                                      v260 = 0x100000001;
                                                                      v10 = 1;
                                                                      v259 = 1;
                                                                      v257 = 1;
                                                                      v258 = 1;
                                                                      v11 = 1;
                                                                      v12 = 1;
                                                                      v252 = 1;
                                                                      v254 = 1;
                                                                      v247 = 1;
                                                                      v251 = 1;
                                                                      v243 = 1;
                                                                      v244 = 1;
                                                                      v242 = 1;
                                                                      v245 = 1;
                                                                      v238 = 1;
                                                                      v241 = 1;
                                                                      v235 = 1;
                                                                      v237 = 1;
                                                                      v232 = 1;
                                                                      v236 = 1;
                                                                      v227 = 0x100000001;
                                                                      v228 = 1;
                                                                      v234 = 1;
                                                                      v226 = 1;
                                                                      v233 = 1;
                                                                      v224 = 1;
                                                                      v230 = 1;
                                                                      v223 = 1;
                                                                      v225 = 1;
                                                                      v229 = 1;
                                                                      v231 = 1;
                                                                      v269 = 1;
                                                                    }
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v229 = 0;
                                                                  v231 = 0;
                                                                  v269 = 0;
                                                                  v239 = 0;
                                                                  v240 = 0;
                                                                  v268 = 0;
                                                                  v246 = 0;
                                                                  v249 = 0;
                                                                  v267 = 0;
                                                                  v248 = 0;
                                                                  v250 = 0;
                                                                  v266 = 0;
                                                                  v253 = 0;
                                                                  v256 = 0;
                                                                  v265 = 0;
                                                                  v255 = 0;
                                                                  v13 = 0;
                                                                  v14 = 0;
                                                                  v15 = 0;
                                                                  v16 = 0;
                                                                  v17 = 0;
                                                                  v18 = 0;
                                                                  v19 = 0;
                                                                  v263 = 0;
                                                                  v264 = 1;
                                                                  v261 = 0;
                                                                  v262 = 1;
                                                                  v260 = 0x100000001;
                                                                  v10 = 1;
                                                                  v259 = 1;
                                                                  v257 = 1;
                                                                  v258 = 1;
                                                                  v11 = 1;
                                                                  v12 = 1;
                                                                  v252 = 1;
                                                                  v254 = 1;
                                                                  v247 = 1;
                                                                  v251 = 1;
                                                                  v243 = 1;
                                                                  v244 = 1;
                                                                  v242 = 1;
                                                                  v245 = 1;
                                                                  v238 = 1;
                                                                  v241 = 1;
                                                                  v235 = 1;
                                                                  v237 = 1;
                                                                  v232 = 1;
                                                                  v236 = 1;
                                                                  v227 = 0x100000001;
                                                                  v228 = 1;
                                                                  v234 = 1;
                                                                  v226 = 1;
                                                                  v233 = 1;
                                                                  v224 = 1;
                                                                  v230 = 1;
                                                                  v223 = 1;
                                                                  v225 = 1;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v229 = 0;
                                                                v231 = 0;
                                                                v269 = 0;
                                                                v239 = 0;
                                                                v240 = 0;
                                                                v268 = 0;
                                                                v246 = 0;
                                                                v249 = 0;
                                                                v267 = 0;
                                                                v248 = 0;
                                                                v250 = 0;
                                                                v266 = 0;
                                                                v253 = 0;
                                                                v256 = 0;
                                                                v265 = 0;
                                                                v255 = 0;
                                                                v13 = 0;
                                                                v14 = 0;
                                                                v15 = 0;
                                                                v16 = 0;
                                                                v17 = 0;
                                                                v18 = 0;
                                                                v19 = 0;
                                                                v263 = 0;
                                                                v264 = 1;
                                                                v261 = 0;
                                                                v262 = 1;
                                                                v260 = 0x100000001;
                                                                v10 = 1;
                                                                v259 = 1;
                                                                v257 = 1;
                                                                v258 = 1;
                                                                v11 = 1;
                                                                v12 = 1;
                                                                v252 = 1;
                                                                v254 = 1;
                                                                v247 = 1;
                                                                v251 = 1;
                                                                v243 = 1;
                                                                v244 = 1;
                                                                v242 = 1;
                                                                v245 = 1;
                                                                v238 = 1;
                                                                v241 = 1;
                                                                v235 = 1;
                                                                v237 = 1;
                                                                v232 = 1;
                                                                v236 = 1;
                                                                v227 = 0x100000001;
                                                                v228 = 1;
                                                                v234 = 1;
                                                                v226 = 1;
                                                                v233 = 1;
                                                                v224 = 1;
                                                                v230 = 1;
                                                                v223 = 1;
                                                                v225 = 1;
                                                                v270 = 1;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v223 = 0;
                                                            v225 = 0;
                                                            v270 = 0;
                                                            v229 = 0;
                                                            v231 = 0;
                                                            v269 = 0;
                                                            v239 = 0;
                                                            v240 = 0;
                                                            v268 = 0;
                                                            v246 = 0;
                                                            v249 = 0;
                                                            v267 = 0;
                                                            v248 = 0;
                                                            v250 = 0;
                                                            v266 = 0;
                                                            v253 = 0;
                                                            v256 = 0;
                                                            v265 = 0;
                                                            v255 = 0;
                                                            v13 = 0;
                                                            v14 = 0;
                                                            v15 = 0;
                                                            v16 = 0;
                                                            v17 = 0;
                                                            v18 = 0;
                                                            v19 = 0;
                                                            v263 = 0;
                                                            v264 = 1;
                                                            v261 = 0;
                                                            v262 = 1;
                                                            v260 = 0x100000001;
                                                            v10 = 1;
                                                            v259 = 1;
                                                            v257 = 1;
                                                            v258 = 1;
                                                            v11 = 1;
                                                            v12 = 1;
                                                            v252 = 1;
                                                            v254 = 1;
                                                            v247 = 1;
                                                            v251 = 1;
                                                            v243 = 1;
                                                            v244 = 1;
                                                            v242 = 1;
                                                            v245 = 1;
                                                            v238 = 1;
                                                            v241 = 1;
                                                            v235 = 1;
                                                            v237 = 1;
                                                            v232 = 1;
                                                            v236 = 1;
                                                            v227 = 0x100000001;
                                                            v228 = 1;
                                                            v234 = 1;
                                                            v226 = 1;
                                                            v233 = 1;
                                                            v224 = 1;
                                                            v230 = 1;
                                                            v271 = 1;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v224 = 0;
                                                        v230 = 0;
                                                        v271 = 0;
                                                        v223 = 0;
                                                        v225 = 0;
                                                        v270 = 0;
                                                        v229 = 0;
                                                        v231 = 0;
                                                        v269 = 0;
                                                        v239 = 0;
                                                        v240 = 0;
                                                        v268 = 0;
                                                        v246 = 0;
                                                        v249 = 0;
                                                        v267 = 0;
                                                        v248 = 0;
                                                        v250 = 0;
                                                        v266 = 0;
                                                        v253 = 0;
                                                        v256 = 0;
                                                        v265 = 0;
                                                        v255 = 0;
                                                        v13 = 0;
                                                        v14 = 0;
                                                        v15 = 0;
                                                        v16 = 0;
                                                        v17 = 0;
                                                        v18 = 0;
                                                        v19 = 0;
                                                        v263 = 0;
                                                        v264 = 1;
                                                        v261 = 0;
                                                        v262 = 1;
                                                        v260 = 0x100000001;
                                                        v10 = 1;
                                                        v259 = 1;
                                                        v257 = 1;
                                                        v258 = 1;
                                                        v11 = 1;
                                                        v12 = 1;
                                                        v252 = 1;
                                                        v254 = 1;
                                                        v247 = 1;
                                                        v251 = 1;
                                                        v243 = 1;
                                                        v244 = 1;
                                                        v242 = 1;
                                                        v245 = 1;
                                                        v238 = 1;
                                                        v241 = 1;
                                                        v235 = 1;
                                                        v237 = 1;
                                                        v232 = 1;
                                                        v236 = 1;
                                                        v227 = 0x100000001;
                                                        v228 = 1;
                                                        v234 = 1;
                                                        v226 = 1;
                                                        v233 = 1;
                                                        v272 = 1;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v226 = 0;
                                                    v233 = 0;
                                                    v272 = 0;
                                                    v224 = 0;
                                                    v230 = 0;
                                                    v271 = 0;
                                                    v223 = 0;
                                                    v225 = 0;
                                                    v270 = 0;
                                                    v229 = 0;
                                                    v231 = 0;
                                                    v269 = 0;
                                                    v239 = 0;
                                                    v240 = 0;
                                                    v268 = 0;
                                                    v246 = 0;
                                                    v249 = 0;
                                                    v267 = 0;
                                                    v248 = 0;
                                                    v250 = 0;
                                                    v266 = 0;
                                                    v253 = 0;
                                                    v256 = 0;
                                                    v265 = 0;
                                                    v255 = 0;
                                                    v13 = 0;
                                                    v14 = 0;
                                                    v15 = 0;
                                                    v16 = 0;
                                                    v17 = 0;
                                                    v18 = 0;
                                                    v19 = 0;
                                                    v263 = 0;
                                                    v264 = 1;
                                                    v261 = 0;
                                                    v262 = 1;
                                                    v260 = 0x100000001;
                                                    v10 = 1;
                                                    v259 = 1;
                                                    v257 = 1;
                                                    v258 = 1;
                                                    v11 = 1;
                                                    v12 = 1;
                                                    v252 = 1;
                                                    v254 = 1;
                                                    v247 = 1;
                                                    v251 = 1;
                                                    v243 = 1;
                                                    v244 = 1;
                                                    v242 = 1;
                                                    v245 = 1;
                                                    v238 = 1;
                                                    v241 = 1;
                                                    v235 = 1;
                                                    v237 = 1;
                                                    v232 = 1;
                                                    v236 = 1;
                                                    v227 = 0x100000001;
                                                    v228 = 1;
                                                    v234 = 1;
                                                    v273 = 1;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v228 = 0;
                                                v234 = 0;
                                                v273 = 0;
                                                v226 = 0;
                                                v233 = 0;
                                                v272 = 0;
                                                v224 = 0;
                                                v230 = 0;
                                                v271 = 0;
                                                v223 = 0;
                                                v225 = 0;
                                                v270 = 0;
                                                v229 = 0;
                                                v231 = 0;
                                                v269 = 0;
                                                v239 = 0;
                                                v240 = 0;
                                                v268 = 0;
                                                v246 = 0;
                                                v249 = 0;
                                                v267 = 0;
                                                v248 = 0;
                                                v250 = 0;
                                                v266 = 0;
                                                v253 = 0;
                                                v256 = 0;
                                                v265 = 0;
                                                v255 = 0;
                                                v13 = 0;
                                                v14 = 0;
                                                v15 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v18 = 0;
                                                v19 = 0;
                                                v263 = 0;
                                                v264 = 1;
                                                v261 = 0;
                                                v262 = 1;
                                                v260 = 0x100000001;
                                                v10 = 1;
                                                v259 = 1;
                                                v257 = 1;
                                                v258 = 1;
                                                v11 = 1;
                                                v12 = 1;
                                                v252 = 1;
                                                v254 = 1;
                                                v247 = 1;
                                                v251 = 1;
                                                v243 = 1;
                                                v244 = 1;
                                                v242 = 1;
                                                v245 = 1;
                                                v238 = 1;
                                                v241 = 1;
                                                v235 = 1;
                                                v237 = 1;
                                                v232 = 1;
                                                v236 = 1;
                                                v227 = 0x100000001;
                                              }
                                            }

                                            else
                                            {
                                              v228 = 0;
                                              v234 = 0;
                                              v273 = 0;
                                              v226 = 0;
                                              v233 = 0;
                                              v272 = 0;
                                              v224 = 0;
                                              v230 = 0;
                                              v271 = 0;
                                              v223 = 0;
                                              v225 = 0;
                                              v270 = 0;
                                              v229 = 0;
                                              v231 = 0;
                                              v269 = 0;
                                              v239 = 0;
                                              v240 = 0;
                                              v268 = 0;
                                              v246 = 0;
                                              v249 = 0;
                                              v267 = 0;
                                              v248 = 0;
                                              v250 = 0;
                                              v266 = 0;
                                              v253 = 0;
                                              v256 = 0;
                                              v265 = 0;
                                              v255 = 0;
                                              v13 = 0;
                                              v14 = 0;
                                              v15 = 0;
                                              v16 = 0;
                                              v17 = 0;
                                              v18 = 0;
                                              v19 = 0;
                                              v263 = 0;
                                              v264 = 1;
                                              v261 = 0;
                                              v262 = 1;
                                              v260 = 0x100000001;
                                              v10 = 1;
                                              v259 = 1;
                                              v257 = 1;
                                              v258 = 1;
                                              v11 = 1;
                                              v12 = 1;
                                              v252 = 1;
                                              v254 = 1;
                                              v247 = 1;
                                              v251 = 1;
                                              v243 = 1;
                                              v244 = 1;
                                              v242 = 1;
                                              v245 = 1;
                                              v238 = 1;
                                              v241 = 1;
                                              v235 = 1;
                                              v237 = 1;
                                              v232 = 1;
                                              v236 = 1;
                                              v227 = 0x100000001;
                                              v274 = 1;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v227 = 0;
                                          v274 = 0;
                                          v228 = 0;
                                          v234 = 0;
                                          v273 = 0;
                                          v226 = 0;
                                          v233 = 0;
                                          v272 = 0;
                                          v224 = 0;
                                          v230 = 0;
                                          v271 = 0;
                                          v223 = 0;
                                          v225 = 0;
                                          v270 = 0;
                                          v229 = 0;
                                          v231 = 0;
                                          v269 = 0;
                                          v239 = 0;
                                          v240 = 0;
                                          v268 = 0;
                                          v246 = 0;
                                          v249 = 0;
                                          v267 = 0;
                                          v248 = 0;
                                          v250 = 0;
                                          v266 = 0;
                                          v253 = 0;
                                          v256 = 0;
                                          v265 = 0;
                                          v255 = 0;
                                          v13 = 0;
                                          v14 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v18 = 0;
                                          v19 = 0;
                                          v263 = 0;
                                          v264 = 1;
                                          v261 = 0;
                                          v262 = 1;
                                          v260 = 0x100000001;
                                          v10 = 1;
                                          v259 = 1;
                                          v257 = 1;
                                          v258 = 1;
                                          v11 = 1;
                                          v12 = 1;
                                          v252 = 1;
                                          v254 = 1;
                                          v247 = 1;
                                          v251 = 1;
                                          v243 = 1;
                                          v244 = 1;
                                          v242 = 1;
                                          v245 = 1;
                                          v238 = 1;
                                          v241 = 1;
                                          v235 = 1;
                                          v237 = 1;
                                          v232 = 1;
                                          v236 = 1;
                                          v275 = 1;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v232 = 0;
                                      v236 = 0;
                                      v275 = 0;
                                      v227 = 0;
                                      v274 = 0;
                                      v228 = 0;
                                      v234 = 0;
                                      v273 = 0;
                                      v226 = 0;
                                      v233 = 0;
                                      v272 = 0;
                                      v224 = 0;
                                      v230 = 0;
                                      v271 = 0;
                                      v223 = 0;
                                      v225 = 0;
                                      v270 = 0;
                                      v229 = 0;
                                      v231 = 0;
                                      v269 = 0;
                                      v239 = 0;
                                      v240 = 0;
                                      v268 = 0;
                                      v246 = 0;
                                      v249 = 0;
                                      v267 = 0;
                                      v248 = 0;
                                      v250 = 0;
                                      v266 = 0;
                                      v253 = 0;
                                      v256 = 0;
                                      v265 = 0;
                                      v255 = 0;
                                      v13 = 0;
                                      v14 = 0;
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v263 = 0;
                                      v264 = 1;
                                      v261 = 0;
                                      v262 = 1;
                                      v260 = 0x100000001;
                                      v10 = 1;
                                      v259 = 1;
                                      v257 = 1;
                                      v258 = 1;
                                      v11 = 1;
                                      v12 = 1;
                                      v252 = 1;
                                      v254 = 1;
                                      v247 = 1;
                                      v251 = 1;
                                      v243 = 1;
                                      v244 = 1;
                                      v242 = 1;
                                      v245 = 1;
                                      v238 = 1;
                                      v241 = 1;
                                      v235 = 1;
                                      v237 = 1;
                                      v276 = 1;
                                    }
                                  }
                                }

                                else
                                {
                                  v235 = 0;
                                  v237 = 0;
                                  v276 = 0;
                                  v232 = 0;
                                  v236 = 0;
                                  v275 = 0;
                                  v227 = 0;
                                  v274 = 0;
                                  v228 = 0;
                                  v234 = 0;
                                  v273 = 0;
                                  v226 = 0;
                                  v233 = 0;
                                  v272 = 0;
                                  v224 = 0;
                                  v230 = 0;
                                  v271 = 0;
                                  v223 = 0;
                                  v225 = 0;
                                  v270 = 0;
                                  v229 = 0;
                                  v231 = 0;
                                  v269 = 0;
                                  v239 = 0;
                                  v240 = 0;
                                  v268 = 0;
                                  v246 = 0;
                                  v249 = 0;
                                  v267 = 0;
                                  v248 = 0;
                                  v250 = 0;
                                  v266 = 0;
                                  v253 = 0;
                                  v256 = 0;
                                  v265 = 0;
                                  v255 = 0;
                                  v13 = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v263 = 0;
                                  v264 = 1;
                                  v261 = 0;
                                  v262 = 1;
                                  v260 = 0x100000001;
                                  v10 = 1;
                                  v259 = 1;
                                  v257 = 1;
                                  v258 = 1;
                                  v11 = 1;
                                  v12 = 1;
                                  v252 = 1;
                                  v254 = 1;
                                  v247 = 1;
                                  v251 = 1;
                                  v243 = 1;
                                  v244 = 1;
                                  v242 = 1;
                                  v245 = 1;
                                  v238 = 1;
                                  v241 = 1;
                                  v283 = 1;
                                }
                              }
                            }

                            else
                            {
                              v238 = 0;
                              v241 = 0;
                              v283 = 0;
                              v235 = 0;
                              v237 = 0;
                              v276 = 0;
                              v232 = 0;
                              v236 = 0;
                              v275 = 0;
                              v227 = 0;
                              v274 = 0;
                              v228 = 0;
                              v234 = 0;
                              v273 = 0;
                              v226 = 0;
                              v233 = 0;
                              v272 = 0;
                              v224 = 0;
                              v230 = 0;
                              v271 = 0;
                              v223 = 0;
                              v225 = 0;
                              v270 = 0;
                              v229 = 0;
                              v231 = 0;
                              v269 = 0;
                              v239 = 0;
                              v240 = 0;
                              v268 = 0;
                              v246 = 0;
                              v249 = 0;
                              v267 = 0;
                              v248 = 0;
                              v250 = 0;
                              v266 = 0;
                              v253 = 0;
                              v256 = 0;
                              v265 = 0;
                              v255 = 0;
                              v13 = 0;
                              v14 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v263 = 0;
                              v264 = 1;
                              v261 = 0;
                              v262 = 1;
                              v260 = 0x100000001;
                              v10 = 1;
                              v259 = 1;
                              v257 = 1;
                              v258 = 1;
                              v11 = 1;
                              v12 = 1;
                              v252 = 1;
                              v254 = 1;
                              v247 = 1;
                              v251 = 1;
                              v243 = 1;
                              v244 = 1;
                              v242 = 1;
                              v245 = 1;
                              v284 = 1;
                            }
                          }
                        }

                        else
                        {
                          v242 = 0;
                          v245 = 0;
                          v284 = 0;
                          v238 = 0;
                          v241 = 0;
                          v283 = 0;
                          v235 = 0;
                          v237 = 0;
                          v276 = 0;
                          v232 = 0;
                          v236 = 0;
                          v275 = 0;
                          v227 = 0;
                          v274 = 0;
                          v228 = 0;
                          v234 = 0;
                          v273 = 0;
                          v226 = 0;
                          v233 = 0;
                          v272 = 0;
                          v224 = 0;
                          v230 = 0;
                          v271 = 0;
                          v223 = 0;
                          v225 = 0;
                          v270 = 0;
                          v229 = 0;
                          v231 = 0;
                          v269 = 0;
                          v239 = 0;
                          v240 = 0;
                          v268 = 0;
                          v246 = 0;
                          v249 = 0;
                          v267 = 0;
                          v248 = 0;
                          v250 = 0;
                          v266 = 0;
                          v253 = 0;
                          v256 = 0;
                          v265 = 0;
                          v255 = 0;
                          v13 = 0;
                          v14 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v263 = 0;
                          v264 = 1;
                          v261 = 0;
                          v262 = 1;
                          v260 = 0x100000001;
                          v10 = 1;
                          v259 = 1;
                          v257 = 1;
                          v258 = 1;
                          v11 = 1;
                          v12 = 1;
                          v252 = 1;
                          v254 = 1;
                          v247 = 1;
                          v251 = 1;
                          v243 = 1;
                          v244 = 1;
                        }
                      }

                      else
                      {
                        v242 = 0;
                        v245 = 0;
                        v284 = 0;
                        v238 = 0;
                        v241 = 0;
                        v283 = 0;
                        v235 = 0;
                        v237 = 0;
                        v276 = 0;
                        v232 = 0;
                        v236 = 0;
                        v275 = 0;
                        v227 = 0;
                        v274 = 0;
                        v228 = 0;
                        v234 = 0;
                        v273 = 0;
                        v226 = 0;
                        v233 = 0;
                        v272 = 0;
                        v224 = 0;
                        v230 = 0;
                        v271 = 0;
                        v223 = 0;
                        v225 = 0;
                        v270 = 0;
                        v229 = 0;
                        v231 = 0;
                        v269 = 0;
                        v239 = 0;
                        v240 = 0;
                        v268 = 0;
                        v246 = 0;
                        v249 = 0;
                        v267 = 0;
                        v248 = 0;
                        v250 = 0;
                        v266 = 0;
                        v253 = 0;
                        v256 = 0;
                        v265 = 0;
                        v255 = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v263 = 0;
                        v264 = 1;
                        v261 = 0;
                        v262 = 1;
                        v260 = 0x100000001;
                        v10 = 1;
                        v259 = 1;
                        v257 = 1;
                        v258 = 1;
                        v11 = 1;
                        v12 = 1;
                        v252 = 1;
                        v254 = 1;
                        v247 = 1;
                        v251 = 1;
                        v243 = 1;
                        v244 = 1;
                        v285 = 1;
                      }
                    }
                  }

                  else
                  {
                    v243 = 0;
                    v244 = 0;
                    v285 = 0;
                    v242 = 0;
                    v245 = 0;
                    v284 = 0;
                    v238 = 0;
                    v241 = 0;
                    v283 = 0;
                    v235 = 0;
                    v237 = 0;
                    v276 = 0;
                    v232 = 0;
                    v236 = 0;
                    v275 = 0;
                    v227 = 0;
                    v274 = 0;
                    v228 = 0;
                    v234 = 0;
                    v273 = 0;
                    v226 = 0;
                    v233 = 0;
                    v272 = 0;
                    v224 = 0;
                    v230 = 0;
                    v271 = 0;
                    v223 = 0;
                    v225 = 0;
                    v270 = 0;
                    v229 = 0;
                    v231 = 0;
                    v269 = 0;
                    v239 = 0;
                    v240 = 0;
                    v268 = 0;
                    v246 = 0;
                    v249 = 0;
                    v267 = 0;
                    v248 = 0;
                    v250 = 0;
                    v266 = 0;
                    v253 = 0;
                    v256 = 0;
                    v265 = 0;
                    v255 = 0;
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v263 = 0;
                    v264 = 1;
                    v261 = 0;
                    v262 = 1;
                    v260 = 0x100000001;
                    v10 = 1;
                    v259 = 1;
                    v257 = 1;
                    v258 = 1;
                    v11 = 1;
                    v12 = 1;
                    v252 = 1;
                    v254 = 1;
                    v247 = 1;
                    v251 = 1;
                    v286 = 1;
                  }
                }
              }

              else
              {
                v247 = 0;
                v251 = 0;
                v286 = 0;
                v243 = 0;
                v244 = 0;
                v285 = 0;
                v242 = 0;
                v245 = 0;
                v284 = 0;
                v238 = 0;
                v241 = 0;
                v283 = 0;
                v235 = 0;
                v237 = 0;
                v276 = 0;
                v232 = 0;
                v236 = 0;
                v275 = 0;
                v227 = 0;
                v274 = 0;
                v228 = 0;
                v234 = 0;
                v273 = 0;
                v226 = 0;
                v233 = 0;
                v272 = 0;
                v224 = 0;
                v230 = 0;
                v271 = 0;
                v223 = 0;
                v225 = 0;
                v270 = 0;
                v229 = 0;
                v231 = 0;
                v269 = 0;
                v239 = 0;
                v240 = 0;
                v268 = 0;
                v246 = 0;
                v249 = 0;
                v267 = 0;
                v248 = 0;
                v250 = 0;
                v266 = 0;
                v253 = 0;
                v256 = 0;
                v265 = 0;
                v255 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v263 = 0;
                v264 = 1;
                v261 = 0;
                v262 = 1;
                v260 = 0x100000001;
                v10 = 1;
                v259 = 1;
                v257 = 1;
                v258 = 1;
                v11 = 1;
                v12 = 1;
                v252 = 1;
                v254 = 1;
                v287 = 1;
              }
            }
          }

          else
          {
            v252 = 0;
            v254 = 0;
            v287 = 0;
            v247 = 0;
            v251 = 0;
            v286 = 0;
            v243 = 0;
            v244 = 0;
            v285 = 0;
            v242 = 0;
            v245 = 0;
            v284 = 0;
            v238 = 0;
            v241 = 0;
            v283 = 0;
            v235 = 0;
            v237 = 0;
            v276 = 0;
            v232 = 0;
            v236 = 0;
            v275 = 0;
            v227 = 0;
            v274 = 0;
            v228 = 0;
            v234 = 0;
            v273 = 0;
            v226 = 0;
            v233 = 0;
            v272 = 0;
            v224 = 0;
            v230 = 0;
            v271 = 0;
            v223 = 0;
            v225 = 0;
            v270 = 0;
            v229 = 0;
            v231 = 0;
            v269 = 0;
            v239 = 0;
            v240 = 0;
            v268 = 0;
            v246 = 0;
            v249 = 0;
            v267 = 0;
            v248 = 0;
            v250 = 0;
            v266 = 0;
            v253 = 0;
            v256 = 0;
            v265 = 0;
            v255 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v263 = 0;
            v264 = 1;
            v261 = 0;
            v262 = 1;
            v260 = 0x100000001;
            v10 = 1;
            v259 = 1;
            v257 = 1;
            v258 = 1;
            v11 = 1;
            v12 = 1;
            LODWORD(v288) = 1;
          }
        }
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v288 = 0x100000000;
        v252 = 0;
        v254 = 0;
        v287 = 0;
        v247 = 0;
        v251 = 0;
        v286 = 0;
        v243 = 0;
        v244 = 0;
        v285 = 0;
        v242 = 0;
        v245 = 0;
        v284 = 0;
        v238 = 0;
        v241 = 0;
        v283 = 0;
        v235 = 0;
        v237 = 0;
        v276 = 0;
        v232 = 0;
        v236 = 0;
        v275 = 0;
        v227 = 0;
        v274 = 0;
        v228 = 0;
        v234 = 0;
        v273 = 0;
        v226 = 0;
        v233 = 0;
        v272 = 0;
        v224 = 0;
        v230 = 0;
        v271 = 0;
        v223 = 0;
        v225 = 0;
        v270 = 0;
        v229 = 0;
        v231 = 0;
        v269 = 0;
        v239 = 0;
        v240 = 0;
        v268 = 0;
        v246 = 0;
        v249 = 0;
        v267 = 0;
        v248 = 0;
        v250 = 0;
        v266 = 0;
        v253 = 0;
        v256 = 0;
        v265 = 0;
        v255 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v263 = 0;
        v264 = 1;
        v261 = 0;
        v262 = 1;
        v260 = 0x100000001;
        v10 = 1;
        v259 = 1;
        v257 = 1;
        v258 = 1;
      }
    }
  }

  else
  {
    v257 = 0;
    v258 = 0;
    v288 = 0;
    v11 = 0;
    v12 = 0;
    v252 = 0;
    v254 = 0;
    v287 = 0;
    v247 = 0;
    v251 = 0;
    v286 = 0;
    v243 = 0;
    v244 = 0;
    v285 = 0;
    v242 = 0;
    v245 = 0;
    v284 = 0;
    v238 = 0;
    v241 = 0;
    v283 = 0;
    v235 = 0;
    v237 = 0;
    v276 = 0;
    v232 = 0;
    v236 = 0;
    v275 = 0;
    v227 = 0;
    v274 = 0;
    v228 = 0;
    v234 = 0;
    v273 = 0;
    v226 = 0;
    v233 = 0;
    v272 = 0;
    v224 = 0;
    v230 = 0;
    v271 = 0;
    v223 = 0;
    v225 = 0;
    v270 = 0;
    v229 = 0;
    v231 = 0;
    v269 = 0;
    v239 = 0;
    v240 = 0;
    v268 = 0;
    v246 = 0;
    v249 = 0;
    v267 = 0;
    v248 = 0;
    v250 = 0;
    v266 = 0;
    v253 = 0;
    v256 = 0;
    v265 = 0;
    v255 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v263 = 0;
    v264 = 1;
    v261 = 0;
    v262 = 1;
    v260 = 0x100000001;
    v10 = 1;
    v259 = 1;
  }

LABEL_16:
  if (v18)
  {
    v23 = v11;
    v24 = v13;
    v25 = v14;
    v26 = v10;
    v27 = v12;
    v28 = v15;
    v29 = v16;
    v30 = v17;

    v31 = v30;
    v16 = v29;
    v15 = v28;
    v12 = v27;
    v10 = v26;
    v14 = v25;
    v13 = v24;
    v11 = v23;
    if (!v31)
    {
      goto LABEL_18;
    }
  }

  else if (!v17)
  {
LABEL_18:
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v16)
  {
LABEL_19:
  }

LABEL_20:
  if (v261)
  {

    if (!v15)
    {
      goto LABEL_22;
    }
  }

  else if (!v15)
  {
LABEL_22:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v14)
  {
LABEL_23:
  }

LABEL_24:
  if (v263)
  {
  }

  if (v13)
  {
  }

  if (v255)
  {
  }

  if (v265)
  {
  }

  if (v256)
  {
  }

  if (v253)
  {
  }

  if (v266)
  {
  }

  if (v250)
  {
  }

  if (v248)
  {
  }

  if (v267)
  {
  }

  if (v249)
  {
  }

  if (v246)
  {
  }

  if (v268)
  {
  }

  if (v240)
  {
  }

  if (v239)
  {
  }

  if (v269)
  {
  }

  if (v231)
  {
  }

  if (v229)
  {
  }

  if (v270)
  {
  }

  if (v225)
  {
  }

  if (v223)
  {
  }

  if (v271)
  {
  }

  if (v230)
  {
  }

  if (v224)
  {
  }

  if (v272)
  {
  }

  if (v233)
  {
  }

  if (v226)
  {
  }

  if (v273)
  {
  }

  if (v234)
  {
  }

  if (v228)
  {
  }

  if (v274)
  {
  }

  if (HIDWORD(v227))
  {
  }

  if (v227)
  {
  }

  if (v275)
  {
  }

  if (v236)
  {
  }

  if (v232)
  {
  }

  if (v276)
  {
  }

  if (v237)
  {
  }

  if (v235)
  {
  }

  if (v283)
  {
  }

  if (v241)
  {
  }

  if (v238)
  {
  }

  if (v284)
  {
  }

  if (v245)
  {
  }

  if (v242)
  {
  }

  if (v285)
  {
  }

  if (v244)
  {
  }

  if (v243)
  {
  }

  if (v286)
  {
  }

  if (v251)
  {
  }

  if (v247)
  {
  }

  if (v287)
  {
  }

  if (v254)
  {
  }

  if (v252)
  {
  }

  if (v288)
  {

    if (!v12)
    {
      goto LABEL_134;
    }

LABEL_173:

    if (!v11)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  if (v12)
  {
    goto LABEL_173;
  }

LABEL_134:
  if (v11)
  {
LABEL_135:
  }

LABEL_136:
  if (HIDWORD(v288))
  {
  }

  if (v258)
  {
  }

  if (v257)
  {
  }

  if (v277)
  {
  }

  if (v259)
  {
  }

  if (v260)
  {
  }

  if (*v278)
  {
  }

  if (v10)
  {
  }

  if (HIDWORD(v260))
  {
  }

  if (*&v278[4])
  {
  }

  if (v262)
  {
  }

  if (v264)
  {
  }

  if (*&v278[8])
  {
  }

  if (v280 != v279)
  {
  }

LABEL_165:
  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v58.receiver = self;
  v58.super_class = SFRichTitleCardSection;
  v4 = [(SFTitleCardSection *)&v58 copyWithZone:a3];
  v5 = [(SFCardSection *)self punchoutOptions];
  v6 = [v5 copy];
  [v4 setPunchoutOptions:v6];

  v7 = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [v7 copy];
  [v4 setPunchoutPickerTitle:v8];

  v9 = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [v9 copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  v11 = [(SFTitleCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFTitleCardSection *)self title];
  v16 = [v15 copy];
  [v4 setTitle:v16];

  v17 = [(SFTitleCardSection *)self subtitle];
  v18 = [v17 copy];
  [v4 setSubtitle:v18];

  v19 = [(SFRichTitleCardSection *)self contentAdvisory];
  v20 = [v19 copy];
  [v4 setContentAdvisory:v20];

  v21 = [(SFRichTitleCardSection *)self titleImage];
  v22 = [v21 copy];
  [v4 setTitleImage:v22];

  [v4 setIsCentered:{-[SFTitleCardSection isCentered](self, "isCentered")}];
  v23 = [(SFRichTitleCardSection *)self descriptionText];
  v24 = [v23 copy];
  [v4 setDescriptionText:v24];

  v25 = [(SFRichTitleCardSection *)self rating];
  v26 = [v25 copy];
  [v4 setRating:v26];

  v27 = [(SFRichTitleCardSection *)self ratingText];
  v28 = [v27 copy];
  [v4 setRatingText:v28];

  v29 = [(SFRichTitleCardSection *)self reviewGlyph];
  v30 = [v29 copy];
  [v4 setReviewGlyph:v30];

  v31 = [(SFRichTitleCardSection *)self reviewText];
  v32 = [v31 copy];
  [v4 setReviewText:v32];

  [v4 setReviewNewLine:{-[SFRichTitleCardSection reviewNewLine](self, "reviewNewLine")}];
  v33 = [(SFRichTitleCardSection *)self moreGlyphs];
  v34 = [v33 copy];
  [v4 setMoreGlyphs:v34];

  v35 = [(SFRichTitleCardSection *)self auxiliaryTopText];
  v36 = [v35 copy];
  [v4 setAuxiliaryTopText:v36];

  v37 = [(SFRichTitleCardSection *)self auxiliaryMiddleText];
  v38 = [v37 copy];
  [v4 setAuxiliaryMiddleText:v38];

  v39 = [(SFRichTitleCardSection *)self auxiliaryBottomText];
  v40 = [v39 copy];
  [v4 setAuxiliaryBottomText:v40];

  [v4 setAuxiliaryBottomTextColor:{-[SFRichTitleCardSection auxiliaryBottomTextColor](self, "auxiliaryBottomTextColor")}];
  v41 = [(SFRichTitleCardSection *)self auxiliaryAlignment];
  v42 = [v41 copy];
  [v4 setAuxiliaryAlignment:v42];

  [v4 setHideVerticalDivider:{-[SFRichTitleCardSection hideVerticalDivider](self, "hideVerticalDivider")}];
  [v4 setTitleAlign:{-[SFRichTitleCardSection titleAlign](self, "titleAlign")}];
  v43 = [(SFRichTitleCardSection *)self titleWeight];
  v44 = [v43 copy];
  [v4 setTitleWeight:v44];

  [v4 setTitleNoWrap:{-[SFRichTitleCardSection titleNoWrap](self, "titleNoWrap")}];
  [v4 setThumbnailCropCircle:{-[SFRichTitleCardSection thumbnailCropCircle](self, "thumbnailCropCircle")}];
  v45 = [(SFRichTitleCardSection *)self imageOverlay];
  v46 = [v45 copy];
  [v4 setImageOverlay:v46];

  v47 = [(SFRichTitleCardSection *)self playAction];
  v48 = [v47 copy];
  [v4 setPlayAction:v48];

  [v4 setPlayActionAlign:{-[SFRichTitleCardSection playActionAlign](self, "playActionAlign")}];
  v49 = [(SFRichTitleCardSection *)self offers];
  v50 = [v49 copy];
  [v4 setOffers:v50];

  v51 = [(SFRichTitleCardSection *)self footnote];
  v52 = [v51 copy];
  [v4 setFootnote:v52];

  v53 = [(SFRichTitleCardSection *)self richSubtitle];
  v54 = [v53 copy];
  [v4 setRichSubtitle:v54];

  [v4 setSubtitleIsEmphasized:{-[SFRichTitleCardSection subtitleIsEmphasized](self, "subtitleIsEmphasized")}];
  v55 = [(SFRichTitleCardSection *)self buttonItems];
  v56 = [v55 copy];
  [v4 setButtonItems:v56];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRichTitleCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRichTitleCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRichTitleCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRichTitleCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFRichTitleCardSection;
  [(SFTitleCardSection *)&v3 encodeWithCoder:a3];
}

- (SFRichTitleCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v9];

    v10 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v10];

    v11 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v11];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v12 = [(SFCardSection *)v8 type];
    [(SFTitleCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:v14];

    v15 = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:v15];

    v16 = [(SFCardSection *)v8 contentAdvisory];
    [(SFRichTitleCardSection *)v5 setContentAdvisory:v16];

    v17 = [(SFCardSection *)v8 titleImage];
    [(SFRichTitleCardSection *)v5 setTitleImage:v17];

    [(SFTitleCardSection *)v5 setIsCentered:[(SFCardSection *)v8 isCentered]];
    v18 = [(SFCardSection *)v8 descriptionText];
    [(SFRichTitleCardSection *)v5 setDescriptionText:v18];

    v19 = [(SFCardSection *)v8 rating];
    [(SFRichTitleCardSection *)v5 setRating:v19];

    v20 = [(SFCardSection *)v8 ratingText];
    [(SFRichTitleCardSection *)v5 setRatingText:v20];

    v21 = [(SFCardSection *)v8 reviewGlyph];
    [(SFRichTitleCardSection *)v5 setReviewGlyph:v21];

    v22 = [(SFCardSection *)v8 reviewText];
    [(SFRichTitleCardSection *)v5 setReviewText:v22];

    [(SFRichTitleCardSection *)v5 setReviewNewLine:[(SFCardSection *)v8 reviewNewLine]];
    v23 = [(SFCardSection *)v8 moreGlyphs];
    [(SFRichTitleCardSection *)v5 setMoreGlyphs:v23];

    v24 = [(SFCardSection *)v8 auxiliaryTopText];
    [(SFRichTitleCardSection *)v5 setAuxiliaryTopText:v24];

    v25 = [(SFCardSection *)v8 auxiliaryMiddleText];
    [(SFRichTitleCardSection *)v5 setAuxiliaryMiddleText:v25];

    v26 = [(SFCardSection *)v8 auxiliaryBottomText];
    [(SFRichTitleCardSection *)v5 setAuxiliaryBottomText:v26];

    [(SFRichTitleCardSection *)v5 setAuxiliaryBottomTextColor:[(SFCardSection *)v8 auxiliaryBottomTextColor]];
    v27 = [(SFCardSection *)v8 auxiliaryAlignment];
    [(SFRichTitleCardSection *)v5 setAuxiliaryAlignment:v27];

    [(SFRichTitleCardSection *)v5 setHideVerticalDivider:[(SFCardSection *)v8 hideVerticalDivider]];
    [(SFRichTitleCardSection *)v5 setTitleAlign:[(SFCardSection *)v8 titleAlign]];
    v28 = [(SFCardSection *)v8 titleWeight];
    [(SFRichTitleCardSection *)v5 setTitleWeight:v28];

    [(SFRichTitleCardSection *)v5 setTitleNoWrap:[(SFCardSection *)v8 titleNoWrap]];
    [(SFRichTitleCardSection *)v5 setThumbnailCropCircle:[(SFCardSection *)v8 thumbnailCropCircle]];
    v29 = [(SFCardSection *)v8 imageOverlay];
    [(SFRichTitleCardSection *)v5 setImageOverlay:v29];

    v30 = [(SFCardSection *)v8 playAction];
    [(SFRichTitleCardSection *)v5 setPlayAction:v30];

    [(SFRichTitleCardSection *)v5 setPlayActionAlign:[(SFCardSection *)v8 playActionAlign]];
    v31 = [(SFCardSection *)v8 offers];
    [(SFRichTitleCardSection *)v5 setOffers:v31];

    v32 = [(SFCardSection *)v8 footnote];
    [(SFRichTitleCardSection *)v5 setFootnote:v32];

    v33 = [(SFCardSection *)v8 richSubtitle];
    [(SFRichTitleCardSection *)v5 setRichSubtitle:v33];

    [(SFRichTitleCardSection *)v5 setSubtitleIsEmphasized:[(SFCardSection *)v8 subtitleIsEmphasized]];
    v34 = [(SFCardSection *)v8 buttonItems];
    [(SFRichTitleCardSection *)v5 setButtonItems:v34];

    v35 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v35];

    v36 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v36];

    v37 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v37];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v38 = [(SFCardSection *)v8 type];
    [(SFTitleCardSection *)v5 setType:v38];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v39 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v39];

    v40 = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:v40];

    v41 = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:v41];

    [(SFTitleCardSection *)v5 setIsCentered:[(SFCardSection *)v8 isCentered]];
    v42 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v42];

    v43 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v43];

    v44 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v44];

    v45 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v45];

    v46 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v46];

    v47 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v47];

    v48 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v48];

    v49 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v49];

    v50 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v50];

    v51 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v51];

    v52 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v52];

    v53 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v53];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v54 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v54];

    v55 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v55];

    v56 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v56];

    v57 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v57];

    v58 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v58];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v59 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v59];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v60 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v60];

    v61 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v61];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v62 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v62];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v63 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v63];

    v64 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v64];

    v65 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v65];

    v66 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v66];
  }

  return v5;
}

@end