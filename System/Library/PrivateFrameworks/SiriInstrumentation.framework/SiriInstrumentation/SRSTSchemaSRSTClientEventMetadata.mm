@interface SRSTSchemaSRSTClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SRSTSchemaSRSTClientEventMetadata)initWithDictionary:(id)dictionary;
- (SRSTSchemaSRSTClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SRSTSchemaSRSTClientEventMetadata

- (SRSTSchemaSRSTClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SRSTSchemaSRSTClientEventMetadata;
  v5 = [(SRSTSchemaSRSTClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SRSTSchemaSRSTClientEventMetadata *)v5 setSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"srstId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SRSTSchemaSRSTClientEventMetadata *)v5 setSrstId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SRSTSchemaSRSTClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SRSTSchemaSRSTClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SRSTSchemaSRSTClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_sessionId)
  {
    sessionId = [(SRSTSchemaSRSTClientEventMetadata *)self sessionId];
    dictionaryRepresentation = [sessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sessionId"];
    }
  }

  if (self->_srstId)
  {
    srstId = [(SRSTSchemaSRSTClientEventMetadata *)self srstId];
    dictionaryRepresentation2 = [srstId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"srstId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"srstId"];
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

  sessionId = [(SRSTSchemaSRSTClientEventMetadata *)self sessionId];
  sessionId2 = [equalCopy sessionId];
  if ((sessionId != 0) == (sessionId2 == 0))
  {
    goto LABEL_11;
  }

  sessionId3 = [(SRSTSchemaSRSTClientEventMetadata *)self sessionId];
  if (sessionId3)
  {
    v8 = sessionId3;
    sessionId4 = [(SRSTSchemaSRSTClientEventMetadata *)self sessionId];
    sessionId5 = [equalCopy sessionId];
    v11 = [sessionId4 isEqual:sessionId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sessionId = [(SRSTSchemaSRSTClientEventMetadata *)self srstId];
  sessionId2 = [equalCopy srstId];
  if ((sessionId != 0) != (sessionId2 == 0))
  {
    srstId = [(SRSTSchemaSRSTClientEventMetadata *)self srstId];
    if (!srstId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = srstId;
    srstId2 = [(SRSTSchemaSRSTClientEventMetadata *)self srstId];
    srstId3 = [equalCopy srstId];
    v16 = [srstId2 isEqual:srstId3];

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
  sessionId = [(SRSTSchemaSRSTClientEventMetadata *)self sessionId];

  if (sessionId)
  {
    sessionId2 = [(SRSTSchemaSRSTClientEventMetadata *)self sessionId];
    PBDataWriterWriteSubmessage();
  }

  srstId = [(SRSTSchemaSRSTClientEventMetadata *)self srstId];

  if (srstId)
  {
    srstId2 = [(SRSTSchemaSRSTClientEventMetadata *)self srstId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SRSTSchemaSRSTClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  sessionId = [(SRSTSchemaSRSTClientEventMetadata *)self sessionId];
  v7 = [sessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SRSTSchemaSRSTClientEventMetadata *)self deleteSessionId];
  }

  srstId = [(SRSTSchemaSRSTClientEventMetadata *)self srstId];
  v10 = [srstId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SRSTSchemaSRSTClientEventMetadata *)self deleteSrstId];
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