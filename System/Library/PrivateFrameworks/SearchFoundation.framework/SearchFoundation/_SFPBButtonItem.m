@interface _SFPBButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAppAutoShortcutsButtonItem)appActionsButtonItem;
- (_SFPBButtonItem)initWithDictionary:(id)a3;
- (_SFPBButtonItem)initWithFacade:(id)a3;
- (_SFPBButtonItem)initWithJSON:(id)a3;
- (_SFPBCommandButtonItem)commandButtonItem;
- (_SFPBContactButtonItem)contactButtonItem;
- (_SFPBCoreSpotlightButtonItem)coreSpotlightButtonItem;
- (_SFPBPlayAudioButtonItem)playAudioButtonItem;
- (_SFPBPlayWatchListItemButtonItem)playWatchListItemButtonItem;
- (_SFPBSportsFollowButtonItem)sportsFollowButtonItem;
- (_SFPBStoreButtonItem)storeButtonItem;
- (_SFPBWatchListButtonItem)watchListButtonItem;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAppActionsButtonItem:(id)a3;
- (void)setCommandButtonItem:(id)a3;
- (void)setContactButtonItem:(id)a3;
- (void)setCoreSpotlightButtonItem:(id)a3;
- (void)setPlayAudioButtonItem:(id)a3;
- (void)setPlayWatchListItemButtonItem:(id)a3;
- (void)setSportsFollowButtonItem:(id)a3;
- (void)setStoreButtonItem:(id)a3;
- (void)setWatchListButtonItem:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBButtonItem

