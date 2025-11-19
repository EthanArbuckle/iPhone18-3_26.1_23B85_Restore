@interface RTSSchemaRTSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RTSSchemaRTSClientEvent)initWithDictionary:(id)a3;
- (RTSSchemaRTSClientEvent)initWithJSON:(id)a3;
- (RTSSchemaRTSFalseRejectDetected)rtsFalseRejectDetected;
- (RTSSchemaRTSFirstPassPolicyTriggered)rtsFirstPassPolicyTriggered;
- (RTSSchemaRTSMotionData)rtsMotionData;
- (RTSSchemaRTSSecondPassPolicyDecisionMade)rtsSecondPassPolicyDecisionMade;
- (RTSSchemaRTSTriggered)rtsTriggered;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteRtsFalseRejectDetected;
- (void)deleteRtsFirstPassPolicyTriggered;
- (void)deleteRtsMotionData;
- (void)deleteRtsSecondPassPolicyDecisionMade;
- (void)deleteRtsTriggered;
- (void)setRtsFalseRejectDetected:(id)a3;
- (void)setRtsFirstPassPolicyTriggered:(id)a3;
- (void)setRtsMotionData:(id)a3;
- (void)setRtsSecondPassPolicyDecisionMade:(id)a3;
- (void)setRtsTriggered:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RTSSchemaRTSClientEvent

