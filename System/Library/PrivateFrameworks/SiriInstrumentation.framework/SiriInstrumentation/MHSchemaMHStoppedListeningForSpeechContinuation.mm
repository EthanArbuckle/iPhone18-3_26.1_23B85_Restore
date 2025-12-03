@interface MHSchemaMHStoppedListeningForSpeechContinuation
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHStoppedListeningForSpeechContinuation)initWithDictionary:(id)dictionary;
- (MHSchemaMHStoppedListeningForSpeechContinuation)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHStoppedListeningForSpeechContinuation

- (MHSchemaMHStoppedListeningForSpeechContinuation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MHSchemaMHStoppedListeningForSpeechContinuation;
  v5 = [(MHSchemaMHStoppedListeningForSpeechContinuation *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHStoppedListeningForSpeechContinuation *)v5 setTrpId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (MHSchemaMHStoppedListeningForSpeechContinuation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self dictionaryRepresentation];
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
  if (self->_trpId)
  {
    trpId = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self trpId];
    dictionaryRepresentation = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"trpId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"trpId"];
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
    trpId = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self trpId];
    trpId2 = [equalCopy trpId];
    v7 = trpId2;
    if ((trpId != 0) != (trpId2 == 0))
    {
      trpId3 = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self trpId];
      if (!trpId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = trpId3;
      trpId4 = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self trpId];
      trpId5 = [equalCopy trpId];
      v12 = [trpId4 isEqual:trpId5];

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
  trpId = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self trpId];

  if (trpId)
  {
    trpId2 = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self trpId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHStoppedListeningForSpeechContinuation;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHStoppedListeningForSpeechContinuation *)self trpId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(MHSchemaMHStoppedListeningForSpeechContinuation *)self deleteTrpId];
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