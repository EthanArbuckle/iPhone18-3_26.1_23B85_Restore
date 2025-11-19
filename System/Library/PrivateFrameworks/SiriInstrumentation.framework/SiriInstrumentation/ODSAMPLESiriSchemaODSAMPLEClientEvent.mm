@interface ODSAMPLESiriSchemaODSAMPLEClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODSAMPLESiriSchemaODSAMPLEClientEvent)initWithDictionary:(id)a3;
- (ODSAMPLESiriSchemaODSAMPLEClientEvent)initWithJSON:(id)a3;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected)speakerIdModelDeviceSelected;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)speakerIdModelSampleManifestReported;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)speakerIdModelSampleReported;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap)speakerIdSampleToRequestMap;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteSpeakerIdModelDeviceSelected;
- (void)deleteSpeakerIdModelSampleManifestReported;
- (void)deleteSpeakerIdModelSampleReported;
- (void)deleteSpeakerIdSampleToRequestMap;
- (void)setSpeakerIdModelDeviceSelected:(id)a3;
- (void)setSpeakerIdModelSampleManifestReported:(id)a3;
- (void)setSpeakerIdModelSampleReported:(id)a3;
- (void)setSpeakerIdSampleToRequestMap:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODSAMPLESiriSchemaODSAMPLEClientEvent

