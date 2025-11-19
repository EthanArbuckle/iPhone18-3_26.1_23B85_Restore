@interface JRSchemaJREntitySimilarityRow
- (BOOL)isEqual:(id)a3;
- (JRSchemaJREntitySimilarityRow)initWithDictionary:(id)a3;
- (JRSchemaJREntitySimilarityRow)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaJREntitySimilarityRow

- (JRSchemaJREntitySimilarityRow)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = JRSchemaJREntitySimilarityRow;
  v5 = [(JRSchemaJREntitySimilarityRow *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"candidateA"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(JRSchemaJREntitySimilarityRow *)v5 setCandidateA:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"candidateB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(JRSchemaJREntitySimilarityRow *)v5 setCandidateB:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"similarityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(JRSchemaJREntitySimilarityRow *)v5 setSimilarityScore:?];
    }

    v11 = v5;
  }

  return v5;
}

- (JRSchemaJREntitySimilarityRow)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaJREntitySimilarityRow *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaJREntitySimilarityRow *)self dictionaryRepresentation];
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
  if (self->_candidateA)
  {
    v4 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"candidateA"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"candidateA"];
    }
  }

  if (self->_candidateB)
  {
    v7 = [(JRSchemaJREntitySimilarityRow *)self candidateB];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"candidateB"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"candidateB"];
    }
  }

  if (*&self->_has)
  {
    v10 = MEMORY[0x1E696AD98];
    [(JRSchemaJREntitySimilarityRow *)self similarityScore];
    v11 = [v10 numberWithFloat:?];
    [v3 setObject:v11 forKeyedSubscript:@"similarityScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_candidateA hash];
  v4 = [(SISchemaUUID *)self->_candidateB hash];
  if (*&self->_has)
  {
    similarityScore = self->_similarityScore;
    if (similarityScore >= 0.0)
    {
      v9 = similarityScore;
    }

    else
    {
      v9 = -similarityScore;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v7 += v10;
      }
    }

    else
    {
      v7 -= fabs(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
  v6 = [v4 candidateA];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
  if (v7)
  {
    v8 = v7;
    v9 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
    v10 = [v4 candidateA];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJREntitySimilarityRow *)self candidateB];
  v6 = [v4 candidateB];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(JRSchemaJREntitySimilarityRow *)self candidateB];
  if (v12)
  {
    v13 = v12;
    v14 = [(JRSchemaJREntitySimilarityRow *)self candidateB];
    v15 = [v4 candidateB];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (similarityScore = self->_similarityScore, [v4 similarityScore], similarityScore == v20))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(JRSchemaJREntitySimilarityRow *)self candidateA];

  if (v4)
  {
    v5 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(JRSchemaJREntitySimilarityRow *)self candidateB];

  if (v6)
  {
    v7 = [(JRSchemaJREntitySimilarityRow *)self candidateB];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = JRSchemaJREntitySimilarityRow;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(JRSchemaJREntitySimilarityRow *)self deleteCandidateA];
  }

  v9 = [(JRSchemaJREntitySimilarityRow *)self candidateB];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(JRSchemaJREntitySimilarityRow *)self deleteCandidateB];
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