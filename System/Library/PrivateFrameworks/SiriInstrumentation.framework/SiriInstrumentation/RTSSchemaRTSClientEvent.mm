@interface RTSSchemaRTSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RTSSchemaRTSClientEvent)initWithDictionary:(id)dictionary;
- (RTSSchemaRTSClientEvent)initWithJSON:(id)n;
- (RTSSchemaRTSFalseRejectDetected)rtsFalseRejectDetected;
- (RTSSchemaRTSFirstPassPolicyTriggered)rtsFirstPassPolicyTriggered;
- (RTSSchemaRTSMotionData)rtsMotionData;
- (RTSSchemaRTSSecondPassPolicyDecisionMade)rtsSecondPassPolicyDecisionMade;
- (RTSSchemaRTSTriggered)rtsTriggered;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setRtsFalseRejectDetected:(id)detected;
- (void)setRtsFirstPassPolicyTriggered:(id)triggered;
- (void)setRtsMotionData:(id)data;
- (void)setRtsSecondPassPolicyDecisionMade:(id)made;
- (void)setRtsTriggered:(id)triggered;
- (void)writeTo:(id)to;
@end

@implementation RTSSchemaRTSClientEvent

- (RTSSchemaRTSClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = RTSSchemaRTSClientEvent;
  v5 = [(RTSSchemaRTSClientEvent *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RTSSchemaRTSClientEventMetadata alloc] initWithDictionary:v6];
      [(RTSSchemaRTSClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rtsFalseRejectDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RTSSchemaRTSFalseRejectDetected alloc] initWithDictionary:v8];
      [(RTSSchemaRTSClientEvent *)v5 setRtsFalseRejectDetected:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"rtsTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RTSSchemaRTSTriggered alloc] initWithDictionary:v10];
      [(RTSSchemaRTSClientEvent *)v5 setRtsTriggered:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RTSSchemaRTSFirstPassPolicyTriggered alloc] initWithDictionary:v12];
      [(RTSSchemaRTSClientEvent *)v5 setRtsFirstPassPolicyTriggered:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RTSSchemaRTSSecondPassPolicyDecisionMade alloc] initWithDictionary:v14];
      [(RTSSchemaRTSClientEvent *)v5 setRtsSecondPassPolicyDecisionMade:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"rtsMotionData"];
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

