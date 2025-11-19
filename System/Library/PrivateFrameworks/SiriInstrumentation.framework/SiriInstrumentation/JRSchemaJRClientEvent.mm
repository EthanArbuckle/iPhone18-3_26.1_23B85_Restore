@interface JRSchemaJRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (JRSchemaJRClientEvent)initWithDictionary:(id)a3;
- (JRSchemaJRClientEvent)initWithJSON:(id)a3;
- (JRSchemaJRExperimentTriggered)jrExperimentTriggered;
- (JRSchemaJRInferenceContext)jrInferenceContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteJrExperimentTriggered;
- (void)deleteJrInferenceContext;
- (void)setJrExperimentTriggered:(id)a3;
- (void)setJrInferenceContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaJRClientEvent

- (JRSchemaJRClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = JRSchemaJRClientEvent;
  v5 = [(JRSchemaJRClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[JRSchemaJRClientEventMetadata alloc] initWithDictionary:v6];
      [(JRSchemaJRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"jrInferenceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[JRSchemaJRInferenceContext alloc] initWithDictionary:v8];
      [(JRSchemaJRClientEvent *)v5 setJrInferenceContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"jrExperimentTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[JRSchemaJRExperimentTriggered alloc] initWithDictionary:v10];
      [(JRSchemaJRClientEvent *)v5 setJrExperimentTriggered:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (JRSchemaJRClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaJRClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaJRClientEvent *)self dictionaryRepresentation];
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
    v4 = [(JRSchemaJRClientEvent *)self eventMetadata];
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

  if (self->_jrExperimentTriggered)
  {
    v7 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"jrExperimentTriggered"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"jrExperimentTriggered"];
    }
  }

  if (self->_jrInferenceContext)
  {
    v10 = [(JRSchemaJRClientEvent *)self jrInferenceContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"jrInferenceContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"jrInferenceContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(JRSchemaJRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(JRSchemaJRInferenceContext *)self->_jrInferenceContext hash]^ v3;
  return v4 ^ [(JRSchemaJRExperimentTriggered *)self->_jrExperimentTriggered hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_18;
  }

  v6 = [(JRSchemaJRClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(JRSchemaJRClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(JRSchemaJRClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(JRSchemaJRClientEvent *)self jrInferenceContext];
  v7 = [v4 jrInferenceContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(JRSchemaJRClientEvent *)self jrInferenceContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(JRSchemaJRClientEvent *)self jrInferenceContext];
    v16 = [v4 jrInferenceContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
  v7 = [v4 jrExperimentTriggered];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
    v21 = [v4 jrExperimentTriggered];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(JRSchemaJRClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(JRSchemaJRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(JRSchemaJRClientEvent *)self jrInferenceContext];

  if (v6)
  {
    v7 = [(JRSchemaJRClientEvent *)self jrInferenceContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];

  v9 = v11;
  if (v8)
  {
    v10 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteJrExperimentTriggered
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_jrExperimentTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRExperimentTriggered)jrExperimentTriggered
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_jrExperimentTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setJrExperimentTriggered:(id)a3
{
  v4 = a3;
  jrInferenceContext = self->_jrInferenceContext;
  self->_jrInferenceContext = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  jrExperimentTriggered = self->_jrExperimentTriggered;
  self->_jrExperimentTriggered = v4;
}

- (void)deleteJrInferenceContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_jrInferenceContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRInferenceContext)jrInferenceContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_jrInferenceContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setJrInferenceContext:(id)a3
{
  v4 = a3;
  jrExperimentTriggered = self->_jrExperimentTriggered;
  self->_jrExperimentTriggered = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  jrInferenceContext = self->_jrInferenceContext;
  self->_jrInferenceContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(JRSchemaJRClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.jr.JRClientEvent";
  if (v2 == 102)
  {
    v3 = @"com.apple.aiml.siri.jr.JRClientEvent.JRExperimentTriggered";
  }

  if (v2 == 101)
  {
    return @"com.apple.aiml.siri.jr.JRClientEvent.JRInferenceContext";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = JRSchemaJRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaJRClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(JRSchemaJRClientEvent *)self deleteEventMetadata];
  }

  v9 = [(JRSchemaJRClientEvent *)self jrInferenceContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(JRSchemaJRClientEvent *)self deleteJrInferenceContext];
  }

  v12 = [(JRSchemaJRClientEvent *)self jrExperimentTriggered];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(JRSchemaJRClientEvent *)self deleteJrExperimentTriggered];
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
  v2 = [(JRSchemaJRClientEvent *)self eventMetadata];
  v3 = [v2 jrId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 49;
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
  v2 = [(JRSchemaJRClientEvent *)self eventMetadata];
  v3 = [v2 jrId];

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
  v3 = [(JRSchemaJRClientEvent *)self whichEvent_Type];
  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___JRSchemaJRClientEvent__jrInferenceContext;
    goto LABEL_5;
  }

  if (v3 == 102)
  {
    v4 = &OBJC_IVAR___JRSchemaJRClientEvent__jrExperimentTriggered;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  v3 = @"jrExperimentTriggered";
  if (a3 != 102)
  {
    v3 = 0;
  }

  if (a3 == 101)
  {
    return @"jrInferenceContext";
  }

  else
  {
    return v3;
  }
}

@end