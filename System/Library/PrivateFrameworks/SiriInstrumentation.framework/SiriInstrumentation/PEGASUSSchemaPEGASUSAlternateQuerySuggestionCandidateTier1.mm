@interface PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1

- (PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1;
  v5 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"alternateQuerySuggestionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 setAlternateQuerySuggestionType:](v5, "setAlternateQuerySuggestionType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"text"];
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

- (PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self dictionaryRepresentation];
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

    [dictionary setObject:v4 forKeyedSubscript:@"alternateQuerySuggestionType"];
  }

  if (self->_text)
  {
    text = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];
    v6 = [text copy];
    [dictionary setObject:v6 forKeyedSubscript:@"text"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (alternateQuerySuggestionType = self->_alternateQuerySuggestionType, alternateQuerySuggestionType == [equalCopy alternateQuerySuggestionType]))
      {
        text = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];
        text2 = [equalCopy text];
        v8 = text2;
        if ((text != 0) != (text2 == 0))
        {
          text3 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];
          if (!text3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = text3;
          text4 = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];
          text5 = [equalCopy text];
          v13 = [text4 isEqual:text5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  text = [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self text];

  v5 = toCopy;
  if (text)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1 *)self deleteText];
  }

  if ([policyCopy isConditionSet:7])
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