@interface _SFPBRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRowCardSection)initWithFacade:(id)facade;
- (_SFPBRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setKey:(id)key;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRowCardSection

- (_SFPBRowCardSection)initWithFacade:(id)facade
{
  v64 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRowCardSection *)self init];
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

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v60;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v60 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v59 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v10);
    }

    [(_SFPBRowCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBRowCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBRowCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBRowCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBRowCardSection *)v5 setBackgroundColor:v23];
    }

    image = [facadeCopy image];

    if (image)
    {
      v25 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v27 = [(_SFPBImage *)v25 initWithFacade:image2];
      [(_SFPBRowCardSection *)v5 setImage:v27];
    }

    if ([facadeCopy hasImageIsRightAligned])
    {
      -[_SFPBRowCardSection setImageIsRightAligned:](v5, "setImageIsRightAligned:", [facadeCopy imageIsRightAligned]);
    }

    leadingText = [facadeCopy leadingText];

    if (leadingText)
    {
      v29 = [_SFPBRichText alloc];
      leadingText2 = [facadeCopy leadingText];
      v31 = [(_SFPBRichText *)v29 initWithFacade:leadingText2];
      [(_SFPBRowCardSection *)v5 setLeadingText:v31];
    }

    trailingText = [facadeCopy trailingText];

    if (trailingText)
    {
      v33 = [_SFPBRichText alloc];
      trailingText2 = [facadeCopy trailingText];
      v35 = [(_SFPBRichText *)v33 initWithFacade:trailingText2];
      [(_SFPBRowCardSection *)v5 setTrailingText:v35];
    }

    attributionImage = [facadeCopy attributionImage];

    if (attributionImage)
    {
      v37 = [_SFPBImage alloc];
      attributionImage2 = [facadeCopy attributionImage];
      v39 = [(_SFPBImage *)v37 initWithFacade:attributionImage2];
      [(_SFPBRowCardSection *)v5 setAttributionImage:v39];
    }

    v40 = [facadeCopy key];

    if (v40)
    {
      v41 = [facadeCopy key];
      [(_SFPBRowCardSection *)v5 setKey:v41];
    }

    if ([facadeCopy hasKeyNoWrap])
    {
      -[_SFPBRowCardSection setKeyNoWrap:](v5, "setKeyNoWrap:", [facadeCopy keyNoWrap]);
    }

    keyWeight = [facadeCopy keyWeight];

    if (keyWeight)
    {
      keyWeight2 = [facadeCopy keyWeight];
      -[_SFPBRowCardSection setKeyWeight:](v5, "setKeyWeight:", [keyWeight2 intValue]);
    }

    value = [facadeCopy value];

    if (value)
    {
      value2 = [facadeCopy value];
      [(_SFPBRowCardSection *)v5 setValue:value2];
    }

    if ([facadeCopy hasValueNoWrap])
    {
      -[_SFPBRowCardSection setValueNoWrap:](v5, "setValueNoWrap:", [facadeCopy valueNoWrap]);
    }

    valueWeight = [facadeCopy valueWeight];

    if (valueWeight)
    {
      valueWeight2 = [facadeCopy valueWeight];
      -[_SFPBRowCardSection setValueWeight:](v5, "setValueWeight:", [valueWeight2 intValue]);
    }

    if ([facadeCopy hasCardPaddingBottom])
    {
      -[_SFPBRowCardSection setCardPaddingBottom:](v5, "setCardPaddingBottom:", [facadeCopy cardPaddingBottom]);
    }

    leadingSubtitle = [facadeCopy leadingSubtitle];

    if (leadingSubtitle)
    {
      v49 = [_SFPBRichText alloc];
      leadingSubtitle2 = [facadeCopy leadingSubtitle];
      v51 = [(_SFPBRichText *)v49 initWithFacade:leadingSubtitle2];
      [(_SFPBRowCardSection *)v5 setLeadingSubtitle:v51];
    }

    trailingSubtitle = [facadeCopy trailingSubtitle];

    if (trailingSubtitle)
    {
      v53 = [_SFPBRichText alloc];
      trailingSubtitle2 = [facadeCopy trailingSubtitle];
      v55 = [(_SFPBRichText *)v53 initWithFacade:trailingSubtitle2];
      [(_SFPBRowCardSection *)v5 setTrailingSubtitle:v55];
    }

    v56 = v5;
  }

  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRowCardSection)initWithDictionary:(id)dictionary
{
  v73 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v71.receiver = self;
  v71.super_class = _SFPBRowCardSection;
  v5 = [(_SFPBRowCardSection *)&v71 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v68;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v68 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v67 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBRowCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v67 objects:v72 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v66 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v65 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v64 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBRowCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v63 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v62 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBRowCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    v61 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBImage alloc] initWithDictionary:v26];
      [(_SFPBRowCardSection *)v5 setImage:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"imageIsRightAligned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setImageIsRightAligned:](v5, "setImageIsRightAligned:", [v28 BOOLValue]);
    }

    v52 = v28;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"leadingText"];
    objc_opt_class();
    v60 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBRichText alloc] initWithDictionary:v29];
      [(_SFPBRowCardSection *)v5 setLeadingText:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"trailingText"];
    objc_opt_class();
    v59 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBRichText alloc] initWithDictionary:v31];
      [(_SFPBRowCardSection *)v5 setTrailingText:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"attributionImage"];
    objc_opt_class();
    v58 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBImage alloc] initWithDictionary:v33];
      [(_SFPBRowCardSection *)v5 setAttributionImage:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    v57 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(_SFPBRowCardSection *)v5 setKey:v36];
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"keyNoWrap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setKeyNoWrap:](v5, "setKeyNoWrap:", [v37 BOOLValue]);
    }

    v55 = v14;
    v38 = [dictionaryCopy objectForKeyedSubscript:{@"keyWeight", v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setKeyWeight:](v5, "setKeyWeight:", [v38 intValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [v39 copy];
      [(_SFPBRowCardSection *)v5 setValue:v40];
    }

    v54 = v16;
    v41 = [dictionaryCopy objectForKeyedSubscript:@"valueNoWrap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setValueNoWrap:](v5, "setValueNoWrap:", [v41 BOOLValue]);
    }

    v53 = v18;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"valueWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setValueWeight:](v5, "setValueWeight:", [v42 intValue]);
    }

    v56 = v6;
    v43 = [dictionaryCopy objectForKeyedSubscript:@"cardPaddingBottom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setCardPaddingBottom:](v5, "setCardPaddingBottom:", [v43 BOOLValue]);
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"leadingSubtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBRichText alloc] initWithDictionary:v44];
      [(_SFPBRowCardSection *)v5 setLeadingSubtitle:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"trailingSubtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBRichText alloc] initWithDictionary:v46];
      [(_SFPBRowCardSection *)v5 setTrailingSubtitle:v47];
    }

    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRowCardSection *)self dictionaryRepresentation];
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
  v61 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_attributionImage)
  {
    attributionImage = [(_SFPBRowCardSection *)self attributionImage];
    dictionaryRepresentation = [attributionImage dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"attributionImage"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"attributionImage"];
    }
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBRowCardSection *)self backgroundColor];
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

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_cardPaddingBottom)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection cardPaddingBottom](self, "cardPaddingBottom")}];
    [dictionary setObject:v11 forKeyedSubscript:@"cardPaddingBottom"];
  }

  if (self->_hasBottomPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v13 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    image = [(_SFPBRowCardSection *)self image];
    dictionaryRepresentation3 = [image dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"image"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"image"];
    }
  }

  if (self->_imageIsRightAligned)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection imageIsRightAligned](self, "imageIsRightAligned")}];
    [dictionary setObject:v17 forKeyedSubscript:@"imageIsRightAligned"];
  }

  if (self->_key)
  {
    v18 = [(_SFPBRowCardSection *)self key];
    v19 = [v18 copy];
    [dictionary setObject:v19 forKeyedSubscript:@"key"];
  }

  if (self->_keyNoWrap)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection keyNoWrap](self, "keyNoWrap")}];
    [dictionary setObject:v20 forKeyedSubscript:@"keyNoWrap"];
  }

  if (self->_keyWeight)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRowCardSection keyWeight](self, "keyWeight")}];
    [dictionary setObject:v21 forKeyedSubscript:@"keyWeight"];
  }

  if (self->_leadingSubtitle)
  {
    leadingSubtitle = [(_SFPBRowCardSection *)self leadingSubtitle];
    dictionaryRepresentation4 = [leadingSubtitle dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"leadingSubtitle"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"leadingSubtitle"];
    }
  }

  if (self->_leadingText)
  {
    leadingText = [(_SFPBRowCardSection *)self leadingText];
    dictionaryRepresentation5 = [leadingText dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"leadingText"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"leadingText"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v29 = self->_punchoutOptions;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v57;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v57 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation6 = [*(*(&v56 + 1) + 8 * i) dictionaryRepresentation];
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

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v31);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
    v37 = [punchoutPickerDismissText copy];
    [dictionary setObject:v37 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBRowCardSection *)self punchoutPickerTitle];
    v39 = [punchoutPickerTitle copy];
    [dictionary setObject:v39 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBRowCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v41 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v41 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_trailingSubtitle)
  {
    trailingSubtitle = [(_SFPBRowCardSection *)self trailingSubtitle];
    dictionaryRepresentation7 = [trailingSubtitle dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"trailingSubtitle"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"trailingSubtitle"];
    }
  }

  if (self->_trailingText)
  {
    trailingText = [(_SFPBRowCardSection *)self trailingText];
    dictionaryRepresentation8 = [trailingText dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"trailingText"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"trailingText"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBRowCardSection *)self type];
    v49 = [type copy];
    [dictionary setObject:v49 forKeyedSubscript:@"type"];
  }

  if (self->_value)
  {
    value = [(_SFPBRowCardSection *)self value];
    v51 = [value copy];
    [dictionary setObject:v51 forKeyedSubscript:@"value"];
  }

  if (self->_valueNoWrap)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection valueNoWrap](self, "valueNoWrap")}];
    [dictionary setObject:v52 forKeyedSubscript:@"valueNoWrap"];
  }

  if (self->_valueWeight)
  {
    v53 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRowCardSection valueWeight](self, "valueWeight")}];
    [dictionary setObject:v53 forKeyedSubscript:@"valueWeight"];
  }

  v54 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v30 = [(NSArray *)self->_punchoutOptions hash];
  v29 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v27 = v4;
  v28 = v3;
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

  v25 = v6;
  v26 = v5;
  v7 = [(NSString *)self->_type hash];
  v23 = 2654435761 * self->_separatorStyle;
  v24 = v7;
  v22 = [(_SFPBColor *)self->_backgroundColor hash];
  v8 = [(_SFPBImage *)self->_image hash];
  if (self->_imageIsRightAligned)
  {
    v9 = 2654435761;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(_SFPBRichText *)self->_leadingText hash];
  v11 = [(_SFPBRichText *)self->_trailingText hash];
  v12 = [(_SFPBImage *)self->_attributionImage hash];
  v13 = [(NSString *)self->_key hash];
  if (self->_keyNoWrap)
  {
    v14 = 2654435761;
  }

  else
  {
    v14 = 0;
  }

  v15 = 2654435761 * self->_keyWeight;
  v16 = [(NSString *)self->_value hash];
  if (self->_valueNoWrap)
  {
    v17 = 2654435761;
  }

  else
  {
    v17 = 0;
  }

  if (self->_cardPaddingBottom)
  {
    v18 = 2654435761;
  }

  else
  {
    v18 = 0;
  }

  v19 = v17 ^ (2654435761 * self->_valueWeight) ^ v18;
  v20 = v29 ^ v30 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v19 ^ [(_SFPBRichText *)self->_leadingSubtitle hash];
  return v20 ^ [(_SFPBRichText *)self->_trailingSubtitle hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBRowCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  punchoutOptions3 = [(_SFPBRowCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBRowCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRowCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  punchoutPickerTitle = [(_SFPBRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBRowCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  punchoutPickerDismissText = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_77;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_77;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBRowCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  type = [(_SFPBRowCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBRowCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBRowCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  backgroundColor = [(_SFPBRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBRowCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRowCardSection *)self image];
  punchoutOptions2 = [equalCopy image];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  image = [(_SFPBRowCardSection *)self image];
  if (image)
  {
    v37 = image;
    image2 = [(_SFPBRowCardSection *)self image];
    image3 = [equalCopy image];
    v40 = [image2 isEqual:image3];

    if (!v40)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  imageIsRightAligned = self->_imageIsRightAligned;
  if (imageIsRightAligned != [equalCopy imageIsRightAligned])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBRowCardSection *)self leadingText];
  punchoutOptions2 = [equalCopy leadingText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  leadingText = [(_SFPBRowCardSection *)self leadingText];
  if (leadingText)
  {
    v43 = leadingText;
    leadingText2 = [(_SFPBRowCardSection *)self leadingText];
    leadingText3 = [equalCopy leadingText];
    v46 = [leadingText2 isEqual:leadingText3];

    if (!v46)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRowCardSection *)self trailingText];
  punchoutOptions2 = [equalCopy trailingText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  trailingText = [(_SFPBRowCardSection *)self trailingText];
  if (trailingText)
  {
    v48 = trailingText;
    trailingText2 = [(_SFPBRowCardSection *)self trailingText];
    trailingText3 = [equalCopy trailingText];
    v51 = [trailingText2 isEqual:trailingText3];

    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRowCardSection *)self attributionImage];
  punchoutOptions2 = [equalCopy attributionImage];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  attributionImage = [(_SFPBRowCardSection *)self attributionImage];
  if (attributionImage)
  {
    v53 = attributionImage;
    attributionImage2 = [(_SFPBRowCardSection *)self attributionImage];
    attributionImage3 = [equalCopy attributionImage];
    v56 = [attributionImage2 isEqual:attributionImage3];

    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRowCardSection *)self key];
  punchoutOptions2 = [equalCopy key];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  v57 = [(_SFPBRowCardSection *)self key];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBRowCardSection *)self key];
    v60 = [equalCopy key];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  keyNoWrap = self->_keyNoWrap;
  if (keyNoWrap != [equalCopy keyNoWrap])
  {
    goto LABEL_77;
  }

  keyWeight = self->_keyWeight;
  if (keyWeight != [equalCopy keyWeight])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBRowCardSection *)self value];
  punchoutOptions2 = [equalCopy value];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  value = [(_SFPBRowCardSection *)self value];
  if (value)
  {
    v65 = value;
    value2 = [(_SFPBRowCardSection *)self value];
    value3 = [equalCopy value];
    v68 = [value2 isEqual:value3];

    if (!v68)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  valueNoWrap = self->_valueNoWrap;
  if (valueNoWrap != [equalCopy valueNoWrap])
  {
    goto LABEL_77;
  }

  valueWeight = self->_valueWeight;
  if (valueWeight != [equalCopy valueWeight])
  {
    goto LABEL_77;
  }

  cardPaddingBottom = self->_cardPaddingBottom;
  if (cardPaddingBottom != [equalCopy cardPaddingBottom])
  {
    goto LABEL_77;
  }

  punchoutOptions = [(_SFPBRowCardSection *)self leadingSubtitle];
  punchoutOptions2 = [equalCopy leadingSubtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_76;
  }

  leadingSubtitle = [(_SFPBRowCardSection *)self leadingSubtitle];
  if (leadingSubtitle)
  {
    v73 = leadingSubtitle;
    leadingSubtitle2 = [(_SFPBRowCardSection *)self leadingSubtitle];
    leadingSubtitle3 = [equalCopy leadingSubtitle];
    v76 = [leadingSubtitle2 isEqual:leadingSubtitle3];

    if (!v76)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBRowCardSection *)self trailingSubtitle];
  punchoutOptions2 = [equalCopy trailingSubtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_76:

    goto LABEL_77;
  }

  trailingSubtitle = [(_SFPBRowCardSection *)self trailingSubtitle];
  if (!trailingSubtitle)
  {

LABEL_80:
    v82 = 1;
    goto LABEL_78;
  }

  v78 = trailingSubtitle;
  trailingSubtitle2 = [(_SFPBRowCardSection *)self trailingSubtitle];
  trailingSubtitle3 = [equalCopy trailingSubtitle];
  v81 = [trailingSubtitle2 isEqual:trailingSubtitle3];

  if (v81)
  {
    goto LABEL_80;
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBRowCardSection *)self punchoutOptions];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBRowCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  image = [(_SFPBRowCardSection *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRowCardSection *)self imageIsRightAligned])
  {
    PBDataWriterWriteBOOLField();
  }

  leadingText = [(_SFPBRowCardSection *)self leadingText];
  if (leadingText)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingText = [(_SFPBRowCardSection *)self trailingText];
  if (trailingText)
  {
    PBDataWriterWriteSubmessage();
  }

  attributionImage = [(_SFPBRowCardSection *)self attributionImage];
  if (attributionImage)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBRowCardSection *)self key];
  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRowCardSection *)self keyNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRowCardSection *)self keyWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  value = [(_SFPBRowCardSection *)self value];
  if (value)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRowCardSection *)self valueNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRowCardSection *)self valueWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRowCardSection *)self cardPaddingBottom])
  {
    PBDataWriterWriteBOOLField();
  }

  leadingSubtitle = [(_SFPBRowCardSection *)self leadingSubtitle];
  if (leadingSubtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingSubtitle = [(_SFPBRowCardSection *)self trailingSubtitle];
  if (trailingSubtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(id)value
{
  v4 = [value copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKey:(id)key
{
  v4 = [key copy];
  key = self->_key;
  self->_key = v4;

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