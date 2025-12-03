@interface RTSSchemaRTSClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RTSSchemaRTSClientEventMetadata)initWithDictionary:(id)dictionary;
- (RTSSchemaRTSClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation RTSSchemaRTSClientEventMetadata

- (RTSSchemaRTSClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RTSSchemaRTSClientEventMetadata;
  v5 = [(RTSSchemaRTSClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rtsSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RTSSchemaRTSClientEventMetadata *)v5 setRtsSessionId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (RTSSchemaRTSClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RTSSchemaRTSClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RTSSchemaRTSClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_rtsSessionId)
  {
    rtsSessionId = [(RTSSchemaRTSClientEventMetadata *)self rtsSessionId];
    dictionaryRepresentation = [rtsSessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"rtsSessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"rtsSessionId"];
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
    rtsSessionId = [(RTSSchemaRTSClientEventMetadata *)self rtsSessionId];
    rtsSessionId2 = [equalCopy rtsSessionId];
    v7 = rtsSessionId2;
    if ((rtsSessionId != 0) != (rtsSessionId2 == 0))
    {
      rtsSessionId3 = [(RTSSchemaRTSClientEventMetadata *)self rtsSessionId];
      if (!rtsSessionId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = rtsSessionId3;
      rtsSessionId4 = [(RTSSchemaRTSClientEventMetadata *)self rtsSessionId];
      rtsSessionId5 = [equalCopy rtsSessionId];
      v12 = [rtsSessionId4 isEqual:rtsSessionId5];

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
  rtsSessionId = [(RTSSchemaRTSClientEventMetadata *)self rtsSessionId];

  if (rtsSessionId)
  {
    rtsSessionId2 = [(RTSSchemaRTSClientEventMetadata *)self rtsSessionId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = RTSSchemaRTSClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(RTSSchemaRTSClientEventMetadata *)self rtsSessionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(RTSSchemaRTSClientEventMetadata *)self deleteRtsSessionId];
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