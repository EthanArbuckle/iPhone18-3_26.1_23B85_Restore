@interface IDENTITYSchemaIDENTITYClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYClientEventMetadata)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYClientEventMetadata

- (IDENTITYSchemaIDENTITYClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IDENTITYSchemaIDENTITYClientEventMetadata;
  v5 = [(IDENTITYSchemaIDENTITYClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(IDENTITYSchemaIDENTITYClientEventMetadata *)v5 setIdentityId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_identityId)
  {
    identityId = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self identityId];
    dictionaryRepresentation = [identityId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"identityId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"identityId"];
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
    identityId = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self identityId];
    identityId2 = [equalCopy identityId];
    v7 = identityId2;
    if ((identityId != 0) != (identityId2 == 0))
    {
      identityId3 = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self identityId];
      if (!identityId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = identityId3;
      identityId4 = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self identityId];
      identityId5 = [equalCopy identityId];
      v12 = [identityId4 isEqual:identityId5];

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
  identityId = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self identityId];

  if (identityId)
  {
    identityId2 = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self identityId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self identityId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IDENTITYSchemaIDENTITYClientEventMetadata *)self deleteIdentityId];
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