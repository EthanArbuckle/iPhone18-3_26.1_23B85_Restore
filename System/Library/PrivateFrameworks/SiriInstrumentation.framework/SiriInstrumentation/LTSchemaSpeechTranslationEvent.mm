@interface LTSchemaSpeechTranslationEvent
- (BOOL)isEqual:(id)equal;
- (LTSchemaSpeechTranslationEvent)initWithDictionary:(id)dictionary;
- (LTSchemaSpeechTranslationEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAutomaticLID:(BOOL)d;
- (void)setHasStatus:(BOOL)status;
- (void)setHasTimeToCancel:(BOOL)cancel;
- (void)setHasTimeToFirstPartialDisplayed:(BOOL)displayed;
- (void)setHasTimeToRecordingDialogDismissed:(BOOL)dismissed;
- (void)setHasTimeToShowTranslationCard:(BOOL)card;
- (void)setHasUiMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaSpeechTranslationEvent

- (LTSchemaSpeechTranslationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = LTSchemaSpeechTranslationEvent;
  v5 = [(LTSchemaSpeechTranslationEvent *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LTSchemaTask alloc] initWithDictionary:v6];
      [(LTSchemaSpeechTranslationEvent *)v5 setTask:v7];
    }

    v32 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaSpeechTranslationEvent *)v5 setSessionID:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaSpeechTranslationEvent *)v5 setRequestID:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"inRestrictedMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setInRestrictedMode:](v5, "setInRestrictedMode:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isAutomaticLID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setIsAutomaticLID:](v5, "setIsAutomaticLID:", [v13 BOOLValue]);
    }

    v30 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[LTSchemaError alloc] initWithDictionary:v14];
      [(LTSchemaSpeechTranslationEvent *)v5 setError:v15];
    }

    v28 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"uiMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setUiMode:](v5, "setUiMode:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:{@"mobileAssetConfigVersion", v16}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(LTSchemaSpeechTranslationEvent *)v5 setMobileAssetConfigVersion:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"timeToFirstPartialDisplayed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setTimeToFirstPartialDisplayed:](v5, "setTimeToFirstPartialDisplayed:", [v19 unsignedIntValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"timeToRecordingDialogDismissed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setTimeToRecordingDialogDismissed:](v5, "setTimeToRecordingDialogDismissed:", [v20 unsignedIntValue]);
    }

    v29 = v13;
    v31 = v8;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"timeToShowTranslationCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setTimeToShowTranslationCard:](v5, "setTimeToShowTranslationCard:", [v21 unsignedIntValue]);
    }

    v22 = v10;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"timeToCancel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setTimeToCancel:](v5, "setTimeToCancel:", [v23 unsignedIntValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setStatus:](v5, "setStatus:", [v24 intValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (LTSchemaSpeechTranslationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaSpeechTranslationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaSpeechTranslationEvent *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    error = [(LTSchemaSpeechTranslationEvent *)self error];
    dictionaryRepresentation = [error dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"error"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"error"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[LTSchemaSpeechTranslationEvent inRestrictedMode](self, "inRestrictedMode")}];
    [dictionary setObject:v8 forKeyedSubscript:@"inRestrictedMode"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[LTSchemaSpeechTranslationEvent isAutomaticLID](self, "isAutomaticLID")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isAutomaticLID"];
  }

  if (self->_mobileAssetConfigVersion)
  {
    mobileAssetConfigVersion = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];
    v11 = [mobileAssetConfigVersion copy];
    [dictionary setObject:v11 forKeyedSubscript:@"mobileAssetConfigVersion"];
  }

  if (self->_requestID)
  {
    requestID = [(LTSchemaSpeechTranslationEvent *)self requestID];
    v13 = [requestID copy];
    [dictionary setObject:v13 forKeyedSubscript:@"requestID"];
  }

  if (self->_sessionID)
  {
    sessionID = [(LTSchemaSpeechTranslationEvent *)self sessionID];
    v15 = [sessionID copy];
    [dictionary setObject:v15 forKeyedSubscript:@"sessionID"];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v16 = [(LTSchemaSpeechTranslationEvent *)self status]- 1;
    if (v16 > 2)
    {
      v17 = @"SPEECHTRANSLATIONSTATUS_UNKNOWN";
    }

    else
    {
      v17 = off_1E78D8D88[v16];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"status"];
  }

  if (self->_task)
  {
    task = [(LTSchemaSpeechTranslationEvent *)self task];
    dictionaryRepresentation2 = [task dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"task"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"task"];
    }
  }

  v21 = self->_has;
  if ((v21 & 0x40) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaSpeechTranslationEvent timeToCancel](self, "timeToCancel")}];
    [dictionary setObject:v22 forKeyedSubscript:@"timeToCancel"];

    v21 = self->_has;
    if ((v21 & 8) == 0)
    {
LABEL_28:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_28;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaSpeechTranslationEvent timeToFirstPartialDisplayed](self, "timeToFirstPartialDisplayed")}];
  [dictionary setObject:v23 forKeyedSubscript:@"timeToFirstPartialDisplayed"];

  v21 = self->_has;
  if ((v21 & 0x10) == 0)
  {
LABEL_29:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_30;
    }

