@interface HOMESchemaHOMEClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HOMESchemaHOMEAssistantDeviceBirthday)assistantDeviceBirthday;
- (HOMESchemaHOMEAssistantInfoReported)assistantInfoReported;
- (HOMESchemaHOMEClientEvent)initWithDictionary:(id)a3;
- (HOMESchemaHOMEClientEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAssistantDeviceBirthday;
- (void)deleteAssistantInfoReported;
- (void)setAssistantDeviceBirthday:(id)a3;
- (void)setAssistantInfoReported:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HOMESchemaHOMEClientEvent

- (HOMESchemaHOMEClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HOMESchemaHOMEClientEvent;
  v5 = [(HOMESchemaHOMEClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[HOMESchemaHOMEClientEventMetadata alloc] initWithDictionary:v6];
      [(HOMESchemaHOMEClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assistantInfoReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[HOMESchemaHOMEAssistantInfoReported alloc] initWithDictionary:v8];
      [(HOMESchemaHOMEClientEvent *)v5 setAssistantInfoReported:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"assistantDeviceBirthday"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[HOMESchemaHOMEAssistantDeviceBirthday alloc] initWithDictionary:v10];
      [(HOMESchemaHOMEClientEvent *)v5 setAssistantDeviceBirthday:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (HOMESchemaHOMEClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HOMESchemaHOMEClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HOMESchemaHOMEClientEvent *)self dictionaryRepresentation];
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
  if (self->_assistantDeviceBirthday)
  {
    v4 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"assistantDeviceBirthday"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"assistantDeviceBirthday"];
    }
  }

  if (self->_assistantInfoReported)
  {
    v7 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"assistantInfoReported"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"assistantInfoReported"];
    }
  }

  if (self->_eventMetadata)
  {
    v10 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"eventMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(HOMESchemaHOMEClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(HOMESchemaHOMEAssistantInfoReported *)self->_assistantInfoReported hash]^ v3;
  return v4 ^ [(HOMESchemaHOMEAssistantDeviceBirthday *)self->_assistantDeviceBirthday hash];
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

  v6 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
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

  v6 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
  v7 = [v4 assistantInfoReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
  if (v13)
  {
    v14 = v13;
    v15 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
    v16 = [v4 assistantInfoReported];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
  v7 = [v4 assistantDeviceBirthday];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
    v21 = [v4 assistantDeviceBirthday];
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
  v4 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];

  if (v6)
  {
    v7 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];

  v9 = v11;
  if (v8)
  {
    v10 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteAssistantDeviceBirthday
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDeviceBirthday = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HOMESchemaHOMEAssistantDeviceBirthday)assistantDeviceBirthday
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_assistantDeviceBirthday;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistantDeviceBirthday:(id)a3
{
  v4 = a3;
  assistantInfoReported = self->_assistantInfoReported;
  self->_assistantInfoReported = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  assistantDeviceBirthday = self->_assistantDeviceBirthday;
  self->_assistantDeviceBirthday = v4;
}

- (void)deleteAssistantInfoReported
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_assistantInfoReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HOMESchemaHOMEAssistantInfoReported)assistantInfoReported
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_assistantInfoReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistantInfoReported:(id)a3
{
  v4 = a3;
  assistantDeviceBirthday = self->_assistantDeviceBirthday;
  self->_assistantDeviceBirthday = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  assistantInfoReported = self->_assistantInfoReported;
  self->_assistantInfoReported = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(HOMESchemaHOMEClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.home.HOMEClientEvent";
  if (v2 == 102)
  {
    v3 = @"com.apple.aiml.siri.home.HOMEClientEvent.HOMEAssistantDeviceBirthday";
  }

  if (v2 == 101)
  {
    return @"com.apple.aiml.siri.home.HOMEClientEvent.HOMEAssistantInfoReported";
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
  v16.super_class = HOMESchemaHOMEClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(HOMESchemaHOMEClientEvent *)self deleteEventMetadata];
  }

  v9 = [(HOMESchemaHOMEClientEvent *)self assistantInfoReported];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(HOMESchemaHOMEClientEvent *)self deleteAssistantInfoReported];
  }

  v12 = [(HOMESchemaHOMEClientEvent *)self assistantDeviceBirthday];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(HOMESchemaHOMEClientEvent *)self deleteAssistantDeviceBirthday];
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
  v2 = [(HOMESchemaHOMEClientEvent *)self eventMetadata];
  v3 = [v2 homeComponentId];

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
  v3 = [(HOMESchemaHOMEClientEvent *)self whichEvent_Type];
  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___HOMESchemaHOMEClientEvent__assistantInfoReported;
    goto LABEL_5;
  }

  if (v3 == 102)
  {
    v4 = &OBJC_IVAR___HOMESchemaHOMEClientEvent__assistantDeviceBirthday;
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
  v3 = @"assistantDeviceBirthday";
  if (a3 != 102)
  {
    v3 = 0;
  }

  if (a3 == 101)
  {
    return @"assistantInfoReported";
  }

  else
  {
    return v3;
  }
}

@end