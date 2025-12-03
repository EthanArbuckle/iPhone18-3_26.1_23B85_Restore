@interface SISchemaOpaqueClientEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaOpaqueClientEvent)initWithDictionary:(id)dictionary;
- (SISchemaOpaqueClientEvent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)writeTo:(id)to;
@end

@implementation SISchemaOpaqueClientEvent

- (id)getComponentId
{
  selfCopy = self;
  v3 = SISchemaOpaqueClientEvent.getComponentId()();

  return v3;
}

- (int)componentName
{
  selfCopy = self;
  v3 = SISchemaOpaqueClientEvent.componentName.getter();

  return v3;
}

- (SISchemaOpaqueClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaOpaqueClientEvent;
  v5 = [(SISchemaOpaqueClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"anyEventPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SISchemaOpaqueClientEvent *)v5 setAnyEventPayload:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"componentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaComponentIdentifier alloc] initWithDictionary:v8];
      [(SISchemaOpaqueClientEvent *)v5 setComponentId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaOpaqueClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaOpaqueClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaOpaqueClientEvent *)self dictionaryRepresentation];
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
  if (self->_anyEventPayload)
  {
    anyEventPayload = [(SISchemaOpaqueClientEvent *)self anyEventPayload];
    v5 = [anyEventPayload base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"anyEventPayload"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"anyEventPayload"];
    }
  }

  if (self->_componentId)
  {
    componentId = [(SISchemaOpaqueClientEvent *)self componentId];
    dictionaryRepresentation = [componentId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"componentId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"componentId"];
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

  anyEventPayload = [(SISchemaOpaqueClientEvent *)self anyEventPayload];
  anyEventPayload2 = [equalCopy anyEventPayload];
  if ((anyEventPayload != 0) == (anyEventPayload2 == 0))
  {
    goto LABEL_11;
  }

  anyEventPayload3 = [(SISchemaOpaqueClientEvent *)self anyEventPayload];
  if (anyEventPayload3)
  {
    v8 = anyEventPayload3;
    anyEventPayload4 = [(SISchemaOpaqueClientEvent *)self anyEventPayload];
    anyEventPayload5 = [equalCopy anyEventPayload];
    v11 = [anyEventPayload4 isEqual:anyEventPayload5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  anyEventPayload = [(SISchemaOpaqueClientEvent *)self componentId];
  anyEventPayload2 = [equalCopy componentId];
  if ((anyEventPayload != 0) != (anyEventPayload2 == 0))
  {
    componentId = [(SISchemaOpaqueClientEvent *)self componentId];
    if (!componentId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = componentId;
    componentId2 = [(SISchemaOpaqueClientEvent *)self componentId];
    componentId3 = [equalCopy componentId];
    v16 = [componentId2 isEqual:componentId3];

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
  anyEventPayload = [(SISchemaOpaqueClientEvent *)self anyEventPayload];

  if (anyEventPayload)
  {
    PBDataWriterWriteDataField();
  }

  componentId = [(SISchemaOpaqueClientEvent *)self componentId];

  if (componentId)
  {
    componentId2 = [(SISchemaOpaqueClientEvent *)self componentId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaOpaqueClientEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaOpaqueClientEvent *)self componentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaOpaqueClientEvent *)self deleteComponentId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];
  [(SISensitiveConditionsSet *)v2 addCondition:2];
  [(SISensitiveConditionsSet *)v2 addCondition:4];
  [(SISensitiveConditionsSet *)v2 addCondition:5];
  [(SISensitiveConditionsSet *)v2 addCondition:6];
  [(SISensitiveConditionsSet *)v2 addCondition:7];

  return v2;
}

@end