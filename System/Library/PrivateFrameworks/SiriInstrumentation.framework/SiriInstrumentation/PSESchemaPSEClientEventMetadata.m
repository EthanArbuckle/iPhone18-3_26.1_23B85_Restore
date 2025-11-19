@interface PSESchemaPSEClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PSESchemaPSEClientEventMetadata)initWithDictionary:(id)a3;
- (PSESchemaPSEClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTriggerOrigin:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSESchemaPSEClientEventMetadata

- (PSESchemaPSEClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PSESchemaPSEClientEventMetadata;
  v5 = [(PSESchemaPSEClientEventMetadata *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"uiSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PSESchemaPSEClientEventMetadata *)v5 setUiSessionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"originalLastRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PSESchemaPSEClientEventMetadata *)v5 setOriginalLastRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"siriEngagementTaskSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEClientEventMetadata setSiriEngagementTaskSuccess:](v5, "setSiriEngagementTaskSuccess:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(PSESchemaPSEClientEventMetadata *)v5 setTaskId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"pseId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(PSESchemaPSEClientEventMetadata *)v5 setPseId:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"triggerOrigin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEClientEventMetadata setTriggerOrigin:](v5, "setTriggerOrigin:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (PSESchemaPSEClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PSESchemaPSEClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PSESchemaPSEClientEventMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_originalLastRequestId)
  {
    v4 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"originalLastRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"originalLastRequestId"];
    }
  }

  if (self->_pseId)
  {
    v7 = [(PSESchemaPSEClientEventMetadata *)self pseId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"pseId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"pseId"];
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

    [v3 setObject:v11 forKeyedSubscript:@"siriEngagementTaskSuccess"];
  }

  if (self->_taskId)
  {
    v12 = [(PSESchemaPSEClientEventMetadata *)self taskId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"taskId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"taskId"];
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

    [v3 setObject:v16 forKeyedSubscript:@"triggerOrigin"];
  }

  if (self->_uiSessionId)
  {
    v17 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"uiSessionId"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"uiSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
  v6 = [v4 uiSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
    v10 = [v4 uiSessionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
  v6 = [v4 originalLastRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v12 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
    v15 = [v4 originalLastRequestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[52] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    siriEngagementTaskSuccess = self->_siriEngagementTaskSuccess;
    if (siriEngagementTaskSuccess != [v4 siriEngagementTaskSuccess])
    {
      goto LABEL_25;
    }
  }

  v5 = [(PSESchemaPSEClientEventMetadata *)self taskId];
  v6 = [v4 taskId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v18 = [(PSESchemaPSEClientEventMetadata *)self taskId];
  if (v18)
  {
    v19 = v18;
    v20 = [(PSESchemaPSEClientEventMetadata *)self taskId];
    v21 = [v4 taskId];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(PSESchemaPSEClientEventMetadata *)self pseId];
  v6 = [v4 pseId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  v23 = [(PSESchemaPSEClientEventMetadata *)self pseId];
  if (v23)
  {
    v24 = v23;
    v25 = [(PSESchemaPSEClientEventMetadata *)self pseId];
    v26 = [v4 pseId];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v30 = (*&self->_has >> 1) & 1;
  if (v30 == ((v4[52] >> 1) & 1))
  {
    if (!v30 || (triggerOrigin = self->_triggerOrigin, triggerOrigin == [v4 triggerOrigin]))
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

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];

  if (v4)
  {
    v5 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];

  if (v6)
  {
    v7 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(PSESchemaPSEClientEventMetadata *)self taskId];

  if (v8)
  {
    v9 = [(PSESchemaPSEClientEventMetadata *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PSESchemaPSEClientEventMetadata *)self pseId];

  if (v10)
  {
    v11 = [(PSESchemaPSEClientEventMetadata *)self pseId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasTriggerOrigin:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PSESchemaPSEClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(PSESchemaPSEClientEventMetadata *)self uiSessionId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PSESchemaPSEClientEventMetadata *)self deleteUiSessionId];
  }

  v9 = [(PSESchemaPSEClientEventMetadata *)self originalLastRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PSESchemaPSEClientEventMetadata *)self deleteOriginalLastRequestId];
  }

  v12 = [(PSESchemaPSEClientEventMetadata *)self taskId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PSESchemaPSEClientEventMetadata *)self deleteTaskId];
  }

  v15 = [(PSESchemaPSEClientEventMetadata *)self pseId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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