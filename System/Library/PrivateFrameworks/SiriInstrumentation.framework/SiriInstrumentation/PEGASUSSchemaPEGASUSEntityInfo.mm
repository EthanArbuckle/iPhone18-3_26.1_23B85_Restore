@interface PEGASUSSchemaPEGASUSEntityInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSEntityInfo)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSEntityInfo)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSEntityInfo

- (PEGASUSSchemaPEGASUSEntityInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PEGASUSSchemaPEGASUSEntityInfo;
  v5 = [(PEGASUSSchemaPEGASUSEntityInfo *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSEntityInfo *)v5 setEntityId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(PEGASUSSchemaPEGASUSEntityInfo *)v5 setConfidence:?];
    }

    v9 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSEntityInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSEntityInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSEntityInfo *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSEntityInfo *)self confidence];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"confidence"];
  }

  if (self->_entityId)
  {
    entityId = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];
    v7 = [entityId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"entityId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_entityId hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence >= 0.0)
    {
      v8 = confidence;
    }

    else
    {
      v8 = -confidence;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  entityId = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];
  entityId2 = [equalCopy entityId];
  v7 = entityId2;
  if ((entityId != 0) != (entityId2 == 0))
  {
    entityId3 = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];
    if (entityId3)
    {
      v9 = entityId3;
      entityId4 = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];
      entityId5 = [equalCopy entityId];
      v12 = [entityId4 isEqual:entityId5];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ((*&self->_has & 1) == (equalCopy[20] & 1))
    {
      if ((*&self->_has & 1) == 0 || (confidence = self->_confidence, [equalCopy confidence], confidence == v14))
      {
        v15 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

LABEL_11:
  v15 = 0;
LABEL_12:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  entityId = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];

  if (entityId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSEntityInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
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