@interface DIMSchemaDIMClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMClientEvent)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMClientEvent)initWithJSON:(id)n;
- (DIMSchemaDIMDeviceFixedContext)deviceFixedContext;
- (DIMSchemaDIMEphemeralIdentifiers)ephemeralIdentifiers;
- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)ephemeralToAggregationIdentifierMap;
- (DIMSchemaDIMExperimentContext)experimentContext;
- (DIMSchemaDIMLocaleNotRecognized)localeNotRecognized;
- (DIMSchemaDIMOnDeviceDigest)onDeviceDigest;
- (DIMSchemaDIMSiriAccountInformation)siriAccountInformation;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteDeviceFixedContext;
- (void)deleteEphemeralIdentifiers;
- (void)deleteEphemeralToAggregationIdentifierMap;
- (void)deleteExperimentContext;
- (void)deleteLocaleNotRecognized;
- (void)deleteOnDeviceDigest;
- (void)deleteSiriAccountInformation;
- (void)setDeviceFixedContext:(id)context;
- (void)setEphemeralIdentifiers:(id)identifiers;
- (void)setEphemeralToAggregationIdentifierMap:(id)map;
- (void)setExperimentContext:(id)context;
- (void)setLocaleNotRecognized:(id)recognized;
- (void)setOnDeviceDigest:(id)digest;
- (void)setSiriAccountInformation:(id)information;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMClientEvent

