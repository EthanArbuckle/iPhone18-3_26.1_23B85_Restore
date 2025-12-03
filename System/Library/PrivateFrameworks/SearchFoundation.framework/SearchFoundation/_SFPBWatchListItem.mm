@interface _SFPBWatchListItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBWatchListItem)initWithDictionary:(id)dictionary;
- (_SFPBWatchListItem)initWithFacade:(id)facade;
- (_SFPBWatchListItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAddToUpNextText:(id)text;
- (void)setAddedToUpNextText:(id)text;
- (void)setContinueInTextFormat:(id)format;
- (void)setInUpNextText:(id)text;
- (void)setInstallButtonTitle:(id)title;
- (void)setOpenButtonTitle:(id)title;
- (void)setPurchaseOfferTextFormat:(id)format;
- (void)setSeasonEpisodeTextFormat:(id)format;
- (void)setWatchListIdentifier:(id)identifier;
- (void)setWatchLiveTextFormat:(id)format;
- (void)writeTo:(id)to;
@end

@implementation _SFPBWatchListItem

- (_SFPBWatchListItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBWatchListItem *)self init];
  if (v5)
  {
    watchListIdentifier = [facadeCopy watchListIdentifier];

    if (watchListIdentifier)
    {
      watchListIdentifier2 = [facadeCopy watchListIdentifier];
      [(_SFPBWatchListItem *)v5 setWatchListIdentifier:watchListIdentifier2];
    }

    seasonEpisodeTextFormat = [facadeCopy seasonEpisodeTextFormat];

    if (seasonEpisodeTextFormat)
    {
      seasonEpisodeTextFormat2 = [facadeCopy seasonEpisodeTextFormat];
      [(_SFPBWatchListItem *)v5 setSeasonEpisodeTextFormat:seasonEpisodeTextFormat2];
    }

    continueInTextFormat = [facadeCopy continueInTextFormat];

    if (continueInTextFormat)
    {
      continueInTextFormat2 = [facadeCopy continueInTextFormat];
      [(_SFPBWatchListItem *)v5 setContinueInTextFormat:continueInTextFormat2];
    }

    openButtonTitle = [facadeCopy openButtonTitle];

    if (openButtonTitle)
    {
      openButtonTitle2 = [facadeCopy openButtonTitle];
      [(_SFPBWatchListItem *)v5 setOpenButtonTitle:openButtonTitle2];
    }

    installButtonTitle = [facadeCopy installButtonTitle];

    if (installButtonTitle)
    {
      installButtonTitle2 = [facadeCopy installButtonTitle];
      [(_SFPBWatchListItem *)v5 setInstallButtonTitle:installButtonTitle2];
    }

    purchaseOfferTextFormat = [facadeCopy purchaseOfferTextFormat];

    if (purchaseOfferTextFormat)
    {
      purchaseOfferTextFormat2 = [facadeCopy purchaseOfferTextFormat];
      [(_SFPBWatchListItem *)v5 setPurchaseOfferTextFormat:purchaseOfferTextFormat2];
    }

    inUpNextText = [facadeCopy inUpNextText];

    if (inUpNextText)
    {
      inUpNextText2 = [facadeCopy inUpNextText];
      [(_SFPBWatchListItem *)v5 setInUpNextText:inUpNextText2];
    }

    addToUpNextText = [facadeCopy addToUpNextText];

    if (addToUpNextText)
    {
      addToUpNextText2 = [facadeCopy addToUpNextText];
      [(_SFPBWatchListItem *)v5 setAddToUpNextText:addToUpNextText2];
    }

    addedToUpNextText = [facadeCopy addedToUpNextText];

    if (addedToUpNextText)
    {
      addedToUpNextText2 = [facadeCopy addedToUpNextText];
      [(_SFPBWatchListItem *)v5 setAddedToUpNextText:addedToUpNextText2];
    }

    watchLiveTextFormat = [facadeCopy watchLiveTextFormat];

    if (watchLiveTextFormat)
    {
      watchLiveTextFormat2 = [facadeCopy watchLiveTextFormat];
      [(_SFPBWatchListItem *)v5 setWatchLiveTextFormat:watchLiveTextFormat2];
    }

    if ([facadeCopy hasIsMediaContainer])
    {
      -[_SFPBWatchListItem setIsMediaContainer:](v5, "setIsMediaContainer:", [facadeCopy isMediaContainer]);
    }

    if ([facadeCopy hasType])
    {
      -[_SFPBWatchListItem setType:](v5, "setType:", [facadeCopy type]);
    }

    v26 = v5;
  }

  return v5;
}

