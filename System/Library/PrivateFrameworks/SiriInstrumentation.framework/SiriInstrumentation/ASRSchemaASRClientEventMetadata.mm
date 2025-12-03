@interface ASRSchemaASRClientEventMetadata
- (ASRSchemaASRClientEventMetadata)initWithDictionary:(id)dictionary;
- (ASRSchemaASRClientEventMetadata)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRClientEventMetadata

- (ASRSchemaASRClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ASRSchemaASRClientEventMetadata;
  v5 = [(ASRSchemaASRClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRClientEventMetadata *)v5 setAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ASRSchemaASRClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ASRSchemaASRClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_asrId)
  {
    asrId = [(ASRSchemaASRClientEventMetadata *)self asrId];
    dictionaryRepresentation = [asrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asrId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(ASRSchemaASRClientEventMetadata *)self requestId];
    dictionaryRepresentation2 = [requestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"requestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"requestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  asrId = [(ASRSchemaASRClientEventMetadata *)self asrId];
  asrId2 = [equalCopy asrId];
  if ((asrId != 0) == (asrId2 == 0))
  {
    goto LABEL_11;
  }

  asrId3 = [(ASRSchemaASRClientEventMetadata *)self asrId];
  if (asrId3)
  {
    v8 = asrId3;
    asrId4 = [(ASRSchemaASRClientEventMetadata *)self asrId];
    asrId5 = [equalCopy asrId];
    v11 = [asrId4 isEqual:asrId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  asrId = [(ASRSchemaASRClientEventMetadata *)self requestId];
  asrId2 = [equalCopy requestId];
  if ((asrId != 0) != (asrId2 == 0))
  {
    requestId = [(ASRSchemaASRClientEventMetadata *)self requestId];
    if (!requestId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = requestId;
    requestId2 = [(ASRSchemaASRClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  asrId = [(ASRSchemaASRClientEventMetadata *)self asrId];

  if (asrId)
  {
    asrId2 = [(ASRSchemaASRClientEventMetadata *)self asrId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(ASRSchemaASRClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(ASRSchemaASRClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ASRSchemaASRClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  asrId = [(ASRSchemaASRClientEventMetadata *)self asrId];
  v7 = [asrId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRClientEventMetadata *)self deleteAsrId];
  }

  requestId = [(ASRSchemaASRClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASRSchemaASRClientEventMetadata *)self deleteRequestId];
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