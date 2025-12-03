@interface SISchemaEnrolledUserState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaEnrolledUserState)initWithDictionary:(id)dictionary;
- (SISchemaEnrolledUserState)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaEnrolledUserState

- (SISchemaEnrolledUserState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaEnrolledUserState;
  v5 = [(SISchemaEnrolledUserState *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriLinkedSpeechID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaEnrolledUserState *)v5 setSiriLinkedSpeechID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"personalization"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaPersonalization alloc] initWithDictionary:v8];
      [(SISchemaEnrolledUserState *)v5 setPersonalization:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaEnrolledUserState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaEnrolledUserState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaEnrolledUserState *)self dictionaryRepresentation];
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
  if (self->_personalization)
  {
    personalization = [(SISchemaEnrolledUserState *)self personalization];
    dictionaryRepresentation = [personalization dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"personalization"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"personalization"];
    }
  }

  if (self->_siriLinkedSpeechID)
  {
    siriLinkedSpeechID = [(SISchemaEnrolledUserState *)self siriLinkedSpeechID];
    v8 = [siriLinkedSpeechID copy];
    [dictionary setObject:v8 forKeyedSubscript:@"siriLinkedSpeechID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  siriLinkedSpeechID = [(SISchemaEnrolledUserState *)self siriLinkedSpeechID];
  siriLinkedSpeechID2 = [equalCopy siriLinkedSpeechID];
  if ((siriLinkedSpeechID != 0) == (siriLinkedSpeechID2 == 0))
  {
    goto LABEL_11;
  }

  siriLinkedSpeechID3 = [(SISchemaEnrolledUserState *)self siriLinkedSpeechID];
  if (siriLinkedSpeechID3)
  {
    v8 = siriLinkedSpeechID3;
    siriLinkedSpeechID4 = [(SISchemaEnrolledUserState *)self siriLinkedSpeechID];
    siriLinkedSpeechID5 = [equalCopy siriLinkedSpeechID];
    v11 = [siriLinkedSpeechID4 isEqual:siriLinkedSpeechID5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  siriLinkedSpeechID = [(SISchemaEnrolledUserState *)self personalization];
  siriLinkedSpeechID2 = [equalCopy personalization];
  if ((siriLinkedSpeechID != 0) != (siriLinkedSpeechID2 == 0))
  {
    personalization = [(SISchemaEnrolledUserState *)self personalization];
    if (!personalization)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = personalization;
    personalization2 = [(SISchemaEnrolledUserState *)self personalization];
    personalization3 = [equalCopy personalization];
    v16 = [personalization2 isEqual:personalization3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  siriLinkedSpeechID = [(SISchemaEnrolledUserState *)self siriLinkedSpeechID];

  if (siriLinkedSpeechID)
  {
    PBDataWriterWriteStringField();
  }

  personalization = [(SISchemaEnrolledUserState *)self personalization];

  if (personalization)
  {
    personalization2 = [(SISchemaEnrolledUserState *)self personalization];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaEnrolledUserState;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaEnrolledUserState *)self personalization:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaEnrolledUserState *)self deletePersonalization];
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