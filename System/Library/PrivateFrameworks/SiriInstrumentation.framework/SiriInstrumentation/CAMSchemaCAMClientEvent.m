@interface CAMSchemaCAMClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CAMSchemaCAMAutoSendFeaturesGenerated)autoSendFeaturesGenerated;
- (CAMSchemaCAMClientEvent)initWithDictionary:(id)a3;
- (CAMSchemaCAMClientEvent)initWithJSON:(id)a3;
- (CAMSchemaCAMModelExecuted)modelExecuted;
- (CAMSchemaCAMRequestReceived)requestReceived;
- (CAMSchemaCAMResponseGenerated)responseGenerated;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAutoSendFeaturesGenerated;
- (void)deleteModelExecuted;
- (void)deleteRequestReceived;
- (void)deleteResponseGenerated;
- (void)setAutoSendFeaturesGenerated:(id)a3;
- (void)setModelExecuted:(id)a3;
- (void)setRequestReceived:(id)a3;
- (void)setResponseGenerated:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAMSchemaCAMClientEvent

- (CAMSchemaCAMClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CAMSchemaCAMClientEvent;
  v5 = [(CAMSchemaCAMClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAMSchemaCAMClientEventMetadata alloc] initWithDictionary:v6];
      [(CAMSchemaCAMClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CAMSchemaCAMRequestReceived alloc] initWithDictionary:v8];
      [(CAMSchemaCAMClientEvent *)v5 setRequestReceived:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"modelExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CAMSchemaCAMModelExecuted alloc] initWithDictionary:v10];
      [(CAMSchemaCAMClientEvent *)v5 setModelExecuted:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"responseGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CAMSchemaCAMResponseGenerated alloc] initWithDictionary:v12];
      [(CAMSchemaCAMClientEvent *)v5 setResponseGenerated:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"autoSendFeaturesGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CAMSchemaCAMAutoSendFeaturesGenerated alloc] initWithDictionary:v14];
      [(CAMSchemaCAMClientEvent *)v5 setAutoSendFeaturesGenerated:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (CAMSchemaCAMClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAMSchemaCAMClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAMSchemaCAMClientEvent *)self dictionaryRepresentation];
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
  if (self->_autoSendFeaturesGenerated)
  {
    v4 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"autoSendFeaturesGenerated"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"autoSendFeaturesGenerated"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_modelExecuted)
  {
    v10 = [(CAMSchemaCAMClientEvent *)self modelExecuted];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"modelExecuted"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"modelExecuted"];
    }
  }

  if (self->_requestReceived)
  {
    v13 = [(CAMSchemaCAMClientEvent *)self requestReceived];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"requestReceived"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"requestReceived"];
    }
  }

  if (self->_responseGenerated)
  {
    v16 = [(CAMSchemaCAMClientEvent *)self responseGenerated];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"responseGenerated"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"responseGenerated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CAMSchemaCAMClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CAMSchemaCAMRequestReceived *)self->_requestReceived hash]^ v3;
  v5 = [(CAMSchemaCAMModelExecuted *)self->_modelExecuted hash];
  v6 = v4 ^ v5 ^ [(CAMSchemaCAMResponseGenerated *)self->_responseGenerated hash];
  return v6 ^ [(CAMSchemaCAMAutoSendFeaturesGenerated *)self->_autoSendFeaturesGenerated hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_28;
  }

  v6 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(CAMSchemaCAMClientEvent *)self requestReceived];
  v7 = [v4 requestReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(CAMSchemaCAMClientEvent *)self requestReceived];
  if (v13)
  {
    v14 = v13;
    v15 = [(CAMSchemaCAMClientEvent *)self requestReceived];
    v16 = [v4 requestReceived];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(CAMSchemaCAMClientEvent *)self modelExecuted];
  v7 = [v4 modelExecuted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(CAMSchemaCAMClientEvent *)self modelExecuted];
  if (v18)
  {
    v19 = v18;
    v20 = [(CAMSchemaCAMClientEvent *)self modelExecuted];
    v21 = [v4 modelExecuted];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(CAMSchemaCAMClientEvent *)self responseGenerated];
  v7 = [v4 responseGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(CAMSchemaCAMClientEvent *)self responseGenerated];
  if (v23)
  {
    v24 = v23;
    v25 = [(CAMSchemaCAMClientEvent *)self responseGenerated];
    v26 = [v4 responseGenerated];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
  v7 = [v4 autoSendFeaturesGenerated];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
    v31 = [v4 autoSendFeaturesGenerated];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(CAMSchemaCAMClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CAMSchemaCAMClientEvent *)self requestReceived];

  if (v6)
  {
    v7 = [(CAMSchemaCAMClientEvent *)self requestReceived];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CAMSchemaCAMClientEvent *)self modelExecuted];

  if (v8)
  {
    v9 = [(CAMSchemaCAMClientEvent *)self modelExecuted];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(CAMSchemaCAMClientEvent *)self responseGenerated];

  if (v10)
  {
    v11 = [(CAMSchemaCAMClientEvent *)self responseGenerated];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];

  v13 = v15;
  if (v12)
  {
    v14 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deleteAutoSendFeaturesGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_autoSendFeaturesGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMAutoSendFeaturesGenerated)autoSendFeaturesGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_autoSendFeaturesGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAutoSendFeaturesGenerated:(id)a3
{
  v4 = a3;
  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  responseGenerated = self->_responseGenerated;
  self->_responseGenerated = 0;

  v8 = 104;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  autoSendFeaturesGenerated = self->_autoSendFeaturesGenerated;
  self->_autoSendFeaturesGenerated = v4;
}

