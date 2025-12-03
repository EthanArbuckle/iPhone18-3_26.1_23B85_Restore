@interface DODMLASRSchemaDODMLASRConfusionPair
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRConfusionPair)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRConfusionPair)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEditMethod:(BOOL)method;
- (void)setHasEditReason:(BOOL)reason;
- (void)setHasRecognizedTextStartIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRConfusionPair

- (DODMLASRSchemaDODMLASRConfusionPair)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = DODMLASRSchemaDODMLASRConfusionPair;
  v5 = [(DODMLASRSchemaDODMLASRConfusionPair *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRConfusionPair *)v5 setAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRConfusionPair setErrorCode:](v5, "setErrorCode:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"editMethod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRConfusionPair setEditMethod:](v5, "setEditMethod:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"editReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRConfusionPair setEditReason:](v5, "setEditReason:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"recognizedTextStartIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRConfusionPair setRecognizedTextStartIndex:](v5, "setRecognizedTextStartIndex:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRConfusionPair)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRConfusionPair *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRConfusionPair *)self dictionaryRepresentation];
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
  if (self->_asrId)
  {
    asrId = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
    dictionaryRepresentation = [asrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asrId"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    editMethod = [(DODMLASRSchemaDODMLASRConfusionPair *)self editMethod];
    v9 = @"ASREDITMETHOD_UNKNOWN";
    if (editMethod == 1)
    {
      v9 = @"ASREDITMETHOD_ALTERNATIVE_SELECTION";
    }

    if (editMethod == 2)
    {
      v10 = @"ASREDITMETHOD_KEYBOARD_CORRECTION";
    }

    else
    {
      v10 = v9;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"editMethod"];
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

    [dictionary setObject:v12 forKeyedSubscript:@"editReason"];
    has = self->_has;
  }

  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRConfusionPair errorCode](self, "errorCode")}];
    [dictionary setObject:v13 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRConfusionPair recognizedTextStartIndex](self, "recognizedTextStartIndex")}];
    [dictionary setObject:v14 forKeyedSubscript:@"recognizedTextStartIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  asrId = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
  asrId2 = [equalCopy asrId];
  v7 = asrId2;
  if ((asrId != 0) == (asrId2 == 0))
  {

    goto LABEL_24;
  }

  asrId3 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
  if (asrId3)
  {
    v9 = asrId3;
    asrId4 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
    asrId5 = [equalCopy asrId];
    v12 = [asrId4 isEqual:asrId5];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (*&has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = equalCopy[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    editMethod = self->_editMethod;
    if (editMethod != [equalCopy editMethod])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = equalCopy[32];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    editReason = self->_editReason;
    if (editReason == [equalCopy editReason])
    {
      has = self->_has;
      v14 = equalCopy[32];
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
    if (recognizedTextStartIndex != [equalCopy recognizedTextStartIndex])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  asrId = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];

  if (asrId)
  {
    asrId2 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
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
  v7 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }

LABEL_9:
}

- (void)setHasRecognizedTextStartIndex:(BOOL)index
{
  if (index)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEditReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEditMethod:(BOOL)method
{
  if (method)
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
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRConfusionPair;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DODMLASRSchemaDODMLASRConfusionPair *)self asrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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