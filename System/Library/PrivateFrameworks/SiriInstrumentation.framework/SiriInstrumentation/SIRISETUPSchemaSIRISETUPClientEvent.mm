@interface SIRISETUPSchemaSIRISETUPClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPClientEvent)initWithDictionary:(id)dictionary;
- (SIRISETUPSchemaSIRISETUPClientEvent)initWithJSON:(id)n;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)enrollmentZeroDetectionCompleted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary)sessionSummary;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)enrollmentUICompleted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)enrollmentUIStarted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted)enrollmentUIUtteranceTrainingAttempted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted)enrollmentUtteranceCompleted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)enrollmentUtteranceDetected;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteEnrollmentUICompleted;
- (void)deleteEnrollmentUIStarted;
- (void)deleteEnrollmentUIUtteranceTrainingAttempted;
- (void)deleteEnrollmentUtteranceCompleted;
- (void)deleteEnrollmentUtteranceDetected;
- (void)deleteEnrollmentZeroDetectionCompleted;
- (void)deleteSessionSummary;
- (void)setEnrollmentUICompleted:(id)completed;
- (void)setEnrollmentUIStarted:(id)started;
- (void)setEnrollmentUIUtteranceTrainingAttempted:(id)attempted;
- (void)setEnrollmentUtteranceCompleted:(id)completed;
- (void)setEnrollmentUtteranceDetected:(id)detected;
- (void)setEnrollmentZeroDetectionCompleted:(id)completed;
- (void)setSessionSummary:(id)summary;
- (void)writeTo:(id)to;
@end

@implementation SIRISETUPSchemaSIRISETUPClientEvent

- (SIRISETUPSchemaSIRISETUPClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = SIRISETUPSchemaSIRISETUPClientEvent;
  v5 = [(SIRISETUPSchemaSIRISETUPClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SIRISETUPSchemaSIRISETUPClientEventMetadata alloc] initWithDictionary:v6];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEventMetadata:v7];
    }

    v24 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentZeroDetectionCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted alloc] initWithDictionary:v8];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentZeroDetectionCompleted:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentUtteranceCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted alloc] initWithDictionary:v10];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUtteranceCompleted:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentUtteranceDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected alloc] initWithDictionary:v12];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUtteranceDetected:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentUIStarted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted alloc] initWithDictionary:v14];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUIStarted:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentUIUtteranceTrainingAttempted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted alloc] initWithDictionary:v16];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUIUtteranceTrainingAttempted:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentUICompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted alloc] initWithDictionary:v18];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUICompleted:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"sessionSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary alloc] initWithDictionary:v20];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setSessionSummary:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIRISETUPSchemaSIRISETUPClientEvent *)self dictionaryRepresentation];
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
  if (self->_enrollmentUICompleted)
  {
    enrollmentUICompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
    dictionaryRepresentation = [enrollmentUICompleted dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"enrollmentUICompleted"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"enrollmentUICompleted"];
    }
  }

  if (self->_enrollmentUIStarted)
  {
    enrollmentUIStarted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
    dictionaryRepresentation2 = [enrollmentUIStarted dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"enrollmentUIStarted"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"enrollmentUIStarted"];
    }
  }

  if (self->_enrollmentUIUtteranceTrainingAttempted)
  {
    enrollmentUIUtteranceTrainingAttempted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
    dictionaryRepresentation3 = [enrollmentUIUtteranceTrainingAttempted dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"enrollmentUIUtteranceTrainingAttempted"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"enrollmentUIUtteranceTrainingAttempted"];
    }
  }

  if (self->_enrollmentUtteranceCompleted)
  {
    enrollmentUtteranceCompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
    dictionaryRepresentation4 = [enrollmentUtteranceCompleted dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"enrollmentUtteranceCompleted"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"enrollmentUtteranceCompleted"];
    }
  }

  if (self->_enrollmentUtteranceDetected)
  {
    enrollmentUtteranceDetected = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
    dictionaryRepresentation5 = [enrollmentUtteranceDetected dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"enrollmentUtteranceDetected"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"enrollmentUtteranceDetected"];
    }
  }

  if (self->_enrollmentZeroDetectionCompleted)
  {
    enrollmentZeroDetectionCompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
    dictionaryRepresentation6 = [enrollmentZeroDetectionCompleted dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"enrollmentZeroDetectionCompleted"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"enrollmentZeroDetectionCompleted"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
    dictionaryRepresentation7 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_sessionSummary)
  {
    sessionSummary = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
    dictionaryRepresentation8 = [sessionSummary dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"sessionSummary"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"sessionSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SIRISETUPSchemaSIRISETUPClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self->_enrollmentZeroDetectionCompleted hash]^ v3;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self->_enrollmentUtteranceCompleted hash];
  v6 = v4 ^ v5 ^ [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self->_enrollmentUtteranceDetected hash];
  v7 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self->_enrollmentUIStarted hash];
  v8 = v7 ^ [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self->_enrollmentUIUtteranceTrainingAttempted hash];
  v9 = v6 ^ v8 ^ [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self->_enrollmentUICompleted hash];
  return v9 ^ [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)self->_sessionSummary hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_43;
  }

  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  eventMetadata3 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
  eventMetadata2 = [equalCopy enrollmentZeroDetectionCompleted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  enrollmentZeroDetectionCompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
  if (enrollmentZeroDetectionCompleted)
  {
    v14 = enrollmentZeroDetectionCompleted;
    enrollmentZeroDetectionCompleted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
    enrollmentZeroDetectionCompleted3 = [equalCopy enrollmentZeroDetectionCompleted];
    v17 = [enrollmentZeroDetectionCompleted2 isEqual:enrollmentZeroDetectionCompleted3];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
  eventMetadata2 = [equalCopy enrollmentUtteranceCompleted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  enrollmentUtteranceCompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
  if (enrollmentUtteranceCompleted)
  {
    v19 = enrollmentUtteranceCompleted;
    enrollmentUtteranceCompleted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
    enrollmentUtteranceCompleted3 = [equalCopy enrollmentUtteranceCompleted];
    v22 = [enrollmentUtteranceCompleted2 isEqual:enrollmentUtteranceCompleted3];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
  eventMetadata2 = [equalCopy enrollmentUtteranceDetected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  enrollmentUtteranceDetected = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
  if (enrollmentUtteranceDetected)
  {
    v24 = enrollmentUtteranceDetected;
    enrollmentUtteranceDetected2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
    enrollmentUtteranceDetected3 = [equalCopy enrollmentUtteranceDetected];
    v27 = [enrollmentUtteranceDetected2 isEqual:enrollmentUtteranceDetected3];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
  eventMetadata2 = [equalCopy enrollmentUIStarted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  enrollmentUIStarted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
  if (enrollmentUIStarted)
  {
    v29 = enrollmentUIStarted;
    enrollmentUIStarted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
    enrollmentUIStarted3 = [equalCopy enrollmentUIStarted];
    v32 = [enrollmentUIStarted2 isEqual:enrollmentUIStarted3];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
  eventMetadata2 = [equalCopy enrollmentUIUtteranceTrainingAttempted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  enrollmentUIUtteranceTrainingAttempted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
  if (enrollmentUIUtteranceTrainingAttempted)
  {
    v34 = enrollmentUIUtteranceTrainingAttempted;
    enrollmentUIUtteranceTrainingAttempted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
    enrollmentUIUtteranceTrainingAttempted3 = [equalCopy enrollmentUIUtteranceTrainingAttempted];
    v37 = [enrollmentUIUtteranceTrainingAttempted2 isEqual:enrollmentUIUtteranceTrainingAttempted3];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
  eventMetadata2 = [equalCopy enrollmentUICompleted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  enrollmentUICompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
  if (enrollmentUICompleted)
  {
    v39 = enrollmentUICompleted;
    enrollmentUICompleted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
    enrollmentUICompleted3 = [equalCopy enrollmentUICompleted];
    v42 = [enrollmentUICompleted2 isEqual:enrollmentUICompleted3];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
  eventMetadata2 = [equalCopy sessionSummary];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    sessionSummary = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
    if (!sessionSummary)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = sessionSummary;
    sessionSummary2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
    sessionSummary3 = [equalCopy sessionSummary];
    v47 = [sessionSummary2 isEqual:sessionSummary3];

    if (v47)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_42:
  }

LABEL_43:
  v48 = 0;
LABEL_44:

  return v48;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  enrollmentZeroDetectionCompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];

  if (enrollmentZeroDetectionCompleted)
  {
    enrollmentZeroDetectionCompleted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
    PBDataWriterWriteSubmessage();
  }

  enrollmentUtteranceCompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];

  if (enrollmentUtteranceCompleted)
  {
    enrollmentUtteranceCompleted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
    PBDataWriterWriteSubmessage();
  }

  enrollmentUtteranceDetected = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];

  if (enrollmentUtteranceDetected)
  {
    enrollmentUtteranceDetected2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
    PBDataWriterWriteSubmessage();
  }

  enrollmentUIStarted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];

  if (enrollmentUIStarted)
  {
    enrollmentUIStarted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
    PBDataWriterWriteSubmessage();
  }

  enrollmentUIUtteranceTrainingAttempted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];

  if (enrollmentUIUtteranceTrainingAttempted)
  {
    enrollmentUIUtteranceTrainingAttempted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
    PBDataWriterWriteSubmessage();
  }

  enrollmentUICompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];

  if (enrollmentUICompleted)
  {
    enrollmentUICompleted2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
    PBDataWriterWriteSubmessage();
  }

  sessionSummary = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];

  v19 = toCopy;
  if (sessionSummary)
  {
    sessionSummary2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
  }
}

- (void)deleteSessionSummary
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_sessionSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary)sessionSummary
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_sessionSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSessionSummary:(id)summary
{
  summaryCopy = summary;
  enrollmentZeroDetectionCompleted = self->_enrollmentZeroDetectionCompleted;
  self->_enrollmentZeroDetectionCompleted = 0;

  enrollmentUtteranceCompleted = self->_enrollmentUtteranceCompleted;
  self->_enrollmentUtteranceCompleted = 0;

  enrollmentUtteranceDetected = self->_enrollmentUtteranceDetected;
  self->_enrollmentUtteranceDetected = 0;

  enrollmentUIStarted = self->_enrollmentUIStarted;
  self->_enrollmentUIStarted = 0;

  enrollmentUIUtteranceTrainingAttempted = self->_enrollmentUIUtteranceTrainingAttempted;
  self->_enrollmentUIUtteranceTrainingAttempted = 0;

  enrollmentUICompleted = self->_enrollmentUICompleted;
  self->_enrollmentUICompleted = 0;

  v11 = 107;
  if (!summaryCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = summaryCopy;
}

- (void)deleteEnrollmentUICompleted
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_enrollmentUICompleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)enrollmentUICompleted
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_enrollmentUICompleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnrollmentUICompleted:(id)completed
{
  completedCopy = completed;
  enrollmentZeroDetectionCompleted = self->_enrollmentZeroDetectionCompleted;
  self->_enrollmentZeroDetectionCompleted = 0;

  enrollmentUtteranceCompleted = self->_enrollmentUtteranceCompleted;
  self->_enrollmentUtteranceCompleted = 0;

  enrollmentUtteranceDetected = self->_enrollmentUtteranceDetected;
  self->_enrollmentUtteranceDetected = 0;

  enrollmentUIStarted = self->_enrollmentUIStarted;
  self->_enrollmentUIStarted = 0;

  enrollmentUIUtteranceTrainingAttempted = self->_enrollmentUIUtteranceTrainingAttempted;
  self->_enrollmentUIUtteranceTrainingAttempted = 0;

  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = 0;

  v11 = 106;
  if (!completedCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUICompleted = self->_enrollmentUICompleted;
  self->_enrollmentUICompleted = completedCopy;
}

- (void)deleteEnrollmentUIUtteranceTrainingAttempted
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_enrollmentUIUtteranceTrainingAttempted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted)enrollmentUIUtteranceTrainingAttempted
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_enrollmentUIUtteranceTrainingAttempted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnrollmentUIUtteranceTrainingAttempted:(id)attempted
{
  attemptedCopy = attempted;
  enrollmentZeroDetectionCompleted = self->_enrollmentZeroDetectionCompleted;
  self->_enrollmentZeroDetectionCompleted = 0;

  enrollmentUtteranceCompleted = self->_enrollmentUtteranceCompleted;
  self->_enrollmentUtteranceCompleted = 0;

  enrollmentUtteranceDetected = self->_enrollmentUtteranceDetected;
  self->_enrollmentUtteranceDetected = 0;

  enrollmentUIStarted = self->_enrollmentUIStarted;
  self->_enrollmentUIStarted = 0;

  enrollmentUICompleted = self->_enrollmentUICompleted;
  self->_enrollmentUICompleted = 0;

  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = 0;

  v11 = 105;
  if (!attemptedCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUIUtteranceTrainingAttempted = self->_enrollmentUIUtteranceTrainingAttempted;
  self->_enrollmentUIUtteranceTrainingAttempted = attemptedCopy;
}

- (void)deleteEnrollmentUIStarted
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_enrollmentUIStarted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)enrollmentUIStarted
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_enrollmentUIStarted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnrollmentUIStarted:(id)started
{
  startedCopy = started;
  enrollmentZeroDetectionCompleted = self->_enrollmentZeroDetectionCompleted;
  self->_enrollmentZeroDetectionCompleted = 0;

  enrollmentUtteranceCompleted = self->_enrollmentUtteranceCompleted;
  self->_enrollmentUtteranceCompleted = 0;

  enrollmentUtteranceDetected = self->_enrollmentUtteranceDetected;
  self->_enrollmentUtteranceDetected = 0;

  enrollmentUIUtteranceTrainingAttempted = self->_enrollmentUIUtteranceTrainingAttempted;
  self->_enrollmentUIUtteranceTrainingAttempted = 0;

  enrollmentUICompleted = self->_enrollmentUICompleted;
  self->_enrollmentUICompleted = 0;

  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = 0;

  v11 = 104;
  if (!startedCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUIStarted = self->_enrollmentUIStarted;
  self->_enrollmentUIStarted = startedCopy;
}

- (void)deleteEnrollmentUtteranceDetected
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_enrollmentUtteranceDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)enrollmentUtteranceDetected
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_enrollmentUtteranceDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnrollmentUtteranceDetected:(id)detected
{
  detectedCopy = detected;
  enrollmentZeroDetectionCompleted = self->_enrollmentZeroDetectionCompleted;
  self->_enrollmentZeroDetectionCompleted = 0;

  enrollmentUtteranceCompleted = self->_enrollmentUtteranceCompleted;
  self->_enrollmentUtteranceCompleted = 0;

  enrollmentUIStarted = self->_enrollmentUIStarted;
  self->_enrollmentUIStarted = 0;

  enrollmentUIUtteranceTrainingAttempted = self->_enrollmentUIUtteranceTrainingAttempted;
  self->_enrollmentUIUtteranceTrainingAttempted = 0;

  enrollmentUICompleted = self->_enrollmentUICompleted;
  self->_enrollmentUICompleted = 0;

  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = 0;

  v11 = 103;
  if (!detectedCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUtteranceDetected = self->_enrollmentUtteranceDetected;
  self->_enrollmentUtteranceDetected = detectedCopy;
}

- (void)deleteEnrollmentUtteranceCompleted
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_enrollmentUtteranceCompleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted)enrollmentUtteranceCompleted
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_enrollmentUtteranceCompleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnrollmentUtteranceCompleted:(id)completed
{
  completedCopy = completed;
  enrollmentZeroDetectionCompleted = self->_enrollmentZeroDetectionCompleted;
  self->_enrollmentZeroDetectionCompleted = 0;

  enrollmentUtteranceDetected = self->_enrollmentUtteranceDetected;
  self->_enrollmentUtteranceDetected = 0;

  enrollmentUIStarted = self->_enrollmentUIStarted;
  self->_enrollmentUIStarted = 0;

  enrollmentUIUtteranceTrainingAttempted = self->_enrollmentUIUtteranceTrainingAttempted;
  self->_enrollmentUIUtteranceTrainingAttempted = 0;

  enrollmentUICompleted = self->_enrollmentUICompleted;
  self->_enrollmentUICompleted = 0;

  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = 0;

  v11 = 102;
  if (!completedCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUtteranceCompleted = self->_enrollmentUtteranceCompleted;
  self->_enrollmentUtteranceCompleted = completedCopy;
}

- (void)deleteEnrollmentZeroDetectionCompleted
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_enrollmentZeroDetectionCompleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)enrollmentZeroDetectionCompleted
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_enrollmentZeroDetectionCompleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnrollmentZeroDetectionCompleted:(id)completed
{
  completedCopy = completed;
  enrollmentUtteranceCompleted = self->_enrollmentUtteranceCompleted;
  self->_enrollmentUtteranceCompleted = 0;

  enrollmentUtteranceDetected = self->_enrollmentUtteranceDetected;
  self->_enrollmentUtteranceDetected = 0;

  enrollmentUIStarted = self->_enrollmentUIStarted;
  self->_enrollmentUIStarted = 0;

  enrollmentUIUtteranceTrainingAttempted = self->_enrollmentUIUtteranceTrainingAttempted;
  self->_enrollmentUIUtteranceTrainingAttempted = 0;

  enrollmentUICompleted = self->_enrollmentUICompleted;
  self->_enrollmentUICompleted = 0;

  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = 0;

  v11 = 101;
  if (!completedCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentZeroDetectionCompleted = self->_enrollmentZeroDetectionCompleted;
  self->_enrollmentZeroDetectionCompleted = completedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(SIRISETUPSchemaSIRISETUPClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 6)
  {
    return @"com.apple.aiml.siri.setup.SIRISETUPClientEvent";
  }

  else
  {
    return off_1E78E2C68[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v31.receiver = self;
  v31.super_class = SIRISETUPSchemaSIRISETUPClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEventMetadata];
  }

  enrollmentZeroDetectionCompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
  v10 = [enrollmentZeroDetectionCompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentZeroDetectionCompleted];
  }

  enrollmentUtteranceCompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
  v13 = [enrollmentUtteranceCompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUtteranceCompleted];
  }

  enrollmentUtteranceDetected = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
  v16 = [enrollmentUtteranceDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUtteranceDetected];
  }

  enrollmentUIStarted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
  v19 = [enrollmentUIStarted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUIStarted];
  }

  enrollmentUIUtteranceTrainingAttempted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
  v22 = [enrollmentUIUtteranceTrainingAttempted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUIUtteranceTrainingAttempted];
  }

  enrollmentUICompleted = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
  v25 = [enrollmentUICompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUICompleted];
  }

  sessionSummary = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
  v28 = [sessionSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteSessionSummary];
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
  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  siriSetupId = [eventMetadata siriSetupId];

  if (siriSetupId)
  {
    value = [siriSetupId value];
    if (value)
    {
      value2 = [siriSetupId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 33;
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
  eventMetadata = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  siriSetupId = [eventMetadata siriSetupId];

  if (!siriSetupId)
  {
    goto LABEL_5;
  }

  value = [siriSetupId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [siriSetupId value];
  v6 = [value2 length];

  if (v6)
  {
    value = siriSetupId;
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
  whichEvent_Type = [(SIRISETUPSchemaSIRISETUPClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB0D8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E78EB110[tag - 101];
  }
}

@end