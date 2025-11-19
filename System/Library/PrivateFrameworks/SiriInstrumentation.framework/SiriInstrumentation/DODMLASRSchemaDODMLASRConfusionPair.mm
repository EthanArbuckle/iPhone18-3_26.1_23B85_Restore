@interface DODMLASRSchemaDODMLASRConfusionPair
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRConfusionPair)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRConfusionPair)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEditMethod:(BOOL)a3;
- (void)setHasEditReason:(BOOL)a3;
- (void)setHasRecognizedTextStartIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRConfusionPair

- (DODMLASRSchemaDODMLASRConfusionPair)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DODMLASRSchemaDODMLASRConfusionPair;
  v5 = [(DODMLASRSchemaDODMLASRConfusionPair *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"asrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRConfusionPair *)v5 setAsrId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRConfusionPair setErrorCode:](v5, "setErrorCode:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"editMethod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRConfusionPair setEditMethod:](v5, "setEditMethod:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"editReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRConfusionPair setEditReason:](v5, "setEditReason:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"recognizedTextStartIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRConfusionPair setRecognizedTextStartIndex:](v5, "setRecognizedTextStartIndex:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRConfusionPair)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRConfusionPair *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRConfusionPair *)self dictionaryRepresentation];
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
  if (self->_asrId)
  {
    v4 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"asrId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"asrId"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [(DODMLASRSchemaDODMLASRConfusionPair *)self editMethod];
    v9 = @"ASREDITMETHOD_UNKNOWN";
    if (v8 == 1)
    {
      v9 = @"ASREDITMETHOD_ALTERNATIVE_SELECTION";
    }

    if (v8 == 2)
    {
      v10 = @"ASREDITMETHOD_KEYBOARD_CORRECTION";
    }

    else
    {
      v10 = v9;
    }

    [v3 setObject:v10 forKeyedSubscript:@"editMethod"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [(DODMLASRSchemaDODMLASRConfusionPair *)self editReason]- 1;
    if (v11 > 2)
    {
      v12 = @"ASREDITREASON_UNKNOWN";
    }

    else
    {
      v12 = off_1E78D41E0[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"editReason"];
    has = self->_has;
  }

  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRConfusionPair errorCode](self, "errorCode")}];
    [v3 setObject:v13 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRConfusionPair recognizedTextStartIndex](self, "recognizedTextStartIndex")}];
    [v3 setObject:v14 forKeyedSubscript:@"recognizedTextStartIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_asrId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_editMethod;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_editReason;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_recognizedTextStartIndex;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
  v6 = [v4 asrId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_24;
  }

  v8 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
  if (v8)
  {
    v9 = v8;
    v10 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
    v11 = [v4 asrId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (*&has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = v4[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    editMethod = self->_editMethod;
    if (editMethod != [v4 editMethod])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = v4[32];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    editReason = self->_editReason;
    if (editReason == [v4 editReason])
    {
      has = self->_has;
      v14 = v4[32];
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_20:
  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    recognizedTextStartIndex = self->_recognizedTextStartIndex;
    if (recognizedTextStartIndex != [v4 recognizedTextStartIndex])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];

  if (v4)
  {
    v5 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  v7 = v8;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }

LABEL_9:
}

- (void)setHasRecognizedTextStartIndex:(BOOL)a3
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

- (void)setHasEditReason:(BOOL)a3
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

- (void)setHasEditMethod:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRConfusionPair;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(DODMLASRSchemaDODMLASRConfusionPair *)self deleteAsrId];
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