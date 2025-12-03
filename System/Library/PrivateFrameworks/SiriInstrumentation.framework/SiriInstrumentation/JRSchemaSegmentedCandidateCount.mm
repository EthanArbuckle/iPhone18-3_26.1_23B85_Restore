@interface JRSchemaSegmentedCandidateCount
- (BOOL)isEqual:(id)equal;
- (JRSchemaSegmentedCandidateCount)initWithDictionary:(id)dictionary;
- (JRSchemaSegmentedCandidateCount)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaSegmentedCandidateCount

- (JRSchemaSegmentedCandidateCount)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = JRSchemaSegmentedCandidateCount;
  v5 = [(JRSchemaSegmentedCandidateCount *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"candidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(JRSchemaSegmentedCandidateCount *)v5 setCandidateId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"count"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[JRSchemaSegmentedCandidateCount setCount:](v5, "setCount:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (JRSchemaSegmentedCandidateCount)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaSegmentedCandidateCount *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaSegmentedCandidateCount *)self dictionaryRepresentation];
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
    candidateId = [(JRSchemaSegmentedCandidateCount *)self candidateId];
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

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[JRSchemaSegmentedCandidateCount count](self, "count")}];
    [dictionary setObject:v7 forKeyedSubscript:@"count"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_candidateId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_count;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  candidateId = [(JRSchemaSegmentedCandidateCount *)self candidateId];
  candidateId2 = [equalCopy candidateId];
  v7 = candidateId2;
  if ((candidateId != 0) == (candidateId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  candidateId3 = [(JRSchemaSegmentedCandidateCount *)self candidateId];
  if (candidateId3)
  {
    v9 = candidateId3;
    candidateId4 = [(JRSchemaSegmentedCandidateCount *)self candidateId];
    candidateId5 = [equalCopy candidateId];
    v12 = [candidateId4 isEqual:candidateId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    count = self->_count;
    if (count != [equalCopy count])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  candidateId = [(JRSchemaSegmentedCandidateCount *)self candidateId];

  if (candidateId)
  {
    candidateId2 = [(JRSchemaSegmentedCandidateCount *)self candidateId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = JRSchemaSegmentedCandidateCount;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(JRSchemaSegmentedCandidateCount *)self candidateId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(JRSchemaSegmentedCandidateCount *)self deleteCandidateId];
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