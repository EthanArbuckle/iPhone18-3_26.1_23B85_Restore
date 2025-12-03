@interface POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived

- (POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived;
  v5 = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pommesSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)v5 setPommesSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"confirmationOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived setConfirmationOutcome:](v5, "setConfirmationOutcome:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self dictionaryRepresentation];
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
    v4 = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self confirmationOutcome]- 1;
    if (v4 > 2)
    {
      v5 = @"POMMESKNOWLEDGEFALLBACKCONFIRMATIONOUTCOME_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E0E68[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"confirmationOutcome"];
  }

  if (self->_pommesSessionId)
  {
    pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self pommesSessionId];
    dictionaryRepresentation = [pommesSessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"pommesSessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"pommesSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_pommesSessionId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_confirmationOutcome;
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

  pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self pommesSessionId];
  pommesSessionId2 = [equalCopy pommesSessionId];
  v7 = pommesSessionId2;
  if ((pommesSessionId != 0) == (pommesSessionId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  pommesSessionId3 = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self pommesSessionId];
  if (pommesSessionId3)
  {
    v9 = pommesSessionId3;
    pommesSessionId4 = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self pommesSessionId];
    pommesSessionId5 = [equalCopy pommesSessionId];
    v12 = [pommesSessionId4 isEqual:pommesSessionId5];

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
    confirmationOutcome = self->_confirmationOutcome;
    if (confirmationOutcome != [equalCopy confirmationOutcome])
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
  pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self pommesSessionId];

  if (pommesSessionId)
  {
    pommesSessionId2 = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self pommesSessionId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self pommesSessionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived *)self deletePommesSessionId];
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