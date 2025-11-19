@interface SIRISETUPSchemaSIRISETUPClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPClientEvent)initWithDictionary:(id)a3;
- (SIRISETUPSchemaSIRISETUPClientEvent)initWithJSON:(id)a3;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)enrollmentZeroDetectionCompleted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary)sessionSummary;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)enrollmentUICompleted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)enrollmentUIStarted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted)enrollmentUIUtteranceTrainingAttempted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted)enrollmentUtteranceCompleted;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)enrollmentUtteranceDetected;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setEnrollmentUICompleted:(id)a3;
- (void)setEnrollmentUIStarted:(id)a3;
- (void)setEnrollmentUIUtteranceTrainingAttempted:(id)a3;
- (void)setEnrollmentUtteranceCompleted:(id)a3;
- (void)setEnrollmentUtteranceDetected:(id)a3;
- (void)setEnrollmentZeroDetectionCompleted:(id)a3;
- (void)setSessionSummary:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRISETUPSchemaSIRISETUPClientEvent

- (SIRISETUPSchemaSIRISETUPClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SIRISETUPSchemaSIRISETUPClientEvent;
  v5 = [(SIRISETUPSchemaSIRISETUPClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SIRISETUPSchemaSIRISETUPClientEventMetadata alloc] initWithDictionary:v6];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEventMetadata:v7];
    }

    v24 = v6;
    v8 = [v4 objectForKeyedSubscript:@"enrollmentZeroDetectionCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted alloc] initWithDictionary:v8];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentZeroDetectionCompleted:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"enrollmentUtteranceCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted alloc] initWithDictionary:v10];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUtteranceCompleted:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"enrollmentUtteranceDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected alloc] initWithDictionary:v12];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUtteranceDetected:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"enrollmentUIStarted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted alloc] initWithDictionary:v14];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUIStarted:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"enrollmentUIUtteranceTrainingAttempted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted alloc] initWithDictionary:v16];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUIUtteranceTrainingAttempted:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"enrollmentUICompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted alloc] initWithDictionary:v18];
      [(SIRISETUPSchemaSIRISETUPClientEvent *)v5 setEnrollmentUICompleted:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"sessionSummary"];
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

- (SIRISETUPSchemaSIRISETUPClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self dictionaryRepresentation];
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
  if (self->_enrollmentUICompleted)
  {
    v4 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"enrollmentUICompleted"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"enrollmentUICompleted"];
    }
  }

  if (self->_enrollmentUIStarted)
  {
    v7 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"enrollmentUIStarted"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"enrollmentUIStarted"];
    }
  }

  if (self->_enrollmentUIUtteranceTrainingAttempted)
  {
    v10 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"enrollmentUIUtteranceTrainingAttempted"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"enrollmentUIUtteranceTrainingAttempted"];
    }
  }

  if (self->_enrollmentUtteranceCompleted)
  {
    v13 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"enrollmentUtteranceCompleted"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"enrollmentUtteranceCompleted"];
    }
  }

  if (self->_enrollmentUtteranceDetected)
  {
    v16 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"enrollmentUtteranceDetected"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"enrollmentUtteranceDetected"];
    }
  }

  if (self->_enrollmentZeroDetectionCompleted)
  {
    v19 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"enrollmentZeroDetectionCompleted"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"enrollmentZeroDetectionCompleted"];
    }
  }

  if (self->_eventMetadata)
  {
    v22 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_sessionSummary)
  {
    v25 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"sessionSummary"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"sessionSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_43;
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v8 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
  v7 = [v4 enrollmentZeroDetectionCompleted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v13 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
  if (v13)
  {
    v14 = v13;
    v15 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
    v16 = [v4 enrollmentZeroDetectionCompleted];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
  v7 = [v4 enrollmentUtteranceCompleted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v18 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
  if (v18)
  {
    v19 = v18;
    v20 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
    v21 = [v4 enrollmentUtteranceCompleted];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
  v7 = [v4 enrollmentUtteranceDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v23 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
  if (v23)
  {
    v24 = v23;
    v25 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
    v26 = [v4 enrollmentUtteranceDetected];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
  v7 = [v4 enrollmentUIStarted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v28 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
  if (v28)
  {
    v29 = v28;
    v30 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
    v31 = [v4 enrollmentUIStarted];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
  v7 = [v4 enrollmentUIUtteranceTrainingAttempted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v33 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
  if (v33)
  {
    v34 = v33;
    v35 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
    v36 = [v4 enrollmentUIUtteranceTrainingAttempted];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
  v7 = [v4 enrollmentUICompleted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v38 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
  if (v38)
  {
    v39 = v38;
    v40 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
    v41 = [v4 enrollmentUICompleted];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
  v7 = [v4 sessionSummary];
  if ((v6 != 0) != (v7 == 0))
  {
    v43 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
    if (!v43)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = v43;
    v45 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
    v46 = [v4 sessionSummary];
    v47 = [v45 isEqual:v46];

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

- (void)writeTo:(id)a3
{
  v21 = a3;
  v4 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];

  if (v6)
  {
    v7 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];

  if (v8)
  {
    v9 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];

  if (v10)
  {
    v11 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];

  if (v12)
  {
    v13 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];

  if (v14)
  {
    v15 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];

  if (v16)
  {
    v17 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];

  v19 = v21;
  if (v18)
  {
    v20 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
    PBDataWriterWriteSubmessage();

    v19 = v21;
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

- (void)setSessionSummary:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = v4;
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

- (void)setEnrollmentUICompleted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUICompleted = self->_enrollmentUICompleted;
  self->_enrollmentUICompleted = v4;
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

- (void)setEnrollmentUIUtteranceTrainingAttempted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUIUtteranceTrainingAttempted = self->_enrollmentUIUtteranceTrainingAttempted;
  self->_enrollmentUIUtteranceTrainingAttempted = v4;
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

- (void)setEnrollmentUIStarted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUIStarted = self->_enrollmentUIStarted;
  self->_enrollmentUIStarted = v4;
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

- (void)setEnrollmentUtteranceDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUtteranceDetected = self->_enrollmentUtteranceDetected;
  self->_enrollmentUtteranceDetected = v4;
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

- (void)setEnrollmentUtteranceCompleted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentUtteranceCompleted = self->_enrollmentUtteranceCompleted;
  self->_enrollmentUtteranceCompleted = v4;
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

- (void)setEnrollmentZeroDetectionCompleted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  enrollmentZeroDetectionCompleted = self->_enrollmentZeroDetectionCompleted;
  self->_enrollmentZeroDetectionCompleted = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 6)
  {
    return @"com.apple.aiml.siri.setup.SIRISETUPClientEvent";
  }

  else
  {
    return off_1E78E2C68[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SIRISETUPSchemaSIRISETUPClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:v4];
  v6 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEventMetadata];
  }

  v9 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentZeroDetectionCompleted];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentZeroDetectionCompleted];
  }

  v12 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceCompleted];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUtteranceCompleted];
  }

  v15 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUtteranceDetected];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUtteranceDetected];
  }

  v18 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIStarted];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUIStarted];
  }

  v21 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUIUtteranceTrainingAttempted];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUIUtteranceTrainingAttempted];
  }

  v24 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self enrollmentUICompleted];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(SIRISETUPSchemaSIRISETUPClientEvent *)self deleteEnrollmentUICompleted];
  }

  v27 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self sessionSummary];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
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
  v2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  v3 = [v2 siriSetupId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 33;
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
  v2 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self eventMetadata];
  v3 = [v2 siriSetupId];

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
  v3 = [(SIRISETUPSchemaSIRISETUPClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB0D8[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E78EB110[a3 - 101];
  }
}

@end