@interface USPSchemaUSPClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (USPSchemaUSPClientEvent)initWithDictionary:(id)dictionary;
- (USPSchemaUSPClientEvent)initWithJSON:(id)n;
- (USPSchemaUSPIterationEnded)iterationEnded;
- (USPSchemaUSPIterationStarted)iterationStarted;
- (USPSchemaUSPLoggingInitalized)loggingInitialized;
- (USPSchemaUSPLoggingReported)loggingReported;
- (USPSchemaUSPMeasureEnded)measureEnded;
- (USPSchemaUSPMeasureStarted)measureStarted;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteIterationEnded;
- (void)deleteIterationStarted;
- (void)deleteLoggingInitialized;
- (void)deleteLoggingReported;
- (void)deleteMeasureEnded;
- (void)deleteMeasureStarted;
- (void)setIterationEnded:(id)ended;
- (void)setIterationStarted:(id)started;
- (void)setLoggingInitialized:(id)initialized;
- (void)setLoggingReported:(id)reported;
- (void)setMeasureEnded:(id)ended;
- (void)setMeasureStarted:(id)started;
- (void)writeTo:(id)to;
@end

@implementation USPSchemaUSPClientEvent

- (USPSchemaUSPClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = USPSchemaUSPClientEvent;
  v5 = [(USPSchemaUSPClientEvent *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USPSchemaUSPClientEventMetadata alloc] initWithDictionary:v6];
      [(USPSchemaUSPClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"loggingInitialized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USPSchemaUSPLoggingInitalized alloc] initWithDictionary:v8];
      [(USPSchemaUSPClientEvent *)v5 setLoggingInitialized:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"loggingReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[USPSchemaUSPLoggingReported alloc] initWithDictionary:v10];
      [(USPSchemaUSPClientEvent *)v5 setLoggingReported:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"measureStarted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[USPSchemaUSPMeasureStarted alloc] initWithDictionary:v12];
      [(USPSchemaUSPClientEvent *)v5 setMeasureStarted:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"measureEnded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[USPSchemaUSPMeasureEnded alloc] initWithDictionary:v14];
      [(USPSchemaUSPClientEvent *)v5 setMeasureEnded:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"iterationStarted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[USPSchemaUSPIterationStarted alloc] initWithDictionary:v16];
      [(USPSchemaUSPClientEvent *)v5 setIterationStarted:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"iterationEnded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[USPSchemaUSPIterationEnded alloc] initWithDictionary:v18];
      [(USPSchemaUSPClientEvent *)v5 setIterationEnded:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (USPSchemaUSPClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USPSchemaUSPClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USPSchemaUSPClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(USPSchemaUSPClientEvent *)self eventMetadata];
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

  if (self->_iterationEnded)
  {
    iterationEnded = [(USPSchemaUSPClientEvent *)self iterationEnded];
    dictionaryRepresentation2 = [iterationEnded dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"iterationEnded"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"iterationEnded"];
    }
  }

  if (self->_iterationStarted)
  {
    iterationStarted = [(USPSchemaUSPClientEvent *)self iterationStarted];
    dictionaryRepresentation3 = [iterationStarted dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"iterationStarted"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"iterationStarted"];
    }
  }

  if (self->_loggingInitialized)
  {
    loggingInitialized = [(USPSchemaUSPClientEvent *)self loggingInitialized];
    dictionaryRepresentation4 = [loggingInitialized dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"loggingInitialized"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"loggingInitialized"];
    }
  }

  if (self->_loggingReported)
  {
    loggingReported = [(USPSchemaUSPClientEvent *)self loggingReported];
    dictionaryRepresentation5 = [loggingReported dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"loggingReported"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"loggingReported"];
    }
  }

  if (self->_measureEnded)
  {
    measureEnded = [(USPSchemaUSPClientEvent *)self measureEnded];
    dictionaryRepresentation6 = [measureEnded dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"measureEnded"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"measureEnded"];
    }
  }

  if (self->_measureStarted)
  {
    measureStarted = [(USPSchemaUSPClientEvent *)self measureStarted];
    dictionaryRepresentation7 = [measureStarted dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"measureStarted"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"measureStarted"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(USPSchemaUSPClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(USPSchemaUSPLoggingInitalized *)self->_loggingInitialized hash]^ v3;
  v5 = [(USPSchemaUSPLoggingReported *)self->_loggingReported hash];
  v6 = v4 ^ v5 ^ [(USPSchemaUSPMeasureStarted *)self->_measureStarted hash];
  v7 = [(USPSchemaUSPMeasureEnded *)self->_measureEnded hash];
  v8 = v7 ^ [(USPSchemaUSPIterationStarted *)self->_iterationStarted hash];
  return v6 ^ v8 ^ [(USPSchemaUSPIterationEnded *)self->_iterationEnded hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_38;
  }

  eventMetadata = [(USPSchemaUSPClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  eventMetadata3 = [(USPSchemaUSPClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(USPSchemaUSPClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(USPSchemaUSPClientEvent *)self loggingInitialized];
  eventMetadata2 = [equalCopy loggingInitialized];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  loggingInitialized = [(USPSchemaUSPClientEvent *)self loggingInitialized];
  if (loggingInitialized)
  {
    v14 = loggingInitialized;
    loggingInitialized2 = [(USPSchemaUSPClientEvent *)self loggingInitialized];
    loggingInitialized3 = [equalCopy loggingInitialized];
    v17 = [loggingInitialized2 isEqual:loggingInitialized3];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(USPSchemaUSPClientEvent *)self loggingReported];
  eventMetadata2 = [equalCopy loggingReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  loggingReported = [(USPSchemaUSPClientEvent *)self loggingReported];
  if (loggingReported)
  {
    v19 = loggingReported;
    loggingReported2 = [(USPSchemaUSPClientEvent *)self loggingReported];
    loggingReported3 = [equalCopy loggingReported];
    v22 = [loggingReported2 isEqual:loggingReported3];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(USPSchemaUSPClientEvent *)self measureStarted];
  eventMetadata2 = [equalCopy measureStarted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  measureStarted = [(USPSchemaUSPClientEvent *)self measureStarted];
  if (measureStarted)
  {
    v24 = measureStarted;
    measureStarted2 = [(USPSchemaUSPClientEvent *)self measureStarted];
    measureStarted3 = [equalCopy measureStarted];
    v27 = [measureStarted2 isEqual:measureStarted3];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(USPSchemaUSPClientEvent *)self measureEnded];
  eventMetadata2 = [equalCopy measureEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  measureEnded = [(USPSchemaUSPClientEvent *)self measureEnded];
  if (measureEnded)
  {
    v29 = measureEnded;
    measureEnded2 = [(USPSchemaUSPClientEvent *)self measureEnded];
    measureEnded3 = [equalCopy measureEnded];
    v32 = [measureEnded2 isEqual:measureEnded3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(USPSchemaUSPClientEvent *)self iterationStarted];
  eventMetadata2 = [equalCopy iterationStarted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  iterationStarted = [(USPSchemaUSPClientEvent *)self iterationStarted];
  if (iterationStarted)
  {
    v34 = iterationStarted;
    iterationStarted2 = [(USPSchemaUSPClientEvent *)self iterationStarted];
    iterationStarted3 = [equalCopy iterationStarted];
    v37 = [iterationStarted2 isEqual:iterationStarted3];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(USPSchemaUSPClientEvent *)self iterationEnded];
  eventMetadata2 = [equalCopy iterationEnded];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    iterationEnded = [(USPSchemaUSPClientEvent *)self iterationEnded];
    if (!iterationEnded)
    {

LABEL_41:
      v43 = 1;
      goto LABEL_39;
    }

    v39 = iterationEnded;
    iterationEnded2 = [(USPSchemaUSPClientEvent *)self iterationEnded];
    iterationEnded3 = [equalCopy iterationEnded];
    v42 = [iterationEnded2 isEqual:iterationEnded3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(USPSchemaUSPClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(USPSchemaUSPClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  loggingInitialized = [(USPSchemaUSPClientEvent *)self loggingInitialized];

  if (loggingInitialized)
  {
    loggingInitialized2 = [(USPSchemaUSPClientEvent *)self loggingInitialized];
    PBDataWriterWriteSubmessage();
  }

  loggingReported = [(USPSchemaUSPClientEvent *)self loggingReported];

  if (loggingReported)
  {
    loggingReported2 = [(USPSchemaUSPClientEvent *)self loggingReported];
    PBDataWriterWriteSubmessage();
  }

  measureStarted = [(USPSchemaUSPClientEvent *)self measureStarted];

  if (measureStarted)
  {
    measureStarted2 = [(USPSchemaUSPClientEvent *)self measureStarted];
    PBDataWriterWriteSubmessage();
  }

  measureEnded = [(USPSchemaUSPClientEvent *)self measureEnded];

  if (measureEnded)
  {
    measureEnded2 = [(USPSchemaUSPClientEvent *)self measureEnded];
    PBDataWriterWriteSubmessage();
  }

  iterationStarted = [(USPSchemaUSPClientEvent *)self iterationStarted];

  if (iterationStarted)
  {
    iterationStarted2 = [(USPSchemaUSPClientEvent *)self iterationStarted];
    PBDataWriterWriteSubmessage();
  }

  iterationEnded = [(USPSchemaUSPClientEvent *)self iterationEnded];

  v17 = toCopy;
  if (iterationEnded)
  {
    iterationEnded2 = [(USPSchemaUSPClientEvent *)self iterationEnded];
    PBDataWriterWriteSubmessage();

    v17 = toCopy;
  }
}

- (void)deleteIterationEnded
{
  if (self->_whichEvent_Type == 7)
  {
    self->_whichEvent_Type = 0;
    self->_iterationEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (USPSchemaUSPIterationEnded)iterationEnded
{
  if (self->_whichEvent_Type == 7)
  {
    v3 = self->_iterationEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIterationEnded:(id)ended
{
  endedCopy = ended;
  loggingInitialized = self->_loggingInitialized;
  self->_loggingInitialized = 0;

  loggingReported = self->_loggingReported;
  self->_loggingReported = 0;

  measureStarted = self->_measureStarted;
  self->_measureStarted = 0;

  measureEnded = self->_measureEnded;
  self->_measureEnded = 0;

  iterationStarted = self->_iterationStarted;
  self->_iterationStarted = 0;

  v10 = 7;
  if (!endedCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  iterationEnded = self->_iterationEnded;
  self->_iterationEnded = endedCopy;
}

- (void)deleteIterationStarted
{
  if (self->_whichEvent_Type == 6)
  {
    self->_whichEvent_Type = 0;
    self->_iterationStarted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (USPSchemaUSPIterationStarted)iterationStarted
{
  if (self->_whichEvent_Type == 6)
  {
    v3 = self->_iterationStarted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIterationStarted:(id)started
{
  startedCopy = started;
  loggingInitialized = self->_loggingInitialized;
  self->_loggingInitialized = 0;

  loggingReported = self->_loggingReported;
  self->_loggingReported = 0;

  measureStarted = self->_measureStarted;
  self->_measureStarted = 0;

  measureEnded = self->_measureEnded;
  self->_measureEnded = 0;

  iterationEnded = self->_iterationEnded;
  self->_iterationEnded = 0;

  v10 = 6;
  if (!startedCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  iterationStarted = self->_iterationStarted;
  self->_iterationStarted = startedCopy;
}

- (void)deleteMeasureEnded
{
  if (self->_whichEvent_Type == 5)
  {
    self->_whichEvent_Type = 0;
    self->_measureEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (USPSchemaUSPMeasureEnded)measureEnded
{
  if (self->_whichEvent_Type == 5)
  {
    v3 = self->_measureEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMeasureEnded:(id)ended
{
  endedCopy = ended;
  loggingInitialized = self->_loggingInitialized;
  self->_loggingInitialized = 0;

  loggingReported = self->_loggingReported;
  self->_loggingReported = 0;

  measureStarted = self->_measureStarted;
  self->_measureStarted = 0;

  iterationStarted = self->_iterationStarted;
  self->_iterationStarted = 0;

  iterationEnded = self->_iterationEnded;
  self->_iterationEnded = 0;

  v10 = 5;
  if (!endedCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  measureEnded = self->_measureEnded;
  self->_measureEnded = endedCopy;
}

- (void)deleteMeasureStarted
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_measureStarted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (USPSchemaUSPMeasureStarted)measureStarted
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_measureStarted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMeasureStarted:(id)started
{
  startedCopy = started;
  loggingInitialized = self->_loggingInitialized;
  self->_loggingInitialized = 0;

  loggingReported = self->_loggingReported;
  self->_loggingReported = 0;

  measureEnded = self->_measureEnded;
  self->_measureEnded = 0;

  iterationStarted = self->_iterationStarted;
  self->_iterationStarted = 0;

  iterationEnded = self->_iterationEnded;
  self->_iterationEnded = 0;

  self->_whichEvent_Type = 4 * (startedCopy != 0);
  measureStarted = self->_measureStarted;
  self->_measureStarted = startedCopy;
}

- (void)deleteLoggingReported
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_loggingReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (USPSchemaUSPLoggingReported)loggingReported
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_loggingReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLoggingReported:(id)reported
{
  reportedCopy = reported;
  loggingInitialized = self->_loggingInitialized;
  self->_loggingInitialized = 0;

  measureStarted = self->_measureStarted;
  self->_measureStarted = 0;

  measureEnded = self->_measureEnded;
  self->_measureEnded = 0;

  iterationStarted = self->_iterationStarted;
  self->_iterationStarted = 0;

  iterationEnded = self->_iterationEnded;
  self->_iterationEnded = 0;

  v10 = 3;
  if (!reportedCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  loggingReported = self->_loggingReported;
  self->_loggingReported = reportedCopy;
}

- (void)deleteLoggingInitialized
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_loggingInitialized = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (USPSchemaUSPLoggingInitalized)loggingInitialized
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_loggingInitialized;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLoggingInitialized:(id)initialized
{
  initializedCopy = initialized;
  loggingReported = self->_loggingReported;
  self->_loggingReported = 0;

  measureStarted = self->_measureStarted;
  self->_measureStarted = 0;

  measureEnded = self->_measureEnded;
  self->_measureEnded = 0;

  iterationStarted = self->_iterationStarted;
  self->_iterationStarted = 0;

  iterationEnded = self->_iterationEnded;
  self->_iterationEnded = 0;

  self->_whichEvent_Type = 2 * (initializedCopy != 0);
  loggingInitialized = self->_loggingInitialized;
  self->_loggingInitialized = initializedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(USPSchemaUSPClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 5)
  {
    return @"com.apple.aiml.siri.usp.USPClientEvent";
  }

  else
  {
    return off_1E78E8C60[whichEvent_Type - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v28.receiver = self;
  v28.super_class = USPSchemaUSPClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(USPSchemaUSPClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(USPSchemaUSPClientEvent *)self deleteEventMetadata];
  }

  loggingInitialized = [(USPSchemaUSPClientEvent *)self loggingInitialized];
  v10 = [loggingInitialized applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(USPSchemaUSPClientEvent *)self deleteLoggingInitialized];
  }

  loggingReported = [(USPSchemaUSPClientEvent *)self loggingReported];
  v13 = [loggingReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(USPSchemaUSPClientEvent *)self deleteLoggingReported];
  }

  measureStarted = [(USPSchemaUSPClientEvent *)self measureStarted];
  v16 = [measureStarted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(USPSchemaUSPClientEvent *)self deleteMeasureStarted];
  }

  measureEnded = [(USPSchemaUSPClientEvent *)self measureEnded];
  v19 = [measureEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(USPSchemaUSPClientEvent *)self deleteMeasureEnded];
  }

  iterationStarted = [(USPSchemaUSPClientEvent *)self iterationStarted];
  v22 = [iterationStarted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(USPSchemaUSPClientEvent *)self deleteIterationStarted];
  }

  iterationEnded = [(USPSchemaUSPClientEvent *)self iterationEnded];
  v25 = [iterationEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(USPSchemaUSPClientEvent *)self deleteIterationEnded];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (id)getComponentId
{
  eventMetadata = [(USPSchemaUSPClientEvent *)self eventMetadata];
  uspId = [eventMetadata uspId];

  if (!uspId)
  {
    goto LABEL_5;
  }

  value = [uspId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [uspId value];
  v6 = [value2 length];

  if (v6)
  {
    value = uspId;
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
  whichEvent_Type = [(USPSchemaUSPClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB3E8[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E78EB418[tag - 2];
  }
}

@end