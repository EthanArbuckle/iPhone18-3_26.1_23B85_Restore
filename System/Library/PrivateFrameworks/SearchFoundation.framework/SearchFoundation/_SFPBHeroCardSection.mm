@interface _SFPBHeroCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBHeroCardSection)initWithDictionary:(id)dictionary;
- (_SFPBHeroCardSection)initWithFacade:(id)facade;
- (_SFPBHeroCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addButtonItems:(id)items;
- (void)addPunchoutOptions:(id)options;
- (void)setButtonItems:(id)items;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBHeroCardSection

- (_SFPBHeroCardSection)initWithFacade:(id)facade
{
  v57 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBHeroCardSection *)self init];
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

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v52;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v52 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v51 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v10);
    }

    [(_SFPBHeroCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBHeroCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBHeroCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBHeroCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBHeroCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBHeroCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBHeroCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBHeroCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBHeroCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      v25 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:title2];
      [(_SFPBHeroCardSection *)v5 setTitle:v27];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      v29 = [_SFPBRichText alloc];
      subtitle2 = [facadeCopy subtitle];
      v31 = [(_SFPBRichText *)v29 initWithFacade:subtitle2];
      [(_SFPBHeroCardSection *)v5 setSubtitle:v31];
    }

    buttonItems = [facadeCopy buttonItems];
    if (buttonItems)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buttonItems2 = [facadeCopy buttonItems];
    v35 = [buttonItems2 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(buttonItems2);
          }

          v39 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v47 + 1) + 8 * j)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [buttonItems2 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v36);
    }

    [(_SFPBHeroCardSection *)v5 setButtonItems:v33];
    image = [facadeCopy image];

    if (image)
    {
      v41 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v43 = [(_SFPBImage *)v41 initWithFacade:image2];
      [(_SFPBHeroCardSection *)v5 setImage:v43];
    }

    if ([facadeCopy hasImageAlign])
    {
      -[_SFPBHeroCardSection setImageAlign:](v5, "setImageAlign:", [facadeCopy imageAlign]);
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHeroCardSection)initWithDictionary:(id)dictionary
{
  v69 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v66.receiver = self;
  v66.super_class = _SFPBHeroCardSection;
  v5 = [(_SFPBHeroCardSection *)&v66 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v63;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v63 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v62 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBHeroCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v57 = v6;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBHeroCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBHeroCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v56 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBHeroCardSection *)v5 setType:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v51 = v24;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v55 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBHeroCardSection *)v5 setBackgroundColor:v26];
    }

    v54 = v17;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v15;
      v29 = [[_SFPBRichText alloc] initWithDictionary:v27];
      [(_SFPBHeroCardSection *)v5 setTitle:v29];

      v15 = v28;
    }

    v50 = v27;
    v52 = v20;
    v53 = v19;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v31 = v57;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBRichText alloc] initWithDictionary:v30];
      [(_SFPBHeroCardSection *)v5 setSubtitle:v32];
    }

    v49 = v30;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"buttonItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v22;
      v48 = v15;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v34 = v33;
      v35 = [v34 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v59;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v59 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v58 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = [[_SFPBButtonItem alloc] initWithDictionary:v39];
              [(_SFPBHeroCardSection *)v5 addButtonItems:v40];
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v36);
      }

      v31 = v57;
      v22 = v47;
      v15 = v48;
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[_SFPBImage alloc] initWithDictionary:v41];
      [(_SFPBHeroCardSection *)v5 setImage:v42];
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"imageAlign"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setImageAlign:](v5, "setImageAlign:", [v43 intValue]);
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHeroCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBHeroCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBHeroCardSection *)self dictionaryRepresentation];
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
  v57 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBHeroCardSection *)self backgroundColor];
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
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v8 = self->_buttonItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v52;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v52 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v51 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"buttonItems"];
  }

  if (self->_canBeHidden)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v15 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    image = [(_SFPBHeroCardSection *)self image];
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

  if (self->_imageAlign)
  {
    imageAlign = [(_SFPBHeroCardSection *)self imageAlign];
    if (imageAlign >= 5)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", imageAlign];
    }

    else
    {
      v22 = off_1E7ACE448[imageAlign];
    }

    [dictionary setObject:v22 forKeyedSubscript:@"imageAlign"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v24 = self->_punchoutOptions;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v48;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation4 = [*(*(&v47 + 1) + 8 * j) dictionaryRepresentation];
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

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
    v32 = [punchoutPickerDismissText copy];
    [dictionary setObject:v32 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
    v34 = [punchoutPickerTitle copy];
    [dictionary setObject:v34 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBHeroCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v36 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v36 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBHeroCardSection *)self subtitle];
    dictionaryRepresentation5 = [subtitle dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBHeroCardSection *)self title];
    dictionaryRepresentation6 = [title dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"title"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBHeroCardSection *)self type];
    v44 = [type copy];
    [dictionary setObject:v44 forKeyedSubscript:@"type"];
  }

  v45 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v17 = [(NSArray *)self->_punchoutOptions hash];
  v16 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

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

  v7 = [(NSString *)self->_type hash:v4];
  v8 = 2654435761 * self->_separatorStyle;
  v9 = [(_SFPBColor *)self->_backgroundColor hash];
  v10 = [(_SFPBRichText *)self->_title hash];
  v11 = [(_SFPBRichText *)self->_subtitle hash];
  v12 = [(NSArray *)self->_buttonItems hash];
  return v16 ^ v17 ^ v15 ^ v14 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(_SFPBImage *)self->_image hash]^ (2654435761 * self->_imageAlign);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  punchoutOptions3 = [(_SFPBHeroCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBHeroCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  punchoutPickerTitle = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  punchoutPickerDismissText = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_51;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_51;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_51;
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  type = [(_SFPBHeroCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBHeroCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_51;
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  backgroundColor = [(_SFPBHeroCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBHeroCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  title = [(_SFPBHeroCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBHeroCardSection *)self title];
    title3 = [equalCopy title];
    v40 = [title2 isEqual:title3];

    if (!v40)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  subtitle = [(_SFPBHeroCardSection *)self subtitle];
  if (subtitle)
  {
    v42 = subtitle;
    subtitle2 = [(_SFPBHeroCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v45 = [subtitle2 isEqual:subtitle3];

    if (!v45)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self buttonItems];
  punchoutOptions2 = [equalCopy buttonItems];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  buttonItems = [(_SFPBHeroCardSection *)self buttonItems];
  if (buttonItems)
  {
    v47 = buttonItems;
    buttonItems2 = [(_SFPBHeroCardSection *)self buttonItems];
    buttonItems3 = [equalCopy buttonItems];
    v50 = [buttonItems2 isEqual:buttonItems3];

    if (!v50)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBHeroCardSection *)self image];
  punchoutOptions2 = [equalCopy image];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_50:

    goto LABEL_51;
  }

  image = [(_SFPBHeroCardSection *)self image];
  if (!image)
  {

LABEL_54:
    imageAlign = self->_imageAlign;
    v56 = imageAlign == [equalCopy imageAlign];
    goto LABEL_52;
  }

  v52 = image;
  image2 = [(_SFPBHeroCardSection *)self image];
  image3 = [equalCopy image];
  v55 = [image2 isEqual:image3];

  if (v55)
  {
    goto LABEL_54;
  }

LABEL_51:
  v56 = 0;
LABEL_52:

  return v56;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBHeroCardSection *)self punchoutOptions];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHeroCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBHeroCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBHeroCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBHeroCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHeroCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBHeroCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBHeroCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_SFPBHeroCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  buttonItems = [(_SFPBHeroCardSection *)self buttonItems];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [buttonItems countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(buttonItems);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [buttonItems countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  image = [(_SFPBHeroCardSection *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBHeroCardSection *)self imageAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  v24 = *MEMORY[0x1E69E9840];
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