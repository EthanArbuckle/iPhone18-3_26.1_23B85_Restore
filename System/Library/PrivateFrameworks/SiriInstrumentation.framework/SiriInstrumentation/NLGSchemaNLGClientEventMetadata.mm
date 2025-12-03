@interface NLGSchemaNLGClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NLGSchemaNLGClientEventMetadata)initWithDictionary:(id)dictionary;
- (NLGSchemaNLGClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLGSchemaNLGClientEventMetadata

- (NLGSchemaNLGClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLGSchemaNLGClientEventMetadata;
  v5 = [(NLGSchemaNLGClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nlgId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLGSchemaNLGClientEventMetadata *)v5 setNlgId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLGSchemaNLGClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLGSchemaNLGClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLGSchemaNLGClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_nlgId)
  {
    nlgId = [(NLGSchemaNLGClientEventMetadata *)self nlgId];
    dictionaryRepresentation = [nlgId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"nlgId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"nlgId"];
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
    nlgId = [(NLGSchemaNLGClientEventMetadata *)self nlgId];
    nlgId2 = [equalCopy nlgId];
    v7 = nlgId2;
    if ((nlgId != 0) != (nlgId2 == 0))
    {
      nlgId3 = [(NLGSchemaNLGClientEventMetadata *)self nlgId];
      if (!nlgId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = nlgId3;
      nlgId4 = [(NLGSchemaNLGClientEventMetadata *)self nlgId];
      nlgId5 = [equalCopy nlgId];
      v12 = [nlgId4 isEqual:nlgId5];

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
  nlgId = [(NLGSchemaNLGClientEventMetadata *)self nlgId];

  if (nlgId)
  {
    nlgId2 = [(NLGSchemaNLGClientEventMetadata *)self nlgId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLGSchemaNLGClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLGSchemaNLGClientEventMetadata *)self nlgId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLGSchemaNLGClientEventMetadata *)self deleteNlgId];
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