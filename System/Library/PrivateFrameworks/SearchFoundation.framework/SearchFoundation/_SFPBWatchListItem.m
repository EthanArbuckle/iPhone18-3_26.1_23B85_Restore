@interface _SFPBWatchListItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBWatchListItem)initWithDictionary:(id)a3;
- (_SFPBWatchListItem)initWithFacade:(id)a3;
- (_SFPBWatchListItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAddToUpNextText:(id)a3;
- (void)setAddedToUpNextText:(id)a3;
- (void)setContinueInTextFormat:(id)a3;
- (void)setInUpNextText:(id)a3;
- (void)setInstallButtonTitle:(id)a3;
- (void)setOpenButtonTitle:(id)a3;
- (void)setPurchaseOfferTextFormat:(id)a3;
- (void)setSeasonEpisodeTextFormat:(id)a3;
- (void)setWatchListIdentifier:(id)a3;
- (void)setWatchLiveTextFormat:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBWatchListItem

- (_SFPBWatchListItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBWatchListItem *)self init];
  if (v5)
  {
    v6 = [v4 watchListIdentifier];

    if (v6)
    {
      v7 = [v4 watchListIdentifier];
      [(_SFPBWatchListItem *)v5 setWatchListIdentifier:v7];
    }

    v8 = [v4 seasonEpisodeTextFormat];

    if (v8)
    {
      v9 = [v4 seasonEpisodeTextFormat];
      [(_SFPBWatchListItem *)v5 setSeasonEpisodeTextFormat:v9];
    }

    v10 = [v4 continueInTextFormat];

    if (v10)
    {
      v11 = [v4 continueInTextFormat];
      [(_SFPBWatchListItem *)v5 setContinueInTextFormat:v11];
    }

    v12 = [v4 openButtonTitle];

    if (v12)
    {
      v13 = [v4 openButtonTitle];
      [(_SFPBWatchListItem *)v5 setOpenButtonTitle:v13];
    }

    v14 = [v4 installButtonTitle];

    if (v14)
    {
      v15 = [v4 installButtonTitle];
      [(_SFPBWatchListItem *)v5 setInstallButtonTitle:v15];
    }

    v16 = [v4 purchaseOfferTextFormat];

    if (v16)
    {
      v17 = [v4 purchaseOfferTextFormat];
      [(_SFPBWatchListItem *)v5 setPurchaseOfferTextFormat:v17];
    }

    v18 = [v4 inUpNextText];

    if (v18)
    {
      v19 = [v4 inUpNextText];
      [(_SFPBWatchListItem *)v5 setInUpNextText:v19];
    }

    v20 = [v4 addToUpNextText];

    if (v20)
    {
      v21 = [v4 addToUpNextText];
      [(_SFPBWatchListItem *)v5 setAddToUpNextText:v21];
    }

    v22 = [v4 addedToUpNextText];

    if (v22)
    {
      v23 = [v4 addedToUpNextText];
      [(_SFPBWatchListItem *)v5 setAddedToUpNextText:v23];
    }

    v24 = [v4 watchLiveTextFormat];

    if (v24)
    {
      v25 = [v4 watchLiveTextFormat];
      [(_SFPBWatchListItem *)v5 setWatchLiveTextFormat:v25];
    }

    if ([v4 hasIsMediaContainer])
    {
      -[_SFPBWatchListItem setIsMediaContainer:](v5, "setIsMediaContainer:", [v4 isMediaContainer]);
    }

    if ([v4 hasType])
    {
      -[_SFPBWatchListItem setType:](v5, "setType:", [v4 type]);
    }

    v26 = v5;
  }

  return v5;
}