- (RTSSchemaRTSClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = RTSSchemaRTSClientEvent;
  v5 = [(RTSSchemaRTSClientEvent *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RTSSchemaRTSClientEventMetadata alloc] initWithDictionary:v6];
      [(RTSSchemaRTSClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"rtsFalseRejectDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RTSSchemaRTSFalseRejectDetected alloc] initWithDictionary:v8];
      [(RTSSchemaRTSClientEvent *)v5 setRtsFalseRejectDetected:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"rtsTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RTSSchemaRTSTriggered alloc] initWithDictionary:v10];
      [(RTSSchemaRTSClientEvent *)v5 setRtsTriggered:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RTSSchemaRTSFirstPassPolicyTriggered alloc] initWithDictionary:v12];
      [(RTSSchemaRTSClientEvent *)v5 setRtsFirstPassPolicyTriggered:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RTSSchemaRTSSecondPassPolicyDecisionMade alloc] initWithDictionary:v14];
      [(RTSSchemaRTSClientEvent *)v5 setRtsSecondPassPolicyDecisionMade:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"rtsMotionData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[RTSSchemaRTSMotionData alloc] initWithDictionary:v16];
      [(RTSSchemaRTSClientEvent *)v5 setRtsMotionData:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (RTSSchemaRTSClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RTSSchemaRTSClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RTSSchemaRTSClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    v4 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_rtsFalseRejectDetected)
  {
    v7 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"rtsFalseRejectDetected"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"rtsFalseRejectDetected"];
    }
  }

  if (self->_rtsFirstPassPolicyTriggered)
  {
    v10 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    }
  }

  if (self->_rtsMotionData)
  {
    v13 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"rtsMotionData"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"rtsMotionData"];
    }
  }

  if (self->_rtsSecondPassPolicyDecisionMade)
  {
    v16 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    }
  }

  if (self->_rtsTriggered)
  {
    v19 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"rtsTriggered"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"rtsTriggered"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(RTSSchemaRTSClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RTSSchemaRTSFalseRejectDetected *)self->_rtsFalseRejectDetected hash]^ v3;
  v5 = [(RTSSchemaRTSTriggered *)self->_rtsTriggered hash];
  v6 = v4 ^ v5 ^ [(RTSSchemaRTSFirstPassPolicyTriggered *)self->_rtsFirstPassPolicyTriggered hash];
  v7 = [(RTSSchemaRTSSecondPassPolicyDecisionMade *)self->_rtsSecondPassPolicyDecisionMade hash];
  return v6 ^ v7 ^ [(RTSSchemaRTSMotionData *)self->_rtsMotionData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_33;
  }

  v6 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v8 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
  v7 = [v4 rtsFalseRejectDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v13 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
  if (v13)
  {
    v14 = v13;
    v15 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
    v16 = [v4 rtsFalseRejectDetected];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
  v7 = [v4 rtsTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v18 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
  if (v18)
  {
    v19 = v18;
    v20 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
    v21 = [v4 rtsTriggered];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
  v7 = [v4 rtsFirstPassPolicyTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v23 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
  if (v23)
  {
    v24 = v23;
    v25 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
    v26 = [v4 rtsFirstPassPolicyTriggered];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
  v7 = [v4 rtsSecondPassPolicyDecisionMade];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v28 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
  if (v28)
  {
    v29 = v28;
    v30 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
    v31 = [v4 rtsSecondPassPolicyDecisionMade];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
  v7 = [v4 rtsMotionData];
  if ((v6 != 0) != (v7 == 0))
  {
    v33 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
    if (!v33)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = v33;
    v35 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
    v36 = [v4 rtsMotionData];
    v37 = [v35 isEqual:v36];

    if (v37)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(RTSSchemaRTSClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];

  if (v6)
  {
    v7 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];

  if (v8)
  {
    v9 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];

  if (v10)
  {
    v11 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];

  if (v12)
  {
    v13 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];

  v15 = v17;
  if (v14)
  {
    v16 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
    PBDataWriterWriteSubmessage();

    v15 = v17;
  }
}

- (void)deleteRtsMotionData
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_rtsMotionData = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RTSSchemaRTSMotionData)rtsMotionData
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_rtsMotionData;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRtsMotionData:(id)a3
{
  v4 = a3;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  v9 = 105;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = v4;
}

- (void)deleteRtsSecondPassPolicyDecisionMade
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_rtsSecondPassPolicyDecisionMade = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RTSSchemaRTSSecondPassPolicyDecisionMade)rtsSecondPassPolicyDecisionMade
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_rtsSecondPassPolicyDecisionMade;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRtsSecondPassPolicyDecisionMade:(id)a3
{
  v4 = a3;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = 0;

  v9 = 104;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = v4;
}

- (void)deleteRtsFirstPassPolicyTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_rtsFirstPassPolicyTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RTSSchemaRTSFirstPassPolicyTriggered)rtsFirstPassPolicyTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_rtsFirstPassPolicyTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRtsFirstPassPolicyTriggered:(id)a3
{
  v4 = a3;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = 0;

  v9 = 103;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = v4;
}

- (void)deleteRtsTriggered
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_rtsTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RTSSchemaRTSTriggered)rtsTriggered
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_rtsTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRtsTriggered:(id)a3
{
  v4 = a3;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = 0;

  v9 = 102;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = v4;
}

- (void)deleteRtsFalseRejectDetected
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_rtsFalseRejectDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RTSSchemaRTSFalseRejectDetected)rtsFalseRejectDetected
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_rtsFalseRejectDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRtsFalseRejectDetected:(id)a3
{
  v4 = a3;
  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = 0;

  v9 = 101;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(RTSSchemaRTSClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 4)
  {
    return @"com.apple.aiml.siri.rts.RTSClientEvent";
  }

  else
  {
    return off_1E78E2368[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = RTSSchemaRTSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  v6 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RTSSchemaRTSClientEvent *)self deleteEventMetadata];
  }

  v9 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsFalseRejectDetected];
  }

  v12 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsTriggered];
  }

  v15 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsFirstPassPolicyTriggered];
  }

  v18 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsSecondPassPolicyDecisionMade];
  }

  v21 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsMotionData];
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
  v2 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  v3 = [v2 rtsSessionId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 41;
      }

      else
      {
        LODWORD(v4) = 0;
      }
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
  v2 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  v3 = [v2 rtsSessionId];

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
  v3 = [(RTSSchemaRTSClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB008[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78EB030[a3 - 101];
  }
}

@end