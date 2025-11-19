@interface HomeKitSchemaHKClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HomeKitSchemaHKAccessoryOperationReported)homeKitAccessoryOperationReported;
- (HomeKitSchemaHKAudioTopologyReported)audioTopologyReported;
- (HomeKitSchemaHKClientEvent)initWithDictionary:(id)a3;
- (HomeKitSchemaHKClientEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAudioTopologyReported;
- (void)deleteHomeKitAccessoryOperationReported;
- (void)setAudioTopologyReported:(id)a3;
- (void)setHomeKitAccessoryOperationReported:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HomeKitSchemaHKClientEvent

- (HomeKitSchemaHKClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HomeKitSchemaHKClientEvent;
  v5 = [(HomeKitSchemaHKClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[HomeKitSchemaHomeKitEventMetadata alloc] initWithDictionary:v6];
      [(HomeKitSchemaHKClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"homeKitAccessoryOperationReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[HomeKitSchemaHKAccessoryOperationReported alloc] initWithDictionary:v8];
      [(HomeKitSchemaHKClientEvent *)v5 setHomeKitAccessoryOperationReported:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"audioTopologyReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[HomeKitSchemaHKAudioTopologyReported alloc] initWithDictionary:v10];
      [(HomeKitSchemaHKClientEvent *)v5 setAudioTopologyReported:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (HomeKitSchemaHKClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HomeKitSchemaHKClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HomeKitSchemaHKClientEvent *)self dictionaryRepresentation];
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
  if (self->_audioTopologyReported)
  {
    v4 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"audioTopologyReported"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"audioTopologyReported"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_homeKitAccessoryOperationReported)
  {
    v10 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"homeKitAccessoryOperationReported"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"homeKitAccessoryOperationReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(HomeKitSchemaHomeKitEventMetadata *)self->_eventMetadata hash];
  v4 = [(HomeKitSchemaHKAccessoryOperationReported *)self->_homeKitAccessoryOperationReported hash]^ v3;
  return v4 ^ [(HomeKitSchemaHKAudioTopologyReported *)self->_audioTopologyReported hash];
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

  v6 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
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

  v6 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
  v7 = [v4 homeKitAccessoryOperationReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
  if (v13)
  {
    v14 = v13;
    v15 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
    v16 = [v4 homeKitAccessoryOperationReported];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
  v7 = [v4 audioTopologyReported];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
    v21 = [v4 audioTopologyReported];
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
  v4 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];

  if (v6)
  {
    v7 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];

  v9 = v11;
  if (v8)
  {
    v10 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteAudioTopologyReported
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_audioTopologyReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HomeKitSchemaHKAudioTopologyReported)audioTopologyReported
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_audioTopologyReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioTopologyReported:(id)a3
{
  v4 = a3;
  homeKitAccessoryOperationReported = self->_homeKitAccessoryOperationReported;
  self->_homeKitAccessoryOperationReported = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = v4;
}

- (void)deleteHomeKitAccessoryOperationReported
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_homeKitAccessoryOperationReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (HomeKitSchemaHKAccessoryOperationReported)homeKitAccessoryOperationReported
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_homeKitAccessoryOperationReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHomeKitAccessoryOperationReported:(id)a3
{
  v4 = a3;
  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  v6 = 100;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  homeKitAccessoryOperationReported = self->_homeKitAccessoryOperationReported;
  self->_homeKitAccessoryOperationReported = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(HomeKitSchemaHKClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.homekit.HKClientEvent";
  if (v2 == 101)
  {
    v3 = @"com.apple.aiml.siri.homekit.HKClientEvent.HKAudioTopologyReported";
  }

  if (v2 == 100)
  {
    return @"com.apple.aiml.siri.homekit.HKClientEvent.HKAccessoryOperationReported";
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
  v16.super_class = HomeKitSchemaHKClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(HomeKitSchemaHKClientEvent *)self deleteEventMetadata];
  }

  v9 = [(HomeKitSchemaHKClientEvent *)self homeKitAccessoryOperationReported];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(HomeKitSchemaHKClientEvent *)self deleteHomeKitAccessoryOperationReported];
  }

  v12 = [(HomeKitSchemaHKClientEvent *)self audioTopologyReported];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(HomeKitSchemaHKClientEvent *)self deleteAudioTopologyReported];
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
  v2 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  v3 = [v2 hkId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 39;
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
  v2 = [(HomeKitSchemaHKClientEvent *)self eventMetadata];
  v3 = [v2 hkId];

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
  v3 = [(HomeKitSchemaHKClientEvent *)self whichEvent_Type];
  if (v3 == 100)
  {
    v4 = &OBJC_IVAR___HomeKitSchemaHKClientEvent__homeKitAccessoryOperationReported;
    goto LABEL_5;
  }

  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___HomeKitSchemaHKClientEvent__audioTopologyReported;
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
  v3 = @"audioTopologyReported";
  if (a3 != 101)
  {
    v3 = 0;
  }

  if (a3 == 100)
  {
    return @"homeKitAccessoryOperationReported";
  }

  else
  {
    return v3;
  }
}

@end