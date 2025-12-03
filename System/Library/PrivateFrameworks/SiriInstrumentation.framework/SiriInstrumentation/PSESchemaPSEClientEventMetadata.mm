@interface PSESchemaPSEClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEClientEventMetadata)initWithDictionary:(id)dictionary;
- (PSESchemaPSEClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTriggerOrigin:(BOOL)origin;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEClientEventMetadata

- (PSESchemaPSEClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PSESchemaPSEClientEventMetadata;
  v5 = [(PSESchemaPSEClientEventMetadata *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"uiSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PSESchemaPSEClientEventMetadata *)v5 setUiSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"originalLastRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PSESchemaPSEClientEventMetadata *)v5 setOriginalLastRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"siriEngagementTaskSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEClientEventMetadata setSiriEngagementTaskSuccess:](v5, "setSiriEngagementTaskSuccess:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(PSESchemaPSEClientEventMetadata *)v5 setTaskId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"pseId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(PSESchemaPSEClientEventMetadata *)v5 setPseId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"triggerOrigin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEClientEventMetadata setTriggerOrigin:](v5, "setTriggerOrigin:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (PSESchemaPSEClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_originalLastRequestId)
  {
    originalLastRequestId = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
    dictionaryRepresentation = [originalLastRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalLastRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalLastRequestId"];
    }
  }

  if (self->_pseId)
  {
    pseId = [(PSESchemaPSEClientEventMetadata *)self pseId];
    dictionaryRepresentation2 = [pseId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pseId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"pseId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [(PSESchemaPSEClientEventMetadata *)self siriEngagementTaskSuccess]- 1;
    if (v10 > 3)
    {
      v11 = @"PSESIRIENGAGEMENTTASKSUCCESS_UNKNOWN";
    }

    else
    {
      v11 = off_1E78E13A0[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"siriEngagementTaskSuccess"];
  }

  if (self->_taskId)
  {
    taskId = [(PSESchemaPSEClientEventMetadata *)self taskId];
    dictionaryRepresentation3 = [taskId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"taskId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"taskId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = [(PSESchemaPSEClientEventMetadata *)self triggerOrigin]- 1;
    if (v15 > 2)
    {
      v16 = @"PSETRIGGERORIGIN_UNKNOWN";
    }

    else
    {
      v16 = off_1E78E13C0[v15];
    }

    [dictionary setObject:v16 forKeyedSubscript:@"triggerOrigin"];
  }

  if (self->_uiSessionId)
  {
    uiSessionId = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
    dictionaryRepresentation4 = [uiSessionId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"uiSessionId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"uiSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_uiSessionId hash];
  v4 = [(SISchemaUUID *)self->_originalLastRequestId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_siriEngagementTaskSuccess;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SISchemaUUID *)self->_taskId hash];
  v7 = [(SISchemaUUID *)self->_pseId hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_triggerOrigin;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  uiSessionId = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
  uiSessionId2 = [equalCopy uiSessionId];
  if ((uiSessionId != 0) == (uiSessionId2 == 0))
  {
    goto LABEL_24;
  }

  uiSessionId3 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
  if (uiSessionId3)
  {
    v8 = uiSessionId3;
    uiSessionId4 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
    uiSessionId5 = [equalCopy uiSessionId];
    v11 = [uiSessionId4 isEqual:uiSessionId5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  uiSessionId = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
  uiSessionId2 = [equalCopy originalLastRequestId];
  if ((uiSessionId != 0) == (uiSessionId2 == 0))
  {
    goto LABEL_24;
  }

  originalLastRequestId = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
  if (originalLastRequestId)
  {
    v13 = originalLastRequestId;
    originalLastRequestId2 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
    originalLastRequestId3 = [equalCopy originalLastRequestId];
    v16 = [originalLastRequestId2 isEqual:originalLastRequestId3];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[52] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    siriEngagementTaskSuccess = self->_siriEngagementTaskSuccess;
    if (siriEngagementTaskSuccess != [equalCopy siriEngagementTaskSuccess])
    {
      goto LABEL_25;
    }
  }

  uiSessionId = [(PSESchemaPSEClientEventMetadata *)self taskId];
  uiSessionId2 = [equalCopy taskId];
  if ((uiSessionId != 0) == (uiSessionId2 == 0))
  {
    goto LABEL_24;
  }

  taskId = [(PSESchemaPSEClientEventMetadata *)self taskId];
  if (taskId)
  {
    v19 = taskId;
    taskId2 = [(PSESchemaPSEClientEventMetadata *)self taskId];
    taskId3 = [equalCopy taskId];
    v22 = [taskId2 isEqual:taskId3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  uiSessionId = [(PSESchemaPSEClientEventMetadata *)self pseId];
  uiSessionId2 = [equalCopy pseId];
  if ((uiSessionId != 0) == (uiSessionId2 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  pseId = [(PSESchemaPSEClientEventMetadata *)self pseId];
  if (pseId)
  {
    v24 = pseId;
    pseId2 = [(PSESchemaPSEClientEventMetadata *)self pseId];
    pseId3 = [equalCopy pseId];
    v27 = [pseId2 isEqual:pseId3];

    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v30 = (*&self->_has >> 1) & 1;
  if (v30 == ((equalCopy[52] >> 1) & 1))
  {
    if (!v30 || (triggerOrigin = self->_triggerOrigin, triggerOrigin == [equalCopy triggerOrigin]))
    {
      v28 = 1;
      goto LABEL_26;
    }
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  uiSessionId = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];

  if (uiSessionId)
  {
    uiSessionId2 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
    PBDataWriterWriteSubmessage();
  }

  originalLastRequestId = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];

  if (originalLastRequestId)
  {
    originalLastRequestId2 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  taskId = [(PSESchemaPSEClientEventMetadata *)self taskId];

  if (taskId)
  {
    taskId2 = [(PSESchemaPSEClientEventMetadata *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  pseId = [(PSESchemaPSEClientEventMetadata *)self pseId];

  if (pseId)
  {
    pseId2 = [(PSESchemaPSEClientEventMetadata *)self pseId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasTriggerOrigin:(BOOL)origin
{
  if (origin)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = PSESchemaPSEClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  uiSessionId = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
  v7 = [uiSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PSESchemaPSEClientEventMetadata *)self deleteUiSessionId];
  }

  originalLastRequestId = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
  v10 = [originalLastRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PSESchemaPSEClientEventMetadata *)self deleteOriginalLastRequestId];
  }

  taskId = [(PSESchemaPSEClientEventMetadata *)self taskId];
  v13 = [taskId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PSESchemaPSEClientEventMetadata *)self deleteTaskId];
  }

  pseId = [(PSESchemaPSEClientEventMetadata *)self pseId];
  v16 = [pseId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PSESchemaPSEClientEventMetadata *)self deletePseId];
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