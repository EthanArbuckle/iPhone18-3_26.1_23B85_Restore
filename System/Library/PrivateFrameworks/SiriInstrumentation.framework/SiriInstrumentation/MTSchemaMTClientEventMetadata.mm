@interface MTSchemaMTClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTClientEventMetadata)initWithDictionary:(id)dictionary;
- (MTSchemaMTClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTClientEventMetadata

- (MTSchemaMTClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MTSchemaMTClientEventMetadata;
  v5 = [(MTSchemaMTClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mtId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MTSchemaMTClientEventMetadata *)v5 setMtId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(MTSchemaMTClientEventMetadata *)v5 setSessionId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (MTSchemaMTClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_mtId)
  {
    mtId = [(MTSchemaMTClientEventMetadata *)self mtId];
    dictionaryRepresentation = [mtId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mtId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"mtId"];
    }
  }

  if (self->_sessionId)
  {
    sessionId = [(MTSchemaMTClientEventMetadata *)self sessionId];
    dictionaryRepresentation2 = [sessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sessionId"];
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

  mtId = [(MTSchemaMTClientEventMetadata *)self mtId];
  mtId2 = [equalCopy mtId];
  if ((mtId != 0) == (mtId2 == 0))
  {
    goto LABEL_11;
  }

  mtId3 = [(MTSchemaMTClientEventMetadata *)self mtId];
  if (mtId3)
  {
    v8 = mtId3;
    mtId4 = [(MTSchemaMTClientEventMetadata *)self mtId];
    mtId5 = [equalCopy mtId];
    v11 = [mtId4 isEqual:mtId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  mtId = [(MTSchemaMTClientEventMetadata *)self sessionId];
  mtId2 = [equalCopy sessionId];
  if ((mtId != 0) != (mtId2 == 0))
  {
    sessionId = [(MTSchemaMTClientEventMetadata *)self sessionId];
    if (!sessionId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = sessionId;
    sessionId2 = [(MTSchemaMTClientEventMetadata *)self sessionId];
    sessionId3 = [equalCopy sessionId];
    v16 = [sessionId2 isEqual:sessionId3];

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
  mtId = [(MTSchemaMTClientEventMetadata *)self mtId];

  if (mtId)
  {
    mtId2 = [(MTSchemaMTClientEventMetadata *)self mtId];
    PBDataWriterWriteSubmessage();
  }

  sessionId = [(MTSchemaMTClientEventMetadata *)self sessionId];

  if (sessionId)
  {
    sessionId2 = [(MTSchemaMTClientEventMetadata *)self sessionId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = MTSchemaMTClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  mtId = [(MTSchemaMTClientEventMetadata *)self mtId];
  v7 = [mtId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MTSchemaMTClientEventMetadata *)self deleteMtId];
  }

  sessionId = [(MTSchemaMTClientEventMetadata *)self sessionId];
  v10 = [sessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MTSchemaMTClientEventMetadata *)self deleteSessionId];
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