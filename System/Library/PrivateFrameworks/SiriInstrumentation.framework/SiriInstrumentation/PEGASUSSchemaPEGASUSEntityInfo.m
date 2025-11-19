@interface PEGASUSSchemaPEGASUSEntityInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSEntityInfo)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSEntityInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSEntityInfo

- (PEGASUSSchemaPEGASUSEntityInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PEGASUSSchemaPEGASUSEntityInfo;
  v5 = [(PEGASUSSchemaPEGASUSEntityInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSEntityInfo *)v5 setEntityId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"confidence"];
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

- (PEGASUSSchemaPEGASUSEntityInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSEntityInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSEntityInfo *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSEntityInfo *)self confidence];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"confidence"];
  }

  if (self->_entityId)
  {
    v6 = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"entityId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];
  v6 = [v4 entityId];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];
    if (v8)
    {
      v9 = v8;
      v10 = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];
      v11 = [v4 entityId];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ((*&self->_has & 1) == (v4[20] & 1))
    {
      if ((*&self->_has & 1) == 0 || (confidence = self->_confidence, [v4 confidence], confidence == v14))
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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(PEGASUSSchemaPEGASUSEntityInfo *)self entityId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSEntityInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSEntityInfo *)self deleteEntityId];
  }

  if ([v4 isConditionSet:7])
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