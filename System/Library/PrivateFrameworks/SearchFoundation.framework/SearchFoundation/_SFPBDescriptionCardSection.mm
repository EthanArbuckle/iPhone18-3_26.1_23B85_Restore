@interface _SFPBDescriptionCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBDescriptionCardSection)initWithDictionary:(id)dictionary;
- (_SFPBDescriptionCardSection)initWithFacade:(id)facade;
- (_SFPBDescriptionCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)addRichDescriptions:(id)descriptions;
- (void)setAttributionText:(id)text;
- (void)setExpandText:(id)text;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setRichDescriptions:(id)descriptions;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBDescriptionCardSection

- (_SFPBDescriptionCardSection)initWithFacade:(id)facade
{
  v75 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBDescriptionCardSection *)self init];
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

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v70;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v70 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v69 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v10);
    }

    [(_SFPBDescriptionCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBDescriptionCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBDescriptionCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBDescriptionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBDescriptionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBDescriptionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBDescriptionCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBDescriptionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBDescriptionCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBDescriptionCardSection *)v5 setTitle:title2];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [facadeCopy subtitle];
      [(_SFPBDescriptionCardSection *)v5 setSubtitle:subtitle2];
    }

    descriptionText = [facadeCopy descriptionText];

    if (descriptionText)
    {
      v29 = [_SFPBText alloc];
      descriptionText2 = [facadeCopy descriptionText];
      v31 = [(_SFPBText *)v29 initWithFacade:descriptionText2];
      [(_SFPBDescriptionCardSection *)v5 setDescriptionText:v31];
    }

    expandText = [facadeCopy expandText];

    if (expandText)
    {
      expandText2 = [facadeCopy expandText];
      [(_SFPBDescriptionCardSection *)v5 setExpandText:expandText2];
    }

    image = [facadeCopy image];

    if (image)
    {
      v35 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v37 = [(_SFPBImage *)v35 initWithFacade:image2];
      [(_SFPBDescriptionCardSection *)v5 setImage:v37];
    }

    if ([facadeCopy hasTitleNoWrap])
    {
      -[_SFPBDescriptionCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [facadeCopy titleNoWrap]);
    }

    titleWeight = [facadeCopy titleWeight];

    if (titleWeight)
    {
      titleWeight2 = [facadeCopy titleWeight];
      -[_SFPBDescriptionCardSection setTitleWeight:](v5, "setTitleWeight:", [titleWeight2 intValue]);
    }

    descriptionSize = [facadeCopy descriptionSize];

    if (descriptionSize)
    {
      descriptionSize2 = [facadeCopy descriptionSize];
      -[_SFPBDescriptionCardSection setDescriptionSize:](v5, "setDescriptionSize:", [descriptionSize2 intValue]);
    }

    descriptionWeight = [facadeCopy descriptionWeight];

    if (descriptionWeight)
    {
      descriptionWeight2 = [facadeCopy descriptionWeight];
      -[_SFPBDescriptionCardSection setDescriptionWeight:](v5, "setDescriptionWeight:", [descriptionWeight2 intValue]);
    }

    if ([facadeCopy hasDescriptionExpand])
    {
      -[_SFPBDescriptionCardSection setDescriptionExpand:](v5, "setDescriptionExpand:", [facadeCopy descriptionExpand]);
    }

    if ([facadeCopy hasImageAlign])
    {
      -[_SFPBDescriptionCardSection setImageAlign:](v5, "setImageAlign:", [facadeCopy imageAlign]);
    }

    if ([facadeCopy hasTextAlign])
    {
      -[_SFPBDescriptionCardSection setTextAlign:](v5, "setTextAlign:", [facadeCopy textAlign]);
    }

    attributionText = [facadeCopy attributionText];

    if (attributionText)
    {
      attributionText2 = [facadeCopy attributionText];
      [(_SFPBDescriptionCardSection *)v5 setAttributionText:attributionText2];
    }

    attributionURL = [facadeCopy attributionURL];

    if (attributionURL)
    {
      v47 = [_SFPBURL alloc];
      attributionURL2 = [facadeCopy attributionURL];
      v49 = [(_SFPBURL *)v47 initWithNSURL:attributionURL2];
      [(_SFPBDescriptionCardSection *)v5 setAttributionURL:v49];
    }

    attributionGlyph = [facadeCopy attributionGlyph];

    if (attributionGlyph)
    {
      v51 = [_SFPBImage alloc];
      attributionGlyph2 = [facadeCopy attributionGlyph];
      v53 = [(_SFPBImage *)v51 initWithFacade:attributionGlyph2];
      [(_SFPBDescriptionCardSection *)v5 setAttributionGlyph:v53];
    }

    richDescriptions = [facadeCopy richDescriptions];
    if (richDescriptions)
    {
      v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v55 = 0;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    richDescriptions2 = [facadeCopy richDescriptions];
    v57 = [richDescriptions2 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v66;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v66 != v59)
          {
            objc_enumerationMutation(richDescriptions2);
          }

          v61 = [[_SFPBRichText alloc] initWithFacade:*(*(&v65 + 1) + 8 * j)];
          if (v61)
          {
            [v55 addObject:v61];
          }
        }

        v58 = [richDescriptions2 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v58);
    }

    [(_SFPBDescriptionCardSection *)v5 setRichDescriptions:v55];
    v62 = v5;
  }

  v63 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDescriptionCardSection)initWithDictionary:(id)dictionary
{
  v98 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v95.receiver = self;
  v95.super_class = _SFPBDescriptionCardSection;
  v5 = [(_SFPBDescriptionCardSection *)&v95 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v91 objects:v97 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v92;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v92 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v91 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBDescriptionCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v91 objects:v97 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBDescriptionCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v86 = v15;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBDescriptionCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v85 = v17;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v84 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v83 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v82 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBDescriptionCardSection *)v5 setType:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v81 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v80 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBDescriptionCardSection *)v5 setBackgroundColor:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v79 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(_SFPBDescriptionCardSection *)v5 setTitle:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v78 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBDescriptionCardSection *)v5 setSubtitle:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"descriptionText"];
    objc_opt_class();
    v77 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBText alloc] initWithDictionary:v31];
      [(_SFPBDescriptionCardSection *)v5 setDescriptionText:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"expandText"];
    objc_opt_class();
    v76 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 copy];
      [(_SFPBDescriptionCardSection *)v5 setExpandText:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    v75 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBImage alloc] initWithDictionary:v35];
      [(_SFPBDescriptionCardSection *)v5 setImage:v36];
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"titleNoWrap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [v37 BOOLValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"titleWeight"];
    objc_opt_class();
    v74 = v38;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setTitleWeight:](v5, "setTitleWeight:", [v38 intValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"descriptionSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setDescriptionSize:](v5, "setDescriptionSize:", [v39 intValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"descriptionWeight"];
    objc_opt_class();
    v73 = v40;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setDescriptionWeight:](v5, "setDescriptionWeight:", [v40 intValue]);
    }

    v41 = v19;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"descriptionExpand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setDescriptionExpand:](v5, "setDescriptionExpand:", [v42 BOOLValue]);
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"imageAlign"];
    objc_opt_class();
    v72 = v43;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setImageAlign:](v5, "setImageAlign:", [v43 intValue]);
    }

    v68 = v37;
    v44 = [dictionaryCopy objectForKeyedSubscript:@"textAlign"];
    objc_opt_class();
    v45 = v41;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setTextAlign:](v5, "setTextAlign:", [v44 intValue]);
    }

    v67 = v44;
    v46 = [dictionaryCopy objectForKeyedSubscript:@"attributionText"];
    objc_opt_class();
    v71 = v46;
    v47 = v86;
    if (objc_opt_isKindOfClass())
    {
      v48 = [v46 copy];
      [(_SFPBDescriptionCardSection *)v5 setAttributionText:v48];
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"attributionURL"];
    objc_opt_class();
    v70 = v49;
    if (objc_opt_isKindOfClass())
    {
      v50 = [[_SFPBURL alloc] initWithDictionary:v49];
      [(_SFPBDescriptionCardSection *)v5 setAttributionURL:v50];
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"attributionGlyph"];
    objc_opt_class();
    v69 = v51;
    if (objc_opt_isKindOfClass())
    {
      v52 = [[_SFPBImage alloc] initWithDictionary:v51];
      [(_SFPBDescriptionCardSection *)v5 setAttributionGlyph:v52];
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"richDescriptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = v39;
      v65 = v45;
      v66 = v6;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v88;
        do
        {
          for (j = 0; j != v56; ++j)
          {
            if (*v88 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v87 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = [[_SFPBRichText alloc] initWithDictionary:v59];
              [(_SFPBDescriptionCardSection *)v5 addRichDescriptions:v60];
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v87 objects:v96 count:16];
        }

        while (v56);
      }

      v45 = v65;
      v6 = v66;
      v17 = v85;
      v47 = v86;
      v39 = v64;
    }

    v61 = v5;
  }

  v62 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDescriptionCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBDescriptionCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBDescriptionCardSection *)self dictionaryRepresentation];
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
  v77 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_attributionGlyph)
  {
    attributionGlyph = [(_SFPBDescriptionCardSection *)self attributionGlyph];
    dictionaryRepresentation = [attributionGlyph dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"attributionGlyph"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"attributionGlyph"];
    }
  }

  if (self->_attributionText)
  {
    attributionText = [(_SFPBDescriptionCardSection *)self attributionText];
    v8 = [attributionText copy];
    [dictionary setObject:v8 forKeyedSubscript:@"attributionText"];
  }

  if (self->_attributionURL)
  {
    attributionURL = [(_SFPBDescriptionCardSection *)self attributionURL];
    dictionaryRepresentation2 = [attributionURL dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"attributionURL"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"attributionURL"];
    }
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBDescriptionCardSection *)self backgroundColor];
    dictionaryRepresentation3 = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"backgroundColor"];
    }
  }

  v15 = 0x1E696A000uLL;
  if (self->_canBeHidden)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDescriptionCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v16 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_descriptionExpand)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDescriptionCardSection descriptionExpand](self, "descriptionExpand")}];
    [dictionary setObject:v17 forKeyedSubscript:@"descriptionExpand"];
  }

  if (self->_descriptionSize)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBDescriptionCardSection descriptionSize](self, "descriptionSize")}];
    [dictionary setObject:v18 forKeyedSubscript:@"descriptionSize"];
  }

  if (self->_descriptionText)
  {
    descriptionText = [(_SFPBDescriptionCardSection *)self descriptionText];
    dictionaryRepresentation4 = [descriptionText dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"descriptionText"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"descriptionText"];
    }
  }

  if (self->_descriptionWeight)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBDescriptionCardSection descriptionWeight](self, "descriptionWeight")}];
    [dictionary setObject:v22 forKeyedSubscript:@"descriptionWeight"];
  }

  if (self->_expandText)
  {
    expandText = [(_SFPBDescriptionCardSection *)self expandText];
    v24 = [expandText copy];
    [dictionary setObject:v24 forKeyedSubscript:@"expandText"];
  }

  if (self->_hasBottomPadding)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDescriptionCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v25 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDescriptionCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v26 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    image = [(_SFPBDescriptionCardSection *)self image];
    dictionaryRepresentation5 = [image dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"image"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"image"];
    }
  }

  if (self->_imageAlign)
  {
    imageAlign = [(_SFPBDescriptionCardSection *)self imageAlign];
    if (imageAlign >= 5)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", imageAlign];
    }

    else
    {
      v31 = off_1E7ACE448[imageAlign];
    }

    [dictionary setObject:v31 forKeyedSubscript:@"imageAlign"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v33 = self->_punchoutOptions;
    v34 = [(NSArray *)v33 countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v72;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v72 != v36)
          {
            objc_enumerationMutation(v33);
          }

          dictionaryRepresentation6 = [*(*(&v71 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array addObject:dictionaryRepresentation6];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null6];
          }
        }

        v35 = [(NSArray *)v33 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v35);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
    v15 = 0x1E696A000;
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
    v41 = [punchoutPickerDismissText copy];
    [dictionary setObject:v41 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
    v43 = [punchoutPickerTitle copy];
    [dictionary setObject:v43 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if ([(NSArray *)self->_richDescriptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v45 = self->_richDescriptions;
    v46 = [(NSArray *)v45 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v68;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v68 != v48)
          {
            objc_enumerationMutation(v45);
          }

          dictionaryRepresentation7 = [*(*(&v67 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation7)
          {
            [array2 addObject:dictionaryRepresentation7];
          }

          else
          {
            null7 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null7];
          }
        }

        v47 = [(NSArray *)v45 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v47);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"richDescriptions"];
    v15 = 0x1E696A000uLL;
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBDescriptionCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v53 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v53 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBDescriptionCardSection *)self subtitle];
    v55 = [subtitle copy];
    [dictionary setObject:v55 forKeyedSubscript:@"subtitle"];
  }

  if (self->_textAlign)
  {
    textAlign = [(_SFPBDescriptionCardSection *)self textAlign];
    if (textAlign >= 3)
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", textAlign];
    }

    else
    {
      v57 = off_1E7ACE548[textAlign];
    }

    [dictionary setObject:v57 forKeyedSubscript:@"textAlign"];
  }

  if (self->_title)
  {
    title = [(_SFPBDescriptionCardSection *)self title];
    v59 = [title copy];
    [dictionary setObject:v59 forKeyedSubscript:@"title"];
  }

  if (self->_titleNoWrap)
  {
    v60 = [*(v15 + 3480) numberWithBool:{-[_SFPBDescriptionCardSection titleNoWrap](self, "titleNoWrap")}];
    [dictionary setObject:v60 forKeyedSubscript:@"titleNoWrap"];
  }

  if (self->_titleWeight)
  {
    v61 = [*(v15 + 3480) numberWithInt:{-[_SFPBDescriptionCardSection titleWeight](self, "titleWeight")}];
    [dictionary setObject:v61 forKeyedSubscript:@"titleWeight"];
  }

  if (self->_type)
  {
    type = [(_SFPBDescriptionCardSection *)self type];
    v63 = [type copy];
    [dictionary setObject:v63 forKeyedSubscript:@"type"];
  }

  v64 = dictionary;

  v65 = *MEMORY[0x1E69E9840];
  return dictionary;
}