- (void)deleteResponseGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_responseGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMResponseGenerated)responseGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_responseGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResponseGenerated:(id)a3
{
  v4 = a3;
  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  autoSendFeaturesGenerated = self->_autoSendFeaturesGenerated;
  self->_autoSendFeaturesGenerated = 0;

  v8 = 103;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  responseGenerated = self->_responseGenerated;
  self->_responseGenerated = v4;
}

- (void)deleteModelExecuted
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_modelExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMModelExecuted)modelExecuted
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_modelExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setModelExecuted:(id)a3
{
  v4 = a3;
  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  responseGenerated = self->_responseGenerated;
  self->_responseGenerated = 0;

  autoSendFeaturesGenerated = self->_autoSendFeaturesGenerated;
  self->_autoSendFeaturesGenerated = 0;

  v8 = 102;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = v4;
}

- (void)deleteRequestReceived
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_requestReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMRequestReceived)requestReceived
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_requestReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestReceived:(id)a3
{
  v4 = a3;
  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  responseGenerated = self->_responseGenerated;
  self->_responseGenerated = 0;

  autoSendFeaturesGenerated = self->_autoSendFeaturesGenerated;
  self->_autoSendFeaturesGenerated = 0;

  v8 = 101;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  requestReceived = self->_requestReceived;
  self->_requestReceived = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(CAMSchemaCAMClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 3)
  {
    return @"com.apple.aiml.siri.cam.CAMClientEvent";
  }

  else
  {
    return off_1E78D2310[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CAMSchemaCAMClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CAMSchemaCAMClientEvent *)self deleteEventMetadata];
  }

  v9 = [(CAMSchemaCAMClientEvent *)self requestReceived];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CAMSchemaCAMClientEvent *)self deleteRequestReceived];
  }

  v12 = [(CAMSchemaCAMClientEvent *)self modelExecuted];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CAMSchemaCAMClientEvent *)self deleteModelExecuted];
  }

  v15 = [(CAMSchemaCAMClientEvent *)self responseGenerated];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(CAMSchemaCAMClientEvent *)self deleteResponseGenerated];
  }

  v18 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(CAMSchemaCAMClientEvent *)self deleteAutoSendFeaturesGenerated];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v3 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  v4 = [v3 camId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 4;
  }

  else
  {
    v10 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
      v4 = [v16 subRequestId];

      if (v4)
      {
        v9 = [v4 value];
        if (v9)
        {
          v17 = [v4 value];
          v18 = [v17 length];

          if (v18)
          {
            LODWORD(v9) = 43;
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  v4 = [v3 camId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  v9 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 value];
      v14 = [v13 length];

      if (v14)
      {
        v4 = v10;
LABEL_11:
        v16 = v4;
        v4 = v16;
        goto LABEL_13;
      }
    }
  }

  v15 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  v4 = [v15 subRequestId];

  if (v4)
  {
    v16 = [v4 value];
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v4 value];
    v18 = [v17 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(CAMSchemaCAMClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9000[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78E9020[a3 - 101];
  }
}

@end