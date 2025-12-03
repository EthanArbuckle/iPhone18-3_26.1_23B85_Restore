@interface PLUSSchemaPLUSMediaGroundTruth
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaGroundTruth)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSMediaGroundTruth)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInferredMediaEntitylocality:(BOOL)entitylocality;
- (void)setHasSelectedMediaEntitylocality:(BOOL)entitylocality;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSMediaGroundTruth

- (PLUSSchemaPLUSMediaGroundTruth)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PLUSSchemaPLUSMediaGroundTruth;
  v5 = [(PLUSSchemaPLUSMediaGroundTruth *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"groundTruthId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSMediaGroundTruth *)v5 setGroundTruthId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"groundTruthSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruth setGroundTruthSource:](v5, "setGroundTruthSource:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"selectedMediaEntityAdamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PLUSSchemaPLUSMediaGroundTruth *)v5 setSelectedMediaEntityAdamId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"inferredMediaEntityAdamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PLUSSchemaPLUSMediaGroundTruth *)v5 setInferredMediaEntityAdamId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"selectedMediaEntitylocality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruth setSelectedMediaEntitylocality:](v5, "setSelectedMediaEntitylocality:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"inferredMediaEntitylocality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruth setInferredMediaEntitylocality:](v5, "setInferredMediaEntitylocality:", [v14 intValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaGroundTruth)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaGroundTruth *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSMediaGroundTruth *)self dictionaryRepresentation];
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
  if (self->_groundTruthId)
  {
    groundTruthId = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
    dictionaryRepresentation = [groundTruthId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"groundTruthId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"groundTruthId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthSource]- 1;
    if (v7 > 8)
    {
      v8 = @"PLUSMEDIAGROUNDTRUTHSOURCE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E07C8[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"groundTruthSource"];
  }

  if (self->_inferredMediaEntityAdamId)
  {
    inferredMediaEntityAdamId = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];
    v10 = [inferredMediaEntityAdamId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"inferredMediaEntityAdamId"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntitylocality]- 1;
    if (v11 > 2)
    {
      v12 = @"PLUSMEDIASUGGESTIONLOCALITY_UNKNOWN";
    }

    else
    {
      v12 = off_1E78E0810[v11];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"inferredMediaEntitylocality"];
  }

  if (self->_selectedMediaEntityAdamId)
  {
    selectedMediaEntityAdamId = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];
    v14 = [selectedMediaEntityAdamId copy];
    [dictionary setObject:v14 forKeyedSubscript:@"selectedMediaEntityAdamId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntitylocality]- 1;
    if (v15 > 2)
    {
      v16 = @"PLUSMEDIASUGGESTIONLOCALITY_UNKNOWN";
    }

    else
    {
      v16 = off_1E78E0810[v15];
    }

    [dictionary setObject:v16 forKeyedSubscript:@"selectedMediaEntitylocality"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_groundTruthId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_groundTruthSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_selectedMediaEntityAdamId hash];
  v6 = [(NSString *)self->_inferredMediaEntityAdamId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_selectedMediaEntitylocality;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 2654435761 * self->_inferredMediaEntitylocality;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  groundTruthId = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
  groundTruthId2 = [equalCopy groundTruthId];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
    goto LABEL_19;
  }

  groundTruthId3 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
  if (groundTruthId3)
  {
    v8 = groundTruthId3;
    groundTruthId4 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
    groundTruthId5 = [equalCopy groundTruthId];
    v11 = [groundTruthId4 isEqual:groundTruthId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    groundTruthSource = self->_groundTruthSource;
    if (groundTruthSource != [equalCopy groundTruthSource])
    {
      goto LABEL_20;
    }
  }

  groundTruthId = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];
  groundTruthId2 = [equalCopy selectedMediaEntityAdamId];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
    goto LABEL_19;
  }

  selectedMediaEntityAdamId = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];
  if (selectedMediaEntityAdamId)
  {
    v14 = selectedMediaEntityAdamId;
    selectedMediaEntityAdamId2 = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];
    selectedMediaEntityAdamId3 = [equalCopy selectedMediaEntityAdamId];
    v17 = [selectedMediaEntityAdamId2 isEqual:selectedMediaEntityAdamId3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  groundTruthId = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];
  groundTruthId2 = [equalCopy inferredMediaEntityAdamId];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  inferredMediaEntityAdamId = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];
  if (inferredMediaEntityAdamId)
  {
    v19 = inferredMediaEntityAdamId;
    inferredMediaEntityAdamId2 = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];
    inferredMediaEntityAdamId3 = [equalCopy inferredMediaEntityAdamId];
    v22 = [inferredMediaEntityAdamId2 isEqual:inferredMediaEntityAdamId3];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v26 = (*&has >> 1) & 1;
  v27 = equalCopy[48];
  if (v26 == ((v27 >> 1) & 1))
  {
    if (v26)
    {
      selectedMediaEntitylocality = self->_selectedMediaEntitylocality;
      if (selectedMediaEntitylocality != [equalCopy selectedMediaEntitylocality])
      {
        goto LABEL_20;
      }

      has = self->_has;
      v27 = equalCopy[48];
    }

    v29 = (*&has >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (!v29 || (inferredMediaEntitylocality = self->_inferredMediaEntitylocality, inferredMediaEntitylocality == [equalCopy inferredMediaEntitylocality]))
      {
        v23 = 1;
        goto LABEL_21;
      }
    }
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  groundTruthId = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];

  if (groundTruthId)
  {
    groundTruthId2 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  selectedMediaEntityAdamId = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];

  if (selectedMediaEntityAdamId)
  {
    PBDataWriterWriteStringField();
  }

  inferredMediaEntityAdamId = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];

  if (inferredMediaEntityAdamId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
  }
}

- (void)setHasInferredMediaEntitylocality:(BOOL)entitylocality
{
  if (entitylocality)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSelectedMediaEntitylocality:(BOOL)entitylocality
{
  if (entitylocality)
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
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSMediaGroundTruth;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  groundTruthId = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
  v7 = [groundTruthId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteGroundTruthId];
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