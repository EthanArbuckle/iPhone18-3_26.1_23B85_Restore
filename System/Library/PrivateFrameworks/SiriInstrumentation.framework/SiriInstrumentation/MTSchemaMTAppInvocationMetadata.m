@interface MTSchemaMTAppInvocationMetadata
- (BOOL)isEqual:(id)a3;
- (MTSchemaMTAppInvocationMetadata)initWithDictionary:(id)a3;
- (MTSchemaMTAppInvocationMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioChannel:(BOOL)a3;
- (void)setHasConversationTabView:(BOOL)a3;
- (void)setHasIsGenderAlternativeEnabled:(BOOL)a3;
- (void)setHasIsPlayTranslationsEnabled:(BOOL)a3;
- (void)setHasTabName:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTSchemaMTAppInvocationMetadata

- (MTSchemaMTAppInvocationMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MTSchemaMTAppInvocationMetadata;
  v5 = [(MTSchemaMTAppInvocationMetadata *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"displayMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setDisplayMode:](v5, "setDisplayMode:", [v6 intValue]);
    }

    v21 = v6;
    v7 = [v4 objectForKeyedSubscript:@"localePair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[MTSchemaMTLocalePair alloc] initWithDictionary:v7];
      [(MTSchemaMTAppInvocationMetadata *)v5 setLocalePair:v8];
    }

    v9 = [v4 objectForKeyedSubscript:{@"isGenderAlternativeEnabled", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setIsGenderAlternativeEnabled:](v5, "setIsGenderAlternativeEnabled:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"tabName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setTabName:](v5, "setTabName:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"tabSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(MTSchemaMTAppInvocationMetadata *)v5 setTabSessionId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"autoTranslateSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(MTSchemaMTAppInvocationMetadata *)v5 setAutoTranslateSessionId:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"isPlayTranslationsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setIsPlayTranslationsEnabled:](v5, "setIsPlayTranslationsEnabled:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"conversationTabView"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setConversationTabView:](v5, "setConversationTabView:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"audioChannel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setAudioChannel:](v5, "setAudioChannel:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (MTSchemaMTAppInvocationMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MTSchemaMTAppInvocationMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MTSchemaMTAppInvocationMetadata *)self dictionaryRepresentation];
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
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = [(MTSchemaMTAppInvocationMetadata *)self audioChannel]- 1;
    if (v4 > 4)
    {
      v5 = @"MTAPPAUDIOCHANNEL_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D9B38[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioChannel"];
  }

  if (self->_autoTranslateSessionId)
  {
    v6 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"autoTranslateSessionId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"autoTranslateSessionId"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v10 = [(MTSchemaMTAppInvocationMetadata *)self conversationTabView];
    v11 = @"MTAPPCONVERSATIONTABVIEW_UNKNOWN";
    if (v10 == 1)
    {
      v11 = @"MTAPPCONVERSATIONTABVIEW_FACE_TO_FACE";
    }

    if (v10 == 2)
    {
      v12 = @"MTAPPCONVERSATIONTABVIEW_SIDE_BY_SIDE";
    }

    else
    {
      v12 = v11;
    }

    [v3 setObject:v12 forKeyedSubscript:@"conversationTabView"];
    has = self->_has;
  }

  if (has)
  {
    v13 = [(MTSchemaMTAppInvocationMetadata *)self displayMode]- 1;
    if (v13 > 2)
    {
      v14 = @"MTAPPDISPLAYMODE_UNKNOWN";
    }

    else
    {
      v14 = off_1E78D9B60[v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"displayMode"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTAppInvocationMetadata isGenderAlternativeEnabled](self, "isGenderAlternativeEnabled")}];
    [v3 setObject:v15 forKeyedSubscript:@"isGenderAlternativeEnabled"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTAppInvocationMetadata isPlayTranslationsEnabled](self, "isPlayTranslationsEnabled")}];
    [v3 setObject:v16 forKeyedSubscript:@"isPlayTranslationsEnabled"];
  }

  if (self->_localePair)
  {
    v17 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"localePair"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"localePair"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v20 = [(MTSchemaMTAppInvocationMetadata *)self tabName]- 1;
    if (v20 > 3)
    {
      v21 = @"MTAPPTABNAME_UNKNOWN";
    }

    else
    {
      v21 = off_1E78D9B78[v20];
    }

    [v3 setObject:v21 forKeyedSubscript:@"tabName"];
  }

  if (self->_tabSessionId)
  {
    v22 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"tabSessionId"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"tabSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_displayMode;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(MTSchemaMTLocalePair *)self->_localePair hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_isGenderAlternativeEnabled;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_tabName;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [(SISchemaUUID *)self->_tabSessionId hash];
  v8 = [(SISchemaUUID *)self->_autoTranslateSessionId hash];
  if ((*&self->_has & 8) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v9 = 2654435761 * self->_isPlayTranslationsEnabled;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = 2654435761 * self->_conversationTabView;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v11 = 2654435761 * self->_audioChannel;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 1) != (v4[60] & 1))
  {
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    displayMode = self->_displayMode;
    if (displayMode != [v4 displayMode])
    {
      goto LABEL_27;
    }
  }

  v6 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
  v7 = [v4 localePair];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_26;
  }

  v8 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
  if (v8)
  {
    v9 = v8;
    v10 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
    v11 = [v4 localePair];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = (*&has >> 1) & 1;
  v15 = v4[60];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v14)
  {
    isGenderAlternativeEnabled = self->_isGenderAlternativeEnabled;
    if (isGenderAlternativeEnabled != [v4 isGenderAlternativeEnabled])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v15 = v4[60];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v17)
  {
    tabName = self->_tabName;
    if (tabName != [v4 tabName])
    {
      goto LABEL_27;
    }
  }

  v6 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
  v7 = [v4 tabSessionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_26;
  }

  v19 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
  if (v19)
  {
    v20 = v19;
    v21 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
    v22 = [v4 tabSessionId];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v6 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
  v7 = [v4 autoTranslateSessionId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v24 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
  if (v24)
  {
    v25 = v24;
    v26 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
    v27 = [v4 autoTranslateSessionId];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v31 = self->_has;
  v32 = (*&v31 >> 3) & 1;
  v33 = v4[60];
  if (v32 == ((v33 >> 3) & 1))
  {
    if (v32)
    {
      isPlayTranslationsEnabled = self->_isPlayTranslationsEnabled;
      if (isPlayTranslationsEnabled != [v4 isPlayTranslationsEnabled])
      {
        goto LABEL_27;
      }

      v31 = self->_has;
      v33 = v4[60];
    }

    v35 = (*&v31 >> 4) & 1;
    if (v35 == ((v33 >> 4) & 1))
    {
      if (v35)
      {
        conversationTabView = self->_conversationTabView;
        if (conversationTabView != [v4 conversationTabView])
        {
          goto LABEL_27;
        }

        v31 = self->_has;
        v33 = v4[60];
      }

      v37 = (*&v31 >> 5) & 1;
      if (v37 == ((v33 >> 5) & 1))
      {
        if (!v37 || (audioChannel = self->_audioChannel, audioChannel == [v4 audioChannel]))
        {
          v29 = 1;
          goto LABEL_28;
        }
      }
    }
  }

LABEL_27:
  v29 = 0;
LABEL_28:

  return v29;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(MTSchemaMTAppInvocationMetadata *)self localePair];

  if (v4)
  {
    v5 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];

  if (v7)
  {
    v8 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];

  if (v9)
  {
    v10 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
    PBDataWriterWriteSubmessage();
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = self->_has;
    if ((v11 & 0x10) == 0)
    {
LABEL_15:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_16:
    PBDataWriterWriteInt32Field();
  }

LABEL_17:
}

- (void)setHasAudioChannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasConversationTabView:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsPlayTranslationsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTabName:(BOOL)a3
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

- (void)setHasIsGenderAlternativeEnabled:(BOOL)a3
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
  v16.super_class = MTSchemaMTAppInvocationMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MTSchemaMTAppInvocationMetadata *)self deleteLocalePair];
  }

  v9 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MTSchemaMTAppInvocationMetadata *)self deleteTabSessionId];
  }

  v12 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MTSchemaMTAppInvocationMetadata *)self deleteAutoTranslateSessionId];
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