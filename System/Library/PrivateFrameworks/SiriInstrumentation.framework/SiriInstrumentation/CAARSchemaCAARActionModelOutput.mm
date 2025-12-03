@interface CAARSchemaCAARActionModelOutput
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARActionModelOutput)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARActionModelOutput)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARActionModelOutput

- (CAARSchemaCAARActionModelOutput)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = CAARSchemaCAARActionModelOutput;
  v5 = [(CAARSchemaCAARActionModelOutput *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAARSchemaCAARActionModelOutput *)v5 setActionCandidateId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"modelScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(CAARSchemaCAARActionModelOutput *)v5 setModelScore:?];
    }

    v9 = v5;
  }

  return v5;
}

- (CAARSchemaCAARActionModelOutput)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARActionModelOutput *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARActionModelOutput *)self dictionaryRepresentation];
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
  if (self->_actionCandidateId)
  {
    actionCandidateId = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
    dictionaryRepresentation = [actionCandidateId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionCandidateId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionCandidateId"];
    }
  }

  if (*&self->_has)
  {
    v7 = MEMORY[0x1E696AD98];
    [(CAARSchemaCAARActionModelOutput *)self modelScore];
    v8 = [v7 numberWithFloat:?];
    [dictionary setObject:v8 forKeyedSubscript:@"modelScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_actionCandidateId hash];
  if (*&self->_has)
  {
    modelScore = self->_modelScore;
    if (modelScore >= 0.0)
    {
      v8 = modelScore;
    }

    else
    {
      v8 = -modelScore;
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

  actionCandidateId = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
  actionCandidateId2 = [equalCopy actionCandidateId];
  v7 = actionCandidateId2;
  if ((actionCandidateId != 0) != (actionCandidateId2 == 0))
  {
    actionCandidateId3 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
    if (actionCandidateId3)
    {
      v9 = actionCandidateId3;
      actionCandidateId4 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
      actionCandidateId5 = [equalCopy actionCandidateId];
      v12 = [actionCandidateId4 isEqual:actionCandidateId5];

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
      if ((*&self->_has & 1) == 0 || (modelScore = self->_modelScore, [equalCopy modelScore], modelScore == v14))
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
  actionCandidateId = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];

  if (actionCandidateId)
  {
    actionCandidateId2 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CAARSchemaCAARActionModelOutput;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CAARSchemaCAARActionModelOutput *)self deleteActionCandidateId];
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