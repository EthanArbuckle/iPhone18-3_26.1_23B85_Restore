@interface PSESchemaPSEClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PSESchemaPSEAlarmSignalGenerated)alarmSignalGenerated;
- (PSESchemaPSEAppIntentSignalGenerated)appIntentSignalGenerated;
- (PSESchemaPSECallSignalGenerated)callSignalGenerated;
- (PSESchemaPSEClientEvent)initWithDictionary:(id)a3;
- (PSESchemaPSEClientEvent)initWithJSON:(id)a3;
- (PSESchemaPSEGenericSignalGenerated)genericSignalGenerated;
- (PSESchemaPSEHomeFollowupSignalGenerated)homeFollowupSignalGenerated;
- (PSESchemaPSEMapsSignalGenerated)mapsSignalGenerated;
- (PSESchemaPSEMediaSignalGenerated)mediaSignalGenerated;
- (PSESchemaPSEMessageSignalGenerated)messageSignalGenerated;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAlarmSignalGenerated;
- (void)deleteAppIntentSignalGenerated;
- (void)deleteCallSignalGenerated;
- (void)deleteGenericSignalGenerated;
- (void)deleteHomeFollowupSignalGenerated;
- (void)deleteMapsSignalGenerated;
- (void)deleteMediaSignalGenerated;
- (void)deleteMessageSignalGenerated;
- (void)setAlarmSignalGenerated:(id)a3;
- (void)setAppIntentSignalGenerated:(id)a3;
- (void)setCallSignalGenerated:(id)a3;
- (void)setGenericSignalGenerated:(id)a3;
- (void)setHomeFollowupSignalGenerated:(id)a3;
- (void)setMapsSignalGenerated:(id)a3;
- (void)setMediaSignalGenerated:(id)a3;
- (void)setMessageSignalGenerated:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSESchemaPSEClientEvent

