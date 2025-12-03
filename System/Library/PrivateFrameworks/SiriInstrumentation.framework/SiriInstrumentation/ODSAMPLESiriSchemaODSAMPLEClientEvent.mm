@interface ODSAMPLESiriSchemaODSAMPLEClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODSAMPLESiriSchemaODSAMPLEClientEvent)initWithDictionary:(id)dictionary;
- (ODSAMPLESiriSchemaODSAMPLEClientEvent)initWithJSON:(id)n;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected)speakerIdModelDeviceSelected;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported)speakerIdModelSampleManifestReported;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)speakerIdModelSampleReported;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap)speakerIdSampleToRequestMap;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteSpeakerIdModelDeviceSelected;
- (void)deleteSpeakerIdModelSampleManifestReported;
- (void)deleteSpeakerIdModelSampleReported;
- (void)deleteSpeakerIdSampleToRequestMap;
- (void)setSpeakerIdModelDeviceSelected:(id)selected;
- (void)setSpeakerIdModelSampleManifestReported:(id)reported;
- (void)setSpeakerIdModelSampleReported:(id)reported;
- (void)setSpeakerIdSampleToRequestMap:(id)map;
- (void)writeTo:(id)to;
@end

@implementation ODSAMPLESiriSchemaODSAMPLEClientEvent

- (ODSAMPLESiriSchemaODSAMPLEClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ODSAMPLESiriSchemaODSAMPLEClientEvent;
  v5 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODSAMPLESiriSchemaODSAMPLEClientEventMetadata alloc] initWithDictionary:v6];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdModelDeviceSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected alloc] initWithDictionary:v8];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setSpeakerIdModelDeviceSelected:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdModelSampleReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported alloc] initWithDictionary:v10];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setSpeakerIdModelSampleReported:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdModelSampleManifestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported alloc] initWithDictionary:v12];
      [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)v5 setSpeakerIdModelSampleManifestReported:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdSampleToRequestMap"];
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

