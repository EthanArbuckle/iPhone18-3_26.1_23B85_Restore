@interface NLGSchemaNLGScoredDialog
- (BOOL)isEqual:(id)a3;
- (NLGSchemaNLGScoredDialog)initWithDictionary:(id)a3;
- (NLGSchemaNLGScoredDialog)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLGSchemaNLGScoredDialog

- (NLGSchemaNLGScoredDialog)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NLGSchemaNLGScoredDialog;
  v5 = [(NLGSchemaNLGScoredDialog *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"catFamily"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLGSchemaNLGScoredDialog *)v5 setCatFamily:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"catIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLGSchemaNLGScoredDialog *)v5 setCatIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"scoredDialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(NLGSchemaNLGScoredDialog *)v5 setScoredDialogIdentifier:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(NLGSchemaNLGScoredDialog *)v5 setScore:?];
    }

    v13 = v5;
  }

  return v5;
}

- (NLGSchemaNLGScoredDialog)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLGSchemaNLGScoredDialog *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLGSchemaNLGScoredDialog *)self dictionaryRepresentation];
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
  if (self->_catFamily)
  {
    v4 = [(NLGSchemaNLGScoredDialog *)self catFamily];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"catFamily"];
  }

  if (self->_catIdentifier)
  {
    v6 = [(NLGSchemaNLGScoredDialog *)self catIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"catIdentifier"];
  }

  if (*&self->_has)
  {
    v8 = MEMORY[0x1E696AD98];
    [(NLGSchemaNLGScoredDialog *)self score];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"score"];
  }

  if (self->_scoredDialogIdentifier)
  {
    v10 = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"scoredDialogIdentifier"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_catFamily hash];
  v4 = [(NSString *)self->_catIdentifier hash];
  v5 = [(NSString *)self->_scoredDialogIdentifier hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v10 = score;
    }

    else
    {
      v10 = -score;
    }

    *v6.i64 = floor(v10 + 0.5);
    v11 = (v10 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(NLGSchemaNLGScoredDialog *)self catFamily];
  v6 = [v4 catFamily];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(NLGSchemaNLGScoredDialog *)self catFamily];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLGSchemaNLGScoredDialog *)self catFamily];
    v10 = [v4 catFamily];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(NLGSchemaNLGScoredDialog *)self catIdentifier];
  v6 = [v4 catIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(NLGSchemaNLGScoredDialog *)self catIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLGSchemaNLGScoredDialog *)self catIdentifier];
    v15 = [v4 catIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];
  v6 = [v4 scoredDialogIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];
    v20 = [v4 scoredDialogIdentifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (score = self->_score, [v4 score], score == v25))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(NLGSchemaNLGScoredDialog *)self catFamily];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(NLGSchemaNLGScoredDialog *)self catIdentifier];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
    v7 = v8;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end