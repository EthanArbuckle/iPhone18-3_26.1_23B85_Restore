@interface PLUSSchemaPLUSMediaCandidateEntity
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaCandidateEntity)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSMediaCandidateEntity)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEntityFeedbackHistory:(id)history;
- (void)setHasConfidence:(BOOL)confidence;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSMediaCandidateEntity

- (PLUSSchemaPLUSMediaCandidateEntity)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PLUSSchemaPLUSMediaCandidateEntity;
  v5 = [(PLUSSchemaPLUSMediaCandidateEntity *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entityAdamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PLUSSchemaPLUSMediaCandidateEntity *)v5 setEntityAdamId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"nominated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaCandidateEntity setNominated:](v5, "setNominated:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(PLUSSchemaPLUSMediaCandidateEntity *)v5 setConfidence:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entityFeedbackHistory"];
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

- (PLUSSchemaPLUSMediaCandidateEntity)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaCandidateEntity *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSMediaCandidateEntity *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(PLUSSchemaPLUSMediaCandidateEntity *)self confidence];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"confidence"];
  }

  if (self->_entityAdamId)
  {
    entityAdamId = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];
    v7 = [entityAdamId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"entityAdamId"];
  }

  if ([(NSArray *)self->_entityFeedbackHistorys count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"entityFeedbackHistory"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSMediaCandidateEntity nominated](self, "nominated")}];
    [dictionary setObject:v16 forKeyedSubscript:@"nominated"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  entityAdamId = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];
  entityAdamId2 = [equalCopy entityAdamId];
  if ((entityAdamId != 0) == (entityAdamId2 == 0))
  {
    goto LABEL_18;
  }

  entityAdamId3 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];
  if (entityAdamId3)
  {
    v8 = entityAdamId3;
    entityAdamId4 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];
    entityAdamId5 = [equalCopy entityAdamId];
    v11 = [entityAdamId4 isEqual:entityAdamId5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    nominated = self->_nominated;
    if (nominated != [equalCopy nominated])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    confidence = self->_confidence;
    [equalCopy confidence];
    if (confidence != v17)
    {
      goto LABEL_19;
    }
  }

  entityAdamId = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityFeedbackHistorys];
  entityAdamId2 = [equalCopy entityFeedbackHistorys];
  if ((entityAdamId != 0) == (entityAdamId2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  entityFeedbackHistorys = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityFeedbackHistorys];
  if (!entityFeedbackHistorys)
  {

LABEL_22:
    v23 = 1;
    goto LABEL_20;
  }

  v19 = entityFeedbackHistorys;
  entityFeedbackHistorys2 = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityFeedbackHistorys];
  entityFeedbackHistorys3 = [equalCopy entityFeedbackHistorys];
  v22 = [entityFeedbackHistorys2 isEqual:entityFeedbackHistorys3];

  if (v22)
  {
    goto LABEL_22;
  }

LABEL_19:
  v23 = 0;
LABEL_20:

  return v23;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  entityAdamId = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityAdamId];

  if (entityAdamId)
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

- (void)addEntityFeedbackHistory:(id)history
{
  historyCopy = history;
  entityFeedbackHistorys = self->_entityFeedbackHistorys;
  v8 = historyCopy;
  if (!entityFeedbackHistorys)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityFeedbackHistorys;
    self->_entityFeedbackHistorys = array;

    historyCopy = v8;
    entityFeedbackHistorys = self->_entityFeedbackHistorys;
  }

  [(NSArray *)entityFeedbackHistorys addObject:historyCopy];
}

- (void)setHasConfidence:(BOOL)confidence
{
  if (confidence)
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
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSMediaCandidateEntity;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PLUSSchemaPLUSMediaCandidateEntity *)self deleteEntityAdamId];
  }

  entityFeedbackHistorys = [(PLUSSchemaPLUSMediaCandidateEntity *)self entityFeedbackHistorys];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:entityFeedbackHistorys underConditions:policyCopy];
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