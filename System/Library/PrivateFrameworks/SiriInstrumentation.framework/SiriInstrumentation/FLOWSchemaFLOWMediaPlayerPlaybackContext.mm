@interface FLOWSchemaFLOWMediaPlayerPlaybackContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWMediaPlayerPlaybackContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWMediaPlayerPlaybackContext)initWithJSON:(id)a3;
- (FLOWSchemaFLOWMediaPlayerPlaylistContext)playlistContext;
- (FLOWSchemaFLOWMediaPlayerRadioStationContext)radioStationContext;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deletePlaylistContext;
- (void)deleteRadioStationContext;
- (void)setHasContentSource:(BOOL)a3;
- (void)setHasEndpoint:(BOOL)a3;
- (void)setPlaylistContext:(id)a3;
- (void)setRadioStationContext:(id)a3;
- (void)writeTo:(id)a3;
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

- (FLOWSchemaFLOWMediaPlayerPlaybackContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = FLOWSchemaFLOWMediaPlayerPlaybackContext;
  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"executionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContext setExecutionSource:](v5, "setExecutionSource:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"endpoint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContext setEndpoint:](v5, "setEndpoint:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"contentSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContext setContentSource:](v5, "setContentSource:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"radioStationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[FLOWSchemaFLOWMediaPlayerRadioStationContext alloc] initWithDictionary:v11];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)v5 setRadioStationContext:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"playlistContext"];
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

- (FLOWSchemaFLOWMediaPlayerPlaybackContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self contentSource];
    v6 = @"FLOWMEDIAPLAYERCONTENTSOURCE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"FLOWMEDIAPLAYERCONTENTSOURCE_LIBRARY";
    }

    if (v5 == 2)
    {
      v7 = @"FLOWMEDIAPLAYERCONTENTSOURCE_CATALOG";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"contentSource"];
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

  [v3 setObject:v9 forKeyedSubscript:@"endpoint"];
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

    [v3 setObject:v11 forKeyedSubscript:@"executionSource"];
  }

LABEL_19:
  if (self->_linkId)
  {
    v12 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_playlistContext)
  {
    v15 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"playlistContext"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"playlistContext"];
    }
  }

  if (self->_radioStationContext)
  {
    v18 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"radioStationContext"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"radioStationContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  whichContenttype = self->_whichContenttype;
  if (whichContenttype != [v4 whichContenttype])
  {
    goto LABEL_29;
  }

  v6 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
  v7 = [v4 linkId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_28;
  }

  v8 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
    v11 = [v4 linkId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[48];
  if ((*&has & 1) != (v14 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    executionSource = self->_executionSource;
    if (executionSource != [v4 executionSource])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v14 = v4[48];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v16)
  {
    endpoint = self->_endpoint;
    if (endpoint != [v4 endpoint])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v14 = v4[48];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_29;
  }

  if (v18)
  {
    contentSource = self->_contentSource;
    if (contentSource != [v4 contentSource])
    {
      goto LABEL_29;
    }
  }

  v6 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
  v7 = [v4 radioStationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_28;
  }

  v20 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
  if (v20)
  {
    v21 = v20;
    v22 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
    v23 = [v4 radioStationContext];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
  v7 = [v4 playlistContext];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  v25 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
  if (!v25)
  {

LABEL_32:
    v30 = 1;
    goto LABEL_30;
  }

  v26 = v25;
  v27 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
  v28 = [v4 playlistContext];
  v29 = [v27 isEqual:v28];

  if (v29)
  {
    goto LABEL_32;
  }

LABEL_29:
  v30 = 0;
LABEL_30:

  return v30;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];

  if (v4)
  {
    v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
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
  v7 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];

  if (v7)
  {
    v8 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];

  v10 = v12;
  if (v9)
  {
    v11 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
    PBDataWriterWriteSubmessage();

    v10 = v12;
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

- (void)setPlaylistContext:(id)a3
{
  v4 = a3;
  radioStationContext = self->_radioStationContext;
  self->_radioStationContext = 0;

  v6 = 6;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichContenttype = v6;
  playlistContext = self->_playlistContext;
  self->_playlistContext = v4;
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

- (void)setRadioStationContext:(id)a3
{
  v4 = a3;
  playlistContext = self->_playlistContext;
  self->_playlistContext = 0;

  v6 = 5;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichContenttype = v6;
  radioStationContext = self->_radioStationContext;
  self->_radioStationContext = v4;
}

- (void)setHasContentSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEndpoint:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FLOWSchemaFLOWMediaPlayerPlaybackContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self deleteLinkId];
  }

  v9 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self radioStationContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self deleteRadioStationContext];
  }

  v12 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self playlistContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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