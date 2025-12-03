@interface NLRouterSchemaNLRouterOverrideMetadata
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterOverrideMetadata)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterOverrideMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterOverrideMetadata

- (NLRouterSchemaNLRouterOverrideMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLRouterSchemaNLRouterOverrideMetadata;
  v5 = [(NLRouterSchemaNLRouterOverrideMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"overrideId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterOverrideMetadata *)v5 setOverrideId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterOverrideMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterOverrideMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterOverrideMetadata *)self dictionaryRepresentation];
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
  if (self->_overrideId)
  {
    overrideId = [(NLRouterSchemaNLRouterOverrideMetadata *)self overrideId];
    dictionaryRepresentation = [overrideId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"overrideId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"overrideId"];
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
    overrideId = [(NLRouterSchemaNLRouterOverrideMetadata *)self overrideId];
    overrideId2 = [equalCopy overrideId];
    v7 = overrideId2;
    if ((overrideId != 0) != (overrideId2 == 0))
    {
      overrideId3 = [(NLRouterSchemaNLRouterOverrideMetadata *)self overrideId];
      if (!overrideId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = overrideId3;
      overrideId4 = [(NLRouterSchemaNLRouterOverrideMetadata *)self overrideId];
      overrideId5 = [equalCopy overrideId];
      v12 = [overrideId4 isEqual:overrideId5];

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
  overrideId = [(NLRouterSchemaNLRouterOverrideMetadata *)self overrideId];

  if (overrideId)
  {
    overrideId2 = [(NLRouterSchemaNLRouterOverrideMetadata *)self overrideId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLRouterSchemaNLRouterOverrideMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLRouterSchemaNLRouterOverrideMetadata *)self overrideId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLRouterSchemaNLRouterOverrideMetadata *)self deleteOverrideId];
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