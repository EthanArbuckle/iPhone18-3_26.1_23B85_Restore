@interface PLUSSchemaPLUSMediaCandidateEntity
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaCandidateEntity)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSMediaCandidateEntity)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEntityFeedbackHistory:(id)a3;
- (void)setHasConfidence:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSMediaCandidateEntity

- (PLUSSchemaPLUSMediaCandidateEntity)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PLUSSchemaPLUSMediaCandidateEntity;
  v5 = [(PLUSSchemaPLUSMediaCandidateEntity *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entityAdamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PLUSSchemaPLUSMediaCandidateEntity *)v5 setEntityAdamId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"nominated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaCandidateEntity setNominated:](v5, "setNominated:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(PLUSSchemaPLUSMediaCandidateEntity *)v5 setConfidence:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"entityFeedbackHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v9;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[PLUSSchemaPLUSMediaContributingGroundTruth alloc] initWithDictionary:v16];
              [(PLUSSchemaPLUSMediaCandidateEntity *)v5 addEntityFeedbackHistory:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v6 = v21;
      v9 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaCandidateEntity)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaCandidateEntity *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSMediaCandidateEntity *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(PLUSSchemaPLUSMediaCandidateEntity *)self confidence];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"confidence"];
  }

  if (self->_entityAdamId)
  {
    v6 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"entityAdamId"];
  }

  if ([(NSArray *)self->_entityFeedbackHistorys count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_entityFeedbackHistorys;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v14)
          {
            [v8 addObject:v14];
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
            [v8 addObject:v15];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"entityFeedbackHistory"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSMediaCandidateEntity nominated](self, "nominated")}];
    [v3 setObject:v16 forKeyedSubscript:@"nominated"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_entityAdamId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_nominated;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10 ^ [(NSArray *)self->_entityFeedbackHistorys hash];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v4.i64 = floor(confidence + 0.5);
  v8 = (confidence - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v6 ^ v3 ^ v10 ^ [(NSArray *)self->_entityFeedbackHistorys hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];
  v6 = [v4 entityAdamId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];
    v10 = [v4 entityAdamId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    nominated = self->_nominated;
    if (nominated != [v4 nominated])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    confidence = self->_confidence;
    [v4 confidence];
    if (confidence != v17)
    {
      goto LABEL_19;
    }
  }

  v5 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityFeedbackHistorys];
  v6 = [v4 entityFeedbackHistorys];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v18 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityFeedbackHistorys];
  if (!v18)
  {

LABEL_22:
    v23 = 1;
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityFeedbackHistorys];
  v21 = [v4 entityFeedbackHistorys];
  v22 = [v20 isEqual:v21];

  if (v22)
  {
    goto LABEL_22;
  }

LABEL_19:
  v23 = 0;
LABEL_20:

  return v23;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];

  if (v5)
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
    PBDataWriterWriteDoubleField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_entityFeedbackHistorys;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addEntityFeedbackHistory:(id)a3
{
  v4 = a3;
  entityFeedbackHistorys = self->_entityFeedbackHistorys;
  v8 = v4;
  if (!entityFeedbackHistorys)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityFeedbackHistorys;
    self->_entityFeedbackHistorys = v6;

    v4 = v8;
    entityFeedbackHistorys = self->_entityFeedbackHistorys;
  }

  [(NSArray *)entityFeedbackHistorys addObject:v4];
}

- (void)setHasConfidence:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSMediaCandidateEntity;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  if ([v4 isConditionSet:4])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  if ([v4 isConditionSet:5])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  if ([v4 isConditionSet:6])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  if ([v4 isConditionSet:7])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  v6 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityFeedbackHistorys];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(PLUSSchemaPLUSMediaCandidateEntity *)self setEntityFeedbackHistorys:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end