- (ODSAMPLESiriSchemaODSAMPLEClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ODSAMPLESiriSchemaODSAMPLEClientEvent;
  v5 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODSAMPLESiriSchemaODSAMPLEClientEventMetadata alloc] initWithDictionary:v6];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"speakerIdModelDeviceSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected alloc] initWithDictionary:v8];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setSpeakerIdModelDeviceSelected:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"speakerIdModelSampleReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported alloc] initWithDictionary:v10];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setSpeakerIdModelSampleReported:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"speakerIdModelSampleManifestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported alloc] initWithDictionary:v12];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setSpeakerIdModelSampleManifestReported:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"speakerIdSampleToRequestMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap alloc] initWithDictionary:v14];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setSpeakerIdSampleToRequestMap:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ODSAMPLESiriSchemaODSAMPLEClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self dictionaryRepresentation];
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
    v4 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
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

  if (self->_speakerIdModelDeviceSelected)
  {
    v7 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"speakerIdModelDeviceSelected"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"speakerIdModelDeviceSelected"];
    }
  }

  if (self->_speakerIdModelSampleManifestReported)
  {
    v10 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"speakerIdModelSampleManifestReported"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"speakerIdModelSampleManifestReported"];
    }
  }

  if (self->_speakerIdModelSampleReported)
  {
    v13 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"speakerIdModelSampleReported"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"speakerIdModelSampleReported"];
    }
  }

  if (self->_speakerIdSampleToRequestMap)
  {
    v16 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"speakerIdSampleToRequestMap"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"speakerIdSampleToRequestMap"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected *)self->_speakerIdModelDeviceSelected hash]^ v3;
  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self->_speakerIdModelSampleReported hash];
  v6 = v4 ^ v5 ^ [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self->_speakerIdModelSampleManifestReported hash];
  return v6 ^ [(ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap *)self->_speakerIdSampleToRequestMap hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_28;
  }

  v6 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
  v7 = [v4 speakerIdModelDeviceSelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
  if (v13)
  {
    v14 = v13;
    v15 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
    v16 = [v4 speakerIdModelDeviceSelected];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
  v7 = [v4 speakerIdModelSampleReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
  if (v18)
  {
    v19 = v18;
    v20 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
    v21 = [v4 speakerIdModelSampleReported];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
  v7 = [v4 speakerIdModelSampleManifestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
  if (v23)
  {
    v24 = v23;
    v25 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
    v26 = [v4 speakerIdModelSampleManifestReported];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
  v7 = [v4 speakerIdSampleToRequestMap];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
    v31 = [v4 speakerIdSampleToRequestMap];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];

  if (v6)
  {
    v7 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];

  if (v8)
  {
    v9 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];

  if (v10)
  {
    v11 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];

  v13 = v15;
  if (v12)
  {
    v14 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deleteSpeakerIdSampleToRequestMap
{
  if (self->_whichEvent_Type == 13)
  {
    self->_whichEvent_Type = 0;
    self->_speakerIdSampleToRequestMap = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap)speakerIdSampleToRequestMap
{
  if (self->_whichEvent_Type == 13)
  {
    v3 = self->_speakerIdSampleToRequestMap;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeakerIdSampleToRequestMap:(id)a3
{
  v4 = a3;
  speakerIdModelDeviceSelected = self->_speakerIdModelDeviceSelected;
  self->_speakerIdModelDeviceSelected = 0;

  speakerIdModelSampleReported = self->_speakerIdModelSampleReported;
  self->_speakerIdModelSampleReported = 0;

  speakerIdModelSampleManifestReported = self->_speakerIdModelSampleManifestReported;
  self->_speakerIdModelSampleManifestReported = 0;

  v8 = 13;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  speakerIdSampleToRequestMap = self->_speakerIdSampleToRequestMap;
  self->_speakerIdSampleToRequestMap = v4;
}

- (void)deleteSpeakerIdModelSampleManifestReported
{
  if (self->_whichEvent_Type == 12)
  {
    self->_whichEvent_Type = 0;
    self->_speakerIdModelSampleManifestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)speakerIdModelSampleManifestReported
{
  if (self->_whichEvent_Type == 12)
  {
    v3 = self->_speakerIdModelSampleManifestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeakerIdModelSampleManifestReported:(id)a3
{
  v4 = a3;
  speakerIdModelDeviceSelected = self->_speakerIdModelDeviceSelected;
  self->_speakerIdModelDeviceSelected = 0;

  speakerIdModelSampleReported = self->_speakerIdModelSampleReported;
  self->_speakerIdModelSampleReported = 0;

  speakerIdSampleToRequestMap = self->_speakerIdSampleToRequestMap;
  self->_speakerIdSampleToRequestMap = 0;

  v8 = 12;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  speakerIdModelSampleManifestReported = self->_speakerIdModelSampleManifestReported;
  self->_speakerIdModelSampleManifestReported = v4;
}

- (void)deleteSpeakerIdModelSampleReported
{
  if (self->_whichEvent_Type == 11)
  {
    self->_whichEvent_Type = 0;
    self->_speakerIdModelSampleReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)speakerIdModelSampleReported
{
  if (self->_whichEvent_Type == 11)
  {
    v3 = self->_speakerIdModelSampleReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeakerIdModelSampleReported:(id)a3
{
  v4 = a3;
  speakerIdModelDeviceSelected = self->_speakerIdModelDeviceSelected;
  self->_speakerIdModelDeviceSelected = 0;

  speakerIdModelSampleManifestReported = self->_speakerIdModelSampleManifestReported;
  self->_speakerIdModelSampleManifestReported = 0;

  speakerIdSampleToRequestMap = self->_speakerIdSampleToRequestMap;
  self->_speakerIdSampleToRequestMap = 0;

  v8 = 11;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  speakerIdModelSampleReported = self->_speakerIdModelSampleReported;
  self->_speakerIdModelSampleReported = v4;
}

- (void)deleteSpeakerIdModelDeviceSelected
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_speakerIdModelDeviceSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected)speakerIdModelDeviceSelected
{
  if (self->_whichEvent_Type == 10)
  {
    v3 = self->_speakerIdModelDeviceSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeakerIdModelDeviceSelected:(id)a3
{
  v4 = a3;
  speakerIdModelSampleReported = self->_speakerIdModelSampleReported;
  self->_speakerIdModelSampleReported = 0;

  speakerIdModelSampleManifestReported = self->_speakerIdModelSampleManifestReported;
  self->_speakerIdModelSampleManifestReported = 0;

  speakerIdSampleToRequestMap = self->_speakerIdSampleToRequestMap;
  self->_speakerIdSampleToRequestMap = 0;

  v8 = 10;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  speakerIdModelDeviceSelected = self->_speakerIdModelDeviceSelected;
  self->_speakerIdModelDeviceSelected = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self whichEvent_Type];
  if (v2 - 10 > 3)
  {
    return @"com.apple.aiml.siri.odsample.ODSAMPLEClientEvent";
  }

  else
  {
    return off_1E78DE178[v2 - 10];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ODSAMPLESiriSchemaODSAMPLEClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  if ([v4 isConditionSet:4])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  if ([v4 isConditionSet:5])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  if ([v4 isConditionSet:6])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  if ([v4 isConditionSet:7])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  v6 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
  }

  v12 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
  }

  v15 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
  }

  v18 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self whichEvent_Type];
  if (v3 - 10 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA618[v3 - 10]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 10 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78EA638[a3 - 10];
  }
}

- (int)clockIsolationLevel
{
  if ([(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self whichEvent_Type]- 10 >= 4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end