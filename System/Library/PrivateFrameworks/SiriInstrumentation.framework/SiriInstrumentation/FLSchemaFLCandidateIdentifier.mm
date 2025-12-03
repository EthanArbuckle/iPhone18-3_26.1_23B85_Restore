@interface FLSchemaFLCandidateIdentifier
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLCandidateIdentifier)initWithDictionary:(id)dictionary;
- (FLSchemaFLCandidateIdentifier)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLCandidateIdentifier

- (FLSchemaFLCandidateIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLSchemaFLCandidateIdentifier;
  v5 = [(FLSchemaFLCandidateIdentifier *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"candidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLSchemaFLCandidateIdentifier *)v5 setCandidateId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLSchemaFLCandidateIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLCandidateIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLCandidateIdentifier *)self dictionaryRepresentation];
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
  if (self->_candidateId)
  {
    candidateId = [(FLSchemaFLCandidateIdentifier *)self candidateId];
    dictionaryRepresentation = [candidateId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"candidateId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"candidateId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    candidateId = [(FLSchemaFLCandidateIdentifier *)self candidateId];
    candidateId2 = [equalCopy candidateId];
    v7 = candidateId2;
    if ((candidateId != 0) != (candidateId2 == 0))
    {
      candidateId3 = [(FLSchemaFLCandidateIdentifier *)self candidateId];
      if (!candidateId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = candidateId3;
      candidateId4 = [(FLSchemaFLCandidateIdentifier *)self candidateId];
      candidateId5 = [equalCopy candidateId];
      v12 = [candidateId4 isEqual:candidateId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  candidateId = [(FLSchemaFLCandidateIdentifier *)self candidateId];

  if (candidateId)
  {
    candidateId2 = [(FLSchemaFLCandidateIdentifier *)self candidateId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLSchemaFLCandidateIdentifier;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLSchemaFLCandidateIdentifier *)self candidateId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLSchemaFLCandidateIdentifier *)self deleteCandidateId];
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