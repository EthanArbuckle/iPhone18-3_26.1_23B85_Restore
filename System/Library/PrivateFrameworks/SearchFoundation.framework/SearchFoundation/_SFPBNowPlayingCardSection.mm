@interface _SFPBNowPlayingCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBNowPlayingCardSection)initWithDictionary:(id)dictionary;
- (_SFPBNowPlayingCardSection)initWithFacade:(id)facade;
- (_SFPBNowPlayingCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMovies:(id)movies;
- (void)addPunchoutOptions:(id)options;
- (void)setMovies:(id)movies;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBNowPlayingCardSection

- (_SFPBNowPlayingCardSection)initWithFacade:(id)facade
{
  v49 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBNowPlayingCardSection *)self init];
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
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v48 count:16];
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

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v10);
    }

    [(_SFPBNowPlayingCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBNowPlayingCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBNowPlayingCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBNowPlayingCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBNowPlayingCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBNowPlayingCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBNowPlayingCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBNowPlayingCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBNowPlayingCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBNowPlayingCardSection *)v5 setTitle:title2];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [facadeCopy subtitle];
      [(_SFPBNowPlayingCardSection *)v5 setSubtitle:subtitle2];
    }

    movies = [facadeCopy movies];
    if (movies)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v29 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    movies2 = [facadeCopy movies];
    v31 = [movies2 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v40;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(movies2);
          }

          v35 = [[_SFPBMediaItem alloc] initWithFacade:*(*(&v39 + 1) + 8 * j)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [movies2 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v32);
    }

    [(_SFPBNowPlayingCardSection *)v5 setMovies:v29];
    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBNowPlayingCardSection)initWithDictionary:(id)dictionary
{
  v66 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v63.receiver = self;
  v63.super_class = _SFPBNowPlayingCardSection;
  v5 = [(_SFPBNowPlayingCardSection *)&v63 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v60;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v60 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v59 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBNowPlayingCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    v54 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBNowPlayingCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBNowPlayingCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v53 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNowPlayingCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v52 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNowPlayingCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v51 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNowPlayingCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v50 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBNowPlayingCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBNowPlayingCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v49 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBNowPlayingCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      v28 = v26;
      v29 = v23;
      v30 = v16;
      v31 = v27;
      [(_SFPBNowPlayingCardSection *)v5 setTitle:v27];

      v16 = v30;
      v23 = v29;
      v26 = v28;
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v48 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [v32 copy];
      [(_SFPBNowPlayingCardSection *)v5 setSubtitle:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"movies"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v23;
      v46 = v16;
      v47 = v6;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v35 = v34;
      v36 = [v35 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v56;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v56 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v55 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [[_SFPBMediaItem alloc] initWithDictionary:v40];
              [(_SFPBNowPlayingCardSection *)v5 addMovies:v41];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v55 objects:v64 count:16];
        }

        while (v37);
      }

      v16 = v46;
      v6 = v47;
      v23 = v45;
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBNowPlayingCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBNowPlayingCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBNowPlayingCardSection *)self dictionaryRepresentation];
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
  v50 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBNowPlayingCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBNowPlayingCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBNowPlayingCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBNowPlayingCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_movies count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = self->_movies;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"movies"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = self->_punchoutOptions;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBNowPlayingCardSection *)self punchoutPickerDismissText];
    v27 = [punchoutPickerDismissText copy];
    [dictionary setObject:v27 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBNowPlayingCardSection *)self punchoutPickerTitle];
    v29 = [punchoutPickerTitle copy];
    [dictionary setObject:v29 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBNowPlayingCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v31 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v31 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBNowPlayingCardSection *)self subtitle];
    v33 = [subtitle copy];
    [dictionary setObject:v33 forKeyedSubscript:@"subtitle"];
  }

  if (self->_title)
  {
    title = [(_SFPBNowPlayingCardSection *)self title];
    v35 = [title copy];
    [dictionary setObject:v35 forKeyedSubscript:@"title"];
  }

  if (self->_type)
  {
    type = [(_SFPBNowPlayingCardSection *)self type];
    v37 = [type copy];
    [dictionary setObject:v37 forKeyedSubscript:@"type"];
  }

  v38 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(NSString *)self->_title hash];
  v12 = v11 ^ [(NSString *)self->_subtitle hash];
  return v9 ^ v12 ^ [(NSArray *)self->_movies hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBNowPlayingCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutOptions3 = [(_SFPBNowPlayingCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBNowPlayingCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNowPlayingCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutPickerTitle = [(_SFPBNowPlayingCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBNowPlayingCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNowPlayingCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutPickerDismissText = [(_SFPBNowPlayingCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBNowPlayingCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_46;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_46;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBNowPlayingCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  type = [(_SFPBNowPlayingCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBNowPlayingCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBNowPlayingCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  backgroundColor = [(_SFPBNowPlayingCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBNowPlayingCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNowPlayingCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  title = [(_SFPBNowPlayingCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBNowPlayingCardSection *)self title];
    title3 = [equalCopy title];
    v40 = [title2 isEqual:title3];

    if (!v40)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNowPlayingCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  subtitle = [(_SFPBNowPlayingCardSection *)self subtitle];
  if (subtitle)
  {
    v42 = subtitle;
    subtitle2 = [(_SFPBNowPlayingCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v45 = [subtitle2 isEqual:subtitle3];

    if (!v45)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBNowPlayingCardSection *)self movies];
  punchoutOptions2 = [equalCopy movies];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  movies = [(_SFPBNowPlayingCardSection *)self movies];
  if (!movies)
  {

LABEL_49:
    v51 = 1;
    goto LABEL_47;
  }

  v47 = movies;
  movies2 = [(_SFPBNowPlayingCardSection *)self movies];
  movies3 = [equalCopy movies];
  v50 = [movies2 isEqual:movies3];

  if (v50)
  {
    goto LABEL_49;
  }

LABEL_46:
  v51 = 0;
LABEL_47:

  return v51;
}

- (void)writeTo:(id)to
{
  v34 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBNowPlayingCardSection *)self punchoutOptions];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBNowPlayingCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBNowPlayingCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBNowPlayingCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBNowPlayingCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBNowPlayingCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBNowPlayingCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBNowPlayingCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBNowPlayingCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBNowPlayingCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  subtitle = [(_SFPBNowPlayingCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteStringField();
  }

  movies = [(_SFPBNowPlayingCardSection *)self movies];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [movies countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(movies);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [movies countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addMovies:(id)movies
{
  moviesCopy = movies;
  movies = self->_movies;
  v8 = moviesCopy;
  if (!movies)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_movies;
    self->_movies = array;

    moviesCopy = v8;
    movies = self->_movies;
  }

  [(NSArray *)movies addObject:moviesCopy];
}

- (void)setMovies:(id)movies
{
  v4 = [movies copy];
  movies = self->_movies;
  self->_movies = v4;

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