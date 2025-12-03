@interface JRSchemaJREntitySimilarityRow
- (BOOL)isEqual:(id)equal;
- (JRSchemaJREntitySimilarityRow)initWithDictionary:(id)dictionary;
- (JRSchemaJREntitySimilarityRow)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJREntitySimilarityRow

- (JRSchemaJREntitySimilarityRow)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = JRSchemaJREntitySimilarityRow;
  v5 = [(JRSchemaJREntitySimilarityRow *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"candidateA"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(JRSchemaJREntitySimilarityRow *)v5 setCandidateA:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"candidateB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(JRSchemaJREntitySimilarityRow *)v5 setCandidateB:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"similarityScore"];
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

- (JRSchemaJREntitySimilarityRow)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJREntitySimilarityRow *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJREntitySimilarityRow *)self dictionaryRepresentation];
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
  if (self->_candidateA)
  {
    candidateA = [(JRSchemaJREntitySimilarityRow *)self candidateA];
    dictionaryRepresentation = [candidateA dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"candidateA"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"candidateA"];
    }
  }

  if (self->_candidateB)
  {
    candidateB = [(JRSchemaJREntitySimilarityRow *)self candidateB];
    dictionaryRepresentation2 = [candidateB dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"candidateB"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"candidateB"];
    }
  }

  if (*&self->_has)
  {
    v10 = MEMORY[0x1E696AD98];
    [(JRSchemaJREntitySimilarityRow *)self similarityScore];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"similarityScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  candidateA = [(JRSchemaJREntitySimilarityRow *)self candidateA];
  candidateA2 = [equalCopy candidateA];
  if ((candidateA != 0) == (candidateA2 == 0))
  {
    goto LABEL_11;
  }

  candidateA3 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
  if (candidateA3)
  {
    v8 = candidateA3;
    candidateA4 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
    candidateA5 = [equalCopy candidateA];
    v11 = [candidateA4 isEqual:candidateA5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  candidateA = [(JRSchemaJREntitySimilarityRow *)self candidateB];
  candidateA2 = [equalCopy candidateB];
  if ((candidateA != 0) == (candidateA2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  candidateB = [(JRSchemaJREntitySimilarityRow *)self candidateB];
  if (candidateB)
  {
    v13 = candidateB;
    candidateB2 = [(JRSchemaJREntitySimilarityRow *)self candidateB];
    candidateB3 = [equalCopy candidateB];
    v16 = [candidateB2 isEqual:candidateB3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (similarityScore = self->_similarityScore, [equalCopy similarityScore], similarityScore == v20))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  candidateA = [(JRSchemaJREntitySimilarityRow *)self candidateA];

  if (candidateA)
  {
    candidateA2 = [(JRSchemaJREntitySimilarityRow *)self candidateA];
    PBDataWriterWriteSubmessage();
  }

  candidateB = [(JRSchemaJREntitySimilarityRow *)self candidateB];

  if (candidateB)
  {
    candidateB2 = [(JRSchemaJREntitySimilarityRow *)self candidateB];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = JRSchemaJREntitySimilarityRow;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  candidateA = [(JRSchemaJREntitySimilarityRow *)self candidateA];
  v7 = [candidateA applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(JRSchemaJREntitySimilarityRow *)self deleteCandidateA];
  }

  candidateB = [(JRSchemaJREntitySimilarityRow *)self candidateB];
  v10 = [candidateB applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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