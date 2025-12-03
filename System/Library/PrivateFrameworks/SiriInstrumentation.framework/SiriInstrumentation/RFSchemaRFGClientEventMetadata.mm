@interface RFSchemaRFGClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFGClientEventMetadata)initWithDictionary:(id)dictionary;
- (RFSchemaRFGClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFGClientEventMetadata

- (RFSchemaRFGClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RFSchemaRFGClientEventMetadata;
  v5 = [(RFSchemaRFGClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rfId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RFSchemaRFGClientEventMetadata *)v5 setRfId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (RFSchemaRFGClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFGClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFGClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_rfId)
  {
    rfId = [(RFSchemaRFGClientEventMetadata *)self rfId];
    dictionaryRepresentation = [rfId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"rfId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"rfId"];
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
    rfId = [(RFSchemaRFGClientEventMetadata *)self rfId];
    rfId2 = [equalCopy rfId];
    v7 = rfId2;
    if ((rfId != 0) != (rfId2 == 0))
    {
      rfId3 = [(RFSchemaRFGClientEventMetadata *)self rfId];
      if (!rfId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = rfId3;
      rfId4 = [(RFSchemaRFGClientEventMetadata *)self rfId];
      rfId5 = [equalCopy rfId];
      v12 = [rfId4 isEqual:rfId5];

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
  rfId = [(RFSchemaRFGClientEventMetadata *)self rfId];

  if (rfId)
  {
    rfId2 = [(RFSchemaRFGClientEventMetadata *)self rfId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = RFSchemaRFGClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(RFSchemaRFGClientEventMetadata *)self rfId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(RFSchemaRFGClientEventMetadata *)self deleteRfId];
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