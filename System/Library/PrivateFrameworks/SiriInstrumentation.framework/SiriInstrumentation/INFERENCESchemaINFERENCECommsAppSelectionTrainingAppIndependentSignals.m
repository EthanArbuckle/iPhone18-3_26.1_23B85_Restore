@interface INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppResolutionType:(BOOL)a3;
- (void)setHasCommunicationType:(BOOL)a3;
- (void)setHasRequestOriginLanguage:(BOOL)a3;
- (void)setHasUserPersona:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"requestOriginLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals setRequestOriginLocale:](v5, "setRequestOriginLocale:", [v6 longLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"requestOriginLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals setRequestOriginLanguage:](v5, "setRequestOriginLanguage:", [v7 longLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"communicationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals setCommunicationType:](v5, "setCommunicationType:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"appResolutionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals setAppResolutionType:](v5, "setAppResolutionType:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"userPersona"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals setUserPersona:](v5, "setUserPersona:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v5 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals *)self appResolutionType]- 1;
    if (v5 > 9)
    {
      v6 = @"INFERENCEAPPRESOLUTIONTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D88B8[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"appResolutionType"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals communicationType](self, "communicationType")}];
    [v3 setObject:v7 forKeyedSubscript:@"communicationType"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals requestOriginLocale](self, "requestOriginLocale")}];
      [v3 setObject:v9 forKeyedSubscript:@"requestOriginLocale"];

      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_18;
      }

LABEL_14:
      v10 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals *)self userPersona]- 1;
      if (v10 > 5)
      {
        v11 = @"INFERENCEAPPSELECTIONUSERPERSONA_UNKNOWN";
      }

      else
      {
        v11 = off_1E78D8908[v10];
      }

      [v3 setObject:v11 forKeyedSubscript:@"userPersona"];
      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals requestOriginLanguage](self, "requestOriginLanguage")}];
  [v3 setObject:v8 forKeyedSubscript:@"requestOriginLanguage"];

  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((has & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_requestOriginLocale;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_requestOriginLanguage;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_communicationType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_appResolutionType;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_userPersona;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    requestOriginLocale = self->_requestOriginLocale;
    if (requestOriginLocale != [v4 requestOriginLocale])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    requestOriginLanguage = self->_requestOriginLanguage;
    if (requestOriginLanguage != [v4 requestOriginLanguage])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    communicationType = self->_communicationType;
    if (communicationType != [v4 communicationType])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    appResolutionType = self->_appResolutionType;
    if (appResolutionType == [v4 appResolutionType])
    {
      has = self->_has;
      v6 = v4[40];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    userPersona = self->_userPersona;
    if (userPersona != [v4 userPersona])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
}

- (void)setHasUserPersona:(BOOL)a3
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

- (void)setHasAppResolutionType:(BOOL)a3
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

- (void)setHasCommunicationType:(BOOL)a3
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

- (void)setHasRequestOriginLanguage:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end