- (_SFPBWatchListItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = _SFPBWatchListItem;
  v5 = [(_SFPBWatchListItem *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"watchListIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBWatchListItem *)v5 setWatchListIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"seasonEpisodeTextFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBWatchListItem *)v5 setSeasonEpisodeTextFormat:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"continueInTextFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBWatchListItem *)v5 setContinueInTextFormat:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"openButtonTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBWatchListItem *)v5 setOpenButtonTitle:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"installButtonTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBWatchListItem *)v5 setInstallButtonTitle:v15];
    }

    v32 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"purchaseOfferTextFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBWatchListItem *)v5 setPurchaseOfferTextFormat:v17];
    }

    v31 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"inUpNextText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(_SFPBWatchListItem *)v5 setInUpNextText:v19];
    }

    v34 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"addToUpNextText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(_SFPBWatchListItem *)v5 setAddToUpNextText:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"addedToUpNextText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBWatchListItem *)v5 setAddedToUpNextText:v23];
    }

    v33 = v12;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"watchLiveTextFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBWatchListItem *)v5 setWatchLiveTextFormat:v25];
    }

    v26 = v8;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"isMediaContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBWatchListItem setIsMediaContainer:](v5, "setIsMediaContainer:", [v27 BOOLValue]);
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBWatchListItem setType:](v5, "setType:", [v28 intValue]);
    }

    v29 = v5;
  }

  return v5;
}

