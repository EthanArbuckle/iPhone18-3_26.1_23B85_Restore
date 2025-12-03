@interface _SFPBDetailedRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBDetailedRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBDetailedRowCardSection)initWithFacade:(id)facade;
- (_SFPBDetailedRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addButtonItems:(id)items;
- (void)addDescriptions:(id)descriptions;
- (void)addPunchoutOptions:(id)options;
- (void)setButtonItems:(id)items;
- (void)setDescriptions:(id)descriptions;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBDetailedRowCardSection

- (_SFPBDetailedRowCardSection)initWithFacade:(id)facade
{
  v120 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBDetailedRowCardSection *)self init];

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

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v113 objects:v119 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v113 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v113 objects:v119 count:16];
      }

      while (v10);
    }

    [(_SFPBDetailedRowCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBDetailedRowCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBDetailedRowCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBDetailedRowCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBDetailedRowCardSection *)v5 setBackgroundColor:v23];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v25 = [_SFPBImage alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v27 = [(_SFPBImage *)v25 initWithFacade:thumbnail2];
      [(_SFPBDetailedRowCardSection *)v5 setThumbnail:v27];
    }

    if ([facadeCopy hasPreventThumbnailImageScaling])
    {
      -[_SFPBDetailedRowCardSection setPreventThumbnailImageScaling:](v5, "setPreventThumbnailImageScaling:", [facadeCopy preventThumbnailImageScaling]);
    }

    title = [facadeCopy title];

    if (title)
    {
      v29 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v31 = [(_SFPBRichText *)v29 initWithFacade:title2];
      [(_SFPBDetailedRowCardSection *)v5 setTitle:v31];
    }

    secondaryTitle = [facadeCopy secondaryTitle];

    if (secondaryTitle)
    {
      v33 = [_SFPBFormattedText alloc];
      secondaryTitle2 = [facadeCopy secondaryTitle];
      v35 = [(_SFPBFormattedText *)v33 initWithFacade:secondaryTitle2];
      [(_SFPBDetailedRowCardSection *)v5 setSecondaryTitle:v35];
    }

    secondaryTitleImage = [facadeCopy secondaryTitleImage];

    if (secondaryTitleImage)
    {
      v37 = [_SFPBImage alloc];
      secondaryTitleImage2 = [facadeCopy secondaryTitleImage];
      v39 = [(_SFPBImage *)v37 initWithFacade:secondaryTitleImage2];
      [(_SFPBDetailedRowCardSection *)v5 setSecondaryTitleImage:v39];
    }

    if ([facadeCopy hasIsSecondaryTitleDetached])
    {
      -[_SFPBDetailedRowCardSection setIsSecondaryTitleDetached:](v5, "setIsSecondaryTitleDetached:", [facadeCopy isSecondaryTitleDetached]);
    }

    descriptions = [facadeCopy descriptions];
    if (descriptions)
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
    v104 = facadeCopy;
    descriptions2 = [facadeCopy descriptions];
    v43 = [descriptions2 countByEnumeratingWithState:&v109 objects:v118 count:16];
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
            objc_enumerationMutation(descriptions2);
          }

          v47 = [[_SFPBRichText alloc] initWithFacade:*(*(&v109 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [descriptions2 countByEnumeratingWithState:&v109 objects:v118 count:16];
      }

      while (v44);
    }

    [(_SFPBDetailedRowCardSection *)v5 setDescriptions:v41];
    footnote = [v104 footnote];

    if (footnote)
    {
      v49 = [_SFPBRichText alloc];
      footnote2 = [v104 footnote];
      v51 = [(_SFPBRichText *)v49 initWithFacade:footnote2];
      [(_SFPBDetailedRowCardSection *)v5 setFootnote:v51];
    }

    trailingTopText = [v104 trailingTopText];

    if (trailingTopText)
    {
      v53 = [_SFPBFormattedText alloc];
      trailingTopText2 = [v104 trailingTopText];
      v55 = [(_SFPBFormattedText *)v53 initWithFacade:trailingTopText2];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingTopText:v55];
    }

    trailingMiddleText = [v104 trailingMiddleText];

    if (trailingMiddleText)
    {
      v57 = [_SFPBFormattedText alloc];
      trailingMiddleText2 = [v104 trailingMiddleText];
      v59 = [(_SFPBFormattedText *)v57 initWithFacade:trailingMiddleText2];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingMiddleText:v59];
    }

    trailingBottomText = [v104 trailingBottomText];

    if (trailingBottomText)
    {
      v61 = [_SFPBFormattedText alloc];
      trailingBottomText2 = [v104 trailingBottomText];
      v63 = [(_SFPBFormattedText *)v61 initWithFacade:trailingBottomText2];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingBottomText:v63];
    }

    action = [v104 action];

    if (action)
    {
      v65 = [_SFPBActionItem alloc];
      action2 = [v104 action];
      v67 = [(_SFPBActionItem *)v65 initWithFacade:action2];
      [(_SFPBDetailedRowCardSection *)v5 setAction:v67];
    }

    button = [v104 button];

    if (button)
    {
      v69 = [_SFPBButton alloc];
      button2 = [v104 button];
      v71 = [(_SFPBButton *)v69 initWithFacade:button2];
      [(_SFPBDetailedRowCardSection *)v5 setButton:v71];
    }

    if ([v104 hasShouldUseCompactDisplay])
    {
      -[_SFPBDetailedRowCardSection setShouldUseCompactDisplay:](v5, "setShouldUseCompactDisplay:", [v104 shouldUseCompactDisplay]);
    }

    buttonItems = [v104 buttonItems];
    v103 = v5;
    if (buttonItems)
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
    buttonItems2 = [v104 buttonItems];
    v75 = [buttonItems2 countByEnumeratingWithState:&v105 objects:v117 count:16];
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
            objc_enumerationMutation(buttonItems2);
          }

          v79 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v105 + 1) + 8 * k)];
          if (v79)
          {
            [v73 addObject:v79];
          }
        }

        v76 = [buttonItems2 countByEnumeratingWithState:&v105 objects:v117 count:16];
      }

      while (v76);
    }

    v5 = v103;
    [(_SFPBDetailedRowCardSection *)v103 setButtonItems:v73];
    facadeCopy = v104;
    trailingThumbnail = [v104 trailingThumbnail];

    if (trailingThumbnail)
    {
      v81 = [_SFPBImage alloc];
      trailingThumbnail2 = [v104 trailingThumbnail];
      v83 = [(_SFPBImage *)v81 initWithFacade:trailingThumbnail2];
      [(_SFPBDetailedRowCardSection *)v103 setTrailingThumbnail:v83];
    }

    if ([v104 hasButtonItemsAreTrailing])
    {
      -[_SFPBDetailedRowCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [v104 buttonItemsAreTrailing]);
    }

    topText = [v104 topText];

    if (topText)
    {
      v85 = [_SFPBRichText alloc];
      topText2 = [v104 topText];
      v87 = [(_SFPBRichText *)v85 initWithFacade:topText2];
      [(_SFPBDetailedRowCardSection *)v5 setTopText:v87];
    }

    richTrailingTopText = [v104 richTrailingTopText];

    if (richTrailingTopText)
    {
      v89 = [_SFPBRichText alloc];
      richTrailingTopText2 = [v104 richTrailingTopText];
      v91 = [(_SFPBRichText *)v89 initWithFacade:richTrailingTopText2];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingTopText:v91];
    }

    richTrailingMiddleText = [v104 richTrailingMiddleText];

    if (richTrailingMiddleText)
    {
      v93 = [_SFPBRichText alloc];
      richTrailingMiddleText2 = [v104 richTrailingMiddleText];
      v95 = [(_SFPBRichText *)v93 initWithFacade:richTrailingMiddleText2];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingMiddleText:v95];
    }

    richTrailingBottomText = [v104 richTrailingBottomText];

    if (richTrailingBottomText)
    {
      v97 = [_SFPBRichText alloc];
      richTrailingBottomText2 = [v104 richTrailingBottomText];
      v99 = [(_SFPBRichText *)v97 initWithFacade:richTrailingBottomText2];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingBottomText:v99];
    }

    v100 = v5;
  }

  v101 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDetailedRowCardSection)initWithDictionary:(id)dictionary
{
  v118 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v114.receiver = self;
  v114.super_class = _SFPBDetailedRowCardSection;
  v5 = [(_SFPBDetailedRowCardSection *)&v114 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    v100 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBDetailedRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    v99 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBDetailedRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v98 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v97 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v96 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v95 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBDetailedRowCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v94 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v93 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBDetailedRowCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    v92 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBImage alloc] initWithDictionary:v26];
      [(_SFPBDetailedRowCardSection *)v5 setThumbnail:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"preventThumbnailImageScaling"];
    objc_opt_class();
    v91 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setPreventThumbnailImageScaling:](v5, "setPreventThumbnailImageScaling:", [v28 BOOLValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v90 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBRichText alloc] initWithDictionary:v29];
      [(_SFPBDetailedRowCardSection *)v5 setTitle:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"secondaryTitle"];
    objc_opt_class();
    v89 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBFormattedText alloc] initWithDictionary:v31];
      [(_SFPBDetailedRowCardSection *)v5 setSecondaryTitle:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"secondaryTitleImage"];
    objc_opt_class();
    v88 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBImage alloc] initWithDictionary:v33];
      [(_SFPBDetailedRowCardSection *)v5 setSecondaryTitleImage:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"isSecondaryTitleDetached"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setIsSecondaryTitleDetached:](v5, "setIsSecondaryTitleDetached:", [v35 BOOLValue]);
    }

    v84 = v35;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"descriptions"];
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

    v44 = [dictionaryCopy objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBRichText alloc] initWithDictionary:v44];
      [(_SFPBDetailedRowCardSection *)v5 setFootnote:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"trailingTopText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBFormattedText alloc] initWithDictionary:v46];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingTopText:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"trailingMiddleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBFormattedText alloc] initWithDictionary:v48];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingMiddleText:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"trailingBottomText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBFormattedText alloc] initWithDictionary:v50];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingBottomText:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"action"];
    objc_opt_class();
    v86 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBActionItem alloc] initWithDictionary:v52];
      [(_SFPBDetailedRowCardSection *)v5 setAction:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"button"];
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
    v56 = [dictionaryCopy objectForKeyedSubscript:@"shouldUseCompactDisplay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setShouldUseCompactDisplay:](v5, "setShouldUseCompactDisplay:", [v56 BOOLValue]);
    }

    v79 = v56;
    v57 = [dictionaryCopy objectForKeyedSubscript:@"buttonItems"];
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

    v65 = [dictionaryCopy objectForKeyedSubscript:@"trailingThumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = [[_SFPBImage alloc] initWithDictionary:v65];
      [(_SFPBDetailedRowCardSection *)v5 setTrailingThumbnail:v66];
    }

    v67 = [dictionaryCopy objectForKeyedSubscript:@"buttonItemsAreTrailing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDetailedRowCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [v67 BOOLValue]);
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"topText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBRichText alloc] initWithDictionary:v68];
      [(_SFPBDetailedRowCardSection *)v5 setTopText:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"richTrailingTopText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = [[_SFPBRichText alloc] initWithDictionary:v70];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingTopText:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"richTrailingMiddleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = [[_SFPBRichText alloc] initWithDictionary:v72];
      [(_SFPBDetailedRowCardSection *)v5 setRichTrailingMiddleText:v73];
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"richTrailingBottomText"];
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

- (_SFPBDetailedRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBDetailedRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBDetailedRowCardSection *)self dictionaryRepresentation];
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
  v109 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_action)
  {
    action = [(_SFPBDetailedRowCardSection *)self action];
    dictionaryRepresentation = [action dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"action"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"action"];
    }
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBDetailedRowCardSection *)self backgroundColor];
    dictionaryRepresentation2 = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_button)
  {
    button = [(_SFPBDetailedRowCardSection *)self button];
    dictionaryRepresentation3 = [button dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"button"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"button"];
    }
  }

  if ([(NSArray *)self->_buttonItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v102 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v102 objects:v108 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"buttonItems"];
  }

  if (self->_buttonItemsAreTrailing)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
    [dictionary setObject:v21 forKeyedSubscript:@"buttonItemsAreTrailing"];
  }

  if (self->_canBeHidden)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v22 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_descriptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v98 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array2 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null5];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v98 objects:v107 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"descriptions"];
  }

  if (self->_footnote)
  {
    footnote = [(_SFPBDetailedRowCardSection *)self footnote];
    dictionaryRepresentation6 = [footnote dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"footnote"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"footnote"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v34 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v35 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isSecondaryTitleDetached)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection isSecondaryTitleDetached](self, "isSecondaryTitleDetached")}];
    [dictionary setObject:v36 forKeyedSubscript:@"isSecondaryTitleDetached"];
  }

  if (self->_preventThumbnailImageScaling)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection preventThumbnailImageScaling](self, "preventThumbnailImageScaling")}];
    [dictionary setObject:v37 forKeyedSubscript:@"preventThumbnailImageScaling"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation7 = [*(*(&v94 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation7)
          {
            [array3 addObject:dictionaryRepresentation7];
          }

          else
          {
            null7 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null7];
          }
        }

        v41 = [(NSArray *)v39 countByEnumeratingWithState:&v94 objects:v106 count:16];
      }

      while (v41);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
    v47 = [punchoutPickerDismissText copy];
    [dictionary setObject:v47 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
    v49 = [punchoutPickerTitle copy];
    [dictionary setObject:v49 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_richTrailingBottomText)
  {
    richTrailingBottomText = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
    dictionaryRepresentation8 = [richTrailingBottomText dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"richTrailingBottomText"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"richTrailingBottomText"];
    }
  }

  if (self->_richTrailingMiddleText)
  {
    richTrailingMiddleText = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
    dictionaryRepresentation9 = [richTrailingMiddleText dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"richTrailingMiddleText"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"richTrailingMiddleText"];
    }
  }

  if (self->_richTrailingTopText)
  {
    richTrailingTopText = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
    dictionaryRepresentation10 = [richTrailingTopText dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"richTrailingTopText"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"richTrailingTopText"];
    }
  }

  if (self->_secondaryTitle)
  {
    secondaryTitle = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
    dictionaryRepresentation11 = [secondaryTitle dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"secondaryTitle"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"secondaryTitle"];
    }
  }

  if (self->_secondaryTitleImage)
  {
    secondaryTitleImage = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
    dictionaryRepresentation12 = [secondaryTitleImage dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"secondaryTitleImage"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"secondaryTitleImage"];
    }
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBDetailedRowCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v66 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v66 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_shouldUseCompactDisplay)
  {
    v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDetailedRowCardSection shouldUseCompactDisplay](self, "shouldUseCompactDisplay")}];
    [dictionary setObject:v67 forKeyedSubscript:@"shouldUseCompactDisplay"];
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBDetailedRowCardSection *)self thumbnail];
    dictionaryRepresentation13 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBDetailedRowCardSection *)self title];
    dictionaryRepresentation14 = [title dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"title"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"title"];
    }
  }

  if (self->_topText)
  {
    topText = [(_SFPBDetailedRowCardSection *)self topText];
    dictionaryRepresentation15 = [topText dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"topText"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"topText"];
    }
  }

  if (self->_trailingBottomText)
  {
    trailingBottomText = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
    dictionaryRepresentation16 = [trailingBottomText dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"trailingBottomText"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"trailingBottomText"];
    }
  }

  if (self->_trailingMiddleText)
  {
    trailingMiddleText = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
    dictionaryRepresentation17 = [trailingMiddleText dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"trailingMiddleText"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"trailingMiddleText"];
    }
  }

  if (self->_trailingThumbnail)
  {
    trailingThumbnail = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
    dictionaryRepresentation18 = [trailingThumbnail dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"trailingThumbnail"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"trailingThumbnail"];
    }
  }

  if (self->_trailingTopText)
  {
    trailingTopText = [(_SFPBDetailedRowCardSection *)self trailingTopText];
    dictionaryRepresentation19 = [trailingTopText dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"trailingTopText"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"trailingTopText"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBDetailedRowCardSection *)self type];
    v90 = [type copy];
    [dictionary setObject:v90 forKeyedSubscript:@"type"];
  }

  v91 = dictionary;

  v92 = *MEMORY[0x1E69E9840];
  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_120;
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  punchoutOptions3 = [(_SFPBDetailedRowCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBDetailedRowCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  punchoutPickerTitle = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  punchoutPickerDismissText = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_120;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_120;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_120;
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  type = [(_SFPBDetailedRowCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBDetailedRowCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_120;
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  backgroundColor = [(_SFPBDetailedRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBDetailedRowCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self thumbnail];
  punchoutOptions2 = [equalCopy thumbnail];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  thumbnail = [(_SFPBDetailedRowCardSection *)self thumbnail];
  if (thumbnail)
  {
    v37 = thumbnail;
    thumbnail2 = [(_SFPBDetailedRowCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v40 = [thumbnail2 isEqual:thumbnail3];

    if (!v40)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  preventThumbnailImageScaling = self->_preventThumbnailImageScaling;
  if (preventThumbnailImageScaling != [equalCopy preventThumbnailImageScaling])
  {
    goto LABEL_120;
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  title = [(_SFPBDetailedRowCardSection *)self title];
  if (title)
  {
    v43 = title;
    title2 = [(_SFPBDetailedRowCardSection *)self title];
    title3 = [equalCopy title];
    v46 = [title2 isEqual:title3];

    if (!v46)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
  punchoutOptions2 = [equalCopy secondaryTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  secondaryTitle = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
  if (secondaryTitle)
  {
    v48 = secondaryTitle;
    secondaryTitle2 = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
    secondaryTitle3 = [equalCopy secondaryTitle];
    v51 = [secondaryTitle2 isEqual:secondaryTitle3];

    if (!v51)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
  punchoutOptions2 = [equalCopy secondaryTitleImage];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  secondaryTitleImage = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
  if (secondaryTitleImage)
  {
    v53 = secondaryTitleImage;
    secondaryTitleImage2 = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
    secondaryTitleImage3 = [equalCopy secondaryTitleImage];
    v56 = [secondaryTitleImage2 isEqual:secondaryTitleImage3];

    if (!v56)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  isSecondaryTitleDetached = self->_isSecondaryTitleDetached;
  if (isSecondaryTitleDetached != [equalCopy isSecondaryTitleDetached])
  {
    goto LABEL_120;
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self descriptions];
  punchoutOptions2 = [equalCopy descriptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  descriptions = [(_SFPBDetailedRowCardSection *)self descriptions];
  if (descriptions)
  {
    v59 = descriptions;
    descriptions2 = [(_SFPBDetailedRowCardSection *)self descriptions];
    descriptions3 = [equalCopy descriptions];
    v62 = [descriptions2 isEqual:descriptions3];

    if (!v62)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self footnote];
  punchoutOptions2 = [equalCopy footnote];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  footnote = [(_SFPBDetailedRowCardSection *)self footnote];
  if (footnote)
  {
    v64 = footnote;
    footnote2 = [(_SFPBDetailedRowCardSection *)self footnote];
    footnote3 = [equalCopy footnote];
    v67 = [footnote2 isEqual:footnote3];

    if (!v67)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self trailingTopText];
  punchoutOptions2 = [equalCopy trailingTopText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  trailingTopText = [(_SFPBDetailedRowCardSection *)self trailingTopText];
  if (trailingTopText)
  {
    v69 = trailingTopText;
    trailingTopText2 = [(_SFPBDetailedRowCardSection *)self trailingTopText];
    trailingTopText3 = [equalCopy trailingTopText];
    v72 = [trailingTopText2 isEqual:trailingTopText3];

    if (!v72)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
  punchoutOptions2 = [equalCopy trailingMiddleText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  trailingMiddleText = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
  if (trailingMiddleText)
  {
    v74 = trailingMiddleText;
    trailingMiddleText2 = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
    trailingMiddleText3 = [equalCopy trailingMiddleText];
    v77 = [trailingMiddleText2 isEqual:trailingMiddleText3];

    if (!v77)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
  punchoutOptions2 = [equalCopy trailingBottomText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  trailingBottomText = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
  if (trailingBottomText)
  {
    v79 = trailingBottomText;
    trailingBottomText2 = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
    trailingBottomText3 = [equalCopy trailingBottomText];
    v82 = [trailingBottomText2 isEqual:trailingBottomText3];

    if (!v82)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self action];
  punchoutOptions2 = [equalCopy action];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  action = [(_SFPBDetailedRowCardSection *)self action];
  if (action)
  {
    v84 = action;
    action2 = [(_SFPBDetailedRowCardSection *)self action];
    action3 = [equalCopy action];
    v87 = [action2 isEqual:action3];

    if (!v87)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self button];
  punchoutOptions2 = [equalCopy button];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  button = [(_SFPBDetailedRowCardSection *)self button];
  if (button)
  {
    v89 = button;
    button2 = [(_SFPBDetailedRowCardSection *)self button];
    button3 = [equalCopy button];
    v92 = [button2 isEqual:button3];

    if (!v92)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  shouldUseCompactDisplay = self->_shouldUseCompactDisplay;
  if (shouldUseCompactDisplay != [equalCopy shouldUseCompactDisplay])
  {
    goto LABEL_120;
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self buttonItems];
  punchoutOptions2 = [equalCopy buttonItems];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  buttonItems = [(_SFPBDetailedRowCardSection *)self buttonItems];
  if (buttonItems)
  {
    v95 = buttonItems;
    buttonItems2 = [(_SFPBDetailedRowCardSection *)self buttonItems];
    buttonItems3 = [equalCopy buttonItems];
    v98 = [buttonItems2 isEqual:buttonItems3];

    if (!v98)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
  punchoutOptions2 = [equalCopy trailingThumbnail];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  trailingThumbnail = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
  if (trailingThumbnail)
  {
    v100 = trailingThumbnail;
    trailingThumbnail2 = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
    trailingThumbnail3 = [equalCopy trailingThumbnail];
    v103 = [trailingThumbnail2 isEqual:trailingThumbnail3];

    if (!v103)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  buttonItemsAreTrailing = self->_buttonItemsAreTrailing;
  if (buttonItemsAreTrailing != [equalCopy buttonItemsAreTrailing])
  {
    goto LABEL_120;
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self topText];
  punchoutOptions2 = [equalCopy topText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  topText = [(_SFPBDetailedRowCardSection *)self topText];
  if (topText)
  {
    v106 = topText;
    topText2 = [(_SFPBDetailedRowCardSection *)self topText];
    topText3 = [equalCopy topText];
    v109 = [topText2 isEqual:topText3];

    if (!v109)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
  punchoutOptions2 = [equalCopy richTrailingTopText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  richTrailingTopText = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
  if (richTrailingTopText)
  {
    v111 = richTrailingTopText;
    richTrailingTopText2 = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
    richTrailingTopText3 = [equalCopy richTrailingTopText];
    v114 = [richTrailingTopText2 isEqual:richTrailingTopText3];

    if (!v114)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
  punchoutOptions2 = [equalCopy richTrailingMiddleText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_119;
  }

  richTrailingMiddleText = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
  if (richTrailingMiddleText)
  {
    v116 = richTrailingMiddleText;
    richTrailingMiddleText2 = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
    richTrailingMiddleText3 = [equalCopy richTrailingMiddleText];
    v119 = [richTrailingMiddleText2 isEqual:richTrailingMiddleText3];

    if (!v119)
    {
      goto LABEL_120;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
  punchoutOptions2 = [equalCopy richTrailingBottomText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_119:

    goto LABEL_120;
  }

  richTrailingBottomText = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
  if (!richTrailingBottomText)
  {

LABEL_123:
    v125 = 1;
    goto LABEL_121;
  }

  v121 = richTrailingBottomText;
  richTrailingBottomText2 = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
  richTrailingBottomText3 = [equalCopy richTrailingBottomText];
  v124 = [richTrailingBottomText2 isEqual:richTrailingBottomText3];

  if (v124)
  {
    goto LABEL_123;
  }

LABEL_120:
  v125 = 0;
LABEL_121:

  return v125;
}

- (void)writeTo:(id)to
{
  v58 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBDetailedRowCardSection *)self punchoutOptions];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v51 objects:v57 count:16];
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
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBDetailedRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBDetailedRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
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

  type = [(_SFPBDetailedRowCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDetailedRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBDetailedRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBDetailedRowCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDetailedRowCardSection *)self preventThumbnailImageScaling])
  {
    PBDataWriterWriteBOOLField();
  }

  title = [(_SFPBDetailedRowCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  secondaryTitle = [(_SFPBDetailedRowCardSection *)self secondaryTitle];
  if (secondaryTitle)
  {
    PBDataWriterWriteSubmessage();
  }

  secondaryTitleImage = [(_SFPBDetailedRowCardSection *)self secondaryTitleImage];
  if (secondaryTitleImage)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDetailedRowCardSection *)self isSecondaryTitleDetached])
  {
    PBDataWriterWriteBOOLField();
  }

  descriptions = [(_SFPBDetailedRowCardSection *)self descriptions];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = [descriptions countByEnumeratingWithState:&v47 objects:v56 count:16];
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
          objc_enumerationMutation(descriptions);
        }

        v24 = *(*(&v47 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [descriptions countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v21);
  }

  footnote = [(_SFPBDetailedRowCardSection *)self footnote];
  if (footnote)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingTopText = [(_SFPBDetailedRowCardSection *)self trailingTopText];
  if (trailingTopText)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingMiddleText = [(_SFPBDetailedRowCardSection *)self trailingMiddleText];
  if (trailingMiddleText)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingBottomText = [(_SFPBDetailedRowCardSection *)self trailingBottomText];
  if (trailingBottomText)
  {
    PBDataWriterWriteSubmessage();
  }

  action = [(_SFPBDetailedRowCardSection *)self action];
  if (action)
  {
    PBDataWriterWriteSubmessage();
  }

  button = [(_SFPBDetailedRowCardSection *)self button];
  if (button)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDetailedRowCardSection *)self shouldUseCompactDisplay])
  {
    PBDataWriterWriteBOOLField();
  }

  buttonItems = [(_SFPBDetailedRowCardSection *)self buttonItems];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = [buttonItems countByEnumeratingWithState:&v43 objects:v55 count:16];
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
          objc_enumerationMutation(buttonItems);
        }

        v36 = *(*(&v43 + 1) + 8 * v35);
        PBDataWriterWriteSubmessage();
        ++v35;
      }

      while (v33 != v35);
      v33 = [buttonItems countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v33);
  }

  trailingThumbnail = [(_SFPBDetailedRowCardSection *)self trailingThumbnail];
  if (trailingThumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDetailedRowCardSection *)self buttonItemsAreTrailing])
  {
    PBDataWriterWriteBOOLField();
  }

  topText = [(_SFPBDetailedRowCardSection *)self topText];
  if (topText)
  {
    PBDataWriterWriteSubmessage();
  }

  richTrailingTopText = [(_SFPBDetailedRowCardSection *)self richTrailingTopText];
  if (richTrailingTopText)
  {
    PBDataWriterWriteSubmessage();
  }

  richTrailingMiddleText = [(_SFPBDetailedRowCardSection *)self richTrailingMiddleText];
  if (richTrailingMiddleText)
  {
    PBDataWriterWriteSubmessage();
  }

  richTrailingBottomText = [(_SFPBDetailedRowCardSection *)self richTrailingBottomText];
  if (richTrailingBottomText)
  {
    PBDataWriterWriteSubmessage();
  }

  v42 = *MEMORY[0x1E69E9840];
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

- (void)addDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  descriptions = self->_descriptions;
  v8 = descriptionsCopy;
  if (!descriptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_descriptions;
    self->_descriptions = array;

    descriptionsCopy = v8;
    descriptions = self->_descriptions;
  }

  [(NSArray *)descriptions addObject:descriptionsCopy];
}

- (void)setDescriptions:(id)descriptions
{
  v4 = [descriptions copy];
  descriptions = self->_descriptions;
  self->_descriptions = v4;

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