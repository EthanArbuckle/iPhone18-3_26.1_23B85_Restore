@interface ACTVSchemaACTVClientEventMetadata
- (ACTVSchemaACTVClientEventMetadata)initWithDictionary:(id)dictionary;
- (ACTVSchemaACTVClientEventMetadata)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ACTVSchemaACTVClientEventMetadata

- (ACTVSchemaACTVClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ACTVSchemaACTVClientEventMetadata;
  v5 = [(ACTVSchemaACTVClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"activationEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ACTVSchemaACTVClientEventMetadata *)v5 setActivationEventId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ACTVSchemaACTVClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ACTVSchemaACTVClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ACTVSchemaACTVClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_activationEventId)
  {
    activationEventId = [(ACTVSchemaACTVClientEventMetadata *)self activationEventId];
    dictionaryRepresentation = [activationEventId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"activationEventId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"activationEventId"];
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
    activationEventId = [(ACTVSchemaACTVClientEventMetadata *)self activationEventId];
    activationEventId2 = [equalCopy activationEventId];
    v7 = activationEventId2;
    if ((activationEventId != 0) != (activationEventId2 == 0))
    {
      activationEventId3 = [(ACTVSchemaACTVClientEventMetadata *)self activationEventId];
      if (!activationEventId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = activationEventId3;
      activationEventId4 = [(ACTVSchemaACTVClientEventMetadata *)self activationEventId];
      activationEventId5 = [equalCopy activationEventId];
      v12 = [activationEventId4 isEqual:activationEventId5];

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
  activationEventId = [(ACTVSchemaACTVClientEventMetadata *)self activationEventId];

  if (activationEventId)
  {
    activationEventId2 = [(ACTVSchemaACTVClientEventMetadata *)self activationEventId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ACTVSchemaACTVClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ACTVSchemaACTVClientEventMetadata *)self activationEventId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ACTVSchemaACTVClientEventMetadata *)self deleteActivationEventId];
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