- (RTSSchemaRTSClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RTSSchemaRTSClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RTSSchemaRTSClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(RTSSchemaRTSClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_rtsFalseRejectDetected)
  {
    rtsFalseRejectDetected = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
    dictionaryRepresentation2 = [rtsFalseRejectDetected dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"rtsFalseRejectDetected"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"rtsFalseRejectDetected"];
    }
  }

  if (self->_rtsFirstPassPolicyTriggered)
  {
    rtsFirstPassPolicyTriggered = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
    dictionaryRepresentation3 = [rtsFirstPassPolicyTriggered dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    }
  }

  if (self->_rtsMotionData)
  {
    rtsMotionData = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
    dictionaryRepresentation4 = [rtsMotionData dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"rtsMotionData"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"rtsMotionData"];
    }
  }

  if (self->_rtsSecondPassPolicyDecisionMade)
  {
    rtsSecondPassPolicyDecisionMade = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
    dictionaryRepresentation5 = [rtsSecondPassPolicyDecisionMade dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    }
  }

  if (self->_rtsTriggered)
  {
    rtsTriggered = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
    dictionaryRepresentation6 = [rtsTriggered dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"rtsTriggered"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"rtsTriggered"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_33;
  }

  eventMetadata = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  eventMetadata3 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
  eventMetadata2 = [equalCopy rtsFalseRejectDetected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  rtsFalseRejectDetected = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
  if (rtsFalseRejectDetected)
  {
    v14 = rtsFalseRejectDetected;
    rtsFalseRejectDetected2 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
    rtsFalseRejectDetected3 = [equalCopy rtsFalseRejectDetected];
    v17 = [rtsFalseRejectDetected2 isEqual:rtsFalseRejectDetected3];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
  eventMetadata2 = [equalCopy rtsTriggered];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  rtsTriggered = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
  if (rtsTriggered)
  {
    v19 = rtsTriggered;
    rtsTriggered2 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
    rtsTriggered3 = [equalCopy rtsTriggered];
    v22 = [rtsTriggered2 isEqual:rtsTriggered3];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
  eventMetadata2 = [equalCopy rtsFirstPassPolicyTriggered];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  rtsFirstPassPolicyTriggered = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
  if (rtsFirstPassPolicyTriggered)
  {
    v24 = rtsFirstPassPolicyTriggered;
    rtsFirstPassPolicyTriggered2 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
    rtsFirstPassPolicyTriggered3 = [equalCopy rtsFirstPassPolicyTriggered];
    v27 = [rtsFirstPassPolicyTriggered2 isEqual:rtsFirstPassPolicyTriggered3];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
  eventMetadata2 = [equalCopy rtsSecondPassPolicyDecisionMade];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  rtsSecondPassPolicyDecisionMade = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
  if (rtsSecondPassPolicyDecisionMade)
  {
    v29 = rtsSecondPassPolicyDecisionMade;
    rtsSecondPassPolicyDecisionMade2 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
    rtsSecondPassPolicyDecisionMade3 = [equalCopy rtsSecondPassPolicyDecisionMade];
    v32 = [rtsSecondPassPolicyDecisionMade2 isEqual:rtsSecondPassPolicyDecisionMade3];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
  eventMetadata2 = [equalCopy rtsMotionData];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    rtsMotionData = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
    if (!rtsMotionData)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = rtsMotionData;
    rtsMotionData2 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
    rtsMotionData3 = [equalCopy rtsMotionData];
    v37 = [rtsMotionData2 isEqual:rtsMotionData3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(RTSSchemaRTSClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(RTSSchemaRTSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  rtsFalseRejectDetected = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];

  if (rtsFalseRejectDetected)
  {
    rtsFalseRejectDetected2 = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
    PBDataWriterWriteSubmessage();
  }

  rtsTriggered = [(RTSSchemaRTSClientEvent *)self rtsTriggered];

  if (rtsTriggered)
  {
    rtsTriggered2 = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
    PBDataWriterWriteSubmessage();
  }

  rtsFirstPassPolicyTriggered = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];

  if (rtsFirstPassPolicyTriggered)
  {
    rtsFirstPassPolicyTriggered2 = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
    PBDataWriterWriteSubmessage();
  }

  rtsSecondPassPolicyDecisionMade = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];

  if (rtsSecondPassPolicyDecisionMade)
  {
    rtsSecondPassPolicyDecisionMade2 = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
    PBDataWriterWriteSubmessage();
  }

  rtsMotionData = [(RTSSchemaRTSClientEvent *)self rtsMotionData];

  v15 = toCopy;
  if (rtsMotionData)
  {
    rtsMotionData2 = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
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

- (void)setRtsMotionData:(id)data
{
  dataCopy = data;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  v9 = 105;
  if (!dataCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = dataCopy;
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

- (void)setRtsSecondPassPolicyDecisionMade:(id)made
{
  madeCopy = made;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = 0;

  v9 = 104;
  if (!madeCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = madeCopy;
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

- (void)setRtsFirstPassPolicyTriggered:(id)triggered
{
  triggeredCopy = triggered;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = 0;

  v9 = 103;
  if (!triggeredCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = triggeredCopy;
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

- (void)setRtsTriggered:(id)triggered
{
  triggeredCopy = triggered;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = 0;

  v9 = 102;
  if (!triggeredCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = triggeredCopy;
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

- (void)setRtsFalseRejectDetected:(id)detected
{
  detectedCopy = detected;
  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  rtsMotionData = self->_rtsMotionData;
  self->_rtsMotionData = 0;

  v9 = 101;
  if (!detectedCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = detectedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(RTSSchemaRTSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    return @"com.apple.aiml.siri.rts.RTSClientEvent";
  }

  else
  {
    return off_1E78E2368[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = RTSSchemaRTSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RTSSchemaRTSClientEvent *)self deleteEventMetadata];
  }

  rtsFalseRejectDetected = [(RTSSchemaRTSClientEvent *)self rtsFalseRejectDetected];
  v10 = [rtsFalseRejectDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsFalseRejectDetected];
  }

  rtsTriggered = [(RTSSchemaRTSClientEvent *)self rtsTriggered];
  v13 = [rtsTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsTriggered];
  }

  rtsFirstPassPolicyTriggered = [(RTSSchemaRTSClientEvent *)self rtsFirstPassPolicyTriggered];
  v16 = [rtsFirstPassPolicyTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsFirstPassPolicyTriggered];
  }

  rtsSecondPassPolicyDecisionMade = [(RTSSchemaRTSClientEvent *)self rtsSecondPassPolicyDecisionMade];
  v19 = [rtsSecondPassPolicyDecisionMade applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(RTSSchemaRTSClientEvent *)self deleteRtsSecondPassPolicyDecisionMade];
  }

  rtsMotionData = [(RTSSchemaRTSClientEvent *)self rtsMotionData];
  v22 = [rtsMotionData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
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
  eventMetadata = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  rtsSessionId = [eventMetadata rtsSessionId];

  if (rtsSessionId)
  {
    value = [rtsSessionId value];
    if (value)
    {
      value2 = [rtsSessionId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 41;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(RTSSchemaRTSClientEvent *)self eventMetadata];
  rtsSessionId = [eventMetadata rtsSessionId];

  if (!rtsSessionId)
  {
    goto LABEL_5;
  }

  value = [rtsSessionId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [rtsSessionId value];
  v6 = [value2 length];

  if (v6)
  {
    value = rtsSessionId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(RTSSchemaRTSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB008[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78EB030[tag - 101];
  }
}

@end