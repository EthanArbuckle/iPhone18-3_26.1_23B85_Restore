@interface PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1

- (PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1;
  v5 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"alternateQuerySuggestionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 setAlternateQuerySuggestionType:](v5, "setAlternateQuerySuggestionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)v5 setText:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self dictionaryRepresentation];
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
    if ([(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self alternateQuerySuggestionType]== 1)
    {
      v4 = @"PEGASUSALTERNATEQUERYSUGGESTIONCANDIDATETYPE_ASR";
    }

    else
    {
      v4 = @"PEGASUSALTERNATEQUERYSUGGESTIONCANDIDATETYPE_UNSPECIFIED";
    }

    [v3 setObject:v4 forKeyedSubscript:@"alternateQuerySuggestionType"];
  }

  if (self->_text)
  {
    v5 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"text"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_alternateQuerySuggestionType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_text hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (alternateQuerySuggestionType = self->_alternateQuerySuggestionType, alternateQuerySuggestionType == [v4 alternateQuerySuggestionType]))
      {
        v6 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];
        v7 = [v4 text];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];
          v12 = [v4 text];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];

  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
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