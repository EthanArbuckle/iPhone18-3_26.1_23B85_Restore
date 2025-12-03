@interface _SFPBVerticalLayoutCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBVerticalLayoutCardSection)initWithDictionary:(id)dictionary;
- (_SFPBVerticalLayoutCardSection)initWithFacade:(id)facade;
- (_SFPBVerticalLayoutCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBVerticalLayoutCardSection

- (_SFPBVerticalLayoutCardSection)initWithFacade:(id)facade
{
  v48 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBVerticalLayoutCardSection *)self init];
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

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v10);
    }

    [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBVerticalLayoutCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBVerticalLayoutCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBVerticalLayoutCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBVerticalLayoutCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBVerticalLayoutCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBVerticalLayoutCardSection *)v5 setBackgroundColor:v23];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v25 = [_SFPBImage alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v27 = [(_SFPBImage *)v25 initWithFacade:thumbnail2];
      [(_SFPBVerticalLayoutCardSection *)v5 setThumbnail:v27];
    }

    title = [facadeCopy title];

    if (title)
    {
      v29 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v31 = [(_SFPBRichText *)v29 initWithFacade:title2];
      [(_SFPBVerticalLayoutCardSection *)v5 setTitle:v31];
    }

    footnote = [facadeCopy footnote];

    if (footnote)
    {
      v33 = [_SFPBRichText alloc];
      footnote2 = [facadeCopy footnote];
      v35 = [(_SFPBRichText *)v33 initWithFacade:footnote2];
      [(_SFPBVerticalLayoutCardSection *)v5 setFootnote:v35];
    }

    if ([facadeCopy hasContentsLeading])
    {
      -[_SFPBVerticalLayoutCardSection setContentsLeading:](v5, "setContentsLeading:", [facadeCopy contentsLeading]);
    }

    thumbnailOverlayText = [facadeCopy thumbnailOverlayText];

    if (thumbnailOverlayText)
    {
      v37 = [_SFPBRichText alloc];
      thumbnailOverlayText2 = [facadeCopy thumbnailOverlayText];
      v39 = [(_SFPBRichText *)v37 initWithFacade:thumbnailOverlayText2];
      [(_SFPBVerticalLayoutCardSection *)v5 setThumbnailOverlayText:v39];
    }

    if ([facadeCopy hasUseAppIconMetrics])
    {
      -[_SFPBVerticalLayoutCardSection setUseAppIconMetrics:](v5, "setUseAppIconMetrics:", [facadeCopy useAppIconMetrics]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBVerticalLayoutCardSection)initWithDictionary:(id)dictionary
{
  v53 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = _SFPBVerticalLayoutCardSection;
  v5 = [(_SFPBVerticalLayoutCardSection *)&v51 init];
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
              [(_SFPBVerticalLayoutCardSection *)v5 addPunchoutOptions:v13];
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
      [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v43 = v18;
    v46 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBVerticalLayoutCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v40 = v23;
    v45 = v14;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBVerticalLayoutCardSection *)v5 setBackgroundColor:v25];
    }

    v44 = v16;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBImage alloc] initWithDictionary:v26];
      [(_SFPBVerticalLayoutCardSection *)v5 setThumbnail:v27];
    }

    v42 = v19;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRichText alloc] initWithDictionary:v28];
      [(_SFPBVerticalLayoutCardSection *)v5 setTitle:v29];
    }

    v41 = v21;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRichText alloc] initWithDictionary:v30];
      [(_SFPBVerticalLayoutCardSection *)v5 setFootnote:v31];
    }

    v32 = v20;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"contentsLeading"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setContentsLeading:](v5, "setContentsLeading:", [v33 BOOLValue]);
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailOverlayText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBRichText alloc] initWithDictionary:v34];
      [(_SFPBVerticalLayoutCardSection *)v5 setThumbnailOverlayText:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"useAppIconMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setUseAppIconMetrics:](v5, "setUseAppIconMetrics:", [v36 BOOLValue]);
    }

    v37 = v5;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBVerticalLayoutCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBVerticalLayoutCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBVerticalLayoutCardSection *)self dictionaryRepresentation];
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
  v47 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_contentsLeading)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection contentsLeading](self, "contentsLeading")}];
    [dictionary setObject:v8 forKeyedSubscript:@"contentsLeading"];
  }

  if (self->_footnote)
  {
    footnote = [(_SFPBVerticalLayoutCardSection *)self footnote];
    dictionaryRepresentation2 = [footnote dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"footnote"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"footnote"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v13 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = self->_punchoutOptions;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v43;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation3 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
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

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
    v23 = [punchoutPickerDismissText copy];
    [dictionary setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
    v25 = [punchoutPickerTitle copy];
    [dictionary setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBVerticalLayoutCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v27 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v27 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
    dictionaryRepresentation4 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_thumbnailOverlayText)
  {
    thumbnailOverlayText = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
    dictionaryRepresentation5 = [thumbnailOverlayText dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"thumbnailOverlayText"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"thumbnailOverlayText"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBVerticalLayoutCardSection *)self title];
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
    type = [(_SFPBVerticalLayoutCardSection *)self type];
    v38 = [type copy];
    [dictionary setObject:v38 forKeyedSubscript:@"type"];
  }

  if (self->_useAppIconMetrics)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection useAppIconMetrics](self, "useAppIconMetrics")}];
    [dictionary setObject:v39 forKeyedSubscript:@"useAppIconMetrics"];
  }

  v40 = *MEMORY[0x1E69E9840];

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
  v10 = [(_SFPBImage *)self->_thumbnail hash];
  v11 = [(_SFPBRichText *)self->_title hash];
  v12 = [(_SFPBRichText *)self->_footnote hash];
  if (self->_contentsLeading)
  {
    v13 = 2654435761;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(_SFPBRichText *)self->_thumbnailOverlayText hash];
  if (self->_useAppIconMetrics)
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
    goto LABEL_52;
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  punchoutOptions3 = [(_SFPBVerticalLayoutCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBVerticalLayoutCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  punchoutPickerTitle = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  punchoutPickerDismissText = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_52;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_52;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_52;
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  type = [(_SFPBVerticalLayoutCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBVerticalLayoutCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_52;
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  backgroundColor = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
  punchoutOptions2 = [equalCopy thumbnail];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  thumbnail = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
  if (thumbnail)
  {
    v37 = thumbnail;
    thumbnail2 = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v40 = [thumbnail2 isEqual:thumbnail3];

    if (!v40)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  title = [(_SFPBVerticalLayoutCardSection *)self title];
  if (title)
  {
    v42 = title;
    title2 = [(_SFPBVerticalLayoutCardSection *)self title];
    title3 = [equalCopy title];
    v45 = [title2 isEqual:title3];

    if (!v45)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self footnote];
  punchoutOptions2 = [equalCopy footnote];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  footnote = [(_SFPBVerticalLayoutCardSection *)self footnote];
  if (footnote)
  {
    v47 = footnote;
    footnote2 = [(_SFPBVerticalLayoutCardSection *)self footnote];
    footnote3 = [equalCopy footnote];
    v50 = [footnote2 isEqual:footnote3];

    if (!v50)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  contentsLeading = self->_contentsLeading;
  if (contentsLeading != [equalCopy contentsLeading])
  {
    goto LABEL_52;
  }

  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
  punchoutOptions2 = [equalCopy thumbnailOverlayText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  thumbnailOverlayText = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
  if (!thumbnailOverlayText)
  {

LABEL_55:
    useAppIconMetrics = self->_useAppIconMetrics;
    v57 = useAppIconMetrics == [equalCopy useAppIconMetrics];
    goto LABEL_53;
  }

  v53 = thumbnailOverlayText;
  thumbnailOverlayText2 = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
  thumbnailOverlayText3 = [equalCopy thumbnailOverlayText];
  v56 = [thumbnailOverlayText2 isEqual:thumbnailOverlayText3];

  if (v56)
  {
    goto LABEL_55;
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBVerticalLayoutCardSection *)self punchoutOptions];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBVerticalLayoutCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBVerticalLayoutCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  footnote = [(_SFPBVerticalLayoutCardSection *)self footnote];
  if (footnote)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self contentsLeading])
  {
    PBDataWriterWriteBOOLField();
  }

  thumbnailOverlayText = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
  if (thumbnailOverlayText)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self useAppIconMetrics])
  {
    PBDataWriterWriteBOOLField();
  }

  v19 = *MEMORY[0x1E69E9840];
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