- (_SFPBWatchListItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = _SFPBWatchListItem;
  v5 = [(_SFPBWatchListItem *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"watchListIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBWatchListItem *)v5 setWatchListIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"seasonEpisodeTextFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBWatchListItem *)v5 setSeasonEpisodeTextFormat:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"continueInTextFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBWatchListItem *)v5 setContinueInTextFormat:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"openButtonTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBWatchListItem *)v5 setOpenButtonTitle:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"installButtonTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBWatchListItem *)v5 setInstallButtonTitle:v15];
    }

    v32 = v14;
    v16 = [v4 objectForKeyedSubscript:@"purchaseOfferTextFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBWatchListItem *)v5 setPurchaseOfferTextFormat:v17];
    }

    v31 = v16;
    v18 = [v4 objectForKeyedSubscript:@"inUpNextText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(_SFPBWatchListItem *)v5 setInUpNextText:v19];
    }

    v34 = v6;
    v20 = [v4 objectForKeyedSubscript:@"addToUpNextText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(_SFPBWatchListItem *)v5 setAddToUpNextText:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"addedToUpNextText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBWatchListItem *)v5 setAddedToUpNextText:v23];
    }

    v33 = v12;
    v24 = [v4 objectForKeyedSubscript:@"watchLiveTextFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBWatchListItem *)v5 setWatchLiveTextFormat:v25];
    }

    v26 = v8;
    v27 = [v4 objectForKeyedSubscript:@"isMediaContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBWatchListItem setIsMediaContainer:](v5, "setIsMediaContainer:", [v27 BOOLValue]);
    }

    v28 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBWatchListItem setType:](v5, "setType:", [v28 intValue]);
    }

    v29 = v5;
  }

  return v5;
}

- (_SFPBWatchListItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBWatchListItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBWatchListItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_addToUpNextText)
  {
    v4 = [(_SFPBWatchListItem *)self addToUpNextText];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"addToUpNextText"];
  }

  if (self->_addedToUpNextText)
  {
    v6 = [(_SFPBWatchListItem *)self addedToUpNextText];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"addedToUpNextText"];
  }

  if (self->_continueInTextFormat)
  {
    v8 = [(_SFPBWatchListItem *)self continueInTextFormat];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"continueInTextFormat"];
  }

  if (self->_inUpNextText)
  {
    v10 = [(_SFPBWatchListItem *)self inUpNextText];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"inUpNextText"];
  }

  if (self->_installButtonTitle)
  {
    v12 = [(_SFPBWatchListItem *)self installButtonTitle];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"installButtonTitle"];
  }

  if (self->_isMediaContainer)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBWatchListItem isMediaContainer](self, "isMediaContainer")}];
    [v3 setObject:v14 forKeyedSubscript:@"isMediaContainer"];
  }

  if (self->_openButtonTitle)
  {
    v15 = [(_SFPBWatchListItem *)self openButtonTitle];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"openButtonTitle"];
  }

  if (self->_purchaseOfferTextFormat)
  {
    v17 = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"purchaseOfferTextFormat"];
  }

  if (self->_seasonEpisodeTextFormat)
  {
    v19 = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"seasonEpisodeTextFormat"];
  }

  if (self->_type)
  {
    v21 = [(_SFPBWatchListItem *)self type];
    if (v21 >= 6)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v21];
    }

    else
    {
      v22 = off_1E7ACE580[v21];
    }

    [v3 setObject:v22 forKeyedSubscript:@"type"];
  }

  if (self->_watchListIdentifier)
  {
    v23 = [(_SFPBWatchListItem *)self watchListIdentifier];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"watchListIdentifier"];
  }

  if (self->_watchLiveTextFormat)
  {
    v25 = [(_SFPBWatchListItem *)self watchLiveTextFormat];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"watchLiveTextFormat"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBWatchListItem *)self watchListIdentifier];
  v6 = [v4 watchListIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(_SFPBWatchListItem *)self watchListIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBWatchListItem *)self watchListIdentifier];
    v10 = [v4 watchListIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
  v6 = [v4 seasonEpisodeTextFormat];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
    v15 = [v4 seasonEpisodeTextFormat];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self continueInTextFormat];
  v6 = [v4 continueInTextFormat];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(_SFPBWatchListItem *)self continueInTextFormat];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBWatchListItem *)self continueInTextFormat];
    v20 = [v4 continueInTextFormat];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self openButtonTitle];
  v6 = [v4 openButtonTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v22 = [(_SFPBWatchListItem *)self openButtonTitle];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBWatchListItem *)self openButtonTitle];
    v25 = [v4 openButtonTitle];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self installButtonTitle];
  v6 = [v4 installButtonTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v27 = [(_SFPBWatchListItem *)self installButtonTitle];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBWatchListItem *)self installButtonTitle];
    v30 = [v4 installButtonTitle];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
  v6 = [v4 purchaseOfferTextFormat];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v32 = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
    v35 = [v4 purchaseOfferTextFormat];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self inUpNextText];
  v6 = [v4 inUpNextText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v37 = [(_SFPBWatchListItem *)self inUpNextText];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBWatchListItem *)self inUpNextText];
    v40 = [v4 inUpNextText];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self addToUpNextText];
  v6 = [v4 addToUpNextText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v42 = [(_SFPBWatchListItem *)self addToUpNextText];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBWatchListItem *)self addToUpNextText];
    v45 = [v4 addToUpNextText];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self addedToUpNextText];
  v6 = [v4 addedToUpNextText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v47 = [(_SFPBWatchListItem *)self addedToUpNextText];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBWatchListItem *)self addedToUpNextText];
    v50 = [v4 addedToUpNextText];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWatchListItem *)self watchLiveTextFormat];
  v6 = [v4 watchLiveTextFormat];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  v52 = [(_SFPBWatchListItem *)self watchLiveTextFormat];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBWatchListItem *)self watchLiveTextFormat];
    v55 = [v4 watchLiveTextFormat];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  isMediaContainer = self->_isMediaContainer;
  if (isMediaContainer == [v4 isMediaContainer])
  {
    type = self->_type;
    v57 = type == [v4 type];
    goto LABEL_53;
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(_SFPBWatchListItem *)self watchListIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBWatchListItem *)self seasonEpisodeTextFormat];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBWatchListItem *)self continueInTextFormat];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBWatchListItem *)self openButtonTitle];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBWatchListItem *)self installButtonTitle];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(_SFPBWatchListItem *)self purchaseOfferTextFormat];
  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(_SFPBWatchListItem *)self inUpNextText];
  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(_SFPBWatchListItem *)self addToUpNextText];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBWatchListItem *)self addedToUpNextText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(_SFPBWatchListItem *)self watchLiveTextFormat];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBWatchListItem *)self isMediaContainer])
  {
    PBDataWriterWriteBOOLField();
  }

  v14 = [(_SFPBWatchListItem *)self type];
  v15 = v16;
  if (v14)
  {
    PBDataWriterWriteInt32Field();
    v15 = v16;
  }
}

