@interface ODSAMPLESiriSchemaODSAMPLEClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODSAMPLESiriSchemaODSAMPLEClientEventMetadata)initWithDictionary:(id)dictionary;
- (ODSAMPLESiriSchemaODSAMPLEClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODSAMPLESiriSchemaODSAMPLEClientEventMetadata

- (ODSAMPLESiriSchemaODSAMPLEClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ODSAMPLESiriSchemaODSAMPLEClientEventMetadata;
  v5 = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"odsampleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)v5 setOdsampleId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ODSAMPLESiriSchemaODSAMPLEClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_odsampleId)
  {
    odsampleId = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self odsampleId];
    dictionaryRepresentation = [odsampleId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"odsampleId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"odsampleId"];
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
    odsampleId = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self odsampleId];
    odsampleId2 = [equalCopy odsampleId];
    v7 = odsampleId2;
    if ((odsampleId != 0) != (odsampleId2 == 0))
    {
      odsampleId3 = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self odsampleId];
      if (!odsampleId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = odsampleId3;
      odsampleId4 = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self odsampleId];
      odsampleId5 = [equalCopy odsampleId];
      v12 = [odsampleId4 isEqual:odsampleId5];

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
  odsampleId = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self odsampleId];

  if (odsampleId)
  {
    odsampleId2 = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self odsampleId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODSAMPLESiriSchemaODSAMPLEClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self odsampleId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self deleteOdsampleId];
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