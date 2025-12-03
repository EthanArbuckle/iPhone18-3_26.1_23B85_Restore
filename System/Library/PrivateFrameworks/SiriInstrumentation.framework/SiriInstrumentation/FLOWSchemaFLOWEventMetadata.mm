@interface FLOWSchemaFLOWEventMetadata
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWEventMetadata)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWEventMetadata

- (FLOWSchemaFLOWEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = FLOWSchemaFLOWEventMetadata;
  v5 = [(FLOWSchemaFLOWEventMetadata *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWEventMetadata *)v5 setTaskId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaVersion alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWEventMetadata *)v5 setVersion:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"flowId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(FLOWSchemaFLOWEventMetadata *)v5 setFlowId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(FLOWSchemaFLOWEventMetadata *)v5 setRequestId:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWEventMetadata *)v5 setTrpId:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SISchemaUUID alloc] initWithDictionary:v18];
      [(FLOWSchemaFLOWEventMetadata *)v5 setSubRequestId:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWEventMetadata *)self dictionaryRepresentation];
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
  if (self->_flowId)
  {
    flowId = [(FLOWSchemaFLOWEventMetadata *)self flowId];
    dictionaryRepresentation = [flowId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"flowId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"flowId"];
    }
  }

  if (self->_requestId)
  {
    requestId = [(FLOWSchemaFLOWEventMetadata *)self requestId];
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

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];
    v11 = [resultCandidateId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_subRequestId)
  {
    subRequestId = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
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

  if (self->_taskId)
  {
    taskId = [(FLOWSchemaFLOWEventMetadata *)self taskId];
    dictionaryRepresentation4 = [taskId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"taskId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"taskId"];
    }
  }

  if (self->_trpId)
  {
    trpId = [(FLOWSchemaFLOWEventMetadata *)self trpId];
    dictionaryRepresentation5 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"trpId"];
    }
  }

  if (self->_version)
  {
    version = [(FLOWSchemaFLOWEventMetadata *)self version];
    dictionaryRepresentation6 = [version dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"version"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"version"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_taskId hash];
  v4 = [(NSString *)self->_resultCandidateId hash]^ v3;
  v5 = [(SISchemaVersion *)self->_version hash];
  v6 = v4 ^ v5 ^ [(SISchemaUUID *)self->_flowId hash];
  v7 = [(SISchemaUUID *)self->_requestId hash];
  v8 = v7 ^ [(SISchemaUUID *)self->_trpId hash];
  return v6 ^ v8 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  taskId = [(FLOWSchemaFLOWEventMetadata *)self taskId];
  taskId2 = [equalCopy taskId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_36;
  }

  taskId3 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
  if (taskId3)
  {
    v8 = taskId3;
    taskId4 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
    taskId5 = [equalCopy taskId];
    v11 = [taskId4 isEqual:taskId5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  taskId = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];
  taskId2 = [equalCopy resultCandidateId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_36;
  }

  resultCandidateId = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  taskId = [(FLOWSchemaFLOWEventMetadata *)self version];
  taskId2 = [equalCopy version];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_36;
  }

  version = [(FLOWSchemaFLOWEventMetadata *)self version];
  if (version)
  {
    v18 = version;
    version2 = [(FLOWSchemaFLOWEventMetadata *)self version];
    version3 = [equalCopy version];
    v21 = [version2 isEqual:version3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  taskId = [(FLOWSchemaFLOWEventMetadata *)self flowId];
  taskId2 = [equalCopy flowId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_36;
  }

  flowId = [(FLOWSchemaFLOWEventMetadata *)self flowId];
  if (flowId)
  {
    v23 = flowId;
    flowId2 = [(FLOWSchemaFLOWEventMetadata *)self flowId];
    flowId3 = [equalCopy flowId];
    v26 = [flowId2 isEqual:flowId3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  taskId = [(FLOWSchemaFLOWEventMetadata *)self requestId];
  taskId2 = [equalCopy requestId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_36;
  }

  requestId = [(FLOWSchemaFLOWEventMetadata *)self requestId];
  if (requestId)
  {
    v28 = requestId;
    requestId2 = [(FLOWSchemaFLOWEventMetadata *)self requestId];
    requestId3 = [equalCopy requestId];
    v31 = [requestId2 isEqual:requestId3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  taskId = [(FLOWSchemaFLOWEventMetadata *)self trpId];
  taskId2 = [equalCopy trpId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_36;
  }

  trpId = [(FLOWSchemaFLOWEventMetadata *)self trpId];
  if (trpId)
  {
    v33 = trpId;
    trpId2 = [(FLOWSchemaFLOWEventMetadata *)self trpId];
    trpId3 = [equalCopy trpId];
    v36 = [trpId2 isEqual:trpId3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  taskId = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
  taskId2 = [equalCopy subRequestId];
  if ((taskId != 0) != (taskId2 == 0))
  {
    subRequestId = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
    if (!subRequestId)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = subRequestId;
    subRequestId2 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v41 = [subRequestId2 isEqual:subRequestId3];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  taskId = [(FLOWSchemaFLOWEventMetadata *)self taskId];

  if (taskId)
  {
    taskId2 = [(FLOWSchemaFLOWEventMetadata *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(FLOWSchemaFLOWEventMetadata *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  version = [(FLOWSchemaFLOWEventMetadata *)self version];

  if (version)
  {
    version2 = [(FLOWSchemaFLOWEventMetadata *)self version];
    PBDataWriterWriteSubmessage();
  }

  flowId = [(FLOWSchemaFLOWEventMetadata *)self flowId];

  if (flowId)
  {
    flowId2 = [(FLOWSchemaFLOWEventMetadata *)self flowId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(FLOWSchemaFLOWEventMetadata *)self requestId];

  if (requestId)
  {
    requestId2 = [(FLOWSchemaFLOWEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(FLOWSchemaFLOWEventMetadata *)self trpId];

  if (trpId)
  {
    trpId2 = [(FLOWSchemaFLOWEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];

  v16 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v16 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  taskId = [(FLOWSchemaFLOWEventMetadata *)self taskId];
  v7 = [taskId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteTaskId];
  }

  version = [(FLOWSchemaFLOWEventMetadata *)self version];
  v10 = [version applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteVersion];
  }

  flowId = [(FLOWSchemaFLOWEventMetadata *)self flowId];
  v13 = [flowId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteFlowId];
  }

  requestId = [(FLOWSchemaFLOWEventMetadata *)self requestId];
  v16 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteRequestId];
  }

  trpId = [(FLOWSchemaFLOWEventMetadata *)self trpId];
  v19 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteTrpId];
  }

  subRequestId = [(FLOWSchemaFLOWEventMetadata *)self subRequestId];
  v22 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(FLOWSchemaFLOWEventMetadata *)self deleteSubRequestId];
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