- (unint64_t)hash
{
  v26 = [(NSArray *)self->_punchoutOptions hash];
  v25 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v23 = v4;
  v24 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v22 = v5;
  if (self->_hasBottomPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_type hash];
  v8 = 2654435761 * self->_separatorStyle;
  v9 = [(_SFPBColor *)self->_backgroundColor hash];
  v10 = [(NSString *)self->_title hash];
  v11 = [(NSString *)self->_subtitle hash];
  v12 = [(_SFPBText *)self->_descriptionText hash];
  v13 = [(NSString *)self->_expandText hash];
  v14 = [(_SFPBImage *)self->_image hash];
  if (self->_titleNoWrap)
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  if (self->_descriptionExpand)
  {
    v16 = 2654435761;
  }

  else
  {
    v16 = 0;
  }

  v17 = v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ (2654435761 * self->_titleWeight) ^ (2654435761 * self->_descriptionSize) ^ (2654435761 * self->_descriptionWeight) ^ v16 ^ (2654435761 * self->_imageAlign) ^ (2654435761 * self->_textAlign);
  v18 = [(NSString *)self->_attributionText hash];
  v19 = v18 ^ [(_SFPBURL *)self->_attributionURL hash];
  v20 = v19 ^ [(_SFPBImage *)self->_attributionGlyph hash];
  return v17 ^ v20 ^ [(NSArray *)self->_richDescriptions hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_83;
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  punchoutOptions3 = [(_SFPBDescriptionCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBDescriptionCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  punchoutPickerTitle = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  punchoutPickerDismissText = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_83;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_83;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_83;
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  type = [(_SFPBDescriptionCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBDescriptionCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_83;
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  backgroundColor = [(_SFPBDescriptionCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBDescriptionCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  title = [(_SFPBDescriptionCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBDescriptionCardSection *)self title];
    title3 = [equalCopy title];
    v40 = [title2 isEqual:title3];

    if (!v40)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  subtitle = [(_SFPBDescriptionCardSection *)self subtitle];
  if (subtitle)
  {
    v42 = subtitle;
    subtitle2 = [(_SFPBDescriptionCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v45 = [subtitle2 isEqual:subtitle3];

    if (!v45)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self descriptionText];
  punchoutOptions2 = [equalCopy descriptionText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  descriptionText = [(_SFPBDescriptionCardSection *)self descriptionText];
  if (descriptionText)
  {
    v47 = descriptionText;
    descriptionText2 = [(_SFPBDescriptionCardSection *)self descriptionText];
    descriptionText3 = [equalCopy descriptionText];
    v50 = [descriptionText2 isEqual:descriptionText3];

    if (!v50)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self expandText];
  punchoutOptions2 = [equalCopy expandText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  expandText = [(_SFPBDescriptionCardSection *)self expandText];
  if (expandText)
  {
    v52 = expandText;
    expandText2 = [(_SFPBDescriptionCardSection *)self expandText];
    expandText3 = [equalCopy expandText];
    v55 = [expandText2 isEqual:expandText3];

    if (!v55)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self image];
  punchoutOptions2 = [equalCopy image];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  image = [(_SFPBDescriptionCardSection *)self image];
  if (image)
  {
    v57 = image;
    image2 = [(_SFPBDescriptionCardSection *)self image];
    image3 = [equalCopy image];
    v60 = [image2 isEqual:image3];

    if (!v60)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  titleNoWrap = self->_titleNoWrap;
  if (titleNoWrap != [equalCopy titleNoWrap])
  {
    goto LABEL_83;
  }

  titleWeight = self->_titleWeight;
  if (titleWeight != [equalCopy titleWeight])
  {
    goto LABEL_83;
  }

  descriptionSize = self->_descriptionSize;
  if (descriptionSize != [equalCopy descriptionSize])
  {
    goto LABEL_83;
  }

  descriptionWeight = self->_descriptionWeight;
  if (descriptionWeight != [equalCopy descriptionWeight])
  {
    goto LABEL_83;
  }

  descriptionExpand = self->_descriptionExpand;
  if (descriptionExpand != [equalCopy descriptionExpand])
  {
    goto LABEL_83;
  }

  imageAlign = self->_imageAlign;
  if (imageAlign != [equalCopy imageAlign])
  {
    goto LABEL_83;
  }

  textAlign = self->_textAlign;
  if (textAlign != [equalCopy textAlign])
  {
    goto LABEL_83;
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self attributionText];
  punchoutOptions2 = [equalCopy attributionText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  attributionText = [(_SFPBDescriptionCardSection *)self attributionText];
  if (attributionText)
  {
    v69 = attributionText;
    attributionText2 = [(_SFPBDescriptionCardSection *)self attributionText];
    attributionText3 = [equalCopy attributionText];
    v72 = [attributionText2 isEqual:attributionText3];

    if (!v72)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self attributionURL];
  punchoutOptions2 = [equalCopy attributionURL];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  attributionURL = [(_SFPBDescriptionCardSection *)self attributionURL];
  if (attributionURL)
  {
    v74 = attributionURL;
    attributionURL2 = [(_SFPBDescriptionCardSection *)self attributionURL];
    attributionURL3 = [equalCopy attributionURL];
    v77 = [attributionURL2 isEqual:attributionURL3];

    if (!v77)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self attributionGlyph];
  punchoutOptions2 = [equalCopy attributionGlyph];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_82;
  }

  attributionGlyph = [(_SFPBDescriptionCardSection *)self attributionGlyph];
  if (attributionGlyph)
  {
    v79 = attributionGlyph;
    attributionGlyph2 = [(_SFPBDescriptionCardSection *)self attributionGlyph];
    attributionGlyph3 = [equalCopy attributionGlyph];
    v82 = [attributionGlyph2 isEqual:attributionGlyph3];

    if (!v82)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBDescriptionCardSection *)self richDescriptions];
  punchoutOptions2 = [equalCopy richDescriptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_82:

    goto LABEL_83;
  }

  richDescriptions = [(_SFPBDescriptionCardSection *)self richDescriptions];
  if (!richDescriptions)
  {

LABEL_86:
    v88 = 1;
    goto LABEL_84;
  }

  v84 = richDescriptions;
  richDescriptions2 = [(_SFPBDescriptionCardSection *)self richDescriptions];
  richDescriptions3 = [equalCopy richDescriptions];
  v87 = [richDescriptions2 isEqual:richDescriptions3];

  if (v87)
  {
    goto LABEL_86;
  }

LABEL_83:
  v88 = 0;
LABEL_84:

  return v88;
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBDescriptionCardSection *)self punchoutOptions];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDescriptionCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDescriptionCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDescriptionCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBDescriptionCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDescriptionCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBDescriptionCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBDescriptionCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  subtitle = [(_SFPBDescriptionCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteStringField();
  }

  descriptionText = [(_SFPBDescriptionCardSection *)self descriptionText];
  if (descriptionText)
  {
    PBDataWriterWriteSubmessage();
  }

  expandText = [(_SFPBDescriptionCardSection *)self expandText];
  if (expandText)
  {
    PBDataWriterWriteStringField();
  }

  image = [(_SFPBDescriptionCardSection *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDescriptionCardSection *)self titleNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDescriptionCardSection *)self titleWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDescriptionCardSection *)self descriptionSize])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDescriptionCardSection *)self descriptionWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDescriptionCardSection *)self descriptionExpand])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDescriptionCardSection *)self imageAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDescriptionCardSection *)self textAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  attributionText = [(_SFPBDescriptionCardSection *)self attributionText];
  if (attributionText)
  {
    PBDataWriterWriteStringField();
  }

  attributionURL = [(_SFPBDescriptionCardSection *)self attributionURL];
  if (attributionURL)
  {
    PBDataWriterWriteSubmessage();
  }

  attributionGlyph = [(_SFPBDescriptionCardSection *)self attributionGlyph];
  if (attributionGlyph)
  {
    PBDataWriterWriteSubmessage();
  }

  richDescriptions = [(_SFPBDescriptionCardSection *)self richDescriptions];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [richDescriptions countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(richDescriptions);
        }

        v28 = *(*(&v30 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [richDescriptions countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)addRichDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  richDescriptions = self->_richDescriptions;
  v8 = descriptionsCopy;
  if (!richDescriptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_richDescriptions;
    self->_richDescriptions = array;

    descriptionsCopy = v8;
    richDescriptions = self->_richDescriptions;
  }

  [(NSArray *)richDescriptions addObject:descriptionsCopy];
}

- (void)setRichDescriptions:(id)descriptions
{
  v4 = [descriptions copy];
  richDescriptions = self->_richDescriptions;
  self->_richDescriptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAttributionText:(id)text
{
  v4 = [text copy];
  attributionText = self->_attributionText;
  self->_attributionText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setExpandText:(id)text
{
  v4 = [text copy];
  expandText = self->_expandText;
  self->_expandText = v4;

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