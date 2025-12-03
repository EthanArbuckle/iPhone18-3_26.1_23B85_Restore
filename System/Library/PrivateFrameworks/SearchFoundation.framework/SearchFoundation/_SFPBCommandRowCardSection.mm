@interface _SFPBCommandRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCommandRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBCommandRowCardSection)initWithFacade:(id)facade;
- (_SFPBCommandRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCommandRowCardSection

- (_SFPBCommandRowCardSection)initWithFacade:(id)facade
{
  v52 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBCommandRowCardSection *)self init];
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

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v10);
    }

    [(_SFPBCommandRowCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBCommandRowCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBCommandRowCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBCommandRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBCommandRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBCommandRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBCommandRowCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBCommandRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBCommandRowCardSection *)v5 setBackgroundColor:v23];
    }

    image = [facadeCopy image];

    if (image)
    {
      v25 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v27 = [(_SFPBImage *)v25 initWithFacade:image2];
      [(_SFPBCommandRowCardSection *)v5 setImage:v27];
    }

    toggledImage = [facadeCopy toggledImage];

    if (toggledImage)
    {
      v29 = [_SFPBImage alloc];
      toggledImage2 = [facadeCopy toggledImage];
      v31 = [(_SFPBImage *)v29 initWithFacade:toggledImage2];
      [(_SFPBCommandRowCardSection *)v5 setToggledImage:v31];
    }

    title = [facadeCopy title];

    if (title)
    {
      v33 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v35 = [(_SFPBRichText *)v33 initWithFacade:title2];
      [(_SFPBCommandRowCardSection *)v5 setTitle:v35];
    }

    toggledTitle = [facadeCopy toggledTitle];

    if (toggledTitle)
    {
      v37 = [_SFPBRichText alloc];
      toggledTitle2 = [facadeCopy toggledTitle];
      v39 = [(_SFPBRichText *)v37 initWithFacade:toggledTitle2];
      [(_SFPBCommandRowCardSection *)v5 setToggledTitle:v39];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      v41 = [_SFPBRichText alloc];
      subtitle2 = [facadeCopy subtitle];
      v43 = [(_SFPBRichText *)v41 initWithFacade:subtitle2];
      [(_SFPBCommandRowCardSection *)v5 setSubtitle:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCommandRowCardSection)initWithDictionary:(id)dictionary
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = _SFPBCommandRowCardSection;
  v5 = [(_SFPBCommandRowCardSection *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v47;
        do
        {
          v11 = 0;
          do
          {
            if (*v47 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v46 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBCommandRowCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBCommandRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v44 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBCommandRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v43 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v42 = v18;
    v45 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBCommandRowCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v39 = v23;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBCommandRowCardSection *)v5 setBackgroundColor:v25];
    }

    v41 = v19;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBImage alloc] initWithDictionary:v26];
      [(_SFPBCommandRowCardSection *)v5 setImage:v27];
    }

    v40 = v20;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"toggledImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBImage alloc] initWithDictionary:v28];
      [(_SFPBCommandRowCardSection *)v5 setToggledImage:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRichText alloc] initWithDictionary:v30];
      [(_SFPBCommandRowCardSection *)v5 setTitle:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"toggledTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRichText alloc] initWithDictionary:v32];
      [(_SFPBCommandRowCardSection *)v5 setToggledTitle:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBRichText alloc] initWithDictionary:v34];
      [(_SFPBCommandRowCardSection *)v5 setSubtitle:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCommandRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCommandRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCommandRowCardSection *)self dictionaryRepresentation];
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
  v48 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBCommandRowCardSection *)self backgroundColor];
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

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCommandRowCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCommandRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCommandRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    image = [(_SFPBCommandRowCardSection *)self image];
    dictionaryRepresentation2 = [image dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"image"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"image"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = self->_punchoutOptions;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
    v22 = [punchoutPickerDismissText copy];
    [dictionary setObject:v22 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
    v24 = [punchoutPickerTitle copy];
    [dictionary setObject:v24 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBCommandRowCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v26 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v26 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBCommandRowCardSection *)self subtitle];
    dictionaryRepresentation4 = [subtitle dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBCommandRowCardSection *)self title];
    dictionaryRepresentation5 = [title dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"title"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"title"];
    }
  }

  if (self->_toggledImage)
  {
    toggledImage = [(_SFPBCommandRowCardSection *)self toggledImage];
    dictionaryRepresentation6 = [toggledImage dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"toggledImage"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"toggledImage"];
    }
  }

  if (self->_toggledTitle)
  {
    toggledTitle = [(_SFPBCommandRowCardSection *)self toggledTitle];
    dictionaryRepresentation7 = [toggledTitle dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"toggledTitle"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"toggledTitle"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBCommandRowCardSection *)self type];
    v40 = [type copy];
    [dictionary setObject:v40 forKeyedSubscript:@"type"];
  }

  v41 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_punchoutOptions hash];
  v4 = [(NSString *)self->_punchoutPickerTitle hash];
  v5 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasTopPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_type hash]^ (2654435761 * self->_separatorStyle);
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = v10 ^ [(_SFPBImage *)self->_image hash];
  v12 = v11 ^ [(_SFPBImage *)self->_toggledImage hash];
  v13 = v12 ^ [(_SFPBRichText *)self->_title hash];
  v14 = v13 ^ [(_SFPBRichText *)self->_toggledTitle hash];
  return v9 ^ v14 ^ [(_SFPBRichText *)self->_subtitle hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutOptions3 = [(_SFPBCommandRowCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBCommandRowCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutPickerTitle = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutPickerDismissText = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_56;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_56;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_56;
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  type = [(_SFPBCommandRowCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBCommandRowCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_56;
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  backgroundColor = [(_SFPBCommandRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBCommandRowCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self image];
  punchoutOptions2 = [equalCopy image];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  image = [(_SFPBCommandRowCardSection *)self image];
  if (image)
  {
    v37 = image;
    image2 = [(_SFPBCommandRowCardSection *)self image];
    image3 = [equalCopy image];
    v40 = [image2 isEqual:image3];

    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self toggledImage];
  punchoutOptions2 = [equalCopy toggledImage];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  toggledImage = [(_SFPBCommandRowCardSection *)self toggledImage];
  if (toggledImage)
  {
    v42 = toggledImage;
    toggledImage2 = [(_SFPBCommandRowCardSection *)self toggledImage];
    toggledImage3 = [equalCopy toggledImage];
    v45 = [toggledImage2 isEqual:toggledImage3];

    if (!v45)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  title = [(_SFPBCommandRowCardSection *)self title];
  if (title)
  {
    v47 = title;
    title2 = [(_SFPBCommandRowCardSection *)self title];
    title3 = [equalCopy title];
    v50 = [title2 isEqual:title3];

    if (!v50)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self toggledTitle];
  punchoutOptions2 = [equalCopy toggledTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  toggledTitle = [(_SFPBCommandRowCardSection *)self toggledTitle];
  if (toggledTitle)
  {
    v52 = toggledTitle;
    toggledTitle2 = [(_SFPBCommandRowCardSection *)self toggledTitle];
    toggledTitle3 = [equalCopy toggledTitle];
    v55 = [toggledTitle2 isEqual:toggledTitle3];

    if (!v55)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCommandRowCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_55:

    goto LABEL_56;
  }

  subtitle = [(_SFPBCommandRowCardSection *)self subtitle];
  if (!subtitle)
  {

LABEL_59:
    v61 = 1;
    goto LABEL_57;
  }

  v57 = subtitle;
  subtitle2 = [(_SFPBCommandRowCardSection *)self subtitle];
  subtitle3 = [equalCopy subtitle];
  v60 = [subtitle2 isEqual:subtitle3];

  if (v60)
  {
    goto LABEL_59;
  }

LABEL_56:
  v61 = 0;
LABEL_57:

  return v61;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBCommandRowCardSection *)self punchoutOptions];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCommandRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCommandRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCommandRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBCommandRowCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCommandRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBCommandRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  image = [(_SFPBCommandRowCardSection *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  toggledImage = [(_SFPBCommandRowCardSection *)self toggledImage];
  if (toggledImage)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBCommandRowCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  toggledTitle = [(_SFPBCommandRowCardSection *)self toggledTitle];
  if (toggledTitle)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_SFPBCommandRowCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = *MEMORY[0x1E69E9840];
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