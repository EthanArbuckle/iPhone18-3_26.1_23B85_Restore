@interface MTSchemaMTAppInvocationMetadata
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTAppInvocationMetadata)initWithDictionary:(id)dictionary;
- (MTSchemaMTAppInvocationMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioChannel:(BOOL)channel;
- (void)setHasConversationTabView:(BOOL)view;
- (void)setHasIsGenderAlternativeEnabled:(BOOL)enabled;
- (void)setHasIsPlayTranslationsEnabled:(BOOL)enabled;
- (void)setHasTabName:(BOOL)name;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTAppInvocationMetadata

- (MTSchemaMTAppInvocationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = MTSchemaMTAppInvocationMetadata;
  v5 = [(MTSchemaMTAppInvocationMetadata *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"displayMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setDisplayMode:](v5, "setDisplayMode:", [v6 intValue]);
    }

    v21 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"localePair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[MTSchemaMTLocalePair alloc] initWithDictionary:v7];
      [(MTSchemaMTAppInvocationMetadata *)v5 setLocalePair:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:{@"isGenderAlternativeEnabled", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setIsGenderAlternativeEnabled:](v5, "setIsGenderAlternativeEnabled:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"tabName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setTabName:](v5, "setTabName:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"tabSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(MTSchemaMTAppInvocationMetadata *)v5 setTabSessionId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"autoTranslateSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(MTSchemaMTAppInvocationMetadata *)v5 setAutoTranslateSessionId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isPlayTranslationsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setIsPlayTranslationsEnabled:](v5, "setIsPlayTranslationsEnabled:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"conversationTabView"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setConversationTabView:](v5, "setConversationTabView:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"audioChannel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTAppInvocationMetadata setAudioChannel:](v5, "setAudioChannel:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (MTSchemaMTAppInvocationMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTAppInvocationMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTAppInvocationMetadata *)self dictionaryRepresentation];
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

    [dictionary setObject:v5 forKeyedSubscript:@"audioChannel"];
  }

  if (self->_autoTranslateSessionId)
  {
    autoTranslateSessionId = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
    dictionaryRepresentation = [autoTranslateSessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"autoTranslateSessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"autoTranslateSessionId"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    conversationTabView = [(MTSchemaMTAppInvocationMetadata *)self conversationTabView];
    v11 = @"MTAPPCONVERSATIONTABVIEW_UNKNOWN";
    if (conversationTabView == 1)
    {
      v11 = @"MTAPPCONVERSATIONTABVIEW_FACE_TO_FACE";
    }

    if (conversationTabView == 2)
    {
      v12 = @"MTAPPCONVERSATIONTABVIEW_SIDE_BY_SIDE";
    }

    else
    {
      v12 = v11;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"conversationTabView"];
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

    [dictionary setObject:v14 forKeyedSubscript:@"displayMode"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTAppInvocationMetadata isGenderAlternativeEnabled](self, "isGenderAlternativeEnabled")}];
    [dictionary setObject:v15 forKeyedSubscript:@"isGenderAlternativeEnabled"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTAppInvocationMetadata isPlayTranslationsEnabled](self, "isPlayTranslationsEnabled")}];
    [dictionary setObject:v16 forKeyedSubscript:@"isPlayTranslationsEnabled"];
  }

  if (self->_localePair)
  {
    localePair = [(MTSchemaMTAppInvocationMetadata *)self localePair];
    dictionaryRepresentation2 = [localePair dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"localePair"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"localePair"];
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

    [dictionary setObject:v21 forKeyedSubscript:@"tabName"];
  }

  if (self->_tabSessionId)
  {
    tabSessionId = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
    dictionaryRepresentation3 = [tabSessionId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"tabSessionId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"tabSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 1) != (equalCopy[60] & 1))
  {
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    displayMode = self->_displayMode;
    if (displayMode != [equalCopy displayMode])
    {
      goto LABEL_27;
    }
  }

  localePair = [(MTSchemaMTAppInvocationMetadata *)self localePair];
  localePair2 = [equalCopy localePair];
  if ((localePair != 0) == (localePair2 == 0))
  {
    goto LABEL_26;
  }

  localePair3 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
  if (localePair3)
  {
    v9 = localePair3;
    localePair4 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
    localePair5 = [equalCopy localePair];
    v12 = [localePair4 isEqual:localePair5];

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
  v15 = equalCopy[60];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v14)
  {
    isGenderAlternativeEnabled = self->_isGenderAlternativeEnabled;
    if (isGenderAlternativeEnabled != [equalCopy isGenderAlternativeEnabled])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v15 = equalCopy[60];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v17)
  {
    tabName = self->_tabName;
    if (tabName != [equalCopy tabName])
    {
      goto LABEL_27;
    }
  }

  localePair = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
  localePair2 = [equalCopy tabSessionId];
  if ((localePair != 0) == (localePair2 == 0))
  {
    goto LABEL_26;
  }

  tabSessionId = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
  if (tabSessionId)
  {
    v20 = tabSessionId;
    tabSessionId2 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
    tabSessionId3 = [equalCopy tabSessionId];
    v23 = [tabSessionId2 isEqual:tabSessionId3];

    if (!v23)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  localePair = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
  localePair2 = [equalCopy autoTranslateSessionId];
  if ((localePair != 0) == (localePair2 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  autoTranslateSessionId = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
  if (autoTranslateSessionId)
  {
    v25 = autoTranslateSessionId;
    autoTranslateSessionId2 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
    autoTranslateSessionId3 = [equalCopy autoTranslateSessionId];
    v28 = [autoTranslateSessionId2 isEqual:autoTranslateSessionId3];

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
  v33 = equalCopy[60];
  if (v32 == ((v33 >> 3) & 1))
  {
    if (v32)
    {
      isPlayTranslationsEnabled = self->_isPlayTranslationsEnabled;
      if (isPlayTranslationsEnabled != [equalCopy isPlayTranslationsEnabled])
      {
        goto LABEL_27;
      }

      v31 = self->_has;
      v33 = equalCopy[60];
    }

    v35 = (*&v31 >> 4) & 1;
    if (v35 == ((v33 >> 4) & 1))
    {
      if (v35)
      {
        conversationTabView = self->_conversationTabView;
        if (conversationTabView != [equalCopy conversationTabView])
        {
          goto LABEL_27;
        }

        v31 = self->_has;
        v33 = equalCopy[60];
      }

      v37 = (*&v31 >> 5) & 1;
      if (v37 == ((v33 >> 5) & 1))
      {
        if (!v37 || (audioChannel = self->_audioChannel, audioChannel == [equalCopy audioChannel]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  localePair = [(MTSchemaMTAppInvocationMetadata *)self localePair];

  if (localePair)
  {
    localePair2 = [(MTSchemaMTAppInvocationMetadata *)self localePair];
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

  tabSessionId = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];

  if (tabSessionId)
  {
    tabSessionId2 = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
    PBDataWriterWriteSubmessage();
  }

  autoTranslateSessionId = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];

  if (autoTranslateSessionId)
  {
    autoTranslateSessionId2 = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
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

- (void)setHasAudioChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasConversationTabView:(BOOL)view
{
  if (view)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsPlayTranslationsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTabName:(BOOL)name
{
  if (name)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsGenderAlternativeEnabled:(BOOL)enabled
{
  if (enabled)
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
  v16.super_class = MTSchemaMTAppInvocationMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  localePair = [(MTSchemaMTAppInvocationMetadata *)self localePair];
  v7 = [localePair applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MTSchemaMTAppInvocationMetadata *)self deleteLocalePair];
  }

  tabSessionId = [(MTSchemaMTAppInvocationMetadata *)self tabSessionId];
  v10 = [tabSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MTSchemaMTAppInvocationMetadata *)self deleteTabSessionId];
  }

  autoTranslateSessionId = [(MTSchemaMTAppInvocationMetadata *)self autoTranslateSessionId];
  v13 = [autoTranslateSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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