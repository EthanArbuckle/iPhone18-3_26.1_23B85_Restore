@interface CAARSchemaCAARActionModelOutput
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARActionModelOutput)initWithDictionary:(id)a3;
- (CAARSchemaCAARActionModelOutput)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARActionModelOutput

- (CAARSchemaCAARActionModelOutput)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CAARSchemaCAARActionModelOutput;
  v5 = [(CAARSchemaCAARActionModelOutput *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAARSchemaCAARActionModelOutput *)v5 setActionCandidateId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"modelScore"];
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

- (CAARSchemaCAARActionModelOutput)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARActionModelOutput *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARActionModelOutput *)self dictionaryRepresentation];
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
    v4 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
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
    [(CAARSchemaCAARActionModelOutput *)self modelScore];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"modelScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
  v6 = [v4 actionCandidateId];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
    if (v8)
    {
      v9 = v8;
      v10 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
      v11 = [v4 actionCandidateId];
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
      if ((*&self->_has & 1) == 0 || (modelScore = self->_modelScore, [v4 modelScore], modelScore == v14))
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
  v6 = a3;
  v4 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];

  if (v4)
  {
    v5 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CAARSchemaCAARActionModelOutput;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CAARSchemaCAARActionModelOutput *)self actionCandidateId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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