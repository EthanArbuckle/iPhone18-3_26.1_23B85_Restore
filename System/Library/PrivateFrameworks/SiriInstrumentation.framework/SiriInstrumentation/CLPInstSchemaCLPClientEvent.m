@interface CLPInstSchemaCLPClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CLPInstSchemaCLPCDMReplaySampleContext)cdmReplaySampleContext;
- (CLPInstSchemaCLPCDMReplayTaskContext)cdmReplayTaskContext;
- (CLPInstSchemaCLPClientEvent)initWithDictionary:(id)a3;
- (CLPInstSchemaCLPClientEvent)initWithJSON:(id)a3;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationContext)curareAppIntentSampleClassificationContext;
- (CLPInstSchemaCLPCurareAppIntentTaskClassificationContext)curareAppIntentTaskClassificationContext;
- (CLPInstSchemaCLPNLv4SampleEvaluationContext)nlv4SampleEvaluationContext;
- (CLPInstSchemaCLPNLv4TaskEvaluationContext)nlv4TaskEvaluationContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCdmReplaySampleContext;
- (void)deleteCdmReplayTaskContext;
- (void)deleteCurareAppIntentSampleClassificationContext;
- (void)deleteCurareAppIntentTaskClassificationContext;
- (void)deleteNlv4SampleEvaluationContext;
- (void)deleteNlv4TaskEvaluationContext;
- (void)setCdmReplaySampleContext:(id)a3;
- (void)setCdmReplayTaskContext:(id)a3;
- (void)setCurareAppIntentSampleClassificationContext:(id)a3;
- (void)setCurareAppIntentTaskClassificationContext:(id)a3;
- (void)setNlv4SampleEvaluationContext:(id)a3;
- (void)setNlv4TaskEvaluationContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CLPInstSchemaCLPClientEvent

- (CLPInstSchemaCLPClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CLPInstSchemaCLPClientEvent;
  v5 = [(CLPInstSchemaCLPClientEvent *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CLPInstSchemaCLPClientEventMetadata alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"nlv4SampleEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CLPInstSchemaCLPNLv4SampleEvaluationContext alloc] initWithDictionary:v8];
      [(CLPInstSchemaCLPClientEvent *)v5 setNlv4SampleEvaluationContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"nlv4TaskEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CLPInstSchemaCLPNLv4TaskEvaluationContext alloc] initWithDictionary:v10];
      [(CLPInstSchemaCLPClientEvent *)v5 setNlv4TaskEvaluationContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"curareAppIntentSampleClassificationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CLPInstSchemaCLPCurareAppIntentSampleClassificationContext alloc] initWithDictionary:v12];
      [(CLPInstSchemaCLPClientEvent *)v5 setCurareAppIntentSampleClassificationContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"curareAppIntentTaskClassificationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CLPInstSchemaCLPCurareAppIntentTaskClassificationContext alloc] initWithDictionary:v14];
      [(CLPInstSchemaCLPClientEvent *)v5 setCurareAppIntentTaskClassificationContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"cdmReplaySampleContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[CLPInstSchemaCLPCDMReplaySampleContext alloc] initWithDictionary:v16];
      [(CLPInstSchemaCLPClientEvent *)v5 setCdmReplaySampleContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"cdmReplayTaskContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CLPInstSchemaCLPCDMReplayTaskContext alloc] initWithDictionary:v18];
      [(CLPInstSchemaCLPClientEvent *)v5 setCdmReplayTaskContext:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CLPInstSchemaCLPClientEvent *)self dictionaryRepresentation];
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
  if (self->_cdmReplaySampleContext)
  {
    v4 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"cdmReplaySampleContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"cdmReplaySampleContext"];
    }
  }

  if (self->_cdmReplayTaskContext)
  {
    v7 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"cdmReplayTaskContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"cdmReplayTaskContext"];
    }
  }

  if (self->_curareAppIntentSampleClassificationContext)
  {
    v10 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"curareAppIntentSampleClassificationContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"curareAppIntentSampleClassificationContext"];
    }
  }

  if (self->_curareAppIntentTaskClassificationContext)
  {
    v13 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"curareAppIntentTaskClassificationContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"curareAppIntentTaskClassificationContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v16 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_nlv4SampleEvaluationContext)
  {
    v19 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"nlv4SampleEvaluationContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"nlv4SampleEvaluationContext"];
    }
  }

  if (self->_nlv4TaskEvaluationContext)
  {
    v22 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"nlv4TaskEvaluationContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"nlv4TaskEvaluationContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CLPInstSchemaCLPClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CLPInstSchemaCLPNLv4SampleEvaluationContext *)self->_nlv4SampleEvaluationContext hash]^ v3;
  v5 = [(CLPInstSchemaCLPNLv4TaskEvaluationContext *)self->_nlv4TaskEvaluationContext hash];
  v6 = v4 ^ v5 ^ [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self->_curareAppIntentSampleClassificationContext hash];
  v7 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationContext *)self->_curareAppIntentTaskClassificationContext hash];
  v8 = v7 ^ [(CLPInstSchemaCLPCDMReplaySampleContext *)self->_cdmReplaySampleContext hash];
  return v6 ^ v8 ^ [(CLPInstSchemaCLPCDMReplayTaskContext *)self->_cdmReplayTaskContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_38;
  }

  v6 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v8 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
  v7 = [v4 nlv4SampleEvaluationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v13 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
    v16 = [v4 nlv4SampleEvaluationContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
  v7 = [v4 nlv4TaskEvaluationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v18 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
    v21 = [v4 nlv4TaskEvaluationContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
  v7 = [v4 curareAppIntentSampleClassificationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v23 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
    v26 = [v4 curareAppIntentSampleClassificationContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
  v7 = [v4 curareAppIntentTaskClassificationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v28 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
    v31 = [v4 curareAppIntentTaskClassificationContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
  v7 = [v4 cdmReplaySampleContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v33 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
    v36 = [v4 cdmReplaySampleContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
  v7 = [v4 cdmReplayTaskContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v38 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
    if (!v38)
    {

LABEL_41:
      v43 = 1;
      goto LABEL_39;
    }

    v39 = v38;
    v40 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
    v41 = [v4 cdmReplayTaskContext];
    v42 = [v40 isEqual:v41];

    if (v42)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_37:
  }

LABEL_38:
  v43 = 0;
LABEL_39:

  return v43;
}

- (void)writeTo:(id)a3
{
  v19 = a3;
  v4 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];

  if (v6)
  {
    v7 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];

  if (v8)
  {
    v9 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];

  if (v10)
  {
    v11 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];

  if (v12)
  {
    v13 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];

  if (v14)
  {
    v15 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];

  v17 = v19;
  if (v16)
  {
    v18 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
    PBDataWriterWriteSubmessage();

    v17 = v19;
  }
}

- (void)deleteCdmReplayTaskContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_cdmReplayTaskContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCDMReplayTaskContext)cdmReplayTaskContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_cdmReplayTaskContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCdmReplayTaskContext:(id)a3
{
  v4 = a3;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  v10 = 106;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = v4;
}

- (void)deleteCdmReplaySampleContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_cdmReplaySampleContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCDMReplaySampleContext)cdmReplaySampleContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_cdmReplaySampleContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCdmReplaySampleContext:(id)a3
{
  v4 = a3;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 105;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = v4;
}

- (void)deleteCurareAppIntentTaskClassificationContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_curareAppIntentTaskClassificationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCurareAppIntentTaskClassificationContext)curareAppIntentTaskClassificationContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_curareAppIntentTaskClassificationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCurareAppIntentTaskClassificationContext:(id)a3
{
  v4 = a3;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 104;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = v4;
}

- (void)deleteCurareAppIntentSampleClassificationContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_curareAppIntentSampleClassificationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationContext)curareAppIntentSampleClassificationContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_curareAppIntentSampleClassificationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCurareAppIntentSampleClassificationContext:(id)a3
{
  v4 = a3;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 103;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = v4;
}

- (void)deleteNlv4TaskEvaluationContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_nlv4TaskEvaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPNLv4TaskEvaluationContext)nlv4TaskEvaluationContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_nlv4TaskEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNlv4TaskEvaluationContext:(id)a3
{
  v4 = a3;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 102;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = v4;
}

- (void)deleteNlv4SampleEvaluationContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_nlv4SampleEvaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPNLv4SampleEvaluationContext)nlv4SampleEvaluationContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_nlv4SampleEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNlv4SampleEvaluationContext:(id)a3
{
  v4 = a3;
  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 101;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(CLPInstSchemaCLPClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 5)
  {
    return @"com.apple.aiml.siri.clp.CLPClientEvent";
  }

  else
  {
    return off_1E78D2A90[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CLPInstSchemaCLPClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:v4];
  v6 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteEventMetadata];
  }

  v9 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteNlv4SampleEvaluationContext];
  }

  v12 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteNlv4TaskEvaluationContext];
  }

  v15 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteCurareAppIntentSampleClassificationContext];
  }

  v18 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteCurareAppIntentTaskClassificationContext];
  }

  v21 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteCdmReplaySampleContext];
  }

  v24 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteCdmReplayTaskContext];
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
  v2 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  v3 = [v2 clpId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length] != 0;

      LODWORD(v4) = 16 * v6;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  v3 = [v2 clpId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(CLPInstSchemaCLPClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E90C0[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E78E90F0[a3 - 101];
  }
}

@end