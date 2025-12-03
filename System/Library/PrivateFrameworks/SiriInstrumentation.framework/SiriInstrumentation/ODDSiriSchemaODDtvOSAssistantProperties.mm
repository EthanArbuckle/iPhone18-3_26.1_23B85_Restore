@interface ODDSiriSchemaODDtvOSAssistantProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDtvOSAssistantProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDtvOSAssistantProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDtvOSAssistantProperties

- (ODDSiriSchemaODDtvOSAssistantProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDtvOSAssistantProperties;
  v5 = [(ODDSiriSchemaODDtvOSAssistantProperties *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"multiUserState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDMultiUserState alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDtvOSAssistantProperties *)v5 setMultiUserState:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"homePodProperties"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDHomePodProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDtvOSAssistantProperties *)v5 setHomePodProperties:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDtvOSAssistantProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDtvOSAssistantProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDtvOSAssistantProperties *)self dictionaryRepresentation];
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
  if (self->_homePodProperties)
  {
    homePodProperties = [(ODDSiriSchemaODDtvOSAssistantProperties *)self homePodProperties];
    dictionaryRepresentation = [homePodProperties dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"homePodProperties"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"homePodProperties"];
    }
  }

  if (self->_multiUserState)
  {
    multiUserState = [(ODDSiriSchemaODDtvOSAssistantProperties *)self multiUserState];
    dictionaryRepresentation2 = [multiUserState dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"multiUserState"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"multiUserState"];
    }
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

  multiUserState = [(ODDSiriSchemaODDtvOSAssistantProperties *)self multiUserState];
  multiUserState2 = [equalCopy multiUserState];
  if ((multiUserState != 0) == (multiUserState2 == 0))
  {
    goto LABEL_11;
  }

  multiUserState3 = [(ODDSiriSchemaODDtvOSAssistantProperties *)self multiUserState];
  if (multiUserState3)
  {
    v8 = multiUserState3;
    multiUserState4 = [(ODDSiriSchemaODDtvOSAssistantProperties *)self multiUserState];
    multiUserState5 = [equalCopy multiUserState];
    v11 = [multiUserState4 isEqual:multiUserState5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  multiUserState = [(ODDSiriSchemaODDtvOSAssistantProperties *)self homePodProperties];
  multiUserState2 = [equalCopy homePodProperties];
  if ((multiUserState != 0) != (multiUserState2 == 0))
  {
    homePodProperties = [(ODDSiriSchemaODDtvOSAssistantProperties *)self homePodProperties];
    if (!homePodProperties)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = homePodProperties;
    homePodProperties2 = [(ODDSiriSchemaODDtvOSAssistantProperties *)self homePodProperties];
    homePodProperties3 = [equalCopy homePodProperties];
    v16 = [homePodProperties2 isEqual:homePodProperties3];

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
  multiUserState = [(ODDSiriSchemaODDtvOSAssistantProperties *)self multiUserState];

  if (multiUserState)
  {
    multiUserState2 = [(ODDSiriSchemaODDtvOSAssistantProperties *)self multiUserState];
    PBDataWriterWriteSubmessage();
  }

  homePodProperties = [(ODDSiriSchemaODDtvOSAssistantProperties *)self homePodProperties];

  if (homePodProperties)
  {
    homePodProperties2 = [(ODDSiriSchemaODDtvOSAssistantProperties *)self homePodProperties];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDtvOSAssistantProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  multiUserState = [(ODDSiriSchemaODDtvOSAssistantProperties *)self multiUserState];
  v7 = [multiUserState applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDtvOSAssistantProperties *)self deleteMultiUserState];
  }

  homePodProperties = [(ODDSiriSchemaODDtvOSAssistantProperties *)self homePodProperties];
  v10 = [homePodProperties applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDtvOSAssistantProperties *)self deleteHomePodProperties];
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