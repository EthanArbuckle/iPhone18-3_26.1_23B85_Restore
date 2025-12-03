@interface FLOWSchemaFLOWMediaPlayerPlaybackContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWMediaPlayerPlaybackContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWMediaPlayerPlaybackContext)initWithJSON:(id)n;
- (FLOWSchemaFLOWMediaPlayerPlaylistContext)playlistContext;
- (FLOWSchemaFLOWMediaPlayerRadioStationContext)radioStationContext;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deletePlaylistContext;
- (void)deleteRadioStationContext;
- (void)setHasContentSource:(BOOL)source;
- (void)setHasEndpoint:(BOOL)endpoint;
- (void)setPlaylistContext:(id)context;
- (void)setRadioStationContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWMediaPlayerPlaybackContext

- (FLOWSchemaFLOWMediaPlayerRadioStationContext)radioStationContext
{
  if (self->_whichContenttype == 5)
  {
    v3 = self->_radioStationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWMediaPlayerPlaylistContext)playlistContext
{
  if (self->_whichContenttype == 6)
  {
    v3 = self->_playlistContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWMediaPlayerPlaybackContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = FLOWSchemaFLOWMediaPlayerPlaybackContext;
  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"executionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContext setExecutionSource:](v5, "setExecutionSource:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"endpoint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContext setEndpoint:](v5, "setEndpoint:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contentSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContext setContentSource:](v5, "setContentSource:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"radioStationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[FLOWSchemaFLOWMediaPlayerRadioStationContext alloc] initWithDictionary:v11];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)v5 setRadioStationContext:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"playlistContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[FLOWSchemaFLOWMediaPlayerPlaylistContext alloc] initWithDictionary:v13];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)v5 setPlaylistContext:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWMediaPlayerPlaybackContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    contentSource = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self contentSource];
    v6 = @"FLOWMEDIAPLAYERCONTENTSOURCE_UNKNOWN";
    if (contentSource == 1)
    {
      v6 = @"FLOWMEDIAPLAYERCONTENTSOURCE_LIBRARY";
    }

    if (contentSource == 2)
    {
      v7 = @"FLOWMEDIAPLAYERCONTENTSOURCE_CATALOG";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"contentSource"];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self endpoint]- 1;
  if (v8 > 6)
  {
    v9 = @"FLOWMEDIAPLAYERENDPOINT_UNKNOWN";
  }

  else
  {
    v9 = off_1E78D5EA8[v8];
  }

  [dictionary setObject:v9 forKeyedSubscript:@"endpoint"];
  if (*&self->_has)
  {
LABEL_15:
    v10 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self executionSource]- 1;
    if (v10 > 3)
    {
      v11 = @"FLOWMEDIAPLAYERCHOSENEXECUTIONSOURCE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D5EE0[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"executionSource"];
  }

LABEL_19:
  if (self->_linkId)
  {
    linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_playlistContext)
  {
    playlistContext = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
    dictionaryRepresentation2 = [playlistContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"playlistContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"playlistContext"];
    }
  }

  if (self->_radioStationContext)
  {
    radioStationContext = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
    dictionaryRepresentation3 = [radioStationContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"radioStationContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"radioStationContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = 2654435761 * self->_executionSource;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_endpoint;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_contentSource;
LABEL_8:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self->_radioStationContext hash];
  return v7 ^ [(FLOWSchemaFLOWMediaPlayerPlaylistContext *)self->_playlistContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  whichContenttype = self->_whichContenttype;
  if (whichContenttype != [equalCopy whichContenttype])
  {
    goto LABEL_29;
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_28;
  }

  linkId3 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
  if (linkId3)
  {
    v9 = linkId3;
    linkId4 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
    linkId5 = [equalCopy linkId];
    v12 = [linkId4 isEqual:linkId5];

    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[48];
  if ((*&has & 1) != (v14 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    executionSource = self->_executionSource;
    if (executionSource != [equalCopy executionSource])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v14 = equalCopy[48];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v16)
  {
    endpoint = self->_endpoint;
    if (endpoint != [equalCopy endpoint])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v14 = equalCopy[48];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_29;
  }

  if (v18)
  {
    contentSource = self->_contentSource;
    if (contentSource != [equalCopy contentSource])
    {
      goto LABEL_29;
    }
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
  linkId2 = [equalCopy radioStationContext];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_28;
  }

  radioStationContext = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
  if (radioStationContext)
  {
    v21 = radioStationContext;
    radioStationContext2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
    radioStationContext3 = [equalCopy radioStationContext];
    v24 = [radioStationContext2 isEqual:radioStationContext3];

    if (!v24)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
  linkId2 = [equalCopy playlistContext];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  playlistContext = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
  if (!playlistContext)
  {

LABEL_32:
    v30 = 1;
    goto LABEL_30;
  }

  v26 = playlistContext;
  playlistContext2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
  playlistContext3 = [equalCopy playlistContext];
  v29 = [playlistContext2 isEqual:playlistContext3];

  if (v29)
  {
    goto LABEL_32;
  }

LABEL_29:
  v30 = 0;
LABEL_30:

  return v30;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  radioStationContext = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];

  if (radioStationContext)
  {
    radioStationContext2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
    PBDataWriterWriteSubmessage();
  }

  playlistContext = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];

  v10 = toCopy;
  if (playlistContext)
  {
    playlistContext2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (void)deletePlaylistContext
{
  if (self->_whichContenttype == 6)
  {
    self->_whichContenttype = 0;
    self->_playlistContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPlaylistContext:(id)context
{
  contextCopy = context;
  radioStationContext = self->_radioStationContext;
  self->_radioStationContext = 0;

  v6 = 6;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichContenttype = v6;
  playlistContext = self->_playlistContext;
  self->_playlistContext = contextCopy;
}

- (void)deleteRadioStationContext
{
  if (self->_whichContenttype == 5)
  {
    self->_whichContenttype = 0;
    self->_radioStationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRadioStationContext:(id)context
{
  contextCopy = context;
  playlistContext = self->_playlistContext;
  self->_playlistContext = 0;

  v6 = 5;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichContenttype = v6;
  radioStationContext = self->_radioStationContext;
  self->_radioStationContext = contextCopy;
}

- (void)setHasContentSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEndpoint:(BOOL)endpoint
{
  if (endpoint)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = FLOWSchemaFLOWMediaPlayerPlaybackContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self deleteLinkId];
  }

  radioStationContext = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
  v10 = [radioStationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self deleteRadioStationContext];
  }

  playlistContext = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
  v13 = [playlistContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self deletePlaylistContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end