- (PSESchemaPSEClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PSESchemaPSEClientEvent;
  v5 = [(PSESchemaPSEClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PSESchemaPSEClientEventMetadata alloc] initWithDictionary:v6];
      [(PSESchemaPSEClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [v4 objectForKeyedSubscript:@"genericSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PSESchemaPSEGenericSignalGenerated alloc] initWithDictionary:v8];
      [(PSESchemaPSEClientEvent *)v5 setGenericSignalGenerated:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"callSignalGenerated", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PSESchemaPSECallSignalGenerated alloc] initWithDictionary:v10];
      [(PSESchemaPSEClientEvent *)v5 setCallSignalGenerated:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"messageSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PSESchemaPSEMessageSignalGenerated alloc] initWithDictionary:v12];
      [(PSESchemaPSEClientEvent *)v5 setMessageSignalGenerated:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"mediaSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PSESchemaPSEMediaSignalGenerated alloc] initWithDictionary:v14];
      [(PSESchemaPSEClientEvent *)v5 setMediaSignalGenerated:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"homeFollowupSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PSESchemaPSEHomeFollowupSignalGenerated alloc] initWithDictionary:v16];
      [(PSESchemaPSEClientEvent *)v5 setHomeFollowupSignalGenerated:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"mapsSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PSESchemaPSEMapsSignalGenerated alloc] initWithDictionary:v18];
      [(PSESchemaPSEClientEvent *)v5 setMapsSignalGenerated:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"alarmSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PSESchemaPSEAlarmSignalGenerated alloc] initWithDictionary:v20];
      [(PSESchemaPSEClientEvent *)v5 setAlarmSignalGenerated:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"appIntentSignalGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PSESchemaPSEAppIntentSignalGenerated alloc] initWithDictionary:v22];
      [(PSESchemaPSEClientEvent *)v5 setAppIntentSignalGenerated:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (PSESchemaPSEClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PSESchemaPSEClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PSESchemaPSEClientEvent *)self dictionaryRepresentation];
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
  if (self->_alarmSignalGenerated)
  {
    v4 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"alarmSignalGenerated"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"alarmSignalGenerated"];
    }
  }

  if (self->_appIntentSignalGenerated)
  {
    v7 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"appIntentSignalGenerated"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"appIntentSignalGenerated"];
    }
  }

  if (self->_callSignalGenerated)
  {
    v10 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"callSignalGenerated"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"callSignalGenerated"];
    }
  }

  if (self->_eventMetadata)
  {
    v13 = [(PSESchemaPSEClientEvent *)self eventMetadata];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_genericSignalGenerated)
  {
    v16 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"genericSignalGenerated"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"genericSignalGenerated"];
    }
  }

  if (self->_homeFollowupSignalGenerated)
  {
    v19 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"homeFollowupSignalGenerated"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"homeFollowupSignalGenerated"];
    }
  }

  if (self->_mapsSignalGenerated)
  {
    v22 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"mapsSignalGenerated"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"mapsSignalGenerated"];
    }
  }

  if (self->_mediaSignalGenerated)
  {
    v25 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"mediaSignalGenerated"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"mediaSignalGenerated"];
    }
  }

  if (self->_messageSignalGenerated)
  {
    v28 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"messageSignalGenerated"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"messageSignalGenerated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PSESchemaPSEClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(PSESchemaPSEGenericSignalGenerated *)self->_genericSignalGenerated hash]^ v3;
  v5 = [(PSESchemaPSECallSignalGenerated *)self->_callSignalGenerated hash];
  v6 = v4 ^ v5 ^ [(PSESchemaPSEMessageSignalGenerated *)self->_messageSignalGenerated hash];
  v7 = [(PSESchemaPSEMediaSignalGenerated *)self->_mediaSignalGenerated hash];
  v8 = v7 ^ [(PSESchemaPSEHomeFollowupSignalGenerated *)self->_homeFollowupSignalGenerated hash];
  v9 = v6 ^ v8 ^ [(PSESchemaPSEMapsSignalGenerated *)self->_mapsSignalGenerated hash];
  v10 = [(PSESchemaPSEAlarmSignalGenerated *)self->_alarmSignalGenerated hash];
  return v9 ^ v10 ^ [(PSESchemaPSEAppIntentSignalGenerated *)self->_appIntentSignalGenerated hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_48;
  }

  v6 = [(PSESchemaPSEClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v8 = [(PSESchemaPSEClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(PSESchemaPSEClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
  v7 = [v4 genericSignalGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v13 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
  if (v13)
  {
    v14 = v13;
    v15 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
    v16 = [v4 genericSignalGenerated];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
  v7 = [v4 callSignalGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v18 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
  if (v18)
  {
    v19 = v18;
    v20 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
    v21 = [v4 callSignalGenerated];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
  v7 = [v4 messageSignalGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v23 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
  if (v23)
  {
    v24 = v23;
    v25 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
    v26 = [v4 messageSignalGenerated];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
  v7 = [v4 mediaSignalGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v28 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
  if (v28)
  {
    v29 = v28;
    v30 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
    v31 = [v4 mediaSignalGenerated];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
  v7 = [v4 homeFollowupSignalGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v33 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
  if (v33)
  {
    v34 = v33;
    v35 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
    v36 = [v4 homeFollowupSignalGenerated];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
  v7 = [v4 mapsSignalGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v38 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
  if (v38)
  {
    v39 = v38;
    v40 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
    v41 = [v4 mapsSignalGenerated];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
  v7 = [v4 alarmSignalGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v43 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
  if (v43)
  {
    v44 = v43;
    v45 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
    v46 = [v4 alarmSignalGenerated];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
  v7 = [v4 appIntentSignalGenerated];
  if ((v6 != 0) != (v7 == 0))
  {
    v48 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
    if (!v48)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = v48;
    v50 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
    v51 = [v4 appIntentSignalGenerated];
    v52 = [v50 isEqual:v51];

    if (v52)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_47:
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(PSESchemaPSEClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(PSESchemaPSEClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];

  if (v6)
  {
    v7 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];

  if (v8)
  {
    v9 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];

  if (v10)
  {
    v11 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];

  if (v12)
  {
    v13 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];

  if (v14)
  {
    v15 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];

  if (v16)
  {
    v17 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];

  if (v18)
  {
    v19 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];

  v21 = v23;
  if (v20)
  {
    v22 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
    PBDataWriterWriteSubmessage();

    v21 = v23;
  }
}

- (void)deleteAppIntentSignalGenerated
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_appIntentSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEAppIntentSignalGenerated)appIntentSignalGenerated
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_appIntentSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppIntentSignalGenerated:(id)a3
{
  v4 = a3;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  v12 = 108;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = v4;
}

- (void)deleteAlarmSignalGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_alarmSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEAlarmSignalGenerated)alarmSignalGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_alarmSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAlarmSignalGenerated:(id)a3
{
  v4 = a3;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 107;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = v4;
}

- (void)deleteMapsSignalGenerated
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_mapsSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEMapsSignalGenerated)mapsSignalGenerated
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_mapsSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMapsSignalGenerated:(id)a3
{
  v4 = a3;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 106;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = v4;
}

- (void)deleteHomeFollowupSignalGenerated
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_homeFollowupSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEHomeFollowupSignalGenerated)homeFollowupSignalGenerated
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_homeFollowupSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHomeFollowupSignalGenerated:(id)a3
{
  v4 = a3;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 105;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = v4;
}

- (void)deleteMediaSignalGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_mediaSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEMediaSignalGenerated)mediaSignalGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_mediaSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMediaSignalGenerated:(id)a3
{
  v4 = a3;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 104;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = v4;
}

- (void)deleteMessageSignalGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_messageSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEMessageSignalGenerated)messageSignalGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_messageSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMessageSignalGenerated:(id)a3
{
  v4 = a3;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 103;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = v4;
}

- (void)deleteCallSignalGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_callSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSECallSignalGenerated)callSignalGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_callSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCallSignalGenerated:(id)a3
{
  v4 = a3;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 102;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = v4;
}

- (void)deleteGenericSignalGenerated
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_genericSignalGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PSESchemaPSEGenericSignalGenerated)genericSignalGenerated
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_genericSignalGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGenericSignalGenerated:(id)a3
{
  v4 = a3;
  callSignalGenerated = self->_callSignalGenerated;
  self->_callSignalGenerated = 0;

  messageSignalGenerated = self->_messageSignalGenerated;
  self->_messageSignalGenerated = 0;

  mediaSignalGenerated = self->_mediaSignalGenerated;
  self->_mediaSignalGenerated = 0;

  homeFollowupSignalGenerated = self->_homeFollowupSignalGenerated;
  self->_homeFollowupSignalGenerated = 0;

  mapsSignalGenerated = self->_mapsSignalGenerated;
  self->_mapsSignalGenerated = 0;

  alarmSignalGenerated = self->_alarmSignalGenerated;
  self->_alarmSignalGenerated = 0;

  appIntentSignalGenerated = self->_appIntentSignalGenerated;
  self->_appIntentSignalGenerated = 0;

  v12 = 101;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  genericSignalGenerated = self->_genericSignalGenerated;
  self->_genericSignalGenerated = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(PSESchemaPSEClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 7)
  {
    return @"com.apple.aiml.engagement.pse.PSEClientEvent";
  }

  else
  {
    return off_1E78E1360[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PSESchemaPSEClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:v4];
  v6 = [(PSESchemaPSEClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PSESchemaPSEClientEvent *)self deleteEventMetadata];
  }

  v9 = [(PSESchemaPSEClientEvent *)self genericSignalGenerated];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PSESchemaPSEClientEvent *)self deleteGenericSignalGenerated];
  }

  v12 = [(PSESchemaPSEClientEvent *)self callSignalGenerated];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PSESchemaPSEClientEvent *)self deleteCallSignalGenerated];
  }

  v15 = [(PSESchemaPSEClientEvent *)self messageSignalGenerated];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PSESchemaPSEClientEvent *)self deleteMessageSignalGenerated];
  }

  v18 = [(PSESchemaPSEClientEvent *)self mediaSignalGenerated];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PSESchemaPSEClientEvent *)self deleteMediaSignalGenerated];
  }

  v21 = [(PSESchemaPSEClientEvent *)self homeFollowupSignalGenerated];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PSESchemaPSEClientEvent *)self deleteHomeFollowupSignalGenerated];
  }

  v24 = [(PSESchemaPSEClientEvent *)self mapsSignalGenerated];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PSESchemaPSEClientEvent *)self deleteMapsSignalGenerated];
  }

  v27 = [(PSESchemaPSEClientEvent *)self alarmSignalGenerated];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PSESchemaPSEClientEvent *)self deleteAlarmSignalGenerated];
  }

  v30 = [(PSESchemaPSEClientEvent *)self appIntentSignalGenerated];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PSESchemaPSEClientEvent *)self deleteAppIntentSignalGenerated];
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
  v2 = [(PSESchemaPSEClientEvent *)self eventMetadata];
  v3 = [v2 originalLastRequestId];

  if (v3 && ([v3 value], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v3 value];
    v7 = [v6 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getComponentId
{
  v2 = [(PSESchemaPSEClientEvent *)self eventMetadata];
  v3 = [v2 originalLastRequestId];

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
  v3 = [(PSESchemaPSEClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAD38[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78EAD78[a3 - 101];
  }
}

- (int)clockIsolationLevel
{
  if ([(PSESchemaPSEClientEvent *)self whichEvent_Type]- 101 >= 8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end