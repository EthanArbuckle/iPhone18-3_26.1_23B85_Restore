@interface LTSchemaSpeechTranslationEvent
- (BOOL)isEqual:(id)a3;
- (LTSchemaSpeechTranslationEvent)initWithDictionary:(id)a3;
- (LTSchemaSpeechTranslationEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAutomaticLID:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasTimeToCancel:(BOOL)a3;
- (void)setHasTimeToFirstPartialDisplayed:(BOOL)a3;
- (void)setHasTimeToRecordingDialogDismissed:(BOOL)a3;
- (void)setHasTimeToShowTranslationCard:(BOOL)a3;
- (void)setHasUiMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation LTSchemaSpeechTranslationEvent

- (LTSchemaSpeechTranslationEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = LTSchemaSpeechTranslationEvent;
  v5 = [(LTSchemaSpeechTranslationEvent *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LTSchemaTask alloc] initWithDictionary:v6];
      [(LTSchemaSpeechTranslationEvent *)v5 setTask:v7];
    }

    v32 = v6;
    v8 = [v4 objectForKeyedSubscript:@"sessionID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaSpeechTranslationEvent *)v5 setSessionID:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaSpeechTranslationEvent *)v5 setRequestID:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"inRestrictedMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setInRestrictedMode:](v5, "setInRestrictedMode:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"isAutomaticLID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setIsAutomaticLID:](v5, "setIsAutomaticLID:", [v13 BOOLValue]);
    }

    v30 = v12;
    v14 = [v4 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[LTSchemaError alloc] initWithDictionary:v14];
      [(LTSchemaSpeechTranslationEvent *)v5 setError:v15];
    }

    v28 = v14;
    v16 = [v4 objectForKeyedSubscript:@"uiMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setUiMode:](v5, "setUiMode:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:{@"mobileAssetConfigVersion", v16}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(LTSchemaSpeechTranslationEvent *)v5 setMobileAssetConfigVersion:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"timeToFirstPartialDisplayed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setTimeToFirstPartialDisplayed:](v5, "setTimeToFirstPartialDisplayed:", [v19 unsignedIntValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"timeToRecordingDialogDismissed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setTimeToRecordingDialogDismissed:](v5, "setTimeToRecordingDialogDismissed:", [v20 unsignedIntValue]);
    }

    v29 = v13;
    v31 = v8;
    v21 = [v4 objectForKeyedSubscript:@"timeToShowTranslationCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setTimeToShowTranslationCard:](v5, "setTimeToShowTranslationCard:", [v21 unsignedIntValue]);
    }

    v22 = v10;
    v23 = [v4 objectForKeyedSubscript:@"timeToCancel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setTimeToCancel:](v5, "setTimeToCancel:", [v23 unsignedIntValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaSpeechTranslationEvent setStatus:](v5, "setStatus:", [v24 intValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (LTSchemaSpeechTranslationEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LTSchemaSpeechTranslationEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LTSchemaSpeechTranslationEvent *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    v4 = [(LTSchemaSpeechTranslationEvent *)self error];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"error"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"error"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[LTSchemaSpeechTranslationEvent inRestrictedMode](self, "inRestrictedMode")}];
    [v3 setObject:v8 forKeyedSubscript:@"inRestrictedMode"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[LTSchemaSpeechTranslationEvent isAutomaticLID](self, "isAutomaticLID")}];
    [v3 setObject:v9 forKeyedSubscript:@"isAutomaticLID"];
  }

  if (self->_mobileAssetConfigVersion)
  {
    v10 = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"mobileAssetConfigVersion"];
  }

  if (self->_requestID)
  {
    v12 = [(LTSchemaSpeechTranslationEvent *)self requestID];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"requestID"];
  }

  if (self->_sessionID)
  {
    v14 = [(LTSchemaSpeechTranslationEvent *)self sessionID];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"sessionID"];
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

    [v3 setObject:v17 forKeyedSubscript:@"status"];
  }

  if (self->_task)
  {
    v18 = [(LTSchemaSpeechTranslationEvent *)self task];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"task"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"task"];
    }
  }

  v21 = self->_has;
  if ((v21 & 0x40) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaSpeechTranslationEvent timeToCancel](self, "timeToCancel")}];
    [v3 setObject:v22 forKeyedSubscript:@"timeToCancel"];

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
  [v3 setObject:v23 forKeyedSubscript:@"timeToFirstPartialDisplayed"];

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
    [v3 setObject:v25 forKeyedSubscript:@"timeToShowTranslationCard"];

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

    [v3 setObject:v27 forKeyedSubscript:@"uiMode"];
    goto LABEL_40;
  }

