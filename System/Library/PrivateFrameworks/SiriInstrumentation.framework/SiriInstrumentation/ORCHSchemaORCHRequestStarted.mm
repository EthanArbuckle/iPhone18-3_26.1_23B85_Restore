@interface ORCHSchemaORCHRequestStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHRequestStarted)initWithDictionary:(id)a3;
- (ORCHSchemaORCHRequestStarted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAssistantEngineRequest:(BOOL)a3;
- (void)setHasSiriAsrMode:(BOOL)a3;
- (void)setHasSiriNlMode:(BOOL)a3;
- (void)setHasSiriUODEnabled:(BOOL)a3;
- (void)setHasSiriUODMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHRequestStarted

- (ORCHSchemaORCHRequestStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ORCHSchemaORCHRequestStarted;
  v5 = [(ORCHSchemaORCHRequestStarted *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"orchestratorSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHRequestStarted *)v5 setOrchestratorSessionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setRequestType:](v5, "setRequestType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"siriUODEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setSiriUODEnabled:](v5, "setSiriUODEnabled:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"siriUODMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setSiriUODMode:](v5, "setSiriUODMode:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"siriAsrMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setSiriAsrMode:](v5, "setSiriAsrMode:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"siriNlMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setSiriNlMode:](v5, "setSiriNlMode:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"nlv3DeprecationFlags"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[ORCHSchemaORCHNLClassicDeprecationFlags alloc] initWithDictionary:v13];
      [(ORCHSchemaORCHRequestStarted *)v5 setNlv3DeprecationFlags:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"isAssistantEngineRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHRequestStarted setIsAssistantEngineRequest:](v5, "setIsAssistantEngineRequest:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHRequestStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHRequestStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHRequestStarted *)self dictionaryRepresentation];
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
  if ((*(&self->_isAssistantEngineRequest + 1) & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHRequestStarted isAssistantEngineRequest](self, "isAssistantEngineRequest")}];
    [v3 setObject:v4 forKeyedSubscript:@"isAssistantEngineRequest"];
  }

  if (self->_nlv3DeprecationFlags)
  {
    v5 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"nlv3DeprecationFlags"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"nlv3DeprecationFlags"];
    }
  }

  if (self->_orchestratorSessionId)
  {
    v8 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"orchestratorSessionId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"orchestratorSessionId"];
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

    [v3 setObject:v15 forKeyedSubscript:@"requestType"];
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

  v16 = [(ORCHSchemaORCHRequestStarted *)self siriAsrMode];
  v17 = @"ORCHSIRIASRMODE_UNKNOWN";
  if (v16 == 1)
  {
    v17 = @"ORCHSIRIASRMODE_SERVER";
  }

  if (v16 == 2)
  {
    v18 = @"ORCHSIRIASRMODE_DEVICE";
  }

  else
  {
    v18 = v17;
  }

  [v3 setObject:v18 forKeyedSubscript:@"siriAsrMode"];
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
    [v3 setObject:v22 forKeyedSubscript:@"siriUODEnabled"];

    if ((*(&self->_isAssistantEngineRequest + 1) & 4) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

LABEL_35:
  v19 = [(ORCHSchemaORCHRequestStarted *)self siriNlMode];
  v20 = @"ORCHSIRINLMODE_UNKNOWN";
  if (v19 == 1)
  {
    v20 = @"ORCHSIRINLMODE_NLV3_SERVER";
  }

  if (v19 == 2)
  {
    v21 = @"ORCHSIRINLMODE_NLX_DEVICE";
  }

  else
  {
    v21 = v20;
  }

  [v3 setObject:v21 forKeyedSubscript:@"siriNlMode"];
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

    [v3 setObject:v12 forKeyedSubscript:@"siriUODMode"];
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
  v6 = [v4 orchestratorSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v7 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
    v10 = [v4 orchestratorSessionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v12 = *(&self->_isAssistantEngineRequest + 1);
  v13 = v4[49];
  if ((v12 & 1) != (v13 & 1))
  {
    goto LABEL_31;
  }

  if (v12)
  {
    requestType = self->_requestType;
    if (requestType != [v4 requestType])
    {
      goto LABEL_31;
    }

    v12 = *(&self->_isAssistantEngineRequest + 1);
    v13 = v4[49];
  }

  v15 = (v12 >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_31;
  }

  if (v15)
  {
    siriUODEnabled = self->_siriUODEnabled;
    if (siriUODEnabled != [v4 siriUODEnabled])
    {
      goto LABEL_31;
    }

    v12 = *(&self->_isAssistantEngineRequest + 1);
    v13 = v4[49];
  }

  v17 = (v12 >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_31;
  }

  if (v17)
  {
    siriUODMode = self->_siriUODMode;
    if (siriUODMode != [v4 siriUODMode])
    {
      goto LABEL_31;
    }

    v12 = *(&self->_isAssistantEngineRequest + 1);
    v13 = v4[49];
  }

  v19 = (v12 >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v19)
  {
    siriAsrMode = self->_siriAsrMode;
    if (siriAsrMode != [v4 siriAsrMode])
    {
      goto LABEL_31;
    }

    v12 = *(&self->_isAssistantEngineRequest + 1);
    v13 = v4[49];
  }

  v21 = (v12 >> 4) & 1;
  if (v21 != ((v13 >> 4) & 1))
  {
    goto LABEL_31;
  }

  if (v21)
  {
    siriNlMode = self->_siriNlMode;
    if (siriNlMode != [v4 siriNlMode])
    {
      goto LABEL_31;
    }
  }

  v5 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
  v6 = [v4 nlv3DeprecationFlags];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  v23 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
  if (v23)
  {
    v24 = v23;
    v25 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
    v26 = [v4 nlv3DeprecationFlags];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v30 = (*(&self->_isAssistantEngineRequest + 1) >> 5) & 1;
  if (v30 == ((v4[49] >> 5) & 1))
  {
    if (!v30 || (isAssistantEngineRequest = self->_isAssistantEngineRequest, isAssistantEngineRequest == [v4 isAssistantEngineRequest]))
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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
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
  v7 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];

  if (v7)
  {
    v8 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isAssistantEngineRequest + 1) & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsAssistantEngineRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xDF | v3;
}

- (void)setHasSiriNlMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xEF | v3;
}

- (void)setHasSiriAsrMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xF7 | v3;
}

- (void)setHasSiriUODMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xFB | v3;
}

- (void)setHasSiriUODEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAssistantEngineRequest + 1) = *(&self->_isAssistantEngineRequest + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHRequestStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHRequestStarted *)self orchestratorSessionId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHRequestStarted *)self deleteOrchestratorSessionId];
  }

  v9 = [(ORCHSchemaORCHRequestStarted *)self nlv3DeprecationFlags];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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