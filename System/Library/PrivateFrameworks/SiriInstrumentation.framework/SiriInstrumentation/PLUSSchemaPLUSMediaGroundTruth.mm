@interface PLUSSchemaPLUSMediaGroundTruth
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaGroundTruth)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSMediaGroundTruth)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInferredMediaEntitylocality:(BOOL)a3;
- (void)setHasSelectedMediaEntitylocality:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSMediaGroundTruth

- (PLUSSchemaPLUSMediaGroundTruth)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PLUSSchemaPLUSMediaGroundTruth;
  v5 = [(PLUSSchemaPLUSMediaGroundTruth *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"groundTruthId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSMediaGroundTruth *)v5 setGroundTruthId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"groundTruthSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruth setGroundTruthSource:](v5, "setGroundTruthSource:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"selectedMediaEntityAdamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PLUSSchemaPLUSMediaGroundTruth *)v5 setSelectedMediaEntityAdamId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"inferredMediaEntityAdamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PLUSSchemaPLUSMediaGroundTruth *)v5 setInferredMediaEntityAdamId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"selectedMediaEntitylocality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruth setSelectedMediaEntitylocality:](v5, "setSelectedMediaEntitylocality:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"inferredMediaEntitylocality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaGroundTruth setInferredMediaEntitylocality:](v5, "setInferredMediaEntitylocality:", [v14 intValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaGroundTruth)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaGroundTruth *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSMediaGroundTruth *)self dictionaryRepresentation];
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
  if (self->_groundTruthId)
  {
    v4 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"groundTruthId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"groundTruthId"];
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

    [v3 setObject:v8 forKeyedSubscript:@"groundTruthSource"];
  }

  if (self->_inferredMediaEntityAdamId)
  {
    v9 = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"inferredMediaEntityAdamId"];
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

    [v3 setObject:v12 forKeyedSubscript:@"inferredMediaEntitylocality"];
  }

  if (self->_selectedMediaEntityAdamId)
  {
    v13 = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"selectedMediaEntityAdamId"];
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

    [v3 setObject:v16 forKeyedSubscript:@"selectedMediaEntitylocality"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
  v6 = [v4 groundTruthId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
    v10 = [v4 groundTruthId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    groundTruthSource = self->_groundTruthSource;
    if (groundTruthSource != [v4 groundTruthSource])
    {
      goto LABEL_20;
    }
  }

  v5 = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];
  v6 = [v4 selectedMediaEntityAdamId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];
  if (v13)
  {
    v14 = v13;
    v15 = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];
    v16 = [v4 selectedMediaEntityAdamId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];
  v6 = [v4 inferredMediaEntityAdamId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  v18 = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];
  if (v18)
  {
    v19 = v18;
    v20 = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];
    v21 = [v4 inferredMediaEntityAdamId];
    v22 = [v20 isEqual:v21];

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
  v27 = v4[48];
  if (v26 == ((v27 >> 1) & 1))
  {
    if (v26)
    {
      selectedMediaEntitylocality = self->_selectedMediaEntitylocality;
      if (selectedMediaEntitylocality != [v4 selectedMediaEntitylocality])
      {
        goto LABEL_20;
      }

      has = self->_has;
      v27 = v4[48];
    }

    v29 = (*&has >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (!v29 || (inferredMediaEntitylocality = self->_inferredMediaEntitylocality, inferredMediaEntitylocality == [v4 inferredMediaEntitylocality]))
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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(PLUSSchemaPLUSMediaGroundTruth *)self selectedMediaEntityAdamId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PLUSSchemaPLUSMediaGroundTruth *)self inferredMediaEntityAdamId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v9 = v10;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = v10;
  }
}

- (void)setHasInferredMediaEntitylocality:(BOOL)a3
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

- (void)setHasSelectedMediaEntitylocality:(BOOL)a3
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
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSMediaGroundTruth;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  if ([v4 isConditionSet:4])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  if ([v4 isConditionSet:5])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  if ([v4 isConditionSet:6])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  if ([v4 isConditionSet:7])
  {
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteSelectedMediaEntityAdamId];
    [(PLUSSchemaPLUSMediaGroundTruth *)self deleteInferredMediaEntityAdamId];
  }

  v6 = [(PLUSSchemaPLUSMediaGroundTruth *)self groundTruthId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
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