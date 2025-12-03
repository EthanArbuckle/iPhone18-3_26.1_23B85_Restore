@interface FLSchemaFLCandidateEvaluation
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLCandidateEvaluation)initWithDictionary:(id)dictionary;
- (FLSchemaFLCandidateEvaluation)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOutcome:(BOOL)outcome;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLCandidateEvaluation

- (FLSchemaFLCandidateEvaluation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FLSchemaFLCandidateEvaluation;
  v5 = [(FLSchemaFLCandidateEvaluation *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"candidateCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLCandidateCategory alloc] initWithDictionary:v6];
      [(FLSchemaFLCandidateEvaluation *)v5 setCandidateCategory:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"candidateIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLSchemaFLCandidateIdentifier alloc] initWithDictionary:v8];
      [(FLSchemaFLCandidateEvaluation *)v5 setCandidateIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"resolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLCandidateEvaluation setResolution:](v5, "setResolution:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLCandidateEvaluation setOutcome:](v5, "setOutcome:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (FLSchemaFLCandidateEvaluation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLCandidateEvaluation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLCandidateEvaluation *)self dictionaryRepresentation];
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
  if (self->_candidateCategory)
  {
    candidateCategory = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
    dictionaryRepresentation = [candidateCategory dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"candidateCategory"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"candidateCategory"];
    }
  }

  if (self->_candidateIdentifier)
  {
    candidateIdentifier = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
    dictionaryRepresentation2 = [candidateIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"candidateIdentifier"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"candidateIdentifier"];
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

    [dictionary setObject:v12 forKeyedSubscript:@"outcome"];
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

    [dictionary setObject:v14 forKeyedSubscript:@"resolution"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  candidateCategory = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
  candidateCategory2 = [equalCopy candidateCategory];
  if ((candidateCategory != 0) == (candidateCategory2 == 0))
  {
    goto LABEL_11;
  }

  candidateCategory3 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
  if (candidateCategory3)
  {
    v8 = candidateCategory3;
    candidateCategory4 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
    candidateCategory5 = [equalCopy candidateCategory];
    v11 = [candidateCategory4 isEqual:candidateCategory5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  candidateCategory = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
  candidateCategory2 = [equalCopy candidateIdentifier];
  if ((candidateCategory != 0) == (candidateCategory2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  candidateIdentifier = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
  if (candidateIdentifier)
  {
    v13 = candidateIdentifier;
    candidateIdentifier2 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
    candidateIdentifier3 = [equalCopy candidateIdentifier];
    v16 = [candidateIdentifier2 isEqual:candidateIdentifier3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      resolution = self->_resolution;
      if (resolution != [equalCopy resolution])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (outcome = self->_outcome, outcome == [equalCopy outcome]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  candidateCategory = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];

  if (candidateCategory)
  {
    candidateCategory2 = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
    PBDataWriterWriteSubmessage();
  }

  candidateIdentifier = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];

  if (candidateIdentifier)
  {
    candidateIdentifier2 = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v9 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
  }
}

- (void)setHasOutcome:(BOOL)outcome
{
  if (outcome)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = FLSchemaFLCandidateEvaluation;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  candidateCategory = [(FLSchemaFLCandidateEvaluation *)self candidateCategory];
  v7 = [candidateCategory applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLSchemaFLCandidateEvaluation *)self deleteCandidateCategory];
  }

  candidateIdentifier = [(FLSchemaFLCandidateEvaluation *)self candidateIdentifier];
  v10 = [candidateIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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