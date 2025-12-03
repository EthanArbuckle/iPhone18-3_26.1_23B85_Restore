@interface _SFPBButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAppAutoShortcutsButtonItem)appActionsButtonItem;
- (_SFPBButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBButtonItem)initWithFacade:(id)facade;
- (_SFPBButtonItem)initWithJSON:(id)n;
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
- (void)setAppActionsButtonItem:(id)item;
- (void)setCommandButtonItem:(id)item;
- (void)setContactButtonItem:(id)item;
- (void)setCoreSpotlightButtonItem:(id)item;
- (void)setPlayAudioButtonItem:(id)item;
- (void)setPlayWatchListItemButtonItem:(id)item;
- (void)setSportsFollowButtonItem:(id)item;
- (void)setStoreButtonItem:(id)item;
- (void)setWatchListButtonItem:(id)item;
- (void)writeTo:(id)to;
@end

@implementation _SFPBButtonItem

- (_SFPBButtonItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBButtonItem *)self init];
  if (v5)
  {
    buttonAppearance = [facadeCopy buttonAppearance];

    if (buttonAppearance)
    {
      v7 = [_SFPBButtonItemAppearance alloc];
      buttonAppearance2 = [facadeCopy buttonAppearance];
      v9 = [(_SFPBButtonItemAppearance *)v7 initWithFacade:buttonAppearance2];
      [(_SFPBButtonItem *)v5 setButtonAppearance:v9];
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBCommandButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setCommandButtonItem:v10];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBContactButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setContactButtonItem:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[_SFPBCoreSpotlightButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setCoreSpotlightButtonItem:v12];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBWatchListButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setWatchListButtonItem:v13];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setAppActionsButtonItem:v14];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBSportsFollowButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setSportsFollowButtonItem:v15];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setPlayWatchListItemButtonItem:v16];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBPlayAudioButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setPlayAudioButtonItem:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBStoreButtonItem alloc] initWithFacade:facadeCopy];
      [(_SFPBButtonItem *)v5 setStoreButtonItem:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (_SFPBButtonItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = _SFPBButtonItem;
  v5 = [(_SFPBButtonItem *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commandButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCommandButtonItem alloc] initWithDictionary:v6];
      [(_SFPBButtonItem *)v5 setCommandButtonItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contactButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBContactButtonItem alloc] initWithDictionary:v8];
      [(_SFPBButtonItem *)v5 setContactButtonItem:v9];
    }

    v30 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBCoreSpotlightButtonItem alloc] initWithDictionary:v10];
      [(_SFPBButtonItem *)v5 setCoreSpotlightButtonItem:v11];
    }

    v29 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"watchListButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBWatchListButtonItem alloc] initWithDictionary:v12];
      [(_SFPBButtonItem *)v5 setWatchListButtonItem:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"appActionsButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBAppAutoShortcutsButtonItem alloc] initWithDictionary:v14];
      [(_SFPBButtonItem *)v5 setAppActionsButtonItem:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"sportsFollowButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBSportsFollowButtonItem alloc] initWithDictionary:v16];
      [(_SFPBButtonItem *)v5 setSportsFollowButtonItem:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"playWatchListItemButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBPlayWatchListItemButtonItem alloc] initWithDictionary:v18];
      [(_SFPBButtonItem *)v5 setPlayWatchListItemButtonItem:v19];
    }

    v31 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"playAudioButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBPlayAudioButtonItem alloc] initWithDictionary:v20];
      [(_SFPBButtonItem *)v5 setPlayAudioButtonItem:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"storeButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBStoreButtonItem alloc] initWithDictionary:v22];
      [(_SFPBButtonItem *)v5 setStoreButtonItem:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"buttonAppearance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBButtonItemAppearance alloc] initWithDictionary:v24];
      [(_SFPBButtonItem *)v5 setButtonAppearance:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItem setUniqueId:](v5, "setUniqueId:", [v26 unsignedLongLongValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (_SFPBButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBButtonItem *)self dictionaryRepresentation];
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
  if (self->_appActionsButtonItem)
  {
    appActionsButtonItem = [(_SFPBButtonItem *)self appActionsButtonItem];
    dictionaryRepresentation = [appActionsButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appActionsButtonItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appActionsButtonItem"];
    }
  }

  if (self->_buttonAppearance)
  {
    buttonAppearance = [(_SFPBButtonItem *)self buttonAppearance];
    dictionaryRepresentation2 = [buttonAppearance dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"buttonAppearance"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"buttonAppearance"];
    }
  }

  if (self->_commandButtonItem)
  {
    commandButtonItem = [(_SFPBButtonItem *)self commandButtonItem];
    dictionaryRepresentation3 = [commandButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"commandButtonItem"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"commandButtonItem"];
    }
  }

  if (self->_contactButtonItem)
  {
    contactButtonItem = [(_SFPBButtonItem *)self contactButtonItem];
    dictionaryRepresentation4 = [contactButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"contactButtonItem"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"contactButtonItem"];
    }
  }

  if (self->_coreSpotlightButtonItem)
  {
    coreSpotlightButtonItem = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
    dictionaryRepresentation5 = [coreSpotlightButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"coreSpotlightButtonItem"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"coreSpotlightButtonItem"];
    }
  }

  if (self->_playAudioButtonItem)
  {
    playAudioButtonItem = [(_SFPBButtonItem *)self playAudioButtonItem];
    dictionaryRepresentation6 = [playAudioButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"playAudioButtonItem"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"playAudioButtonItem"];
    }
  }

  if (self->_playWatchListItemButtonItem)
  {
    playWatchListItemButtonItem = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
    dictionaryRepresentation7 = [playWatchListItemButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"playWatchListItemButtonItem"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"playWatchListItemButtonItem"];
    }
  }

  if (self->_sportsFollowButtonItem)
  {
    sportsFollowButtonItem = [(_SFPBButtonItem *)self sportsFollowButtonItem];
    dictionaryRepresentation8 = [sportsFollowButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"sportsFollowButtonItem"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"sportsFollowButtonItem"];
    }
  }

  if (self->_storeButtonItem)
  {
    storeButtonItem = [(_SFPBButtonItem *)self storeButtonItem];
    dictionaryRepresentation9 = [storeButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"storeButtonItem"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"storeButtonItem"];
    }
  }

  if (self->_uniqueId)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v31 forKeyedSubscript:@"uniqueId"];
  }

  if (self->_watchListButtonItem)
  {
    watchListButtonItem = [(_SFPBButtonItem *)self watchListButtonItem];
    dictionaryRepresentation10 = [watchListButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"watchListButtonItem"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"watchListButtonItem"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  commandButtonItem = [(_SFPBButtonItem *)self commandButtonItem];
  commandButtonItem2 = [equalCopy commandButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  commandButtonItem3 = [(_SFPBButtonItem *)self commandButtonItem];
  if (commandButtonItem3)
  {
    v8 = commandButtonItem3;
    commandButtonItem4 = [(_SFPBButtonItem *)self commandButtonItem];
    commandButtonItem5 = [equalCopy commandButtonItem];
    v11 = [commandButtonItem4 isEqual:commandButtonItem5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self contactButtonItem];
  commandButtonItem2 = [equalCopy contactButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  contactButtonItem = [(_SFPBButtonItem *)self contactButtonItem];
  if (contactButtonItem)
  {
    v13 = contactButtonItem;
    contactButtonItem2 = [(_SFPBButtonItem *)self contactButtonItem];
    contactButtonItem3 = [equalCopy contactButtonItem];
    v16 = [contactButtonItem2 isEqual:contactButtonItem3];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
  commandButtonItem2 = [equalCopy coreSpotlightButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  coreSpotlightButtonItem = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
  if (coreSpotlightButtonItem)
  {
    v18 = coreSpotlightButtonItem;
    coreSpotlightButtonItem2 = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
    coreSpotlightButtonItem3 = [equalCopy coreSpotlightButtonItem];
    v21 = [coreSpotlightButtonItem2 isEqual:coreSpotlightButtonItem3];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self watchListButtonItem];
  commandButtonItem2 = [equalCopy watchListButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  watchListButtonItem = [(_SFPBButtonItem *)self watchListButtonItem];
  if (watchListButtonItem)
  {
    v23 = watchListButtonItem;
    watchListButtonItem2 = [(_SFPBButtonItem *)self watchListButtonItem];
    watchListButtonItem3 = [equalCopy watchListButtonItem];
    v26 = [watchListButtonItem2 isEqual:watchListButtonItem3];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self appActionsButtonItem];
  commandButtonItem2 = [equalCopy appActionsButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  appActionsButtonItem = [(_SFPBButtonItem *)self appActionsButtonItem];
  if (appActionsButtonItem)
  {
    v28 = appActionsButtonItem;
    appActionsButtonItem2 = [(_SFPBButtonItem *)self appActionsButtonItem];
    appActionsButtonItem3 = [equalCopy appActionsButtonItem];
    v31 = [appActionsButtonItem2 isEqual:appActionsButtonItem3];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self sportsFollowButtonItem];
  commandButtonItem2 = [equalCopy sportsFollowButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  sportsFollowButtonItem = [(_SFPBButtonItem *)self sportsFollowButtonItem];
  if (sportsFollowButtonItem)
  {
    v33 = sportsFollowButtonItem;
    sportsFollowButtonItem2 = [(_SFPBButtonItem *)self sportsFollowButtonItem];
    sportsFollowButtonItem3 = [equalCopy sportsFollowButtonItem];
    v36 = [sportsFollowButtonItem2 isEqual:sportsFollowButtonItem3];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
  commandButtonItem2 = [equalCopy playWatchListItemButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  playWatchListItemButtonItem = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
  if (playWatchListItemButtonItem)
  {
    v38 = playWatchListItemButtonItem;
    playWatchListItemButtonItem2 = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
    playWatchListItemButtonItem3 = [equalCopy playWatchListItemButtonItem];
    v41 = [playWatchListItemButtonItem2 isEqual:playWatchListItemButtonItem3];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self playAudioButtonItem];
  commandButtonItem2 = [equalCopy playAudioButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  playAudioButtonItem = [(_SFPBButtonItem *)self playAudioButtonItem];
  if (playAudioButtonItem)
  {
    v43 = playAudioButtonItem;
    playAudioButtonItem2 = [(_SFPBButtonItem *)self playAudioButtonItem];
    playAudioButtonItem3 = [equalCopy playAudioButtonItem];
    v46 = [playAudioButtonItem2 isEqual:playAudioButtonItem3];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self storeButtonItem];
  commandButtonItem2 = [equalCopy storeButtonItem];
  if ((commandButtonItem != 0) == (commandButtonItem2 == 0))
  {
    goto LABEL_51;
  }

  storeButtonItem = [(_SFPBButtonItem *)self storeButtonItem];
  if (storeButtonItem)
  {
    v48 = storeButtonItem;
    storeButtonItem2 = [(_SFPBButtonItem *)self storeButtonItem];
    storeButtonItem3 = [equalCopy storeButtonItem];
    v51 = [storeButtonItem2 isEqual:storeButtonItem3];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  commandButtonItem = [(_SFPBButtonItem *)self buttonAppearance];
  commandButtonItem2 = [equalCopy buttonAppearance];
  if ((commandButtonItem != 0) != (commandButtonItem2 == 0))
  {
    buttonAppearance = [(_SFPBButtonItem *)self buttonAppearance];
    if (!buttonAppearance)
    {

LABEL_55:
      uniqueId = self->_uniqueId;
      v57 = uniqueId == [equalCopy uniqueId];
      goto LABEL_53;
    }

    v53 = buttonAppearance;
    buttonAppearance2 = [(_SFPBButtonItem *)self buttonAppearance];
    buttonAppearance3 = [equalCopy buttonAppearance];
    v56 = [buttonAppearance2 isEqual:buttonAppearance3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  commandButtonItem = [(_SFPBButtonItem *)self commandButtonItem];
  if (commandButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  contactButtonItem = [(_SFPBButtonItem *)self contactButtonItem];
  if (contactButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  coreSpotlightButtonItem = [(_SFPBButtonItem *)self coreSpotlightButtonItem];
  if (coreSpotlightButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  watchListButtonItem = [(_SFPBButtonItem *)self watchListButtonItem];
  if (watchListButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  appActionsButtonItem = [(_SFPBButtonItem *)self appActionsButtonItem];
  if (appActionsButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  sportsFollowButtonItem = [(_SFPBButtonItem *)self sportsFollowButtonItem];
  if (sportsFollowButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  playWatchListItemButtonItem = [(_SFPBButtonItem *)self playWatchListItemButtonItem];
  if (playWatchListItemButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  playAudioButtonItem = [(_SFPBButtonItem *)self playAudioButtonItem];
  if (playAudioButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  storeButtonItem = [(_SFPBButtonItem *)self storeButtonItem];
  if (storeButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  buttonAppearance = [(_SFPBButtonItem *)self buttonAppearance];
  if (buttonAppearance)
  {
    PBDataWriterWriteSubmessage();
  }

  uniqueId = [(_SFPBButtonItem *)self uniqueId];
  v15 = toCopy;
  if (uniqueId)
  {
    PBDataWriterWriteUint64Field();
    v15 = toCopy;
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

- (void)setStoreButtonItem:(id)item
{
  itemCopy = item;
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
  if (!itemCopy)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  storeButtonItem = self->_storeButtonItem;
  self->_storeButtonItem = itemCopy;
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

- (void)setPlayAudioButtonItem:(id)item
{
  itemCopy = item;
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

  self->_whichValue = 8 * (itemCopy != 0);
  playAudioButtonItem = self->_playAudioButtonItem;
  self->_playAudioButtonItem = itemCopy;
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

- (void)setPlayWatchListItemButtonItem:(id)item
{
  itemCopy = item;
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
  if (!itemCopy)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  playWatchListItemButtonItem = self->_playWatchListItemButtonItem;
  self->_playWatchListItemButtonItem = itemCopy;
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

- (void)setSportsFollowButtonItem:(id)item
{
  itemCopy = item;
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
  if (!itemCopy)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  sportsFollowButtonItem = self->_sportsFollowButtonItem;
  self->_sportsFollowButtonItem = itemCopy;
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

- (void)setAppActionsButtonItem:(id)item
{
  itemCopy = item;
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
  if (!itemCopy)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  appActionsButtonItem = self->_appActionsButtonItem;
  self->_appActionsButtonItem = itemCopy;
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

- (void)setWatchListButtonItem:(id)item
{
  itemCopy = item;
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

  self->_whichValue = 4 * (itemCopy != 0);
  watchListButtonItem = self->_watchListButtonItem;
  self->_watchListButtonItem = itemCopy;
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

- (void)setCoreSpotlightButtonItem:(id)item
{
  itemCopy = item;
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
  if (!itemCopy)
  {
    v13 = 0;
  }

  self->_whichValue = v13;
  coreSpotlightButtonItem = self->_coreSpotlightButtonItem;
  self->_coreSpotlightButtonItem = itemCopy;
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

- (void)setContactButtonItem:(id)item
{
  itemCopy = item;
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

  self->_whichValue = 2 * (itemCopy != 0);
  contactButtonItem = self->_contactButtonItem;
  self->_contactButtonItem = itemCopy;
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

- (void)setCommandButtonItem:(id)item
{
  itemCopy = item;
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

  self->_whichValue = itemCopy != 0;
  commandButtonItem = self->_commandButtonItem;
  self->_commandButtonItem = itemCopy;
}

@end