LABEL_34:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaSpeechTranslationEvent timeToRecordingDialogDismissed](self, "timeToRecordingDialogDismissed")}];
  [v3 setObject:v24 forKeyedSubscript:@"timeToRecordingDialogDismissed"];

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
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(LTSchemaSpeechTranslationEvent *)self task];
  v6 = [v4 task];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(LTSchemaSpeechTranslationEvent *)self task];
  if (v7)
  {
    v8 = v7;
    v9 = [(LTSchemaSpeechTranslationEvent *)self task];
    v10 = [v4 task];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaSpeechTranslationEvent *)self sessionID];
  v6 = [v4 sessionID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(LTSchemaSpeechTranslationEvent *)self sessionID];
  if (v12)
  {
    v13 = v12;
    v14 = [(LTSchemaSpeechTranslationEvent *)self sessionID];
    v15 = [v4 sessionID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaSpeechTranslationEvent *)self requestID];
  v6 = [v4 requestID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(LTSchemaSpeechTranslationEvent *)self requestID];
  if (v17)
  {
    v18 = v17;
    v19 = [(LTSchemaSpeechTranslationEvent *)self requestID];
    v20 = [v4 requestID];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = v4[84];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_37;
  }

  if (*&has)
  {
    inRestrictedMode = self->_inRestrictedMode;
    if (inRestrictedMode != [v4 inRestrictedMode])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v23 = v4[84];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_37;
  }

  if (v25)
  {
    isAutomaticLID = self->_isAutomaticLID;
    if (isAutomaticLID != [v4 isAutomaticLID])
    {
      goto LABEL_37;
    }
  }

  v5 = [(LTSchemaSpeechTranslationEvent *)self error];
  v6 = [v4 error];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(LTSchemaSpeechTranslationEvent *)self error];
  if (v27)
  {
    v28 = v27;
    v29 = [(LTSchemaSpeechTranslationEvent *)self error];
    v30 = [v4 error];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v32 = (*&self->_has >> 2) & 1;
  if (v32 != ((v4[84] >> 2) & 1))
  {
    goto LABEL_37;
  }

  if (v32)
  {
    uiMode = self->_uiMode;
    if (uiMode != [v4 uiMode])
    {
      goto LABEL_37;
    }
  }

  v5 = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];
  v6 = [v4 mobileAssetConfigVersion];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  v34 = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];
  if (v34)
  {
    v35 = v34;
    v36 = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];
    v37 = [v4 mobileAssetConfigVersion];
    v38 = [v36 isEqual:v37];

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
  v43 = v4[84];
  if (v42 == ((v43 >> 3) & 1))
  {
    if (v42)
    {
      timeToFirstPartialDisplayed = self->_timeToFirstPartialDisplayed;
      if (timeToFirstPartialDisplayed != [v4 timeToFirstPartialDisplayed])
      {
        goto LABEL_37;
      }

      v41 = self->_has;
      v43 = v4[84];
    }

    v45 = (*&v41 >> 4) & 1;
    if (v45 == ((v43 >> 4) & 1))
    {
      if (v45)
      {
        timeToRecordingDialogDismissed = self->_timeToRecordingDialogDismissed;
        if (timeToRecordingDialogDismissed != [v4 timeToRecordingDialogDismissed])
        {
          goto LABEL_37;
        }

        v41 = self->_has;
        v43 = v4[84];
      }

      v47 = (*&v41 >> 5) & 1;
      if (v47 == ((v43 >> 5) & 1))
      {
        if (v47)
        {
          timeToShowTranslationCard = self->_timeToShowTranslationCard;
          if (timeToShowTranslationCard != [v4 timeToShowTranslationCard])
          {
            goto LABEL_37;
          }

          v41 = self->_has;
          v43 = v4[84];
        }

        v49 = (*&v41 >> 6) & 1;
        if (v49 == ((v43 >> 6) & 1))
        {
          if (v49)
          {
            timeToCancel = self->_timeToCancel;
            if (timeToCancel != [v4 timeToCancel])
            {
              goto LABEL_37;
            }

            v41 = self->_has;
            v43 = v4[84];
          }

          if (((v43 ^ *&v41) & 0x80) == 0)
          {
            if ((*&v41 & 0x80) == 0 || (status = self->_status, status == [v4 status]))
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

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(LTSchemaSpeechTranslationEvent *)self task];

  if (v4)
  {
    v5 = [(LTSchemaSpeechTranslationEvent *)self task];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(LTSchemaSpeechTranslationEvent *)self sessionID];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(LTSchemaSpeechTranslationEvent *)self requestID];

  if (v7)
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

  v9 = [(LTSchemaSpeechTranslationEvent *)self error];

  if (v9)
  {
    v10 = [(LTSchemaSpeechTranslationEvent *)self error];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = [(LTSchemaSpeechTranslationEvent *)self mobileAssetConfigVersion];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  v13 = v14;
  if ((v12 & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    v13 = v14;
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
  v13 = v14;
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
    v13 = v14;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  v13 = v14;
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
  v13 = v14;
LABEL_22:
}

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasTimeToCancel:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasTimeToShowTranslationCard:(BOOL)a3
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

- (void)setHasTimeToRecordingDialogDismissed:(BOOL)a3
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

- (void)setHasTimeToFirstPartialDisplayed:(BOOL)a3
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

- (void)setHasUiMode:(BOOL)a3
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

- (void)setHasIsAutomaticLID:(BOOL)a3
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
  v13.receiver = self;
  v13.super_class = LTSchemaSpeechTranslationEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(LTSchemaSpeechTranslationEvent *)self task];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(LTSchemaSpeechTranslationEvent *)self deleteTask];
  }

  v9 = [(LTSchemaSpeechTranslationEvent *)self error];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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