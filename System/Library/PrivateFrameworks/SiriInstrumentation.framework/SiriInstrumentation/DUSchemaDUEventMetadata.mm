@interface DUSchemaDUEventMetadata
- (BOOL)isEqual:(id)equal;
- (DUSchemaDUEventMetadata)initWithDictionary:(id)dictionary;
- (DUSchemaDUEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation DUSchemaDUEventMetadata

- (DUSchemaDUEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = DUSchemaDUEventMetadata;
  v5 = [(DUSchemaDUEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assetIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DUSchemaDUEventMetadata *)v5 setAssetIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (DUSchemaDUEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DUSchemaDUEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DUSchemaDUEventMetadata *)self dictionaryRepresentation];
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
  if (self->_assetIdentifier)
  {
    assetIdentifier = [(DUSchemaDUEventMetadata *)self assetIdentifier];
    dictionaryRepresentation = [assetIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assetIdentifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assetIdentifier"];
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
    assetIdentifier = [(DUSchemaDUEventMetadata *)self assetIdentifier];
    assetIdentifier2 = [equalCopy assetIdentifier];
    v7 = assetIdentifier2;
    if ((assetIdentifier != 0) != (assetIdentifier2 == 0))
    {
      assetIdentifier3 = [(DUSchemaDUEventMetadata *)self assetIdentifier];
      if (!assetIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = assetIdentifier3;
      assetIdentifier4 = [(DUSchemaDUEventMetadata *)self assetIdentifier];
      assetIdentifier5 = [equalCopy assetIdentifier];
      v12 = [assetIdentifier4 isEqual:assetIdentifier5];

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
  assetIdentifier = [(DUSchemaDUEventMetadata *)self assetIdentifier];

  if (assetIdentifier)
  {
    assetIdentifier2 = [(DUSchemaDUEventMetadata *)self assetIdentifier];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DUSchemaDUEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DUSchemaDUEventMetadata *)self assetIdentifier:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DUSchemaDUEventMetadata *)self deleteAssetIdentifier];
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