- (DIMSchemaDIMClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = DIMSchemaDIMClientEvent;
  v5 = [(DIMSchemaDIMClientEvent *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceFixedContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DIMSchemaDIMDeviceFixedContext alloc] initWithDictionary:v6];
      [(DIMSchemaDIMClientEvent *)v5 setDeviceFixedContext:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriAccountInformation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DIMSchemaDIMSiriAccountInformation alloc] initWithDictionary:v8];
      [(DIMSchemaDIMClientEvent *)v5 setSiriAccountInformation:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"localeNotRecognized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[DIMSchemaDIMLocaleNotRecognized alloc] initWithDictionary:v10];
      [(DIMSchemaDIMClientEvent *)v5 setLocaleNotRecognized:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"onDeviceDigest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[DIMSchemaDIMOnDeviceDigest alloc] initWithDictionary:v12];
      [(DIMSchemaDIMClientEvent *)v5 setOnDeviceDigest:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"ephemeralIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[DIMSchemaDIMEphemeralIdentifiers alloc] initWithDictionary:v14];
      [(DIMSchemaDIMClientEvent *)v5 setEphemeralIdentifiers:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[DIMSchemaDIMEphemeralToAggregationIdentifierMap alloc] initWithDictionary:v16];
      [(DIMSchemaDIMClientEvent *)v5 setEphemeralToAggregationIdentifierMap:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"experimentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[DIMSchemaDIMExperimentContext alloc] initWithDictionary:v18];
      [(DIMSchemaDIMClientEvent *)v5 setExperimentContext:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (DIMSchemaDIMClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMClientEvent *)self dictionaryRepresentation];
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
  if (self->_deviceFixedContext)
  {
    deviceFixedContext = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
    dictionaryRepresentation = [deviceFixedContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"deviceFixedContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"deviceFixedContext"];
    }
  }

  if (self->_ephemeralIdentifiers)
  {
    ephemeralIdentifiers = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
    dictionaryRepresentation2 = [ephemeralIdentifiers dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ephemeralIdentifiers"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ephemeralIdentifiers"];
    }
  }

  if (self->_ephemeralToAggregationIdentifierMap)
  {
    ephemeralToAggregationIdentifierMap = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
    dictionaryRepresentation3 = [ephemeralToAggregationIdentifierMap dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    }
  }

  if (self->_experimentContext)
  {
    experimentContext = [(DIMSchemaDIMClientEvent *)self experimentContext];
    dictionaryRepresentation4 = [experimentContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"experimentContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"experimentContext"];
    }
  }

  if (self->_localeNotRecognized)
  {
    localeNotRecognized = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
    dictionaryRepresentation5 = [localeNotRecognized dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"localeNotRecognized"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"localeNotRecognized"];
    }
  }

  if (self->_onDeviceDigest)
  {
    onDeviceDigest = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
    dictionaryRepresentation6 = [onDeviceDigest dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"onDeviceDigest"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"onDeviceDigest"];
    }
  }

  if (self->_siriAccountInformation)
  {
    siriAccountInformation = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
    dictionaryRepresentation7 = [siriAccountInformation dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"siriAccountInformation"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"siriAccountInformation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(DIMSchemaDIMDeviceFixedContext *)self->_deviceFixedContext hash];
  v4 = [(DIMSchemaDIMSiriAccountInformation *)self->_siriAccountInformation hash]^ v3;
  v5 = [(DIMSchemaDIMLocaleNotRecognized *)self->_localeNotRecognized hash];
  v6 = v4 ^ v5 ^ [(DIMSchemaDIMOnDeviceDigest *)self->_onDeviceDigest hash];
  v7 = [(DIMSchemaDIMEphemeralIdentifiers *)self->_ephemeralIdentifiers hash];
  v8 = v7 ^ [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self->_ephemeralToAggregationIdentifierMap hash];
  return v6 ^ v8 ^ [(DIMSchemaDIMExperimentContext *)self->_experimentContext hash];
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

  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
  deviceFixedContext2 = [equalCopy deviceFixedContext];
  if ((deviceFixedContext != 0) == (deviceFixedContext2 == 0))
  {
    goto LABEL_37;
  }

  deviceFixedContext3 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
  if (deviceFixedContext3)
  {
    v9 = deviceFixedContext3;
    deviceFixedContext4 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
    deviceFixedContext5 = [equalCopy deviceFixedContext];
    v12 = [deviceFixedContext4 isEqual:deviceFixedContext5];

    if (!v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
  deviceFixedContext2 = [equalCopy siriAccountInformation];
  if ((deviceFixedContext != 0) == (deviceFixedContext2 == 0))
  {
    goto LABEL_37;
  }

  siriAccountInformation = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
  if (siriAccountInformation)
  {
    v14 = siriAccountInformation;
    siriAccountInformation2 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
    siriAccountInformation3 = [equalCopy siriAccountInformation];
    v17 = [siriAccountInformation2 isEqual:siriAccountInformation3];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
  deviceFixedContext2 = [equalCopy localeNotRecognized];
  if ((deviceFixedContext != 0) == (deviceFixedContext2 == 0))
  {
    goto LABEL_37;
  }

  localeNotRecognized = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
  if (localeNotRecognized)
  {
    v19 = localeNotRecognized;
    localeNotRecognized2 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
    localeNotRecognized3 = [equalCopy localeNotRecognized];
    v22 = [localeNotRecognized2 isEqual:localeNotRecognized3];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
  deviceFixedContext2 = [equalCopy onDeviceDigest];
  if ((deviceFixedContext != 0) == (deviceFixedContext2 == 0))
  {
    goto LABEL_37;
  }

  onDeviceDigest = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
  if (onDeviceDigest)
  {
    v24 = onDeviceDigest;
    onDeviceDigest2 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
    onDeviceDigest3 = [equalCopy onDeviceDigest];
    v27 = [onDeviceDigest2 isEqual:onDeviceDigest3];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
  deviceFixedContext2 = [equalCopy ephemeralIdentifiers];
  if ((deviceFixedContext != 0) == (deviceFixedContext2 == 0))
  {
    goto LABEL_37;
  }

  ephemeralIdentifiers = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
  if (ephemeralIdentifiers)
  {
    v29 = ephemeralIdentifiers;
    ephemeralIdentifiers2 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
    ephemeralIdentifiers3 = [equalCopy ephemeralIdentifiers];
    v32 = [ephemeralIdentifiers2 isEqual:ephemeralIdentifiers3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
  deviceFixedContext2 = [equalCopy ephemeralToAggregationIdentifierMap];
  if ((deviceFixedContext != 0) == (deviceFixedContext2 == 0))
  {
    goto LABEL_37;
  }

  ephemeralToAggregationIdentifierMap = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
  if (ephemeralToAggregationIdentifierMap)
  {
    v34 = ephemeralToAggregationIdentifierMap;
    ephemeralToAggregationIdentifierMap2 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
    ephemeralToAggregationIdentifierMap3 = [equalCopy ephemeralToAggregationIdentifierMap];
    v37 = [ephemeralToAggregationIdentifierMap2 isEqual:ephemeralToAggregationIdentifierMap3];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self experimentContext];
  deviceFixedContext2 = [equalCopy experimentContext];
  if ((deviceFixedContext != 0) != (deviceFixedContext2 == 0))
  {
    experimentContext = [(DIMSchemaDIMClientEvent *)self experimentContext];
    if (!experimentContext)
    {

LABEL_41:
      v43 = 1;
      goto LABEL_39;
    }

    v39 = experimentContext;
    experimentContext2 = [(DIMSchemaDIMClientEvent *)self experimentContext];
    experimentContext3 = [equalCopy experimentContext];
    v42 = [experimentContext2 isEqual:experimentContext3];

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
  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];

  if (deviceFixedContext)
  {
    deviceFixedContext2 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
    PBDataWriterWriteSubmessage();
  }

  siriAccountInformation = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];

  if (siriAccountInformation)
  {
    siriAccountInformation2 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
    PBDataWriterWriteSubmessage();
  }

  localeNotRecognized = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];

  if (localeNotRecognized)
  {
    localeNotRecognized2 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
    PBDataWriterWriteSubmessage();
  }

  onDeviceDigest = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];

  if (onDeviceDigest)
  {
    onDeviceDigest2 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
    PBDataWriterWriteSubmessage();
  }

  ephemeralIdentifiers = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];

  if (ephemeralIdentifiers)
  {
    ephemeralIdentifiers2 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
    PBDataWriterWriteSubmessage();
  }

  ephemeralToAggregationIdentifierMap = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];

  if (ephemeralToAggregationIdentifierMap)
  {
    ephemeralToAggregationIdentifierMap2 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
    PBDataWriterWriteSubmessage();
  }

  experimentContext = [(DIMSchemaDIMClientEvent *)self experimentContext];

  v17 = toCopy;
  if (experimentContext)
  {
    experimentContext2 = [(DIMSchemaDIMClientEvent *)self experimentContext];
    PBDataWriterWriteSubmessage();

    v17 = toCopy;
  }
}

- (void)deleteExperimentContext
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_experimentContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMExperimentContext)experimentContext
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_experimentContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExperimentContext:(id)context
{
  contextCopy = context;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  localeNotRecognized = self->_localeNotRecognized;
  self->_localeNotRecognized = 0;

  onDeviceDigest = self->_onDeviceDigest;
  self->_onDeviceDigest = 0;

  ephemeralIdentifiers = self->_ephemeralIdentifiers;
  self->_ephemeralIdentifiers = 0;

  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = 0;

  v11 = 107;
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  experimentContext = self->_experimentContext;
  self->_experimentContext = contextCopy;
}

- (void)deleteEphemeralToAggregationIdentifierMap
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_ephemeralToAggregationIdentifierMap = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)ephemeralToAggregationIdentifierMap
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_ephemeralToAggregationIdentifierMap;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEphemeralToAggregationIdentifierMap:(id)map
{
  mapCopy = map;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  localeNotRecognized = self->_localeNotRecognized;
  self->_localeNotRecognized = 0;

  onDeviceDigest = self->_onDeviceDigest;
  self->_onDeviceDigest = 0;

  ephemeralIdentifiers = self->_ephemeralIdentifiers;
  self->_ephemeralIdentifiers = 0;

  experimentContext = self->_experimentContext;
  self->_experimentContext = 0;

  v11 = 106;
  if (!mapCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = mapCopy;
}

- (void)deleteEphemeralIdentifiers
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_ephemeralIdentifiers = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMEphemeralIdentifiers)ephemeralIdentifiers
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_ephemeralIdentifiers;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEphemeralIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  localeNotRecognized = self->_localeNotRecognized;
  self->_localeNotRecognized = 0;

  onDeviceDigest = self->_onDeviceDigest;
  self->_onDeviceDigest = 0;

  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = 0;

  experimentContext = self->_experimentContext;
  self->_experimentContext = 0;

  v11 = 105;
  if (!identifiersCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  ephemeralIdentifiers = self->_ephemeralIdentifiers;
  self->_ephemeralIdentifiers = identifiersCopy;
}

- (void)deleteOnDeviceDigest
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_onDeviceDigest = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMOnDeviceDigest)onDeviceDigest
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_onDeviceDigest;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOnDeviceDigest:(id)digest
{
  digestCopy = digest;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  localeNotRecognized = self->_localeNotRecognized;
  self->_localeNotRecognized = 0;

  ephemeralIdentifiers = self->_ephemeralIdentifiers;
  self->_ephemeralIdentifiers = 0;

  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = 0;

  experimentContext = self->_experimentContext;
  self->_experimentContext = 0;

  v11 = 104;
  if (!digestCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  onDeviceDigest = self->_onDeviceDigest;
  self->_onDeviceDigest = digestCopy;
}

- (void)deleteLocaleNotRecognized
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_localeNotRecognized = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMLocaleNotRecognized)localeNotRecognized
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_localeNotRecognized;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLocaleNotRecognized:(id)recognized
{
  recognizedCopy = recognized;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  onDeviceDigest = self->_onDeviceDigest;
  self->_onDeviceDigest = 0;

  ephemeralIdentifiers = self->_ephemeralIdentifiers;
  self->_ephemeralIdentifiers = 0;

  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = 0;

  experimentContext = self->_experimentContext;
  self->_experimentContext = 0;

  v11 = 103;
  if (!recognizedCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  localeNotRecognized = self->_localeNotRecognized;
  self->_localeNotRecognized = recognizedCopy;
}

- (void)deleteSiriAccountInformation
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_siriAccountInformation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMSiriAccountInformation)siriAccountInformation
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_siriAccountInformation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSiriAccountInformation:(id)information
{
  informationCopy = information;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  localeNotRecognized = self->_localeNotRecognized;
  self->_localeNotRecognized = 0;

  onDeviceDigest = self->_onDeviceDigest;
  self->_onDeviceDigest = 0;

  ephemeralIdentifiers = self->_ephemeralIdentifiers;
  self->_ephemeralIdentifiers = 0;

  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = 0;

  experimentContext = self->_experimentContext;
  self->_experimentContext = 0;

  v11 = 102;
  if (!informationCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = informationCopy;
}

- (void)deleteDeviceFixedContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_deviceFixedContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMDeviceFixedContext)deviceFixedContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_deviceFixedContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDeviceFixedContext:(id)context
{
  contextCopy = context;
  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  localeNotRecognized = self->_localeNotRecognized;
  self->_localeNotRecognized = 0;

  onDeviceDigest = self->_onDeviceDigest;
  self->_onDeviceDigest = 0;

  ephemeralIdentifiers = self->_ephemeralIdentifiers;
  self->_ephemeralIdentifiers = 0;

  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = 0;

  experimentContext = self->_experimentContext;
  self->_experimentContext = 0;

  v11 = 101;
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(DIMSchemaDIMClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 6)
  {
    return @"com.apple.aiml.siri.dim.DIMClientEvent";
  }

  else
  {
    return off_1E78D37A8[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v28.receiver = self;
  v28.super_class = DIMSchemaDIMClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  deviceFixedContext = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
  v7 = [deviceFixedContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DIMSchemaDIMClientEvent *)self deleteDeviceFixedContext];
  }

  siriAccountInformation = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
  v10 = [siriAccountInformation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DIMSchemaDIMClientEvent *)self deleteSiriAccountInformation];
  }

  localeNotRecognized = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
  v13 = [localeNotRecognized applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(DIMSchemaDIMClientEvent *)self deleteLocaleNotRecognized];
  }

  onDeviceDigest = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
  v16 = [onDeviceDigest applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(DIMSchemaDIMClientEvent *)self deleteOnDeviceDigest];
  }

  ephemeralIdentifiers = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
  v19 = [ephemeralIdentifiers applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(DIMSchemaDIMClientEvent *)self deleteEphemeralIdentifiers];
  }

  ephemeralToAggregationIdentifierMap = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
  v22 = [ephemeralToAggregationIdentifierMap applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(DIMSchemaDIMClientEvent *)self deleteEphemeralToAggregationIdentifierMap];
  }

  experimentContext = [(DIMSchemaDIMClientEvent *)self experimentContext];
  v25 = [experimentContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(DIMSchemaDIMClientEvent *)self deleteExperimentContext];
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
  whichEvent_Type = [(DIMSchemaDIMClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E94A8[whichEvent_Type - 101]);
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
    return off_1E78E94E0[tag - 101];
  }
}

@end