@interface _SFPBDetailedRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBDetailedRowCardSection)initWithDictionary:(id)a3;
- (_SFPBDetailedRowCardSection)initWithFacade:(id)a3;
- (_SFPBDetailedRowCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addButtonItems:(id)a3;
- (void)addDescriptions:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setButtonItems:(id)a3;
- (void)setDescriptions:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBDetailedRowCardSection

- (_SFPBDetailedRowCardSection)initWithFacade:(id)a3
{
  v120 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBDetailedRowCardSection *)self init];

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

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v113 objects:v119 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v114;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v114 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v113 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v113 objects:v119 count:16];
      }

      while (v10);
    }

    [(_SFPBDetailedRowCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBDetailedRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBDetailedRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBDetailedRowCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBDetailedRowCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 thumbnail];

    if (v24)
    {
      v25 = [_SFPBImage alloc];
      v26 = [v4 thumbnail];
      v27 = [(_SFPBImage *)v25 initWithFacade:v26];
      [(_SFPBDetailedRowCardSection *)v5 setThumbnail:v27];
    }

    if ([v4 hasPreventThumbnailImageScaling])
    {
      -[_SFPBDetailedRowCardSection setPreventThumbnailImageScaling:](v5, "setPreventThumbnailImageScaling:", [v4 preventThumbnailImageScaling]);
    }

    v28 = [v4 title];

    if (v28)
    {
      v29 = [_SFPBRichText alloc];
      v30 = [v4 title];
      v31 = [(_SFPBRichText *)v29 initWithFacade:v30];
      [(_SFPBDetailedRowCardSection *)v5 setTitle:v31];
    }

    v32 = [v4 secondaryTitle];

    if (v32)
    {
      v33 = [_SFPBFormattedText alloc];
      v34 = [v4 secondaryTitle];
      v35 = [(_SFPBFormattedText *)v33 initWithFacade:v34];
      [(_SFPBDetailedRowCardSection *)v5 setSecondaryTitle:v35];
    }

    v36 = [v4 secondaryTitleImage];

    if (v36)
    {
      v37 = [_SFPBImage alloc];
      v38 = [v4 secondaryTitleImage];
      v39 = [(_SFPBImage *)v37 initWithFacade:v38];
      [(_SFPBDetailedRowCardSection *)v5 setSecondaryTitleImage:v39];
    }

    if ([v4 hasIsSecondaryTitleDetached])
    {
      -[_SFPBDetailedRowCardSection setIsSecondaryTitleDetached:](v5, "setIsSecondaryTitleDetached:", [v4 isSecondaryTitleDetached]);
    }

    v40 = [v4 descriptions];
    if (v40)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v104 = v4;
    v42 = [v4 descriptions];
    v43 = [v42 countByEnumeratingWithState:&v109 objects:v118 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v110;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v110 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [[_SFPBRichText alloc] initWithFacade:*(*(&v109 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v109 objects:v118 count:16];
      }

      while (v44);
    }

    [(_SFPBDetailedRowCardSection *)v5 setDescriptions:v41];
    v48 = [v104 footnote];

    if (v48)
    {
      v49 = [_SFPBRichText alloc];
      v50 = [v104 footnote];
      v51 = [(_SFPBRichText *)v49 initWithFacade:v50];
      [(_SFPBDetailedRowCardSection *)v5 setFootnote:v51];
    }

    v52 = [v104 trailingTopText];

    if (v52)
    {
      v53 = [_SFPBFormattedText alloc];
      v54 = [v104 trailingTopText];
      v55 = [(_SFPBFormattedText *)v53 initWithFacade:v54];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingTopText:v55];
    }

    v56 = [v104 trailingMiddleText];

    if (v56)
    {
      v57 = [_SFPBFormattedText alloc];
      v58 = [v104 trailingMiddleText];
      v59 = [(_SFPBFormattedText *)v57 initWithFacade:v58];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingMiddleText:v59];
    }

    v60 = [v104 trailingBottomText];

    if (v60)
    {
      v61 = [_SFPBFormattedText alloc];
      v62 = [v104 trailingBottomText];
      v63 = [(_SFPBFormattedText *)v61 initWithFacade:v62];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingBottomText:v63];
    }

    v64 = [v104 action];

    if (v64)
    {
      v65 = [_SFPBActionItem alloc];
      v66 = [v104 action];
      v67 = [(_SFPBActionItem *)v65 initWithFacade:v66];
      [(_SFPBDetailedRowCardSection *)v5 setAction:v67];
    }

    v68 = [v104 button];

    if (v68)
    {
      v69 = [_SFPBButton alloc];
      v70 = [v104 button];
      v71 = [(_SFPBButton *)v69 initWithFacade:v70];
      [(_SFPBDetailedRowCardSection *)v5 setButton:v71];
    }

    if ([v104 hasShouldUseCompactDisplay])
    {
      -[_SFPBDetailedRowCardSection setShouldUseCompactDisplay:](v5, "setShouldUseCompactDisplay:", [v104 shouldUseCompactDisplay]);
    }

    v72 = [v104 buttonItems];
    v103 = v5;
    if (v72)
    {
      v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v73 = 0;
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v74 = [v104 buttonItems];
    v75 = [v74 countByEnumeratingWithState:&v105 objects:v117 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v106;
      do
      {
        for (k = 0; k != v76; ++k)
        {
          if (*v106 != v77)
          {
            objc_enumerationMutation(v74);
          }

          v79 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v105 + 1) + 8 * k)];
          if (v79)
          {
            [v73 addObject:v79];
          }
        }

        v76 = [v74 countByEnumeratingWithState:&v105 objects:v117 count:16];
      }

      while (v76);
    }

    v5 = v103;
    [(_SFPBDetailedRowCardSection *)v103 setButtonItems:v73];
    v4 = v104;
    v80 = [v104 trailingThumbnail];

    if (v80)
    {
      v81 = [_SFPBImage alloc];
      v82 = [v104 trailingThumbnail];
      v83 = [(_SFPBImage *)v81 initWithFacade:v82];
      [(_SFPBDetailedRowCardSection *)v103 setTrailingThumbnail:v83];
    }

    if ([v104 hasButtonItemsAreTrailing])
    {
      -[_SFPBDetailedRowCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [v104 buttonItemsAreTrailing]);
    }

    v84 = [v104 topText];

    if (v84)
    {
      v85 = [_SFPBRichText alloc];
      v86 = [v104 topText];
      v87 = [(_SFPBRichText *)v85 initWithFacade:v86];
      [(_SFPBDetailedRowCardSection *)v5 setTopText:v87];
    }

    v88 = [v104 richTrailingTopText];

    if (v88)
    {
      v89 = [_SFPBRichText alloc];
      v90 = [v104 richTrailingTopText];
      v91 = [(_SFPBRichText *)v89 initWithFacade:v90];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingTopText:v91];
    }

    v92 = [v104 richTrailingMiddleText];

    if (v92)
    {
      v93 = [_SFPBRichText alloc];
      v94 = [v104 richTrailingMiddleText];
      v95 = [(_SFPBRichText *)v93 initWithFacade:v94];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingMiddleText:v95];
    }

    v96 = [v104 richTrailingBottomText];

    if (v96)
    {
      v97 = [_SFPBRichText alloc];
      v98 = [v104 richTrailingBottomText];
      v99 = [(_SFPBRichText *)v97 initWithFacade:v98];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingBottomText:v99];
    }

    v100 = v5;
  }

  v101 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDetailedRowCardSection)initWithDictionary:(id)a3
{
  v118 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v114.receiver = self;
  v114.super_class = _SFPBDetailedRowCardSection;
  v5 = [(_SFPBDetailedRowCardSection *)&v114 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v101 = v6;
    if (objc_opt_isKindOfClass())
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v110 objects:v117 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v111;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v111 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v110 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBDetailedRowCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v110 objects:v117 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    v100 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBDetailedRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    v99 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBDetailedRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v98 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v97 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v96 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v95 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBDetailedRowCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v94 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v93 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBDetailedRowCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    v92 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBImage alloc] initWithDictionary:v26];
      [(_SFPBDetailedRowCardSection *)v5 setThumbnail:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"preventThumbnailImageScaling"];
    objc_opt_class();
    v91 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setPreventThumbnailImageScaling:](v5, "setPreventThumbnailImageScaling:", [v28 BOOLValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v90 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBRichText alloc] initWithDictionary:v29];
      [(_SFPBDetailedRowCardSection *)v5 setTitle:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"secondaryTitle"];
    objc_opt_class();
    v89 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBFormattedText alloc] initWithDictionary:v31];
      [(_SFPBDetailedRowCardSection *)v5 setSecondaryTitle:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"secondaryTitleImage"];
    objc_opt_class();
    v88 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBImage alloc] initWithDictionary:v33];
      [(_SFPBDetailedRowCardSection *)v5 setSecondaryTitleImage:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"isSecondaryTitleDetached"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setIsSecondaryTitleDetached:](v5, "setIsSecondaryTitleDetached:", [v35 BOOLValue]);
    }

    v84 = v35;
    v36 = [v4 objectForKeyedSubscript:@"descriptions"];
    objc_opt_class();
    v87 = v36;
    if (objc_opt_isKindOfClass())
    {
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v106 objects:v116 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v107;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v107 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v106 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = [[_SFPBRichText alloc] initWithDictionary:v42];
              [(_SFPBDetailedRowCardSection *)v5 addDescriptions:v43];
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v106 objects:v116 count:16];
        }

        while (v39);
      }
    }

    v44 = [v4 objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBRichText alloc] initWithDictionary:v44];
      [(_SFPBDetailedRowCardSection *)v5 setFootnote:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"trailingTopText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBFormattedText alloc] initWithDictionary:v46];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingTopText:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"trailingMiddleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBFormattedText alloc] initWithDictionary:v48];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingMiddleText:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"trailingBottomText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBFormattedText alloc] initWithDictionary:v50];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingBottomText:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"action"];
    objc_opt_class();
    v86 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBActionItem alloc] initWithDictionary:v52];
      [(_SFPBDetailedRowCardSection *)v5 setAction:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"button"];
    objc_opt_class();
    v85 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBButton alloc] initWithDictionary:v54];
      [(_SFPBDetailedRowCardSection *)v5 setButton:v55];
    }

    v80 = v50;
    v81 = v48;
    v82 = v46;
    v83 = v44;
    v56 = [v4 objectForKeyedSubscript:@"shouldUseCompactDisplay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setShouldUseCompactDisplay:](v5, "setShouldUseCompactDisplay:", [v56 BOOLValue]);
    }

    v79 = v56;
    v57 = [v4 objectForKeyedSubscript:@"buttonItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v58 = v57;
      v59 = [v58 countByEnumeratingWithState:&v102 objects:v115 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v103;
        do
        {
          for (k = 0; k != v60; ++k)
          {
            if (*v103 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v102 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v64 = [[_SFPBButtonItem alloc] initWithDictionary:v63];
              [(_SFPBDetailedRowCardSection *)v5 addButtonItems:v64];
            }
          }

          v60 = [v58 countByEnumeratingWithState:&v102 objects:v115 count:16];
        }

        while (v60);
      }
    }

    v65 = [v4 objectForKeyedSubscript:@"trailingThumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = [[_SFPBImage alloc] initWithDictionary:v65];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingThumbnail:v66];
    }

    v67 = [v4 objectForKeyedSubscript:@"buttonItemsAreTrailing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [v67 BOOLValue]);
    }

    v68 = [v4 objectForKeyedSubscript:@"topText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBRichText alloc] initWithDictionary:v68];
      [(_SFPBDetailedRowCardSection *)v5 setTopText:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"richTrailingTopText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = [[_SFPBRichText alloc] initWithDictionary:v70];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingTopText:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"richTrailingMiddleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = [[_SFPBRichText alloc] initWithDictionary:v72];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingMiddleText:v73];
    }

    v74 = [v4 objectForKeyedSubscript:@"richTrailingBottomText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [[_SFPBRichText alloc] initWithDictionary:v74];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingBottomText:v75];
    }

    v76 = v5;
  }

  v77 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDetailedRowCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBDetailedRowCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBDetailedRowCardSection *)self dictionaryRepresentation];
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
  v109 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_action)
  {
    v4 = [(_SFPBDetailedRowCardSection *)self action];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"action"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"action"];
    }
  }

  if (self->_backgroundColor)
  {
    v7 = [(_SFPBDetailedRowCardSection *)self backgroundColor];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_button)
  {
    v10 = [(_SFPBDetailedRowCardSection *)self button];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"button"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"button"];
    }
  }

  if ([(NSArray *)self->_buttonItems count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v14 = self->_buttonItems;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v102 objects:v108 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v103;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v103 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v102 + 1) + 8 * i) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v102 objects:v108 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"buttonItems"];
  }

  if (self->_buttonItemsAreTrailing)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
    [v3 setObject:v21 forKeyedSubscript:@"buttonItemsAreTrailing"];
  }

  if (self->_canBeHidden)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v22 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_descriptions count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v24 = self->_descriptions;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v98 objects:v107 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v99;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v99 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v98 + 1) + 8 * j) dictionaryRepresentation];
          if (v29)
          {
            [v23 addObject:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E695DFB0] null];
            [v23 addObject:v30];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v98 objects:v107 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"descriptions"];
  }

  if (self->_footnote)
  {
    v31 = [(_SFPBDetailedRowCardSection *)self footnote];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"footnote"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"footnote"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v34 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v35 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isSecondaryTitleDetached)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection isSecondaryTitleDetached](self, "isSecondaryTitleDetached")}];
    [v3 setObject:v36 forKeyedSubscript:@"isSecondaryTitleDetached"];
  }

  if (self->_preventThumbnailImageScaling)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection preventThumbnailImageScaling](self, "preventThumbnailImageScaling")}];
    [v3 setObject:v37 forKeyedSubscript:@"preventThumbnailImageScaling"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v38 = [MEMORY[0x1E695DF70] array];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v39 = self->_punchoutOptions;
    v40 = [(NSArray *)v39 countByEnumeratingWithState:&v94 objects:v106 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v95;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v95 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [*(*(&v94 + 1) + 8 * k) dictionaryRepresentation];
          if (v44)
          {
            [v38 addObject:v44];
          }

          else
          {
            v45 = [MEMORY[0x1E695DFB0] null];
            [v38 addObject:v45];
          }
        }

        v41 = [(NSArray *)v39 countByEnumeratingWithState:&v94 objects:v106 count:16];
      }

      while (v41);
    }

    [v3 setObject:v38 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v46 = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
    v47 = [v46 copy];
    [v3 setObject:v47 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v48 = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
    v49 = [v48 copy];
    [v3 setObject:v49 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_richTrailingBottomText)
  {
    v50 = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
    v51 = [v50 dictionaryRepresentation];
    if (v51)
    {
      [v3 setObject:v51 forKeyedSubscript:@"richTrailingBottomText"];
    }

    else
    {
      v52 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v52 forKeyedSubscript:@"richTrailingBottomText"];
    }
  }

  if (self->_richTrailingMiddleText)
  {
    v53 = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
    v54 = [v53 dictionaryRepresentation];
    if (v54)
    {
      [v3 setObject:v54 forKeyedSubscript:@"richTrailingMiddleText"];
    }

    else
    {
      v55 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v55 forKeyedSubscript:@"richTrailingMiddleText"];
    }
  }

  if (self->_richTrailingTopText)
  {
    v56 = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
    v57 = [v56 dictionaryRepresentation];
    if (v57)
    {
      [v3 setObject:v57 forKeyedSubscript:@"richTrailingTopText"];
    }

    else
    {
      v58 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v58 forKeyedSubscript:@"richTrailingTopText"];
    }
  }

  if (self->_secondaryTitle)
  {
    v59 = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
    v60 = [v59 dictionaryRepresentation];
    if (v60)
    {
      [v3 setObject:v60 forKeyedSubscript:@"secondaryTitle"];
    }

    else
    {
      v61 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v61 forKeyedSubscript:@"secondaryTitle"];
    }
  }

  if (self->_secondaryTitleImage)
  {
    v62 = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
    v63 = [v62 dictionaryRepresentation];
    if (v63)
    {
      [v3 setObject:v63 forKeyedSubscript:@"secondaryTitleImage"];
    }

    else
    {
      v64 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v64 forKeyedSubscript:@"secondaryTitleImage"];
    }
  }

  if (self->_separatorStyle)
  {
    v65 = [(_SFPBDetailedRowCardSection *)self separatorStyle];
    if (v65 >= 6)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v65];
    }

    else
    {
      v66 = off_1E7ACE580[v65];
    }

    [v3 setObject:v66 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_shouldUseCompactDisplay)
  {
    v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection shouldUseCompactDisplay](self, "shouldUseCompactDisplay")}];
    [v3 setObject:v67 forKeyedSubscript:@"shouldUseCompactDisplay"];
  }

  if (self->_thumbnail)
  {
    v68 = [(_SFPBDetailedRowCardSection *)self thumbnail];
    v69 = [v68 dictionaryRepresentation];
    if (v69)
    {
      [v3 setObject:v69 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v70 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v70 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_title)
  {
    v71 = [(_SFPBDetailedRowCardSection *)self title];
    v72 = [v71 dictionaryRepresentation];
    if (v72)
    {
      [v3 setObject:v72 forKeyedSubscript:@"title"];
    }

    else
    {
      v73 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v73 forKeyedSubscript:@"title"];
    }
  }

  if (self->_topText)
  {
    v74 = [(_SFPBDetailedRowCardSection *)self topText];
    v75 = [v74 dictionaryRepresentation];
    if (v75)
    {
      [v3 setObject:v75 forKeyedSubscript:@"topText"];
    }

    else
    {
      v76 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v76 forKeyedSubscript:@"topText"];
    }
  }

  if (self->_trailingBottomText)
  {
    v77 = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
    v78 = [v77 dictionaryRepresentation];
    if (v78)
    {
      [v3 setObject:v78 forKeyedSubscript:@"trailingBottomText"];
    }

    else
    {
      v79 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v79 forKeyedSubscript:@"trailingBottomText"];
    }
  }

  if (self->_trailingMiddleText)
  {
    v80 = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
    v81 = [v80 dictionaryRepresentation];
    if (v81)
    {
      [v3 setObject:v81 forKeyedSubscript:@"trailingMiddleText"];
    }

    else
    {
      v82 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v82 forKeyedSubscript:@"trailingMiddleText"];
    }
  }

  if (self->_trailingThumbnail)
  {
    v83 = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
    v84 = [v83 dictionaryRepresentation];
    if (v84)
    {
      [v3 setObject:v84 forKeyedSubscript:@"trailingThumbnail"];
    }

    else
    {
      v85 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v85 forKeyedSubscript:@"trailingThumbnail"];
    }
  }

  if (self->_trailingTopText)
  {
    v86 = [(_SFPBDetailedRowCardSection *)self trailingTopText];
    v87 = [v86 dictionaryRepresentation];
    if (v87)
    {
      [v3 setObject:v87 forKeyedSubscript:@"trailingTopText"];
    }

    else
    {
      v88 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v88 forKeyedSubscript:@"trailingTopText"];
    }
  }

  if (self->_type)
  {
    v89 = [(_SFPBDetailedRowCardSection *)self type];
    v90 = [v89 copy];
    [v3 setObject:v90 forKeyedSubscript:@"type"];
  }

  v91 = v3;

  v92 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)hash
{
  v41 = [(NSArray *)self->_punchoutOptions hash];
  v40 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v38 = v4;
  v39 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v36 = v6;
  v37 = v5;
  v7 = [(NSString *)self->_type hash];
  v34 = 2654435761 * self->_separatorStyle;
  v35 = v7;
  v33 = [(_SFPBColor *)self->_backgroundColor hash];
  v8 = [(_SFPBImage *)self->_thumbnail hash];
  if (self->_preventThumbnailImageScaling)
  {
    v9 = 2654435761;
  }

  else
  {
    v9 = 0;
  }

  v31 = v9;
  v32 = v8;
  v30 = [(_SFPBRichText *)self->_title hash];
  v29 = [(_SFPBFormattedText *)self->_secondaryTitle hash];
  v10 = [(_SFPBImage *)self->_secondaryTitleImage hash];
  if (self->_isSecondaryTitleDetached)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  v27 = v11;
  v28 = v10;
  v26 = [(NSArray *)self->_descriptions hash];
  v12 = [(_SFPBRichText *)self->_footnote hash];
  v13 = [(_SFPBFormattedText *)self->_trailingTopText hash];
  v14 = [(_SFPBFormattedText *)self->_trailingMiddleText hash];
  v15 = [(_SFPBFormattedText *)self->_trailingBottomText hash];
  v16 = [(_SFPBActionItem *)self->_action hash];
  v17 = [(_SFPBButton *)self->_button hash];
  if (self->_shouldUseCompactDisplay)
  {
    v18 = 2654435761;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(NSArray *)self->_buttonItems hash];
  v20 = [(_SFPBImage *)self->_trailingThumbnail hash];
  if (self->_buttonItemsAreTrailing)
  {
    v21 = 2654435761;
  }

  else
  {
    v21 = 0;
  }

  v22 = v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(_SFPBRichText *)self->_topText hash];
  v23 = v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v12 ^ v13 ^ v14 ^ v15 ^ v22 ^ [(_SFPBRichText *)self->_richTrailingTopText hash];
  v24 = [(_SFPBRichText *)self->_richTrailingMiddleText hash];
  return v23 ^ v24 ^ [(_SFPBRichText *)self->_richTrailingBottomText hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_120;
  }

  v5 = [(_SFPBDetailedRowCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v7 = [(_SFPBDetailedRowCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBDetailedRowCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v12 = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v17 = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_120;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_120;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_120;
  }

  v5 = [(_SFPBDetailedRowCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v25 = [(_SFPBDetailedRowCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBDetailedRowCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_120;
  }

  v5 = [(_SFPBDetailedRowCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v31 = [(_SFPBDetailedRowCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBDetailedRowCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v36 = [(_SFPBDetailedRowCardSection *)self thumbnail];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBDetailedRowCardSection *)self thumbnail];
    v39 = [v4 thumbnail];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  preventThumbnailImageScaling = self->_preventThumbnailImageScaling;
  if (preventThumbnailImageScaling != [v4 preventThumbnailImageScaling])
  {
    goto LABEL_120;
  }

  v5 = [(_SFPBDetailedRowCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v42 = [(_SFPBDetailedRowCardSection *)self title];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBDetailedRowCardSection *)self title];
    v45 = [v4 title];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
  v6 = [v4 secondaryTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v47 = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
    v50 = [v4 secondaryTitle];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
  v6 = [v4 secondaryTitleImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v52 = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
    v55 = [v4 secondaryTitleImage];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  isSecondaryTitleDetached = self->_isSecondaryTitleDetached;
  if (isSecondaryTitleDetached != [v4 isSecondaryTitleDetached])
  {
    goto LABEL_120;
  }

  v5 = [(_SFPBDetailedRowCardSection *)self descriptions];
  v6 = [v4 descriptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v58 = [(_SFPBDetailedRowCardSection *)self descriptions];
  if (v58)
  {
    v59 = v58;
    v60 = [(_SFPBDetailedRowCardSection *)self descriptions];
    v61 = [v4 descriptions];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self footnote];
  v6 = [v4 footnote];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v63 = [(_SFPBDetailedRowCardSection *)self footnote];
  if (v63)
  {
    v64 = v63;
    v65 = [(_SFPBDetailedRowCardSection *)self footnote];
    v66 = [v4 footnote];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self trailingTopText];
  v6 = [v4 trailingTopText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v68 = [(_SFPBDetailedRowCardSection *)self trailingTopText];
  if (v68)
  {
    v69 = v68;
    v70 = [(_SFPBDetailedRowCardSection *)self trailingTopText];
    v71 = [v4 trailingTopText];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
  v6 = [v4 trailingMiddleText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v73 = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
  if (v73)
  {
    v74 = v73;
    v75 = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
    v76 = [v4 trailingMiddleText];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
  v6 = [v4 trailingBottomText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v78 = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
  if (v78)
  {
    v79 = v78;
    v80 = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
    v81 = [v4 trailingBottomText];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self action];
  v6 = [v4 action];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v83 = [(_SFPBDetailedRowCardSection *)self action];
  if (v83)
  {
    v84 = v83;
    v85 = [(_SFPBDetailedRowCardSection *)self action];
    v86 = [v4 action];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self button];
  v6 = [v4 button];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v88 = [(_SFPBDetailedRowCardSection *)self button];
  if (v88)
  {
    v89 = v88;
    v90 = [(_SFPBDetailedRowCardSection *)self button];
    v91 = [v4 button];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  shouldUseCompactDisplay = self->_shouldUseCompactDisplay;
  if (shouldUseCompactDisplay != [v4 shouldUseCompactDisplay])
  {
    goto LABEL_120;
  }

  v5 = [(_SFPBDetailedRowCardSection *)self buttonItems];
  v6 = [v4 buttonItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v94 = [(_SFPBDetailedRowCardSection *)self buttonItems];
  if (v94)
  {
    v95 = v94;
    v96 = [(_SFPBDetailedRowCardSection *)self buttonItems];
    v97 = [v4 buttonItems];
    v98 = [v96 isEqual:v97];

    if (!v98)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
  v6 = [v4 trailingThumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v99 = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
  if (v99)
  {
    v100 = v99;
    v101 = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
    v102 = [v4 trailingThumbnail];
    v103 = [v101 isEqual:v102];

    if (!v103)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  buttonItemsAreTrailing = self->_buttonItemsAreTrailing;
  if (buttonItemsAreTrailing != [v4 buttonItemsAreTrailing])
  {
    goto LABEL_120;
  }

  v5 = [(_SFPBDetailedRowCardSection *)self topText];
  v6 = [v4 topText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v105 = [(_SFPBDetailedRowCardSection *)self topText];
  if (v105)
  {
    v106 = v105;
    v107 = [(_SFPBDetailedRowCardSection *)self topText];
    v108 = [v4 topText];
    v109 = [v107 isEqual:v108];

    if (!v109)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
  v6 = [v4 richTrailingTopText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v110 = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
  if (v110)
  {
    v111 = v110;
    v112 = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
    v113 = [v4 richTrailingTopText];
    v114 = [v112 isEqual:v113];

    if (!v114)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
  v6 = [v4 richTrailingMiddleText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_119;
  }

  v115 = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
  if (v115)
  {
    v116 = v115;
    v117 = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
    v118 = [v4 richTrailingMiddleText];
    v119 = [v117 isEqual:v118];

    if (!v119)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
  v6 = [v4 richTrailingBottomText];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_119:

    goto LABEL_120;
  }

  v120 = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
  if (!v120)
  {

LABEL_123:
    v125 = 1;
    goto LABEL_121;
  }

  v121 = v120;
  v122 = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
  v123 = [v4 richTrailingBottomText];
  v124 = [v122 isEqual:v123];

  if (v124)
  {
    goto LABEL_123;
  }

LABEL_120:
  v125 = 0;
LABEL_121:

  return v125;
}

- (void)writeTo:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBDetailedRowCardSection *)self punchoutOptions];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      v9 = 0;
      do
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDetailedRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDetailedRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDetailedRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBDetailedRowCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDetailedRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBDetailedRowCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBDetailedRowCardSection *)self thumbnail];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDetailedRowCardSection *)self preventThumbnailImageScaling])
  {
    PBDataWriterWriteBOOLField();
  }

  v16 = [(_SFPBDetailedRowCardSection *)self title];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDetailedRowCardSection *)self isSecondaryTitleDetached])
  {
    PBDataWriterWriteBOOLField();
  }

  v19 = [(_SFPBDetailedRowCardSection *)self descriptions];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      v23 = 0;
      do
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v47 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v21);
  }

  v25 = [(_SFPBDetailedRowCardSection *)self footnote];
  if (v25)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_SFPBDetailedRowCardSection *)self trailingTopText];
  if (v26)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
  if (v27)
  {
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
  if (v28)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = [(_SFPBDetailedRowCardSection *)self action];
  if (v29)
  {
    PBDataWriterWriteSubmessage();
  }

  v30 = [(_SFPBDetailedRowCardSection *)self button];
  if (v30)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDetailedRowCardSection *)self shouldUseCompactDisplay])
  {
    PBDataWriterWriteBOOLField();
  }

  v31 = [(_SFPBDetailedRowCardSection *)self buttonItems];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v44;
    do
    {
      v35 = 0;
      do
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v43 + 1) + 8 * v35);
        PBDataWriterWriteSubmessage();
        ++v35;
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v33);
  }

  v37 = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
  if (v37)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDetailedRowCardSection *)self buttonItemsAreTrailing])
  {
    PBDataWriterWriteBOOLField();
  }

  v38 = [(_SFPBDetailedRowCardSection *)self topText];
  if (v38)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
  if (v39)
  {
    PBDataWriterWriteSubmessage();
  }

  v40 = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
  if (v40)
  {
    PBDataWriterWriteSubmessage();
  }

  v41 = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
  if (v41)
  {
    PBDataWriterWriteSubmessage();
  }

  v42 = *MEMORY[0x1E69E9840];
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

- (void)addDescriptions:(id)a3
{
  v4 = a3;
  descriptions = self->_descriptions;
  v8 = v4;
  if (!descriptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_descriptions;
    self->_descriptions = v6;

    v4 = v8;
    descriptions = self->_descriptions;
  }

  [(NSArray *)descriptions addObject:v4];
}

- (void)setDescriptions:(id)a3
{
  v4 = [a3 copy];
  descriptions = self->_descriptions;
  self->_descriptions = v4;

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