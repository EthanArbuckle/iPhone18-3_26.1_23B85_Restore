@interface GMSSchemaGMSClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (GMSSchemaGMSClientEventMetadata)initWithDictionary:(id)dictionary;
- (GMSSchemaGMSClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation GMSSchemaGMSClientEventMetadata

- (GMSSchemaGMSClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = GMSSchemaGMSClientEventMetadata;
  v5 = [(GMSSchemaGMSClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"gmsId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GMSSchemaGMSClientEventMetadata *)v5 setGmsId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (GMSSchemaGMSClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GMSSchemaGMSClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GMSSchemaGMSClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_gmsId)
  {
    gmsId = [(GMSSchemaGMSClientEventMetadata *)self gmsId];
    dictionaryRepresentation = [gmsId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"gmsId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"gmsId"];
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
    gmsId = [(GMSSchemaGMSClientEventMetadata *)self gmsId];
    gmsId2 = [equalCopy gmsId];
    v7 = gmsId2;
    if ((gmsId != 0) != (gmsId2 == 0))
    {
      gmsId3 = [(GMSSchemaGMSClientEventMetadata *)self gmsId];
      if (!gmsId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = gmsId3;
      gmsId4 = [(GMSSchemaGMSClientEventMetadata *)self gmsId];
      gmsId5 = [equalCopy gmsId];
      v12 = [gmsId4 isEqual:gmsId5];

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
  gmsId = [(GMSSchemaGMSClientEventMetadata *)self gmsId];

  if (gmsId)
  {
    gmsId2 = [(GMSSchemaGMSClientEventMetadata *)self gmsId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GMSSchemaGMSClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GMSSchemaGMSClientEventMetadata *)self gmsId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GMSSchemaGMSClientEventMetadata *)self deleteGmsId];
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