- (_SFPBButtonItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBButtonItem *)self init];
  if (v5)
  {
    v6 = [v4 buttonAppearance];

    if (v6)
    {
      v7 = [_SFPBButtonItemAppearance alloc];
      v8 = [v4 buttonAppearance];
      v9 = [(_SFPBButtonItemAppearance *)v7 initWithFacade:v8];
      [(_SFPBButtonItem *)v5 setButtonAppearance:v9];
    }

    if ([v4 hasUniqueId])
    {
      -[_SFPBButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBCommandButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setCommandButtonItem:v10];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBContactButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setContactButtonItem:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[_SFPBCoreSpotlightButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setCoreSpotlightButtonItem:v12];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBWatchListButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setWatchListButtonItem:v13];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setAppActionsButtonItem:v14];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBSportsFollowButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setSportsFollowButtonItem:v15];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setPlayWatchListItemButtonItem:v16];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBPlayAudioButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setPlayAudioButtonItem:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBStoreButtonItem alloc] initWithFacade:v4];
      [(_SFPBButtonItem *)v5 setStoreButtonItem:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (_SFPBButtonItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = _SFPBButtonItem;
  v5 = [(_SFPBButtonItem *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"commandButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCommandButtonItem alloc] initWithDictionary:v6];
      [(_SFPBButtonItem *)v5 setCommandButtonItem:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"contactButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBContactButtonItem alloc] initWithDictionary:v8];
      [(_SFPBButtonItem *)v5 setContactButtonItem:v9];
    }

    v30 = v8;
    v10 = [v4 objectForKeyedSubscript:@"coreSpotlightButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBCoreSpotlightButtonItem alloc] initWithDictionary:v10];
      [(_SFPBButtonItem *)v5 setCoreSpotlightButtonItem:v11];
    }

    v29 = v10;
    v12 = [v4 objectForKeyedSubscript:@"watchListButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBWatchListButtonItem alloc] initWithDictionary:v12];
      [(_SFPBButtonItem *)v5 setWatchListButtonItem:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"appActionsButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithDictionary:v14];
      [(_SFPBButtonItem *)v5 setAppActionsButtonItem:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"sportsFollowButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBSportsFollowButtonItem alloc] initWithDictionary:v16];
      [(_SFPBButtonItem *)v5 setSportsFollowButtonItem:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"playWatchListItemButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithDictionary:v18];
      [(_SFPBButtonItem *)v5 setPlayWatchListItemButtonItem:v19];
    }

    v31 = v6;
    v20 = [v4 objectForKeyedSubscript:@"playAudioButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBPlayAudioButtonItem alloc] initWithDictionary:v20];
      [(_SFPBButtonItem *)v5 setPlayAudioButtonItem:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"storeButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBStoreButtonItem alloc] initWithDictionary:v22];
      [(_SFPBButtonItem *)v5 setStoreButtonItem:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"buttonAppearance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBButtonItemAppearance alloc] initWithDictionary:v24];
      [(_SFPBButtonItem *)v5 setButtonAppearance:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItem setUniqueId:](v5, "setUniqueId:", [v26 unsignedLongLongValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (_SFPBButtonItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBButtonItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBButtonItem *)self dictionaryRepresentation];
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
  if (self->_appActionsButtonItem)
  {
    v4 = [(_SFPBButtonItem *)self appActionsButtonItem];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appActionsButtonItem"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appActionsButtonItem"];
    }
  }

  if (self->_buttonAppearance)
  {
    v7 = [(_SFPBButtonItem *)self buttonAppearance];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"buttonAppearance"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"buttonAppearance"];
    }
  }

  if (self->_commandButtonItem)
  {
    v10 = [(_SFPBButtonItem *)self commandButtonItem];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"commandButtonItem"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"commandButtonItem"];
    }
  }

  if (self->_contactButtonItem)
  {
    v13 = [(_SFPBButtonItem *)self contactButtonItem];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"contactButtonItem"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"contactButtonItem"];
    }
  }

  if (self->_coreSpotlightButtonItem)
  {
    v16 = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"coreSpotlightButtonItem"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"coreSpotlightButtonItem"];
    }
  }

  if (self->_playAudioButtonItem)
  {
    v19 = [(_SFPBButtonItem *)self playAudioButtonItem];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"playAudioButtonItem"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"playAudioButtonItem"];
    }
  }

  if (self->_playWatchListItemButtonItem)
  {
    v22 = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"playWatchListItemButtonItem"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"playWatchListItemButtonItem"];
    }
  }

  if (self->_sportsFollowButtonItem)
  {
    v25 = [(_SFPBButtonItem *)self sportsFollowButtonItem];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"sportsFollowButtonItem"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"sportsFollowButtonItem"];
    }
  }

  if (self->_storeButtonItem)
  {
    v28 = [(_SFPBButtonItem *)self storeButtonItem];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"storeButtonItem"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"storeButtonItem"];
    }
  }

  if (self->_uniqueId)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBButtonItem uniqueId](self, "uniqueId")}];
    [v3 setObject:v31 forKeyedSubscript:@"uniqueId"];
  }

  if (self->_watchListButtonItem)
  {
    v32 = [(_SFPBButtonItem *)self watchListButtonItem];
    v33 = [v32 dictionaryRepresentation];
    if (v33)
    {
      [v3 setObject:v33 forKeyedSubscript:@"watchListButtonItem"];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v34 forKeyedSubscript:@"watchListButtonItem"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBCommandButtonItem *)self->_commandButtonItem hash];
  v4 = [(_SFPBContactButtonItem *)self->_contactButtonItem hash];
  v5 = [(_SFPBCoreSpotlightButtonItem *)self->_coreSpotlightButtonItem hash];
  v6 = [(_SFPBWatchListButtonItem *)self->_watchListButtonItem hash];
  v7 = [(_SFPBAppAutoShortcutsButtonItem *)self->_appActionsButtonItem hash];
  v8 = [(_SFPBSportsFollowButtonItem *)self->_sportsFollowButtonItem hash];
  v9 = [(_SFPBPlayWatchListItemButtonItem *)self->_playWatchListItemButtonItem hash];
  v10 = [(_SFPBPlayAudioButtonItem *)self->_playAudioButtonItem hash];
  v11 = [(_SFPBStoreButtonItem *)self->_storeButtonItem hash];
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(_SFPBButtonItemAppearance *)self->_buttonAppearance hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBButtonItem *)self commandButtonItem];
  v6 = [v4 commandButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(_SFPBButtonItem *)self commandButtonItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBButtonItem *)self commandButtonItem];
    v10 = [v4 commandButtonItem];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self contactButtonItem];
  v6 = [v4 contactButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(_SFPBButtonItem *)self contactButtonItem];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBButtonItem *)self contactButtonItem];
    v15 = [v4 contactButtonItem];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
  v6 = [v4 coreSpotlightButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
    v20 = [v4 coreSpotlightButtonItem];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self watchListButtonItem];
  v6 = [v4 watchListButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v22 = [(_SFPBButtonItem *)self watchListButtonItem];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBButtonItem *)self watchListButtonItem];
    v25 = [v4 watchListButtonItem];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self appActionsButtonItem];
  v6 = [v4 appActionsButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v27 = [(_SFPBButtonItem *)self appActionsButtonItem];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBButtonItem *)self appActionsButtonItem];
    v30 = [v4 appActionsButtonItem];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self sportsFollowButtonItem];
  v6 = [v4 sportsFollowButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v32 = [(_SFPBButtonItem *)self sportsFollowButtonItem];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBButtonItem *)self sportsFollowButtonItem];
    v35 = [v4 sportsFollowButtonItem];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
  v6 = [v4 playWatchListItemButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v37 = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
    v40 = [v4 playWatchListItemButtonItem];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self playAudioButtonItem];
  v6 = [v4 playAudioButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v42 = [(_SFPBButtonItem *)self playAudioButtonItem];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBButtonItem *)self playAudioButtonItem];
    v45 = [v4 playAudioButtonItem];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self storeButtonItem];
  v6 = [v4 storeButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v47 = [(_SFPBButtonItem *)self storeButtonItem];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBButtonItem *)self storeButtonItem];
    v50 = [v4 storeButtonItem];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonItem *)self buttonAppearance];
  v6 = [v4 buttonAppearance];
  if ((v5 != 0) != (v6 == 0))
  {
    v52 = [(_SFPBButtonItem *)self buttonAppearance];
    if (!v52)
    {

LABEL_55:
      uniqueId = self->_uniqueId;
      v57 = uniqueId == [v4 uniqueId];
      goto LABEL_53;
    }

    v53 = v52;
    v54 = [(_SFPBButtonItem *)self buttonAppearance];
    v55 = [v4 buttonAppearance];
    v56 = [v54 isEqual:v55];

    if (v56)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_51:
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(_SFPBButtonItem *)self commandButtonItem];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBButtonItem *)self contactButtonItem];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBButtonItem *)self watchListButtonItem];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBButtonItem *)self appActionsButtonItem];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBButtonItem *)self sportsFollowButtonItem];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBButtonItem *)self playAudioButtonItem];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBButtonItem *)self storeButtonItem];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_SFPBButtonItem *)self buttonAppearance];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_SFPBButtonItem *)self uniqueId];
  v15 = v16;
  if (v14)
  {
    PBDataWriterWriteUint64Field();
    v15 = v16;
  }
}

