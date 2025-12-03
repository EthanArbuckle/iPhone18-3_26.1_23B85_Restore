@interface DialogEngineSchemaDLGENGClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (DialogEngineSchemaDLGENGClientEventMetadata)initWithDictionary:(id)dictionary;
- (DialogEngineSchemaDLGENGClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DialogEngineSchemaDLGENGClientEventMetadata

- (DialogEngineSchemaDLGENGClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = DialogEngineSchemaDLGENGClientEventMetadata;
  v5 = [(DialogEngineSchemaDLGENGClientEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dialogEngineId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DialogEngineSchemaDLGENGClientEventMetadata *)v5 setDialogEngineId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(DialogEngineSchemaDLGENGClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(DialogEngineSchemaDLGENGClientEventMetadata *)v5 setSubRequestId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (DialogEngineSchemaDLGENGClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DialogEngineSchemaDLGENGClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DialogEngineSchemaDLGENGClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_dialogEngineId)
  {
    dialogEngineId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self dialogEngineId];
    dictionaryRepresentation = [dialogEngineId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dialogEngineId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dialogEngineId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self requestId];
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

  if (self->_subRequestId)
  {
    subRequestId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self subRequestId];
    dictionaryRepresentation3 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_dialogEngineId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  dialogEngineId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self dialogEngineId];
  dialogEngineId2 = [equalCopy dialogEngineId];
  if ((dialogEngineId != 0) == (dialogEngineId2 == 0))
  {
    goto LABEL_16;
  }

  dialogEngineId3 = [(DialogEngineSchemaDLGENGClientEventMetadata *)self dialogEngineId];
  if (dialogEngineId3)
  {
    v8 = dialogEngineId3;
    dialogEngineId4 = [(DialogEngineSchemaDLGENGClientEventMetadata *)self dialogEngineId];
    dialogEngineId5 = [equalCopy dialogEngineId];
    v11 = [dialogEngineId4 isEqual:dialogEngineId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dialogEngineId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self requestId];
  dialogEngineId2 = [equalCopy requestId];
  if ((dialogEngineId != 0) == (dialogEngineId2 == 0))
  {
    goto LABEL_16;
  }

  requestId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self requestId];
  if (requestId)
  {
    v13 = requestId;
    requestId2 = [(DialogEngineSchemaDLGENGClientEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v16 = [requestId2 isEqual:requestId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dialogEngineId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self subRequestId];
  dialogEngineId2 = [equalCopy subRequestId];
  if ((dialogEngineId != 0) != (dialogEngineId2 == 0))
  {
    subRequestId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = subRequestId;
    subRequestId2 = [(DialogEngineSchemaDLGENGClientEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v21 = [subRequestId2 isEqual:subRequestId3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dialogEngineId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self dialogEngineId];

  if (dialogEngineId)
  {
    dialogEngineId2 = [(DialogEngineSchemaDLGENGClientEventMetadata *)self dialogEngineId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(DialogEngineSchemaDLGENGClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self subRequestId];

  v9 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(DialogEngineSchemaDLGENGClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = DialogEngineSchemaDLGENGClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  dialogEngineId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self dialogEngineId];
  v7 = [dialogEngineId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DialogEngineSchemaDLGENGClientEventMetadata *)self deleteDialogEngineId];
  }

  requestId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self requestId];
  v10 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DialogEngineSchemaDLGENGClientEventMetadata *)self deleteRequestId];
  }

  subRequestId = [(DialogEngineSchemaDLGENGClientEventMetadata *)self subRequestId];
  v13 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(DialogEngineSchemaDLGENGClientEventMetadata *)self deleteSubRequestId];
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