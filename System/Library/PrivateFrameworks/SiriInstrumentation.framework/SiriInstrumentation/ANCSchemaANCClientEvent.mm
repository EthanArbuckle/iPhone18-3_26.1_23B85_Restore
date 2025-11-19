@interface ANCSchemaANCClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (ANCSchemaANCClientEvent)initWithDictionary:(id)a3;
- (ANCSchemaANCClientEvent)initWithJSON:(id)a3;
- (ANCSchemaANCNotificationReceived)notificationReceived;
- (ANCSchemaANCNotificationReceivedTier1)notificationReceivedTier1;
- (ANCSchemaANCUserResponseEvaluated)userResponseEvaluated;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteNotificationReceived;
- (void)deleteNotificationReceivedTier1;
- (void)deleteUserResponseEvaluated;
- (void)setNotificationReceived:(id)a3;
- (void)setNotificationReceivedTier1:(id)a3;
- (void)setUserResponseEvaluated:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ANCSchemaANCClientEvent

- (ANCSchemaANCClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ANCSchemaANCClientEvent;
  v5 = [(ANCSchemaANCClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ANCSchemaANCClientEventMetadata alloc] initWithDictionary:v6];
      [(ANCSchemaANCClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"notificationReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ANCSchemaANCNotificationReceived alloc] initWithDictionary:v8];
      [(ANCSchemaANCClientEvent *)v5 setNotificationReceived:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"userResponseEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ANCSchemaANCUserResponseEvaluated alloc] initWithDictionary:v10];
      [(ANCSchemaANCClientEvent *)v5 setUserResponseEvaluated:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"notificationReceivedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ANCSchemaANCNotificationReceivedTier1 alloc] initWithDictionary:v12];
      [(ANCSchemaANCClientEvent *)v5 setNotificationReceivedTier1:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ANCSchemaANCClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ANCSchemaANCClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ANCSchemaANCClientEvent *)self dictionaryRepresentation];
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
    v4 = [(ANCSchemaANCClientEvent *)self eventMetadata];
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

  if (self->_notificationReceived)
  {
    v7 = [(ANCSchemaANCClientEvent *)self notificationReceived];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"notificationReceived"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"notificationReceived"];
    }
  }

  if (self->_notificationReceivedTier1)
  {
    v10 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"notificationReceivedTier1"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"notificationReceivedTier1"];
    }
  }

  if (self->_userResponseEvaluated)
  {
    v13 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"userResponseEvaluated"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"userResponseEvaluated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ANCSchemaANCClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ANCSchemaANCNotificationReceived *)self->_notificationReceived hash]^ v3;
  v5 = [(ANCSchemaANCUserResponseEvaluated *)self->_userResponseEvaluated hash];
  return v4 ^ v5 ^ [(ANCSchemaANCNotificationReceivedTier1 *)self->_notificationReceivedTier1 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_23;
  }

  v6 = [(ANCSchemaANCClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(ANCSchemaANCClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ANCSchemaANCClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(ANCSchemaANCClientEvent *)self notificationReceived];
  v7 = [v4 notificationReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(ANCSchemaANCClientEvent *)self notificationReceived];
  if (v13)
  {
    v14 = v13;
    v15 = [(ANCSchemaANCClientEvent *)self notificationReceived];
    v16 = [v4 notificationReceived];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
  v7 = [v4 userResponseEvaluated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
  if (v18)
  {
    v19 = v18;
    v20 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
    v21 = [v4 userResponseEvaluated];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
  v7 = [v4 notificationReceivedTier1];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
    v26 = [v4 notificationReceivedTier1];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(ANCSchemaANCClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ANCSchemaANCClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ANCSchemaANCClientEvent *)self notificationReceived];

  if (v6)
  {
    v7 = [(ANCSchemaANCClientEvent *)self notificationReceived];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];

  if (v8)
  {
    v9 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];

  v11 = v13;
  if (v10)
  {
    v12 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteNotificationReceivedTier1
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_notificationReceivedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCNotificationReceivedTier1)notificationReceivedTier1
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_notificationReceivedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNotificationReceivedTier1:(id)a3
{
  v4 = a3;
  notificationReceived = self->_notificationReceived;
  self->_notificationReceived = 0;

  userResponseEvaluated = self->_userResponseEvaluated;
  self->_userResponseEvaluated = 0;

  self->_whichEvent_Type = 4 * (v4 != 0);
  notificationReceivedTier1 = self->_notificationReceivedTier1;
  self->_notificationReceivedTier1 = v4;
}

- (void)deleteUserResponseEvaluated
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_userResponseEvaluated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCUserResponseEvaluated)userResponseEvaluated
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_userResponseEvaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserResponseEvaluated:(id)a3
{
  v4 = a3;
  notificationReceived = self->_notificationReceived;
  self->_notificationReceived = 0;

  notificationReceivedTier1 = self->_notificationReceivedTier1;
  self->_notificationReceivedTier1 = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  userResponseEvaluated = self->_userResponseEvaluated;
  self->_userResponseEvaluated = v4;
}

- (void)deleteNotificationReceived
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_notificationReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCNotificationReceived)notificationReceived
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_notificationReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNotificationReceived:(id)a3
{
  v4 = a3;
  userResponseEvaluated = self->_userResponseEvaluated;
  self->_userResponseEvaluated = 0;

  notificationReceivedTier1 = self->_notificationReceivedTier1;
  self->_notificationReceivedTier1 = 0;

  self->_whichEvent_Type = 2 * (v4 != 0);
  notificationReceived = self->_notificationReceived;
  self->_notificationReceived = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(ANCSchemaANCClientEvent *)self whichEvent_Type];
  if (v2 - 2 > 2)
  {
    return @"com.apple.aiml.siri.anc.ANCClientEvent";
  }

  else
  {
    return off_1E78D1650[v2 - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ANCSchemaANCClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
  }

  v6 = [(ANCSchemaANCClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ANCSchemaANCClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ANCSchemaANCClientEvent *)self notificationReceived];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceived];
  }

  v12 = [(ANCSchemaANCClientEvent *)self userResponseEvaluated];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ANCSchemaANCClientEvent *)self deleteUserResponseEvaluated];
  }

  v15 = [(ANCSchemaANCClientEvent *)self notificationReceivedTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ANCSchemaANCClientEvent *)self deleteNotificationReceivedTier1];
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
  v3 = [(ANCSchemaANCClientEvent *)self eventMetadata];
  v4 = [v3 ancId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 12;
  }

  else
  {
    v10 = [(ANCSchemaANCClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11)
    {
      v12 = [v11 value];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 value];
        v9 = [v14 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      v4 = v11;
    }

    else
    {
      v9 = 0;
      v4 = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(ANCSchemaANCClientEvent *)self eventMetadata];
  v4 = [v3 ancId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = [(ANCSchemaANCClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v10 value];
    v13 = [v12 length];

    if (v13)
    {
      v4 = v10;
LABEL_8:
      v11 = v4;
      v10 = v11;
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(ANCSchemaANCClientEvent *)self whichEvent_Type];
  if (v3 - 2 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E8CD0[v3 - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78E8CE8[a3 - 2];
  }
}

@end