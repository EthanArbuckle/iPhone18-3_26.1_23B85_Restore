@interface _SFPBMediaRemoteControlCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMediaRemoteControlCardSection)initWithDictionary:(id)dictionary;
- (_SFPBMediaRemoteControlCardSection)initWithFacade:(id)facade;
- (_SFPBMediaRemoteControlCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setPlaybackBundleIdentifier:(id)identifier;
- (void)setPlaybackRouteUniqueIdentifier:(id)identifier;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMediaRemoteControlCardSection

- (_SFPBMediaRemoteControlCardSection)initWithFacade:(id)facade
{
  v36 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBMediaRemoteControlCardSection *)self init];
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

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v31 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBMediaRemoteControlCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBMediaRemoteControlCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBMediaRemoteControlCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBMediaRemoteControlCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBMediaRemoteControlCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBMediaRemoteControlCardSection *)v5 setBackgroundColor:v23];
    }

    playbackRouteUniqueIdentifier = [facadeCopy playbackRouteUniqueIdentifier];

    if (playbackRouteUniqueIdentifier)
    {
      playbackRouteUniqueIdentifier2 = [facadeCopy playbackRouteUniqueIdentifier];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPlaybackRouteUniqueIdentifier:playbackRouteUniqueIdentifier2];
    }

    if ([facadeCopy hasPlaybackRouteUniqueIdentifierIsEncrypted])
    {
      -[_SFPBMediaRemoteControlCardSection setPlaybackRouteUniqueIdentifierIsEncrypted:](v5, "setPlaybackRouteUniqueIdentifierIsEncrypted:", [facadeCopy playbackRouteUniqueIdentifierIsEncrypted]);
    }

    playbackBundleIdentifier = [facadeCopy playbackBundleIdentifier];

    if (playbackBundleIdentifier)
    {
      playbackBundleIdentifier2 = [facadeCopy playbackBundleIdentifier];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPlaybackBundleIdentifier:playbackBundleIdentifier2];
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaRemoteControlCardSection)initWithDictionary:(id)dictionary
{
  v45 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = _SFPBMediaRemoteControlCardSection;
  v5 = [(_SFPBMediaRemoteControlCardSection *)&v43 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v40;
        do
        {
          v11 = 0;
          do
          {
            if (*v40 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v39 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBMediaRemoteControlCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v34 = v19;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v35 = v18;
    v38 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setType:v22];
    }

    v37 = v14;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v36 = v16;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMediaRemoteControlCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"playbackRouteUniqueIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPlaybackRouteUniqueIdentifier:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"playbackRouteUniqueIdentifierIsEncrypted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setPlaybackRouteUniqueIdentifierIsEncrypted:](v5, "setPlaybackRouteUniqueIdentifierIsEncrypted:", [v28 BOOLValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"playbackBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPlaybackBundleIdentifier:v30];
    }

    v31 = v5;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaRemoteControlCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMediaRemoteControlCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMediaRemoteControlCardSection *)self dictionaryRepresentation];
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
  v38 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaRemoteControlCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaRemoteControlCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaRemoteControlCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_playbackBundleIdentifier)
  {
    playbackBundleIdentifier = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
    v11 = [playbackBundleIdentifier copy];
    [dictionary setObject:v11 forKeyedSubscript:@"playbackBundleIdentifier"];
  }

  if (self->_playbackRouteUniqueIdentifier)
  {
    playbackRouteUniqueIdentifier = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
    v13 = [playbackRouteUniqueIdentifier copy];
    [dictionary setObject:v13 forKeyedSubscript:@"playbackRouteUniqueIdentifier"];
  }

  if (self->_playbackRouteUniqueIdentifierIsEncrypted)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaRemoteControlCardSection playbackRouteUniqueIdentifierIsEncrypted](self, "playbackRouteUniqueIdentifierIsEncrypted")}];
    [dictionary setObject:v14 forKeyedSubscript:@"playbackRouteUniqueIdentifierIsEncrypted"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = self->_punchoutOptions;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation2 = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
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

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
    v24 = [punchoutPickerDismissText copy];
    [dictionary setObject:v24 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
    v26 = [punchoutPickerTitle copy];
    [dictionary setObject:v26 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBMediaRemoteControlCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v28 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v28 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    type = [(_SFPBMediaRemoteControlCardSection *)self type];
    v30 = [type copy];
    [dictionary setObject:v30 forKeyedSubscript:@"type"];
  }

  v31 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v14 = [(NSArray *)self->_punchoutOptions hash];
  v3 = [(NSString *)self->_punchoutPickerTitle hash];
  v4 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasTopPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_type hash];
  v9 = 2654435761 * self->_separatorStyle;
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = [(NSString *)self->_playbackRouteUniqueIdentifier hash];
  if (self->_playbackRouteUniqueIdentifierIsEncrypted)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSString *)self->_playbackBundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  punchoutOptions = [(_SFPBMediaRemoteControlCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  punchoutOptions3 = [(_SFPBMediaRemoteControlCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBMediaRemoteControlCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  punchoutPickerTitle = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  punchoutPickerDismissText = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_42;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_42;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_42;
  }

  punchoutOptions = [(_SFPBMediaRemoteControlCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  type = [(_SFPBMediaRemoteControlCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBMediaRemoteControlCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_42;
  }

  punchoutOptions = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  backgroundColor = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
  punchoutOptions2 = [equalCopy playbackRouteUniqueIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  playbackRouteUniqueIdentifier = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
  if (playbackRouteUniqueIdentifier)
  {
    v37 = playbackRouteUniqueIdentifier;
    playbackRouteUniqueIdentifier2 = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
    playbackRouteUniqueIdentifier3 = [equalCopy playbackRouteUniqueIdentifier];
    v40 = [playbackRouteUniqueIdentifier2 isEqual:playbackRouteUniqueIdentifier3];

    if (!v40)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  playbackRouteUniqueIdentifierIsEncrypted = self->_playbackRouteUniqueIdentifierIsEncrypted;
  if (playbackRouteUniqueIdentifierIsEncrypted != [equalCopy playbackRouteUniqueIdentifierIsEncrypted])
  {
    goto LABEL_42;
  }

  punchoutOptions = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  punchoutOptions2 = [equalCopy playbackBundleIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_41:

    goto LABEL_42;
  }

  playbackBundleIdentifier = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  if (!playbackBundleIdentifier)
  {

LABEL_45:
    v47 = 1;
    goto LABEL_43;
  }

  v43 = playbackBundleIdentifier;
  playbackBundleIdentifier2 = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  playbackBundleIdentifier3 = [equalCopy playbackBundleIdentifier];
  v46 = [playbackBundleIdentifier2 isEqual:playbackBundleIdentifier3];

  if (v46)
  {
    goto LABEL_45;
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBMediaRemoteControlCardSection *)self punchoutOptions];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBMediaRemoteControlCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  playbackRouteUniqueIdentifier = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
  if (playbackRouteUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifierIsEncrypted])
  {
    PBDataWriterWriteBOOLField();
  }

  playbackBundleIdentifier = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  if (playbackBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setPlaybackBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  playbackBundleIdentifier = self->_playbackBundleIdentifier;
  self->_playbackBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPlaybackRouteUniqueIdentifier:(id)identifier
{
  v4 = [identifier copy];
  playbackRouteUniqueIdentifier = self->_playbackRouteUniqueIdentifier;
  self->_playbackRouteUniqueIdentifier = v4;

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