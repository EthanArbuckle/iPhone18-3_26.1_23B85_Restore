@interface CAARSchemaCAARScoreBoost
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARScoreBoost)initWithDictionary:(id)a3;
- (CAARSchemaCAARScoreBoost)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARScoreBoost

- (CAARSchemaCAARScoreBoost)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CAARSchemaCAARScoreBoost;
  v5 = [(CAARSchemaCAARScoreBoost *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAARSchemaCAARScoreBoost *)v5 setActionCandidateId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"boost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(CAARSchemaCAARScoreBoost *)v5 setBoost:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"reason"];
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

- (CAARSchemaCAARScoreBoost)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARScoreBoost *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARScoreBoost *)self dictionaryRepresentation];
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
  if (self->_actionCandidateId)
  {
    v4 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionCandidateId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionCandidateId"];
    }
  }

  if (*&self->_has)
  {
    v7 = MEMORY[0x1E696AD98];
    [(CAARSchemaCAARScoreBoost *)self boost];
    v8 = [v7 numberWithDouble:?];
    [v3 setObject:v8 forKeyedSubscript:@"boost"];
  }

  if (self->_reason)
  {
    v9 = [(CAARSchemaCAARScoreBoost *)self reason];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
  v6 = [v4 actionCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
    v10 = [v4 actionCandidateId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    boost = self->_boost;
    [v4 boost];
    if (boost != v13)
    {
      goto LABEL_15;
    }
  }

  v5 = [(CAARSchemaCAARScoreBoost *)self reason];
  v6 = [v4 reason];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(CAARSchemaCAARScoreBoost *)self reason];
    if (!v14)
    {

LABEL_18:
      v19 = 1;
      goto LABEL_16;
    }

    v15 = v14;
    v16 = [(CAARSchemaCAARScoreBoost *)self reason];
    v17 = [v4 reason];
    v18 = [v16 isEqual:v17];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];

  if (v4)
  {
    v5 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v6 = [(CAARSchemaCAARScoreBoost *)self reason];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CAARSchemaCAARScoreBoost;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CAARSchemaCAARScoreBoost *)self actionCandidateId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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