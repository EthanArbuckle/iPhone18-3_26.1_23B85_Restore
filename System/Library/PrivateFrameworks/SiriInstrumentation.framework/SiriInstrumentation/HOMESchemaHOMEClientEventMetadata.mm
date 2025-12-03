@interface HOMESchemaHOMEClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (HOMESchemaHOMEClientEventMetadata)initWithDictionary:(id)dictionary;
- (HOMESchemaHOMEClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation HOMESchemaHOMEClientEventMetadata

- (HOMESchemaHOMEClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = HOMESchemaHOMEClientEventMetadata;
  v5 = [(HOMESchemaHOMEClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"homeComponentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(HOMESchemaHOMEClientEventMetadata *)v5 setHomeComponentId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (HOMESchemaHOMEClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HOMESchemaHOMEClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HOMESchemaHOMEClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_homeComponentId)
  {
    homeComponentId = [(HOMESchemaHOMEClientEventMetadata *)self homeComponentId];
    dictionaryRepresentation = [homeComponentId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"homeComponentId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"homeComponentId"];
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
    homeComponentId = [(HOMESchemaHOMEClientEventMetadata *)self homeComponentId];
    homeComponentId2 = [equalCopy homeComponentId];
    v7 = homeComponentId2;
    if ((homeComponentId != 0) != (homeComponentId2 == 0))
    {
      homeComponentId3 = [(HOMESchemaHOMEClientEventMetadata *)self homeComponentId];
      if (!homeComponentId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = homeComponentId3;
      homeComponentId4 = [(HOMESchemaHOMEClientEventMetadata *)self homeComponentId];
      homeComponentId5 = [equalCopy homeComponentId];
      v12 = [homeComponentId4 isEqual:homeComponentId5];

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
  homeComponentId = [(HOMESchemaHOMEClientEventMetadata *)self homeComponentId];

  if (homeComponentId)
  {
    homeComponentId2 = [(HOMESchemaHOMEClientEventMetadata *)self homeComponentId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = HOMESchemaHOMEClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(HOMESchemaHOMEClientEventMetadata *)self homeComponentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(HOMESchemaHOMEClientEventMetadata *)self deleteHomeComponentId];
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