- (_SFPBStoreButtonItem)storeButtonItem
{
  if (self->_whichValue == 9)
  {
    v3 = self->_storeButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStoreButtonItem:(id)a3
{
  v4 = a3;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = 0;

  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = 0;

  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = 0;

  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = 0;

  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = 0;

  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = 0;

  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = 0;

  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = 0;

  v13 = 9;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = v4;
}

- (_SFPBPlayAudioButtonItem)playAudioButtonItem
{
  if (self->_whichValue == 8)
  {
    v3 = self->_playAudioButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlayAudioButtonItem:(id)a3
{
  v4 = a3;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = 0;

  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = 0;

  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = 0;

  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = 0;

  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = 0;

  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = 0;

  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = 0;

  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = 0;

  self->_whichValue = 8 * (v4 != 0);
  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = v4;
}

- (_SFPBPlayWatchListItemButtonItem)playWatchListItemButtonItem
{
  if (self->_whichValue == 7)
  {
    v3 = self->_playWatchListItemButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlayWatchListItemButtonItem:(id)a3
{
  v4 = a3;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = 0;

  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = 0;

  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = 0;

  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = 0;

  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = 0;

  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = 0;

  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = 0;

  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = 0;

  v13 = 7;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = v4;
}

- (_SFPBSportsFollowButtonItem)sportsFollowButtonItem
{
  if (self->_whichValue == 6)
  {
    v3 = self->_sportsFollowButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSportsFollowButtonItem:(id)a3
{
  v4 = a3;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = 0;

  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = 0;

  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = 0;

  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = 0;

  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = 0;

  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = 0;

  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = 0;

  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = 0;

  v13 = 6;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = v4;
}

- (_SFPBAppAutoShortcutsButtonItem)appActionsButtonItem
{
  if (self->_whichValue == 5)
  {
    v3 = self->_appActionsButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppActionsButtonItem:(id)a3
{
  v4 = a3;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = 0;

  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = 0;

  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = 0;

  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = 0;

  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = 0;

  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = 0;

  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = 0;

  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = 0;

  v13 = 5;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = v4;
}

- (_SFPBWatchListButtonItem)watchListButtonItem
{
  if (self->_whichValue == 4)
  {
    v3 = self->_watchListButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWatchListButtonItem:(id)a3
{
  v4 = a3;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = 0;

  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = 0;

  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = 0;

  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = 0;

  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = 0;

  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = 0;

  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = 0;

  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = 0;

  self->_whichValue = 4 * (v4 != 0);
  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = v4;
}

- (_SFPBCoreSpotlightButtonItem)coreSpotlightButtonItem
{
  if (self->_whichValue == 3)
  {
    v3 = self->_coreSpotlightButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCoreSpotlightButtonItem:(id)a3
{
  v4 = a3;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = 0;

  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = 0;

  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = 0;

  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = 0;

  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = 0;

  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = 0;

  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = 0;

  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = 0;

  v13 = 3;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = v4;
}

- (_SFPBContactButtonItem)contactButtonItem
{
  if (self->_whichValue == 2)
  {
    v3 = self->_contactButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactButtonItem:(id)a3
{
  v4 = a3;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = 0;

  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = 0;

  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = 0;

  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = 0;

  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = 0;

  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = 0;

  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = 0;

  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = 0;

  self->_whichValue = 2 * (v4 != 0);
  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = v4;
}

- (_SFPBCommandButtonItem)commandButtonItem
{
  if (self->_whichValue == 1)
  {
    v3 = self->_commandButtonItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCommandButtonItem:(id)a3
{
  v4 = a3;
  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = 0;

  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = 0;

  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = 0;

  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = 0;

  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = 0;

  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = 0;

  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = 0;

  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = 0;

  self->_whichValue = v4 != 0;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = v4;
}

@end