@interface CAARSchemaCAARScoreBoost
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARScoreBoost)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARScoreBoost)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARScoreBoost

- (CAARSchemaCAARScoreBoost)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CAARSchemaCAARScoreBoost;
  v5 = [(CAARSchemaCAARScoreBoost *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAARSchemaCAARScoreBoost *)v5 setActionCandidateId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"boost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(CAARSchemaCAARScoreBoost *)v5 setBoost:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(CAARSchemaCAARScoreBoost *)v5 setReason:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (CAARSchemaCAARScoreBoost)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARScoreBoost *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARScoreBoost *)self dictionaryRepresentation];
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
    actionCandidateId = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
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
    [(CAARSchemaCAARScoreBoost *)self boost];
    v8 = [v7 numberWithDouble:?];
    [dictionary setObject:v8 forKeyedSubscript:@"boost"];
  }

  if (self->_reason)
  {
    reason = [(CAARSchemaCAARScoreBoost *)self reason];
    v10 = [reason copy];
    [dictionary setObject:v10 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_actionCandidateId hash];
  if (*&self->_has)
  {
    boost = self->_boost;
    if (boost < 0.0)
    {
      boost = -boost;
    }

    *v4.i64 = floor(boost + 0.5);
    v8 = (boost - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3 ^ [(NSString *)self->_reason hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  actionCandidateId = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
  actionCandidateId2 = [equalCopy actionCandidateId];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_14;
  }

  actionCandidateId3 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
  if (actionCandidateId3)
  {
    v8 = actionCandidateId3;
    actionCandidateId4 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
    actionCandidateId5 = [equalCopy actionCandidateId];
    v11 = [actionCandidateId4 isEqual:actionCandidateId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    boost = self->_boost;
    [equalCopy boost];
    if (boost != v13)
    {
      goto LABEL_15;
    }
  }

  actionCandidateId = [(CAARSchemaCAARScoreBoost *)self reason];
  actionCandidateId2 = [equalCopy reason];
  if ((actionCandidateId != 0) != (actionCandidateId2 == 0))
  {
    reason = [(CAARSchemaCAARScoreBoost *)self reason];
    if (!reason)
    {

LABEL_18:
      v19 = 1;
      goto LABEL_16;
    }

    v15 = reason;
    reason2 = [(CAARSchemaCAARScoreBoost *)self reason];
    reason3 = [equalCopy reason];
    v18 = [reason2 isEqual:reason3];

    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  actionCandidateId = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];

  if (actionCandidateId)
  {
    actionCandidateId2 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  reason = [(CAARSchemaCAARScoreBoost *)self reason];

  v7 = toCopy;
  if (reason)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CAARSchemaCAARScoreBoost;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CAARSchemaCAARScoreBoost *)self deleteActionCandidateId];
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