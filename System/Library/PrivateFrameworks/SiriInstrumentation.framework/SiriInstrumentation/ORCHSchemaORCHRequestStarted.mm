@interface ORCHSchemaORCHRequestStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHRequestStarted)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHRequestStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAssistantEngineRequest:(BOOL)request;
- (void)setHasSiriAsrMode:(BOOL)mode;
- (void)setHasSiriNlMode:(BOOL)mode;
- (void)setHasSiriUODEnabled:(BOOL)enabled;
- (void)setHasSiriUODMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHRequestStarted

- (ORCHSchemaORCHRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ORCHSchemaORCHRequestStarted;
  v5 = [(ORCHSchemaORCHRequestStarted *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"orchestratorSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHRequestStarted *)v5 setOrchestratorSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setRequestType:](v5, "setRequestType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"siriUODEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setSiriUODEnabled:](v5, "setSiriUODEnabled:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"siriUODMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setSiriUODMode:](v5, "setSiriUODMode:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"siriAsrMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setSiriAsrMode:](v5, "setSiriAsrMode:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"siriNlMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setSiriNlMode:](v5, "setSiriNlMode:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"nlv3DeprecationFlags"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[ORCHSchemaORCHNLClassicDeprecationFlags alloc] initWithDictionary:v13];
      [(ORCHSchemaORCHRequestStarted *)v5 setNlv3DeprecationFlags:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isAssistantEngineRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setIsAssistantEngineRequest:](v5, "setIsAssistantEngineRequest:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHRequestStarted *)self dictionaryRepresentation];
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
  if ((*(&self->_isAssistantEngineRequest + 1) & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHRequestStarted isAssistantEngineRequest](self, "isAssistantEngineRequest")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isAssistantEngineRequest"];
  }

  if (self->_nlv3DeprecationFlags)
  {
    nlv3DeprecationFlags = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
    dictionaryRepresentation = [nlv3DeprecationFlags dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"nlv3DeprecationFlags"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"nlv3DeprecationFlags"];
    }
  }

  if (self->_orchestratorSessionId)
  {
    orchestratorSessionId = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
    dictionaryRepresentation2 = [orchestratorSessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"orchestratorSessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"orchestratorSessionId"];
    }
  }

  v11 = *(&self->_isAssistantEngineRequest + 1);
  if (v11)
  {
    v14 = [(ORCHSchemaORCHRequestStarted *)self requestType]- 1;
    if (v14 > 5)
    {
      v15 = @"ORCHREQUESTTYPE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78DEEC8[v14];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"requestType"];
    v11 = *(&self->_isAssistantEngineRequest + 1);
    if ((v11 & 8) == 0)
    {
LABEL_15:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((*(&self->_isAssistantEngineRequest + 1) & 8) == 0)
  {
    goto LABEL_15;
  }

  siriAsrMode = [(ORCHSchemaORCHRequestStarted *)self siriAsrMode];
  v17 = @"ORCHSIRIASRMODE_UNKNOWN";
  if (siriAsrMode == 1)
  {
    v17 = @"ORCHSIRIASRMODE_SERVER";
  }

  if (siriAsrMode == 2)
  {
    v18 = @"ORCHSIRIASRMODE_DEVICE";
  }

  else
  {
    v18 = v17;
  }

  [dictionary setObject:v18 forKeyedSubscript:@"siriAsrMode"];
  v11 = *(&self->_isAssistantEngineRequest + 1);
  if ((v11 & 0x10) == 0)
  {
LABEL_16:
    if ((v11 & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_41:
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHRequestStarted siriUODEnabled](self, "siriUODEnabled")}];
    [dictionary setObject:v22 forKeyedSubscript:@"siriUODEnabled"];

    if ((*(&self->_isAssistantEngineRequest + 1) & 4) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

LABEL_35:
  siriNlMode = [(ORCHSchemaORCHRequestStarted *)self siriNlMode];
  v20 = @"ORCHSIRINLMODE_UNKNOWN";
  if (siriNlMode == 1)
  {
    v20 = @"ORCHSIRINLMODE_NLV3_SERVER";
  }

  if (siriNlMode == 2)
  {
    v21 = @"ORCHSIRINLMODE_NLX_DEVICE";
  }

  else
  {
    v21 = v20;
  }

  [dictionary setObject:v21 forKeyedSubscript:@"siriNlMode"];
  v11 = *(&self->_isAssistantEngineRequest + 1);
  if ((v11 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_17:
  if ((v11 & 4) != 0)
  {
LABEL_18:
    if ([(ORCHSchemaORCHRequestStarted *)self siriUODMode]== 1)
    {
      v12 = @"ORCHSIRIUNDERSTANDINGONDEVICEMODE_HYBRID_ASR_ON_SERVER_NL_ON_DEVICE";
    }

    else
    {
      v12 = @"ORCHSIRIUNDERSTANDINGONDEVICEMODE_FULL_UOD";
    }

    [dictionary setObject:v12 forKeyedSubscript:@"siriUODMode"];
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_orchestratorSessionId hash];
  if (*(&self->_isAssistantEngineRequest + 1))
  {
    v4 = 2654435761 * self->_requestType;
    if ((*(&self->_isAssistantEngineRequest + 1) & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_siriUODEnabled;
      if ((*(&self->_isAssistantEngineRequest + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*(&self->_isAssistantEngineRequest + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*(&self->_isAssistantEngineRequest + 1) & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_siriUODMode;
    if ((*(&self->_isAssistantEngineRequest + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*(&self->_isAssistantEngineRequest + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = 0;
  if ((*(&self->_isAssistantEngineRequest + 1) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_siriAsrMode;
  if ((*(&self->_isAssistantEngineRequest + 1) & 0x10) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_siriNlMode;
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = [(ORCHSchemaORCHNLClassicDeprecationFlags *)self->_nlv3DeprecationFlags hash];
  if ((*(&self->_isAssistantEngineRequest + 1) & 0x20) != 0)
  {
    v10 = 2654435761 * self->_isAssistantEngineRequest;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  orchestratorSessionId = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
  orchestratorSessionId2 = [equalCopy orchestratorSessionId];
  if ((orchestratorSessionId != 0) == (orchestratorSessionId2 == 0))
  {
    goto LABEL_30;
  }

  orchestratorSessionId3 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
  if (orchestratorSessionId3)
  {
    v8 = orchestratorSessionId3;
    orchestratorSessionId4 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
    orchestratorSessionId5 = [equalCopy orchestratorSessionId];
    v11 = [orchestratorSessionId4 isEqual:orchestratorSessionId5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v12 = *(&self->_isAssistantEngineRequest + 1);
  v13 = equalCopy[49];
  if ((v12 & 1) != (v13 & 1))
  {
    goto LABEL_31;
  }

  if (v12)
  {
    requestType = self->_requestType;
    if (requestType != [equalCopy requestType])
    {
      goto LABEL_31;
    }

    v12 = *(&self->_isAssistantEngineRequest + 1);
    v13 = equalCopy[49];
  }

  v15 = (v12 >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_31;
  }

  if (v15)
  {
    siriUODEnabled = self->_siriUODEnabled;
    if (siriUODEnabled != [equalCopy siriUODEnabled])
    {
      goto LABEL_31;
    }

    v12 = *(&self->_isAssistantEngineRequest + 1);
    v13 = equalCopy[49];
  }

  v17 = (v12 >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_31;
  }

  if (v17)
  {
    siriUODMode = self->_siriUODMode;
    if (siriUODMode != [equalCopy siriUODMode])
    {
      goto LABEL_31;
    }

    v12 = *(&self->_isAssistantEngineRequest + 1);
    v13 = equalCopy[49];
  }

  v19 = (v12 >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v19)
  {
    siriAsrMode = self->_siriAsrMode;
    if (siriAsrMode != [equalCopy siriAsrMode])
    {
      goto LABEL_31;
    }

    v12 = *(&self->_isAssistantEngineRequest + 1);
    v13 = equalCopy[49];
  }

  v21 = (v12 >> 4) & 1;
  if (v21 != ((v13 >> 4) & 1))
  {
    goto LABEL_31;
  }

  if (v21)
  {
    siriNlMode = self->_siriNlMode;
    if (siriNlMode != [equalCopy siriNlMode])
    {
      goto LABEL_31;
    }
  }

  orchestratorSessionId = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
  orchestratorSessionId2 = [equalCopy nlv3DeprecationFlags];
  if ((orchestratorSessionId != 0) == (orchestratorSessionId2 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  nlv3DeprecationFlags = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
  if (nlv3DeprecationFlags)
  {
    v24 = nlv3DeprecationFlags;
    nlv3DeprecationFlags2 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
    nlv3DeprecationFlags3 = [equalCopy nlv3DeprecationFlags];
    v27 = [nlv3DeprecationFlags2 isEqual:nlv3DeprecationFlags3];

    if (!v27)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v30 = (*(&self->_isAssistantEngineRequest + 1) >> 5) & 1;
  if (v30 == ((equalCopy[49] >> 5) & 1))
  {
    if (!v30 || (isAssistantEngineRequest = self->_isAssistantEngineRequest, isAssistantEngineRequest == [equalCopy isAssistantEngineRequest]))
    {
      v28 = 1;
      goto LABEL_32;
    }
  }

LABEL_31:
  v28 = 0;
LABEL_32:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  orchestratorSessionId = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];

  if (orchestratorSessionId)
  {
    orchestratorSessionId2 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isAssistantEngineRequest + 1);
  if (v6)
  {
    PBDataWriterWriteInt32Field();
    v6 = *(&self->_isAssistantEngineRequest + 1);
    if ((v6 & 2) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*(&self->_isAssistantEngineRequest + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  v6 = *(&self->_isAssistantEngineRequest + 1);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteInt32Field();
  v6 = *(&self->_isAssistantEngineRequest + 1);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
  if ((*(&self->_isAssistantEngineRequest + 1) & 0x10) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
  nlv3DeprecationFlags = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];

  if (nlv3DeprecationFlags)
  {
    nlv3DeprecationFlags2 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isAssistantEngineRequest + 1) & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsAssistantEngineRequest:(BOOL)request
{
  if (request)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xDF | v3;
}

- (void)setHasSiriNlMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xEF | v3;
}

- (void)setHasSiriAsrMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xF7 | v3;
}

- (void)setHasSiriUODMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xFB | v3;
}

- (void)setHasSiriUODEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHRequestStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  orchestratorSessionId = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
  v7 = [orchestratorSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHRequestStarted *)self deleteOrchestratorSessionId];
  }

  nlv3DeprecationFlags = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
  v10 = [nlv3DeprecationFlags applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHRequestStarted *)self deleteNlv3DeprecationFlags];
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