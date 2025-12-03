@interface SICSchemaSICClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SICSchemaSICClientEventMetadata)initWithDictionary:(id)dictionary;
- (SICSchemaSICClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SICSchemaSICClientEventMetadata

- (SICSchemaSICClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SICSchemaSICClientEventMetadata;
  v5 = [(SICSchemaSICClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sicId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SICSchemaSICClientEventMetadata *)v5 setSicId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SICSchemaSICClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SICSchemaSICClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SICSchemaSICClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SICSchemaSICClientEventMetadata *)self dictionaryRepresentation];
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
    requestId = [(SICSchemaSICClientEventMetadata *)self requestId];
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

  if (self->_sicId)
  {
    sicId = [(SICSchemaSICClientEventMetadata *)self sicId];
    dictionaryRepresentation2 = [sicId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sicId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sicId"];
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

  sicId = [(SICSchemaSICClientEventMetadata *)self sicId];
  sicId2 = [equalCopy sicId];
  if ((sicId != 0) == (sicId2 == 0))
  {
    goto LABEL_11;
  }

  sicId3 = [(SICSchemaSICClientEventMetadata *)self sicId];
  if (sicId3)
  {
    v8 = sicId3;
    sicId4 = [(SICSchemaSICClientEventMetadata *)self sicId];
    sicId5 = [equalCopy sicId];
    v11 = [sicId4 isEqual:sicId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sicId = [(SICSchemaSICClientEventMetadata *)self requestId];
  sicId2 = [equalCopy requestId];
  if ((sicId != 0) != (sicId2 == 0))
  {
    requestId = [(SICSchemaSICClientEventMetadata *)self requestId];
    if (!requestId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = requestId;
    requestId2 = [(SICSchemaSICClientEventMetadata *)self requestId];
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
  sicId = [(SICSchemaSICClientEventMetadata *)self sicId];

  if (sicId)
  {
    sicId2 = [(SICSchemaSICClientEventMetadata *)self sicId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(SICSchemaSICClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(SICSchemaSICClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SICSchemaSICClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  sicId = [(SICSchemaSICClientEventMetadata *)self sicId];
  v7 = [sicId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SICSchemaSICClientEventMetadata *)self deleteSicId];
  }

  requestId = [(SICSchemaSICClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SICSchemaSICClientEventMetadata *)self deleteRequestId];
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