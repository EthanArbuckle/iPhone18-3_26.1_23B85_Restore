@interface HALSchemaHALCompanionDeviceCommunicationContext
- (BOOL)isEqual:(id)equal;
- (HALSchemaHALCompanionDeviceCommunicationContext)initWithDictionary:(id)dictionary;
- (HALSchemaHALCompanionDeviceCommunicationContext)initWithJSON:(id)n;
- (HALSchemaHALCompanionDeviceCommunicationEnded)ended;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteEnded;
- (void)writeTo:(id)to;
@end

@implementation HALSchemaHALCompanionDeviceCommunicationContext

- (HALSchemaHALCompanionDeviceCommunicationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = HALSchemaHALCompanionDeviceCommunicationContext;
  v5 = [(HALSchemaHALCompanionDeviceCommunicationContext *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[HALSchemaHALCompanionDeviceCommunicationEnded alloc] initWithDictionary:v6];
      [(HALSchemaHALCompanionDeviceCommunicationContext *)v5 setEnded:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (HALSchemaHALCompanionDeviceCommunicationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HALSchemaHALCompanionDeviceCommunicationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HALSchemaHALCompanionDeviceCommunicationContext *)self dictionaryRepresentation];
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
  if (self->_ended)
  {
    ended = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
    dictionaryRepresentation = [ended dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ended"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ended"];
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
    whichContextevent = self->_whichContextevent;
    if (whichContextevent == [equalCopy whichContextevent])
    {
      ended = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
      ended2 = [equalCopy ended];
      v8 = ended2;
      if ((ended != 0) != (ended2 == 0))
      {
        ended3 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
        if (!ended3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = ended3;
        ended4 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
        ended5 = [equalCopy ended];
        v13 = [ended4 isEqual:ended5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ended = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];

  if (ended)
  {
    ended2 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HALSchemaHALCompanionDeviceCommunicationEnded)ended
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = HALSchemaHALCompanionDeviceCommunicationContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(HALSchemaHALCompanionDeviceCommunicationContext *)self ended:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(HALSchemaHALCompanionDeviceCommunicationContext *)self deleteEnded];
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