- (_SFPBWatchListItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBWatchListItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBWatchListItem *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_addToUpNextText)
  {
    addToUpNextText = [(_SFPBWatchListItem *)self addToUpNextText];
    v5 = [addToUpNextText copy];
    [dictionary setObject:v5 forKeyedSubscript:@"addToUpNextText"];
  }

  if (self->_addedToUpNextText)
  {
    addedToUpNextText = [(_SFPBWatchListItem *)self addedToUpNextText];
    v7 = [addedToUpNextText copy];
    [dictionary setObject:v7 forKeyedSubscript:@"addedToUpNextText"];
  }

  if (self->_continueInTextFormat)
  {
    continueInTextFormat = [(_SFPBWatchListItem *)self continueInTextFormat];
    v9 = [continueInTextFormat copy];
    [dictionary setObject:v9 forKeyedSubscript:@"continueInTextFormat"];
  }

  if (self->_inUpNextText)
  {
    inUpNextText = [(_SFPBWatchListItem *)self inUpNextText];
    v11 = [inUpNextText copy];
    [dictionary setObject:v11 forKeyedSubscript:@"inUpNextText"];
  }

  if (self->_installButtonTitle)
  {
    installButtonTitle = [(_SFPBWatchListItem *)self installButtonTitle];
    v13 = [installButtonTitle copy];
    [dictionary setObject:v13 forKeyedSubscript:@"installButtonTitle"];
  }

  if (self->_isMediaContainer)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBWatchListItem isMediaContainer](self, "isMediaContainer")}];
    [dictionary setObject:v14 forKeyedSubscript:@"isMediaContainer"];
  }

  if (self->_openButtonTitle)
  {
    openButtonTitle = [(_SFPBWatchListItem *)self openButtonTitle];
    v16 = [openButtonTitle copy];
    [dictionary setObject:v16 forKeyedSubscript:@"openButtonTitle"];
  }

  if (self->_purchaseOfferTextFormat)
  {
    purchaseOfferTextFormat = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
    v18 = [purchaseOfferTextFormat copy];
    [dictionary setObject:v18 forKeyedSubscript:@"purchaseOfferTextFormat"];
  }

  if (self->_seasonEpisodeTextFormat)
  {
    seasonEpisodeTextFormat = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
    v20 = [seasonEpisodeTextFormat copy];
    [dictionary setObject:v20 forKeyedSubscript:@"seasonEpisodeTextFormat"];
  }

  if (self->_type)
  {
    type = [(_SFPBWatchListItem *)self type];
    if (type >= 6)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v22 = off_1E7ACE580[type];
    }

    [dictionary setObject:v22 forKeyedSubscript:@"type"];
  }

  if (self->_watchListIdentifier)
  {
    watchListIdentifier = [(_SFPBWatchListItem *)self watchListIdentifier];
    v24 = [watchListIdentifier copy];
    [dictionary setObject:v24 forKeyedSubscript:@"watchListIdentifier"];
  }

  if (self->_watchLiveTextFormat)
  {
    watchLiveTextFormat = [(_SFPBWatchListItem *)self watchLiveTextFormat];
    v26 = [watchLiveTextFormat copy];
    [dictionary setObject:v26 forKeyedSubscript:@"watchLiveTextFormat"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_watchListIdentifier hash];
  v4 = [(NSString *)self->_seasonEpisodeTextFormat hash];
  v5 = [(NSString *)self->_continueInTextFormat hash];
  v6 = [(NSString *)self->_openButtonTitle hash];
  v7 = [(NSString *)self->_installButtonTitle hash];
  v8 = [(NSString *)self->_purchaseOfferTextFormat hash];
  v9 = [(NSString *)self->_inUpNextText hash];
  v10 = [(NSString *)self->_addToUpNextText hash];
  v11 = [(NSString *)self->_addedToUpNextText hash];
  v12 = [(NSString *)self->_watchLiveTextFormat hash];
  if (self->_isMediaContainer)
  {
    v13 = 2654435761;
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ (2654435761 * self->_type);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self watchListIdentifier];
  watchListIdentifier2 = [equalCopy watchListIdentifier];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  watchListIdentifier3 = [(_SFPBWatchListItem *)self watchListIdentifier];
  if (watchListIdentifier3)
  {
    v8 = watchListIdentifier3;
    watchListIdentifier4 = [(_SFPBWatchListItem *)self watchListIdentifier];
    watchListIdentifier5 = [equalCopy watchListIdentifier];
    v11 = [watchListIdentifier4 isEqual:watchListIdentifier5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
  watchListIdentifier2 = [equalCopy seasonEpisodeTextFormat];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  seasonEpisodeTextFormat = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
  if (seasonEpisodeTextFormat)
  {
    v13 = seasonEpisodeTextFormat;
    seasonEpisodeTextFormat2 = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
    seasonEpisodeTextFormat3 = [equalCopy seasonEpisodeTextFormat];
    v16 = [seasonEpisodeTextFormat2 isEqual:seasonEpisodeTextFormat3];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self continueInTextFormat];
  watchListIdentifier2 = [equalCopy continueInTextFormat];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  continueInTextFormat = [(_SFPBWatchListItem *)self continueInTextFormat];
  if (continueInTextFormat)
  {
    v18 = continueInTextFormat;
    continueInTextFormat2 = [(_SFPBWatchListItem *)self continueInTextFormat];
    continueInTextFormat3 = [equalCopy continueInTextFormat];
    v21 = [continueInTextFormat2 isEqual:continueInTextFormat3];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self openButtonTitle];
  watchListIdentifier2 = [equalCopy openButtonTitle];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  openButtonTitle = [(_SFPBWatchListItem *)self openButtonTitle];
  if (openButtonTitle)
  {
    v23 = openButtonTitle;
    openButtonTitle2 = [(_SFPBWatchListItem *)self openButtonTitle];
    openButtonTitle3 = [equalCopy openButtonTitle];
    v26 = [openButtonTitle2 isEqual:openButtonTitle3];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self installButtonTitle];
  watchListIdentifier2 = [equalCopy installButtonTitle];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  installButtonTitle = [(_SFPBWatchListItem *)self installButtonTitle];
  if (installButtonTitle)
  {
    v28 = installButtonTitle;
    installButtonTitle2 = [(_SFPBWatchListItem *)self installButtonTitle];
    installButtonTitle3 = [equalCopy installButtonTitle];
    v31 = [installButtonTitle2 isEqual:installButtonTitle3];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
  watchListIdentifier2 = [equalCopy purchaseOfferTextFormat];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  purchaseOfferTextFormat = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
  if (purchaseOfferTextFormat)
  {
    v33 = purchaseOfferTextFormat;
    purchaseOfferTextFormat2 = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
    purchaseOfferTextFormat3 = [equalCopy purchaseOfferTextFormat];
    v36 = [purchaseOfferTextFormat2 isEqual:purchaseOfferTextFormat3];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self inUpNextText];
  watchListIdentifier2 = [equalCopy inUpNextText];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  inUpNextText = [(_SFPBWatchListItem *)self inUpNextText];
  if (inUpNextText)
  {
    v38 = inUpNextText;
    inUpNextText2 = [(_SFPBWatchListItem *)self inUpNextText];
    inUpNextText3 = [equalCopy inUpNextText];
    v41 = [inUpNextText2 isEqual:inUpNextText3];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self addToUpNextText];
  watchListIdentifier2 = [equalCopy addToUpNextText];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  addToUpNextText = [(_SFPBWatchListItem *)self addToUpNextText];
  if (addToUpNextText)
  {
    v43 = addToUpNextText;
    addToUpNextText2 = [(_SFPBWatchListItem *)self addToUpNextText];
    addToUpNextText3 = [equalCopy addToUpNextText];
    v46 = [addToUpNextText2 isEqual:addToUpNextText3];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self addedToUpNextText];
  watchListIdentifier2 = [equalCopy addedToUpNextText];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
    goto LABEL_51;
  }

  addedToUpNextText = [(_SFPBWatchListItem *)self addedToUpNextText];
  if (addedToUpNextText)
  {
    v48 = addedToUpNextText;
    addedToUpNextText2 = [(_SFPBWatchListItem *)self addedToUpNextText];
    addedToUpNextText3 = [equalCopy addedToUpNextText];
    v51 = [addedToUpNextText2 isEqual:addedToUpNextText3];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  watchListIdentifier = [(_SFPBWatchListItem *)self watchLiveTextFormat];
  watchListIdentifier2 = [equalCopy watchLiveTextFormat];
  if ((watchListIdentifier != 0) == (watchListIdentifier2 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  watchLiveTextFormat = [(_SFPBWatchListItem *)self watchLiveTextFormat];
  if (watchLiveTextFormat)
  {
    v53 = watchLiveTextFormat;
    watchLiveTextFormat2 = [(_SFPBWatchListItem *)self watchLiveTextFormat];
    watchLiveTextFormat3 = [equalCopy watchLiveTextFormat];
    v56 = [watchLiveTextFormat2 isEqual:watchLiveTextFormat3];

    if (!v56)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  isMediaContainer = self->_isMediaContainer;
  if (isMediaContainer == [equalCopy isMediaContainer])
  {
    type = self->_type;
    v57 = type == [equalCopy type];
    goto LABEL_53;
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  watchListIdentifier = [(_SFPBWatchListItem *)self watchListIdentifier];
  if (watchListIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  seasonEpisodeTextFormat = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
  if (seasonEpisodeTextFormat)
  {
    PBDataWriterWriteStringField();
  }

  continueInTextFormat = [(_SFPBWatchListItem *)self continueInTextFormat];
  if (continueInTextFormat)
  {
    PBDataWriterWriteStringField();
  }

  openButtonTitle = [(_SFPBWatchListItem *)self openButtonTitle];
  if (openButtonTitle)
  {
    PBDataWriterWriteStringField();
  }

  installButtonTitle = [(_SFPBWatchListItem *)self installButtonTitle];
  if (installButtonTitle)
  {
    PBDataWriterWriteStringField();
  }

  purchaseOfferTextFormat = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
  if (purchaseOfferTextFormat)
  {
    PBDataWriterWriteStringField();
  }

  inUpNextText = [(_SFPBWatchListItem *)self inUpNextText];
  if (inUpNextText)
  {
    PBDataWriterWriteStringField();
  }

  addToUpNextText = [(_SFPBWatchListItem *)self addToUpNextText];
  if (addToUpNextText)
  {
    PBDataWriterWriteStringField();
  }

  addedToUpNextText = [(_SFPBWatchListItem *)self addedToUpNextText];
  if (addedToUpNextText)
  {
    PBDataWriterWriteStringField();
  }

  watchLiveTextFormat = [(_SFPBWatchListItem *)self watchLiveTextFormat];
  if (watchLiveTextFormat)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBWatchListItem *)self isMediaContainer])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBWatchListItem *)self type];
  v15 = toCopy;
  if (type)
  {
    PBDataWriterWriteInt32Field();
    v15 = toCopy;
  }
}

- (void)setWatchLiveTextFormat:(id)format
{
  v4 = [format copy];
  watchLiveTextFormat = self->_watchLiveTextFormat;
  self->_watchLiveTextFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAddedToUpNextText:(id)text
{
  v4 = [text copy];
  addedToUpNextText = self->_addedToUpNextText;
  self->_addedToUpNextText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAddToUpNextText:(id)text
{
  v4 = [text copy];
  addToUpNextText = self->_addToUpNextText;
  self->_addToUpNextText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setInUpNextText:(id)text
{
  v4 = [text copy];
  inUpNextText = self->_inUpNextText;
  self->_inUpNextText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPurchaseOfferTextFormat:(id)format
{
  v4 = [format copy];
  purchaseOfferTextFormat = self->_purchaseOfferTextFormat;
  self->_purchaseOfferTextFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setInstallButtonTitle:(id)title
{
  v4 = [title copy];
  installButtonTitle = self->_installButtonTitle;
  self->_installButtonTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setOpenButtonTitle:(id)title
{
  v4 = [title copy];
  openButtonTitle = self->_openButtonTitle;
  self->_openButtonTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContinueInTextFormat:(id)format
{
  v4 = [format copy];
  continueInTextFormat = self->_continueInTextFormat;
  self->_continueInTextFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSeasonEpisodeTextFormat:(id)format
{
  v4 = [format copy];
  seasonEpisodeTextFormat = self->_seasonEpisodeTextFormat;
  self->_seasonEpisodeTextFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setWatchListIdentifier:(id)identifier
{
  v4 = [identifier copy];
  watchListIdentifier = self->_watchListIdentifier;
  self->_watchListIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end