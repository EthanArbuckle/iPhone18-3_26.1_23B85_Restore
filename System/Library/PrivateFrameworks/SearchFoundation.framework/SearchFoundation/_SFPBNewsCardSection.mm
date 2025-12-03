@interface _SFPBNewsCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBNewsCardSection)initWithDictionary:(id)dictionary;
- (_SFPBNewsCardSection)initWithFacade:(id)facade;
- (_SFPBNewsCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBNewsCardSection

- (_SFPBNewsCardSection)initWithFacade:(id)facade
{
  v52 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBNewsCardSection *)self init];
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

    [(_SFPBNewsCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBNewsCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBNewsCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBNewsCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBNewsCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBNewsCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBNewsCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBNewsCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBNewsCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      v25 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:title2];
      [(_SFPBNewsCardSection *)v5 setTitle:v27];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      v29 = [_SFPBRichText alloc];
      subtitle2 = [facadeCopy subtitle];
      v31 = [(_SFPBRichText *)v29 initWithFacade:subtitle2];
      [(_SFPBNewsCardSection *)v5 setSubtitle:v31];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v33 = [_SFPBImage alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v35 = [(_SFPBImage *)v33 initWithFacade:thumbnail2];
      [(_SFPBNewsCardSection *)v5 setThumbnail:v35];
    }

    providerImage = [facadeCopy providerImage];

    if (providerImage)
    {
      v37 = [_SFPBImage alloc];
      providerImage2 = [facadeCopy providerImage];
      v39 = [(_SFPBImage *)v37 initWithFacade:providerImage2];
      [(_SFPBNewsCardSection *)v5 setProviderImage:v39];
    }

    providerTitle = [facadeCopy providerTitle];

    if (providerTitle)
    {
      v41 = [_SFPBRichText alloc];
      providerTitle2 = [facadeCopy providerTitle];
      v43 = [(_SFPBRichText *)v41 initWithFacade:providerTitle2];
      [(_SFPBNewsCardSection *)v5 setProviderTitle:v43];
    }

    if ([facadeCopy hasOverlayTextInImage])
    {
      -[_SFPBNewsCardSection setOverlayTextInImage:](v5, "setOverlayTextInImage:", [facadeCopy overlayTextInImage]);
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBNewsCardSection)initWithDictionary:(id)dictionary
{
  v53 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = _SFPBNewsCardSection;
  v5 = [(_SFPBNewsCardSection *)&v51 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v48;
        do
        {
          v11 = 0;
          do
          {
            if (*v48 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v47 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBNewsCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBNewsCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBNewsCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNewsCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNewsCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNewsCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v43 = v18;
    v46 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBNewsCardSection *)v5 setType:v22];
    }

    v40 = v21;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNewsCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v45 = v14;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBNewsCardSection *)v5 setBackgroundColor:v25];
    }

    v44 = v16;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRichText alloc] initWithDictionary:v26];
      [(_SFPBNewsCardSection *)v5 setTitle:v27];
    }

    v42 = v19;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRichText alloc] initWithDictionary:v28];
      [(_SFPBNewsCardSection *)v5 setSubtitle:v29];
    }

    v41 = v20;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBImage alloc] initWithDictionary:v30];
      [(_SFPBNewsCardSection *)v5 setThumbnail:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"providerImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBImage alloc] initWithDictionary:v32];
      [(_SFPBNewsCardSection *)v5 setProviderImage:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"providerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBRichText alloc] initWithDictionary:v34];
      [(_SFPBNewsCardSection *)v5 setProviderTitle:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"overlayTextInImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNewsCardSection setOverlayTextInImage:](v5, "setOverlayTextInImage:", [v36 BOOLValue]);
    }

    v37 = v5;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBNewsCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBNewsCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBNewsCardSection *)self dictionaryRepresentation];
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
  v49 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBNewsCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBNewsCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBNewsCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBNewsCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_overlayTextInImage)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBNewsCardSection overlayTextInImage](self, "overlayTextInImage")}];
    [dictionary setObject:v10 forKeyedSubscript:@"overlayTextInImage"];
  }

  if (self->_providerImage)
  {
    providerImage = [(_SFPBNewsCardSection *)self providerImage];
    dictionaryRepresentation2 = [providerImage dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"providerImage"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"providerImage"];
    }
  }

  if (self->_providerTitle)
  {
    providerTitle = [(_SFPBNewsCardSection *)self providerTitle];
    dictionaryRepresentation3 = [providerTitle dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"providerTitle"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"providerTitle"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = self->_punchoutOptions;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v45;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation4 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
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

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBNewsCardSection *)self punchoutPickerDismissText];
    v26 = [punchoutPickerDismissText copy];
    [dictionary setObject:v26 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBNewsCardSection *)self punchoutPickerTitle];
    v28 = [punchoutPickerTitle copy];
    [dictionary setObject:v28 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBNewsCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v30 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v30 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBNewsCardSection *)self subtitle];
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

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBNewsCardSection *)self thumbnail];
    dictionaryRepresentation6 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBNewsCardSection *)self title];
    dictionaryRepresentation7 = [title dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"title"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBNewsCardSection *)self type];
    v41 = [type copy];
    [dictionary setObject:v41 forKeyedSubscript:@"type"];
  }

  v42 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v21 = [(NSArray *)self->_punchoutOptions hash];
  v20 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  v19 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v17 = v5;
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
  v10 = [(_SFPBRichText *)self->_title hash];
  v11 = [(_SFPBRichText *)self->_subtitle hash];
  v12 = [(_SFPBImage *)self->_thumbnail hash];
  v13 = [(_SFPBImage *)self->_providerImage hash];
  v14 = [(_SFPBRichText *)self->_providerTitle hash];
  if (self->_overlayTextInImage)
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  punchoutOptions = [(_SFPBNewsCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutOptions3 = [(_SFPBNewsCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBNewsCardSection *)self punchoutOptions];
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

  punchoutOptions = [(_SFPBNewsCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutPickerTitle = [(_SFPBNewsCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBNewsCardSection *)self punchoutPickerTitle];
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

  punchoutOptions = [(_SFPBNewsCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutPickerDismissText = [(_SFPBNewsCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBNewsCardSection *)self punchoutPickerDismissText];
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

  punchoutOptions = [(_SFPBNewsCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  type = [(_SFPBNewsCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBNewsCardSection *)self type];
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

  punchoutOptions = [(_SFPBNewsCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  backgroundColor = [(_SFPBNewsCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBNewsCardSection *)self backgroundColor];
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

  punchoutOptions = [(_SFPBNewsCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  title = [(_SFPBNewsCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBNewsCardSection *)self title];
    title3 = [equalCopy title];
    v40 = [title2 isEqual:title3];

    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNewsCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  subtitle = [(_SFPBNewsCardSection *)self subtitle];
  if (subtitle)
  {
    v42 = subtitle;
    subtitle2 = [(_SFPBNewsCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v45 = [subtitle2 isEqual:subtitle3];

    if (!v45)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNewsCardSection *)self thumbnail];
  punchoutOptions2 = [equalCopy thumbnail];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  thumbnail = [(_SFPBNewsCardSection *)self thumbnail];
  if (thumbnail)
  {
    v47 = thumbnail;
    thumbnail2 = [(_SFPBNewsCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v50 = [thumbnail2 isEqual:thumbnail3];

    if (!v50)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNewsCardSection *)self providerImage];
  punchoutOptions2 = [equalCopy providerImage];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  providerImage = [(_SFPBNewsCardSection *)self providerImage];
  if (providerImage)
  {
    v52 = providerImage;
    providerImage2 = [(_SFPBNewsCardSection *)self providerImage];
    providerImage3 = [equalCopy providerImage];
    v55 = [providerImage2 isEqual:providerImage3];

    if (!v55)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNewsCardSection *)self providerTitle];
  punchoutOptions2 = [equalCopy providerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_55:

    goto LABEL_56;
  }

  providerTitle = [(_SFPBNewsCardSection *)self providerTitle];
  if (!providerTitle)
  {

LABEL_59:
    overlayTextInImage = self->_overlayTextInImage;
    v61 = overlayTextInImage == [equalCopy overlayTextInImage];
    goto LABEL_57;
  }

  v57 = providerTitle;
  providerTitle2 = [(_SFPBNewsCardSection *)self providerTitle];
  providerTitle3 = [equalCopy providerTitle];
  v60 = [providerTitle2 isEqual:providerTitle3];

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
  punchoutOptions = [(_SFPBNewsCardSection *)self punchoutOptions];
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

  punchoutPickerTitle = [(_SFPBNewsCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBNewsCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBNewsCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBNewsCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBNewsCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBNewsCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBNewsCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBNewsCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBNewsCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_SFPBNewsCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBNewsCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  providerImage = [(_SFPBNewsCardSection *)self providerImage];
  if (providerImage)
  {
    PBDataWriterWriteSubmessage();
  }

  providerTitle = [(_SFPBNewsCardSection *)self providerTitle];
  if (providerTitle)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBNewsCardSection *)self overlayTextInImage])
  {
    PBDataWriterWriteBOOLField();
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