- (void)setWatchLiveTextFormat:(id)a3
{
  v4 = [a3 copy];
  watchLiveTextFormat = self->_watchLiveTextFormat;
  self->_watchLiveTextFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAddedToUpNextText:(id)a3
{
  v4 = [a3 copy];
  addedToUpNextText = self->_addedToUpNextText;
  self->_addedToUpNextText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAddToUpNextText:(id)a3
{
  v4 = [a3 copy];
  addToUpNextText = self->_addToUpNextText;
  self->_addToUpNextText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setInUpNextText:(id)a3
{
  v4 = [a3 copy];
  inUpNextText = self->_inUpNextText;
  self->_inUpNextText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPurchaseOfferTextFormat:(id)a3
{
  v4 = [a3 copy];
  purchaseOfferTextFormat = self->_purchaseOfferTextFormat;
  self->_purchaseOfferTextFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setInstallButtonTitle:(id)a3
{
  v4 = [a3 copy];
  installButtonTitle = self->_installButtonTitle;
  self->_installButtonTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setOpenButtonTitle:(id)a3
{
  v4 = [a3 copy];
  openButtonTitle = self->_openButtonTitle;
  self->_openButtonTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContinueInTextFormat:(id)a3
{
  v4 = [a3 copy];
  continueInTextFormat = self->_continueInTextFormat;
  self->_continueInTextFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSeasonEpisodeTextFormat:(id)a3
{
  v4 = [a3 copy];
  seasonEpisodeTextFormat = self->_seasonEpisodeTextFormat;
  self->_seasonEpisodeTextFormat = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setWatchListIdentifier:(id)a3
{
  v4 = [a3 copy];
  watchListIdentifier = self->_watchListIdentifier;
  self->_watchListIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end