- (ODSAMPLESiriSchemaODSAMPLEClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
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

  if (self->_speakerIdModelDeviceSelected)
  {
    speakerIdModelDeviceSelected = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
    dictionaryRepresentation2 = [speakerIdModelDeviceSelected dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"speakerIdModelDeviceSelected"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"speakerIdModelDeviceSelected"];
    }
  }

  if (self->_speakerIdModelSampleManifestReported)
  {
    speakerIdModelSampleManifestReported = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
    dictionaryRepresentation3 = [speakerIdModelSampleManifestReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"speakerIdModelSampleManifestReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"speakerIdModelSampleManifestReported"];
    }
  }

  if (self->_speakerIdModelSampleReported)
  {
    speakerIdModelSampleReported = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
    dictionaryRepresentation4 = [speakerIdModelSampleReported dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"speakerIdModelSampleReported"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"speakerIdModelSampleReported"];
    }
  }

  if (self->_speakerIdSampleToRequestMap)
  {
    speakerIdSampleToRequestMap = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
    dictionaryRepresentation5 = [speakerIdSampleToRequestMap dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"speakerIdSampleToRequestMap"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"speakerIdSampleToRequestMap"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODSAMPLESiriSchemaODSAMPLEClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected *)self->_speakerIdModelDeviceSelected hash]^ v3;
  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self->_speakerIdModelSampleReported hash];
  v6 = v4 ^ v5 ^ [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported *)self->_speakerIdModelSampleManifestReported hash];
  return v6 ^ [(ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap *)self->_speakerIdSampleToRequestMap hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_28;
  }

  eventMetadata = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  eventMetadata3 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
  eventMetadata2 = [equalCopy speakerIdModelDeviceSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  speakerIdModelDeviceSelected = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
  if (speakerIdModelDeviceSelected)
  {
    v14 = speakerIdModelDeviceSelected;
    speakerIdModelDeviceSelected2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
    speakerIdModelDeviceSelected3 = [equalCopy speakerIdModelDeviceSelected];
    v17 = [speakerIdModelDeviceSelected2 isEqual:speakerIdModelDeviceSelected3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
  eventMetadata2 = [equalCopy speakerIdModelSampleReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  speakerIdModelSampleReported = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
  if (speakerIdModelSampleReported)
  {
    v19 = speakerIdModelSampleReported;
    speakerIdModelSampleReported2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
    speakerIdModelSampleReported3 = [equalCopy speakerIdModelSampleReported];
    v22 = [speakerIdModelSampleReported2 isEqual:speakerIdModelSampleReported3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
  eventMetadata2 = [equalCopy speakerIdModelSampleManifestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  speakerIdModelSampleManifestReported = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
  if (speakerIdModelSampleManifestReported)
  {
    v24 = speakerIdModelSampleManifestReported;
    speakerIdModelSampleManifestReported2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
    speakerIdModelSampleManifestReported3 = [equalCopy speakerIdModelSampleManifestReported];
    v27 = [speakerIdModelSampleManifestReported2 isEqual:speakerIdModelSampleManifestReported3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
  eventMetadata2 = [equalCopy speakerIdSampleToRequestMap];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    speakerIdSampleToRequestMap = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
    if (!speakerIdSampleToRequestMap)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = speakerIdSampleToRequestMap;
    speakerIdSampleToRequestMap2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
    speakerIdSampleToRequestMap3 = [equalCopy speakerIdSampleToRequestMap];
    v32 = [speakerIdSampleToRequestMap2 isEqual:speakerIdSampleToRequestMap3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  speakerIdModelDeviceSelected = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];

  if (speakerIdModelDeviceSelected)
  {
    speakerIdModelDeviceSelected2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
    PBDataWriterWriteSubmessage();
  }

  speakerIdModelSampleReported = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];

  if (speakerIdModelSampleReported)
  {
    speakerIdModelSampleReported2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
    PBDataWriterWriteSubmessage();
  }

  speakerIdModelSampleManifestReported = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];

  if (speakerIdModelSampleManifestReported)
  {
    speakerIdModelSampleManifestReported2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
    PBDataWriterWriteSubmessage();
  }

  speakerIdSampleToRequestMap = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];

  v13 = toCopy;
  if (speakerIdSampleToRequestMap)
  {
    speakerIdSampleToRequestMap2 = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
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

- (void)setSpeakerIdSampleToRequestMap:(id)map
{
  mapCopy = map;
  speakerIdModelDeviceSelected = self->_speakerIdModelDeviceSelected;
  self->_speakerIdModelDeviceSelected = 0;

  speakerIdModelSampleReported = self->_speakerIdModelSampleReported;
  self->_speakerIdModelSampleReported = 0;

  speakerIdModelSampleManifestReported = self->_speakerIdModelSampleManifestReported;
  self->_speakerIdModelSampleManifestReported = 0;

  v8 = 13;
  if (!mapCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  speakerIdSampleToRequestMap = self->_speakerIdSampleToRequestMap;
  self->_speakerIdSampleToRequestMap = mapCopy;
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

- (void)setSpeakerIdModelSampleManifestReported:(id)reported
{
  reportedCopy = reported;
  speakerIdModelDeviceSelected = self->_speakerIdModelDeviceSelected;
  self->_speakerIdModelDeviceSelected = 0;

  speakerIdModelSampleReported = self->_speakerIdModelSampleReported;
  self->_speakerIdModelSampleReported = 0;

  speakerIdSampleToRequestMap = self->_speakerIdSampleToRequestMap;
  self->_speakerIdSampleToRequestMap = 0;

  v8 = 12;
  if (!reportedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  speakerIdModelSampleManifestReported = self->_speakerIdModelSampleManifestReported;
  self->_speakerIdModelSampleManifestReported = reportedCopy;
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

- (void)setSpeakerIdModelSampleReported:(id)reported
{
  reportedCopy = reported;
  speakerIdModelDeviceSelected = self->_speakerIdModelDeviceSelected;
  self->_speakerIdModelDeviceSelected = 0;

  speakerIdModelSampleManifestReported = self->_speakerIdModelSampleManifestReported;
  self->_speakerIdModelSampleManifestReported = 0;

  speakerIdSampleToRequestMap = self->_speakerIdSampleToRequestMap;
  self->_speakerIdSampleToRequestMap = 0;

  v8 = 11;
  if (!reportedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  speakerIdModelSampleReported = self->_speakerIdModelSampleReported;
  self->_speakerIdModelSampleReported = reportedCopy;
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

- (void)setSpeakerIdModelDeviceSelected:(id)selected
{
  selectedCopy = selected;
  speakerIdModelSampleReported = self->_speakerIdModelSampleReported;
  self->_speakerIdModelSampleReported = 0;

  speakerIdModelSampleManifestReported = self->_speakerIdModelSampleManifestReported;
  self->_speakerIdModelSampleManifestReported = 0;

  speakerIdSampleToRequestMap = self->_speakerIdSampleToRequestMap;
  self->_speakerIdSampleToRequestMap = 0;

  v8 = 10;
  if (!selectedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  speakerIdModelDeviceSelected = self->_speakerIdModelDeviceSelected;
  self->_speakerIdModelDeviceSelected = selectedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 10 > 3)
  {
    return @"com.apple.aiml.siri.odsample.ODSAMPLEClientEvent";
  }

  else
  {
    return off_1E78DE178[whichEvent_Type - 10];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = ODSAMPLESiriSchemaODSAMPLEClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdSampleToRequestMap];
  }

  eventMetadata = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteEventMetadata];
  }

  speakerIdModelDeviceSelected = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelDeviceSelected];
  v10 = [speakerIdModelDeviceSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelDeviceSelected];
  }

  speakerIdModelSampleReported = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleReported];
  v13 = [speakerIdModelSampleReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleReported];
  }

  speakerIdModelSampleManifestReported = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdModelSampleManifestReported];
  v16 = [speakerIdModelSampleManifestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self deleteSpeakerIdModelSampleManifestReported];
  }

  speakerIdSampleToRequestMap = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self speakerIdSampleToRequestMap];
  v19 = [speakerIdSampleToRequestMap applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
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
  whichEvent_Type = [(ODSAMPLESiriSchemaODSAMPLEClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 10 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA618[whichEvent_Type - 10]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 10 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78EA638[tag - 10];
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