@interface FLSchemaFLCandidateEvaluation
- (BOOL)isEqual:(id)a3;
- (FLSchemaFLCandidateEvaluation)initWithDictionary:(id)a3;
- (FLSchemaFLCandidateEvaluation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOutcome:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLSchemaFLCandidateEvaluation

- (FLSchemaFLCandidateEvaluation)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FLSchemaFLCandidateEvaluation;
  v5 = [(FLSchemaFLCandidateEvaluation *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"candidateCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLCandidateCategory alloc] initWithDictionary:v6];
      [(FLSchemaFLCandidateEvaluation *)v5 setCandidateCategory:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"candidateIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLSchemaFLCandidateIdentifier alloc] initWithDictionary:v8];
      [(FLSchemaFLCandidateEvaluation *)v5 setCandidateIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"resolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLCandidateEvaluation setResolution:](v5, "setResolution:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLCandidateEvaluation setOutcome:](v5, "setOutcome:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (FLSchemaFLCandidateEvaluation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLSchemaFLCandidateEvaluation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLSchemaFLCandidateEvaluation *)self dictionaryRepresentation];
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
  if (self->_candidateCategory)
  {
    v4 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"candidateCategory"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"candidateCategory"];
    }
  }

  if (self->_candidateIdentifier)
  {
    v7 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"candidateIdentifier"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"candidateIdentifier"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [(FLSchemaFLCandidateEvaluation *)self outcome]- 1;
    if (v11 > 0xA)
    {
      v12 = @"FLCANDIDATEOUTCOME_UNKNOWN";
    }

    else
    {
      v12 = off_1E78D6CC0[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"outcome"];
    has = self->_has;
  }

  if (has)
  {
    v13 = [(FLSchemaFLCandidateEvaluation *)self resolution]- 1;
    if (v13 > 3)
    {
      v14 = @"FLCANDIDATERESOLUTION_UNKNOWN";
    }

    else
    {
      v14 = off_1E78D6D18[v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"resolution"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(FLSchemaFLCandidateCategory *)self->_candidateCategory hash];
  v4 = [(FLSchemaFLCandidateIdentifier *)self->_candidateIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_resolution;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_outcome;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
  v6 = [v4 candidateCategory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
    v10 = [v4 candidateCategory];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
  v6 = [v4 candidateIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
    v15 = [v4 candidateIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      resolution = self->_resolution;
      if (resolution != [v4 resolution])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (outcome = self->_outcome, outcome == [v4 outcome]))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];

  if (v4)
  {
    v5 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];

  if (v6)
  {
    v7 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v9 = v10;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = v10;
  }
}

- (void)setHasOutcome:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLSchemaFLCandidateEvaluation;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLSchemaFLCandidateEvaluation *)self deleteCandidateCategory];
  }

  v9 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLSchemaFLCandidateEvaluation *)self deleteCandidateIdentifier];
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