LABEL_35:
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaSpeechTranslationEvent timeToShowTranslationCard](self, "timeToShowTranslationCard")}];
    [dictionary setObject:v25 forKeyedSubscript:@"timeToShowTranslationCard"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_40;
    }

LABEL_36:
    v26 = [(LTSchemaSpeechTranslationEvent *)self uiMode]- 1;
    if (v26 > 2)
    {
      v27 = @"UI_MODE_UNKNOWN";
    }

    else
    {
      v27 = off_1E78D8DA0[v26];
    }

    [dictionary setObject:v27 forKeyedSubscript:@"uiMode"];
    goto LABEL_40;
  }

LABEL_34:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaSpeechTranslationEvent timeToRecordingDialogDismissed](self, "timeToRecordingDialogDismissed")}];
  [dictionary setObject:v24 forKeyedSubscript:@"timeToRecordingDialogDismissed"];

  v21 = self->_has;
  if ((v21 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_30:
  if ((v21 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_40:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(LTSchemaTask *)self->_task hash];
  v4 = [(NSString *)self->_sessionID hash];
  v5 = [(NSString *)self->_requestID hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_inRestrictedMode;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_isAutomaticLID;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [(LTSchemaError *)self->_error hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_uiMode;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_mobileAssetConfigVersion hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_timeToFirstPartialDisplayed;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_11:
      v12 = 2654435761 * self->_timeToRecordingDialogDismissed;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v11 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }
  }

  v12 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_timeToShowTranslationCard;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    v14 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_17:
  v13 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  v14 = 2654435761 * self->_timeToCancel;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  v15 = 2654435761 * self->_status;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  task = [(LTSchemaSpeechTranslationEvent *)self task];
  task2 = [equalCopy task];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_36;
  }

  task3 = [(LTSchemaSpeechTranslationEvent *)self task];
  if (task3)
  {
    v8 = task3;
    task4 = [(LTSchemaSpeechTranslationEvent *)self task];
    task5 = [equalCopy task];
    v11 = [task4 isEqual:task5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  task = [(LTSchemaSpeechTranslationEvent *)self sessionID];
  task2 = [equalCopy sessionID];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_36;
  }

  sessionID = [(LTSchemaSpeechTranslationEvent *)self sessionID];
  if (sessionID)
  {
    v13 = sessionID;
    sessionID2 = [(LTSchemaSpeechTranslationEvent *)self sessionID];
    sessionID3 = [equalCopy sessionID];
    v16 = [sessionID2 isEqual:sessionID3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  task = [(LTSchemaSpeechTranslationEvent *)self requestID];
  task2 = [equalCopy requestID];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_36;
  }

  requestID = [(LTSchemaSpeechTranslationEvent *)self requestID];
  if (requestID)
  {
    v18 = requestID;
    requestID2 = [(LTSchemaSpeechTranslationEvent *)self requestID];
    requestID3 = [equalCopy requestID];
    v21 = [requestID2 isEqual:requestID3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = equalCopy[84];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_37;
  }

  if (*&has)
  {
    inRestrictedMode = self->_inRestrictedMode;
    if (inRestrictedMode != [equalCopy inRestrictedMode])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v23 = equalCopy[84];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_37;
  }

  if (v25)
  {
    isAutomaticLID = self->_isAutomaticLID;
    if (isAutomaticLID != [equalCopy isAutomaticLID])
    {
      goto LABEL_37;
    }
  }

  task = [(LTSchemaSpeechTranslationEvent *)self error];
  task2 = [equalCopy error];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_36;
  }

  error = [(LTSchemaSpeechTranslationEvent *)self error];
  if (error)
  {
    v28 = error;
    error2 = [(LTSchemaSpeechTranslationEvent *)self error];
    error3 = [equalCopy error];
    v31 = [error2 isEqual:error3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v32 = (*&self->_has >> 2) & 1;
  if (v32 != ((equalCopy[84] >> 2) & 1))
  {
    goto LABEL_37;
  }

  if (v32)
  {
    uiMode = self->_uiMode;
    if (uiMode != [equalCopy uiMode])
    {
      goto LABEL_37;
    }
  }

  task = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];
  task2 = [equalCopy mobileAssetConfigVersion];
  if ((task != 0) == (task2 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  mobileAssetConfigVersion = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];
  if (mobileAssetConfigVersion)
  {
    v35 = mobileAssetConfigVersion;
    mobileAssetConfigVersion2 = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];
    mobileAssetConfigVersion3 = [equalCopy mobileAssetConfigVersion];
    v38 = [mobileAssetConfigVersion2 isEqual:mobileAssetConfigVersion3];

    if (!v38)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v41 = self->_has;
  v42 = (*&v41 >> 3) & 1;
  v43 = equalCopy[84];
  if (v42 == ((v43 >> 3) & 1))
  {
    if (v42)
    {
      timeToFirstPartialDisplayed = self->_timeToFirstPartialDisplayed;
      if (timeToFirstPartialDisplayed != [equalCopy timeToFirstPartialDisplayed])
      {
        goto LABEL_37;
      }

      v41 = self->_has;
      v43 = equalCopy[84];
    }

    v45 = (*&v41 >> 4) & 1;
    if (v45 == ((v43 >> 4) & 1))
    {
      if (v45)
      {
        timeToRecordingDialogDismissed = self->_timeToRecordingDialogDismissed;
        if (timeToRecordingDialogDismissed != [equalCopy timeToRecordingDialogDismissed])
        {
          goto LABEL_37;
        }

        v41 = self->_has;
        v43 = equalCopy[84];
      }

      v47 = (*&v41 >> 5) & 1;
      if (v47 == ((v43 >> 5) & 1))
      {
        if (v47)
        {
          timeToShowTranslationCard = self->_timeToShowTranslationCard;
          if (timeToShowTranslationCard != [equalCopy timeToShowTranslationCard])
          {
            goto LABEL_37;
          }

          v41 = self->_has;
          v43 = equalCopy[84];
        }

        v49 = (*&v41 >> 6) & 1;
        if (v49 == ((v43 >> 6) & 1))
        {
          if (v49)
          {
            timeToCancel = self->_timeToCancel;
            if (timeToCancel != [equalCopy timeToCancel])
            {
              goto LABEL_37;
            }

            v41 = self->_has;
            v43 = equalCopy[84];
          }

          if (((v43 ^ *&v41) & 0x80) == 0)
          {
            if ((*&v41 & 0x80) == 0 || (status = self->_status, status == [equalCopy status]))
            {
              v39 = 1;
              goto LABEL_38;
            }
          }
        }
      }
    }
  }

LABEL_37:
  v39 = 0;
LABEL_38:

  return v39;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  task = [(LTSchemaSpeechTranslationEvent *)self task];

  if (task)
  {
    task2 = [(LTSchemaSpeechTranslationEvent *)self task];
    PBDataWriterWriteSubmessage();
  }

  sessionID = [(LTSchemaSpeechTranslationEvent *)self sessionID];

  if (sessionID)
  {
    PBDataWriterWriteStringField();
  }

  requestID = [(LTSchemaSpeechTranslationEvent *)self requestID];

  if (requestID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  error = [(LTSchemaSpeechTranslationEvent *)self error];

  if (error)
  {
    error2 = [(LTSchemaSpeechTranslationEvent *)self error];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  mobileAssetConfigVersion = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];

  if (mobileAssetConfigVersion)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  v13 = toCopy;
  if ((v12 & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    v13 = toCopy;
    v12 = self->_has;
    if ((v12 & 0x10) == 0)
    {
LABEL_19:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_19;
  }

  PBDataWriterWriteUint32Field();
  v13 = toCopy;
  v12 = self->_has;
  if ((v12 & 0x20) == 0)
  {
LABEL_20:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_21;
    }

LABEL_28:
    PBDataWriterWriteUint32Field();
    v13 = toCopy;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  v13 = toCopy;
  v12 = self->_has;
  if ((v12 & 0x40) != 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_29:
  PBDataWriterWriteInt32Field();
  v13 = toCopy;
LABEL_22:
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasTimeToCancel:(BOOL)cancel
{
  if (cancel)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasTimeToShowTranslationCard:(BOOL)card
{
  if (card)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTimeToRecordingDialogDismissed:(BOOL)dismissed
{
  if (dismissed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTimeToFirstPartialDisplayed:(BOOL)displayed
{
  if (displayed)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUiMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsAutomaticLID:(BOOL)d
{
  if (d)
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
  v13.receiver = self;
  v13.super_class = LTSchemaSpeechTranslationEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  task = [(LTSchemaSpeechTranslationEvent *)self task];
  v7 = [task applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(LTSchemaSpeechTranslationEvent *)self deleteTask];
  }

  error = [(LTSchemaSpeechTranslationEvent *)self error];
  v10 = [error applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(LTSchemaSpeechTranslationEvent *)self deleteError];
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