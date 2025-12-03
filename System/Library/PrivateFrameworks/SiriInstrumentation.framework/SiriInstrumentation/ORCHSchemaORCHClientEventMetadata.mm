@interface ORCHSchemaORCHClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHClientEventMetadata)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHClientEventMetadata

- (ORCHSchemaORCHClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ORCHSchemaORCHClientEventMetadata;
  v5 = [(ORCHSchemaORCHClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHClientEventMetadata *)v5 setRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ORCHSchemaORCHClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_requestId)
  {
    requestId = [(ORCHSchemaORCHClientEventMetadata *)self requestId];
    dictionaryRepresentation = [requestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"requestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(ORCHSchemaORCHClientEventMetadata *)self resultCandidateId];
    v8 = [resultCandidateId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"resultCandidateId"];
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

  requestId = [(ORCHSchemaORCHClientEventMetadata *)self requestId];
  requestId2 = [equalCopy requestId];
  if ((requestId != 0) == (requestId2 == 0))
  {
    goto LABEL_11;
  }

  requestId3 = [(ORCHSchemaORCHClientEventMetadata *)self requestId];
  if (requestId3)
  {
    v8 = requestId3;
    requestId4 = [(ORCHSchemaORCHClientEventMetadata *)self requestId];
    requestId5 = [equalCopy requestId];
    v11 = [requestId4 isEqual:requestId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  requestId = [(ORCHSchemaORCHClientEventMetadata *)self resultCandidateId];
  requestId2 = [equalCopy resultCandidateId];
  if ((requestId != 0) != (requestId2 == 0))
  {
    resultCandidateId = [(ORCHSchemaORCHClientEventMetadata *)self resultCandidateId];
    if (!resultCandidateId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = resultCandidateId;
    resultCandidateId2 = [(ORCHSchemaORCHClientEventMetadata *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

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
  requestId = [(ORCHSchemaORCHClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(ORCHSchemaORCHClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(ORCHSchemaORCHClientEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ORCHSchemaORCHClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ORCHSchemaORCHClientEventMetadata *)self requestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ORCHSchemaORCHClientEventMetadata *)self deleteRequestId];
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