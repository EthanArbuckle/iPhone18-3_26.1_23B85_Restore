@interface CMSchemaCMClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (CMSchemaCMClientEventMetadata)initWithDictionary:(id)dictionary;
- (CMSchemaCMClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CMSchemaCMClientEventMetadata

- (CMSchemaCMClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CMSchemaCMClientEventMetadata;
  v5 = [(CMSchemaCMClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cmId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CMSchemaCMClientEventMetadata *)v5 setCmId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (CMSchemaCMClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CMSchemaCMClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CMSchemaCMClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_cmId)
  {
    cmId = [(CMSchemaCMClientEventMetadata *)self cmId];
    dictionaryRepresentation = [cmId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cmId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cmId"];
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
    cmId = [(CMSchemaCMClientEventMetadata *)self cmId];
    cmId2 = [equalCopy cmId];
    v7 = cmId2;
    if ((cmId != 0) != (cmId2 == 0))
    {
      cmId3 = [(CMSchemaCMClientEventMetadata *)self cmId];
      if (!cmId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = cmId3;
      cmId4 = [(CMSchemaCMClientEventMetadata *)self cmId];
      cmId5 = [equalCopy cmId];
      v12 = [cmId4 isEqual:cmId5];

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
  cmId = [(CMSchemaCMClientEventMetadata *)self cmId];

  if (cmId)
  {
    cmId2 = [(CMSchemaCMClientEventMetadata *)self cmId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CMSchemaCMClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CMSchemaCMClientEventMetadata *)self cmId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CMSchemaCMClientEventMetadata *)self deleteCmId];
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