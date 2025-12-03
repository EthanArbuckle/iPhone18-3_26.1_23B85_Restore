@interface _SFPBMetaInfoCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMetaInfoCardSection)initWithDictionary:(id)dictionary;
- (_SFPBMetaInfoCardSection)initWithFacade:(id)facade;
- (_SFPBMetaInfoCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMetaInfoCardSection

- (_SFPBMetaInfoCardSection)initWithFacade:(id)facade
{
  v44 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBMetaInfoCardSection *)self init];
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

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v39 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v10);
    }

    [(_SFPBMetaInfoCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBMetaInfoCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBMetaInfoCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBMetaInfoCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBMetaInfoCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBMetaInfoCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBMetaInfoCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBMetaInfoCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBMetaInfoCardSection *)v5 setBackgroundColor:v23];
    }

    if ([facadeCopy hasTrending])
    {
      -[_SFPBMetaInfoCardSection setTrending:](v5, "setTrending:", [facadeCopy trending]);
    }

    contentURL = [facadeCopy contentURL];

    if (contentURL)
    {
      v25 = [_SFPBURL alloc];
      contentURL2 = [facadeCopy contentURL];
      v27 = [(_SFPBURL *)v25 initWithNSURL:contentURL2];
      [(_SFPBMetaInfoCardSection *)v5 setContentURL:v27];
    }

    hostPageURL = [facadeCopy hostPageURL];

    if (hostPageURL)
    {
      v29 = [_SFPBURL alloc];
      hostPageURL2 = [facadeCopy hostPageURL];
      v31 = [(_SFPBURL *)v29 initWithNSURL:hostPageURL2];
      [(_SFPBMetaInfoCardSection *)v5 setHostPageURL:v31];
    }

    badge = [facadeCopy badge];

    if (badge)
    {
      v33 = [_SFPBImage alloc];
      badge2 = [facadeCopy badge];
      v35 = [(_SFPBImage *)v33 initWithFacade:badge2];
      [(_SFPBMetaInfoCardSection *)v5 setBadge:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMetaInfoCardSection)initWithDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = _SFPBMetaInfoCardSection;
  v5 = [(_SFPBMetaInfoCardSection *)&v46 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v43;
        do
        {
          v11 = 0;
          do
          {
            if (*v43 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v42 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBMetaInfoCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMetaInfoCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v40 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMetaInfoCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v39 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v38 = v18;
    v41 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMetaInfoCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMetaInfoCardSection *)v5 setBackgroundColor:v25];
    }

    v37 = v19;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"trending"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setTrending:](v5, "setTrending:", [v26 BOOLValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:{@"contentURL", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBURL alloc] initWithDictionary:v27];
      [(_SFPBMetaInfoCardSection *)v5 setContentURL:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"hostPageURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBURL alloc] initWithDictionary:v29];
      [(_SFPBMetaInfoCardSection *)v5 setHostPageURL:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"badge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBImage alloc] initWithDictionary:v31];
      [(_SFPBMetaInfoCardSection *)v5 setBadge:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMetaInfoCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMetaInfoCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMetaInfoCardSection *)self dictionaryRepresentation];
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
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBMetaInfoCardSection *)self backgroundColor];
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

  if (self->_badge)
  {
    badge = [(_SFPBMetaInfoCardSection *)self badge];
    dictionaryRepresentation2 = [badge dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"badge"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"badge"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMetaInfoCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_contentURL)
  {
    contentURL = [(_SFPBMetaInfoCardSection *)self contentURL];
    dictionaryRepresentation3 = [contentURL dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"contentURL"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"contentURL"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMetaInfoCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v14 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMetaInfoCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v15 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_hostPageURL)
  {
    hostPageURL = [(_SFPBMetaInfoCardSection *)self hostPageURL];
    dictionaryRepresentation4 = [hostPageURL dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"hostPageURL"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"hostPageURL"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = self->_punchoutOptions;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation5 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null5];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
    v28 = [punchoutPickerDismissText copy];
    [dictionary setObject:v28 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
    v30 = [punchoutPickerTitle copy];
    [dictionary setObject:v30 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBMetaInfoCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v32 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v32 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_trending)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMetaInfoCardSection trending](self, "trending")}];
    [dictionary setObject:v33 forKeyedSubscript:@"trending"];
  }

  if (self->_type)
  {
    type = [(_SFPBMetaInfoCardSection *)self type];
    v35 = [type copy];
    [dictionary setObject:v35 forKeyedSubscript:@"type"];
  }

  v36 = *MEMORY[0x1E69E9840];

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

  v9 = [(NSString *)self->_type hash];
  v10 = 2654435761 * self->_separatorStyle;
  v11 = [(_SFPBColor *)self->_backgroundColor hash];
  if (self->_trending)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  v13 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v14 = v11 ^ v12 ^ [(_SFPBURL *)self->_contentURL hash];
  v15 = v14 ^ [(_SFPBURL *)self->_hostPageURL hash];
  return v13 ^ v15 ^ [(_SFPBImage *)self->_badge hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  punchoutOptions = [(_SFPBMetaInfoCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_46;
  }

  punchoutOptions3 = [(_SFPBMetaInfoCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBMetaInfoCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_46;
  }

  punchoutPickerTitle = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_46;
  }

  punchoutPickerDismissText = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_47;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_47;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_47;
  }

  punchoutOptions = [(_SFPBMetaInfoCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_46;
  }

  type = [(_SFPBMetaInfoCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBMetaInfoCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_47;
  }

  punchoutOptions = [(_SFPBMetaInfoCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_46;
  }

  backgroundColor = [(_SFPBMetaInfoCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBMetaInfoCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  trending = self->_trending;
  if (trending != [equalCopy trending])
  {
    goto LABEL_47;
  }

  punchoutOptions = [(_SFPBMetaInfoCardSection *)self contentURL];
  punchoutOptions2 = [equalCopy contentURL];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_46;
  }

  contentURL = [(_SFPBMetaInfoCardSection *)self contentURL];
  if (contentURL)
  {
    v38 = contentURL;
    contentURL2 = [(_SFPBMetaInfoCardSection *)self contentURL];
    contentURL3 = [equalCopy contentURL];
    v41 = [contentURL2 isEqual:contentURL3];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMetaInfoCardSection *)self hostPageURL];
  punchoutOptions2 = [equalCopy hostPageURL];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_46;
  }

  hostPageURL = [(_SFPBMetaInfoCardSection *)self hostPageURL];
  if (hostPageURL)
  {
    v43 = hostPageURL;
    hostPageURL2 = [(_SFPBMetaInfoCardSection *)self hostPageURL];
    hostPageURL3 = [equalCopy hostPageURL];
    v46 = [hostPageURL2 isEqual:hostPageURL3];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMetaInfoCardSection *)self badge];
  punchoutOptions2 = [equalCopy badge];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_46:

    goto LABEL_47;
  }

  badge = [(_SFPBMetaInfoCardSection *)self badge];
  if (!badge)
  {

LABEL_50:
    v52 = 1;
    goto LABEL_48;
  }

  v48 = badge;
  badge2 = [(_SFPBMetaInfoCardSection *)self badge];
  badge3 = [equalCopy badge];
  v51 = [badge2 isEqual:badge3];

  if (v51)
  {
    goto LABEL_50;
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBMetaInfoCardSection *)self punchoutOptions];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMetaInfoCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMetaInfoCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMetaInfoCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBMetaInfoCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMetaInfoCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBMetaInfoCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBMetaInfoCardSection *)self trending])
  {
    PBDataWriterWriteBOOLField();
  }

  contentURL = [(_SFPBMetaInfoCardSection *)self contentURL];
  if (contentURL)
  {
    PBDataWriterWriteSubmessage();
  }

  hostPageURL = [(_SFPBMetaInfoCardSection *)self hostPageURL];
  if (hostPageURL)
  {
    PBDataWriterWriteSubmessage();
  }

  badge = [(_SFPBMetaInfoCardSection *)self badge];
  if (badge)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = *MEMORY[0x1E69E9840];
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