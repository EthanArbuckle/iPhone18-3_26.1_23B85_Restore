@interface DIMSchemaDIMClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (DIMSchemaDIMClientEvent)initWithDictionary:(id)a3;
- (DIMSchemaDIMClientEvent)initWithJSON:(id)a3;
- (DIMSchemaDIMDeviceFixedContext)deviceFixedContext;
- (DIMSchemaDIMEphemeralIdentifiers)ephemeralIdentifiers;
- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)ephemeralToAggregationIdentifierMap;
- (DIMSchemaDIMExperimentContext)experimentContext;
- (DIMSchemaDIMLocaleNotRecognized)localeNotRecognized;
- (DIMSchemaDIMOnDeviceDigest)onDeviceDigest;
- (DIMSchemaDIMSiriAccountInformation)siriAccountInformation;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setDeviceFixedContext:(id)a3;
- (void)setEphemeralIdentifiers:(id)a3;
- (void)setEphemeralToAggregationIdentifierMap:(id)a3;
- (void)setExperimentContext:(id)a3;
- (void)setLocaleNotRecognized:(id)a3;
- (void)setOnDeviceDigest:(id)a3;
- (void)setSiriAccountInformation:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DIMSchemaDIMClientEvent

- (DIMSchemaDIMClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DIMSchemaDIMClientEvent;
  v5 = [(DIMSchemaDIMClientEvent *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"deviceFixedContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DIMSchemaDIMDeviceFixedContext alloc] initWithDictionary:v6];
      [(DIMSchemaDIMClientEvent *)v5 setDeviceFixedContext:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"siriAccountInformation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DIMSchemaDIMSiriAccountInformation alloc] initWithDictionary:v8];
      [(DIMSchemaDIMClientEvent *)v5 setSiriAccountInformation:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"localeNotRecognized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[DIMSchemaDIMLocaleNotRecognized alloc] initWithDictionary:v10];
      [(DIMSchemaDIMClientEvent *)v5 setLocaleNotRecognized:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"onDeviceDigest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[DIMSchemaDIMOnDeviceDigest alloc] initWithDictionary:v12];
      [(DIMSchemaDIMClientEvent *)v5 setOnDeviceDigest:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"ephemeralIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[DIMSchemaDIMEphemeralIdentifiers alloc] initWithDictionary:v14];
      [(DIMSchemaDIMClientEvent *)v5 setEphemeralIdentifiers:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[DIMSchemaDIMEphemeralToAggregationIdentifierMap alloc] initWithDictionary:v16];
      [(DIMSchemaDIMClientEvent *)v5 setEphemeralToAggregationIdentifierMap:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"experimentContext"];
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

- (DIMSchemaDIMClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DIMSchemaDIMClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DIMSchemaDIMClientEvent *)self dictionaryRepresentation];
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
  if (self->_deviceFixedContext)
  {
    v4 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"deviceFixedContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"deviceFixedContext"];
    }
  }

  if (self->_ephemeralIdentifiers)
  {
    v7 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"ephemeralIdentifiers"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"ephemeralIdentifiers"];
    }
  }

  if (self->_ephemeralToAggregationIdentifierMap)
  {
    v10 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    }
  }

  if (self->_experimentContext)
  {
    v13 = [(DIMSchemaDIMClientEvent *)self experimentContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"experimentContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"experimentContext"];
    }
  }

  if (self->_localeNotRecognized)
  {
    v16 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"localeNotRecognized"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"localeNotRecognized"];
    }
  }

  if (self->_onDeviceDigest)
  {
    v19 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"onDeviceDigest"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"onDeviceDigest"];
    }
  }

  if (self->_siriAccountInformation)
  {
    v22 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"siriAccountInformation"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"siriAccountInformation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_38;
  }

  v6 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
  v7 = [v4 deviceFixedContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v8 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
  if (v8)
  {
    v9 = v8;
    v10 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
    v11 = [v4 deviceFixedContext];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
  v7 = [v4 siriAccountInformation];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v13 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
  if (v13)
  {
    v14 = v13;
    v15 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
    v16 = [v4 siriAccountInformation];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
  v7 = [v4 localeNotRecognized];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v18 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
  if (v18)
  {
    v19 = v18;
    v20 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
    v21 = [v4 localeNotRecognized];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
  v7 = [v4 onDeviceDigest];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v23 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
  if (v23)
  {
    v24 = v23;
    v25 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
    v26 = [v4 onDeviceDigest];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
  v7 = [v4 ephemeralIdentifiers];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v28 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
  if (v28)
  {
    v29 = v28;
    v30 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
    v31 = [v4 ephemeralIdentifiers];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
  v7 = [v4 ephemeralToAggregationIdentifierMap];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_37;
  }

  v33 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
  if (v33)
  {
    v34 = v33;
    v35 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
    v36 = [v4 ephemeralToAggregationIdentifierMap];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [(DIMSchemaDIMClientEvent *)self experimentContext];
  v7 = [v4 experimentContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v38 = [(DIMSchemaDIMClientEvent *)self experimentContext];
    if (!v38)
    {

LABEL_41:
      v43 = 1;
      goto LABEL_39;
    }

    v39 = v38;
    v40 = [(DIMSchemaDIMClientEvent *)self experimentContext];
    v41 = [v4 experimentContext];
    v42 = [v40 isEqual:v41];

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

- (void)writeTo:(id)a3
{
  v19 = a3;
  v4 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];

  if (v4)
  {
    v5 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];

  if (v6)
  {
    v7 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];

  if (v8)
  {
    v9 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];

  if (v10)
  {
    v11 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];

  if (v12)
  {
    v13 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];

  if (v14)
  {
    v15 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(DIMSchemaDIMClientEvent *)self experimentContext];

  v17 = v19;
  if (v16)
  {
    v18 = [(DIMSchemaDIMClientEvent *)self experimentContext];
    PBDataWriterWriteSubmessage();

    v17 = v19;
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

- (void)setExperimentContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  experimentContext = self->_experimentContext;
  self->_experimentContext = v4;
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

- (void)setEphemeralToAggregationIdentifierMap:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = v4;
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

- (void)setEphemeralIdentifiers:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  ephemeralIdentifiers = self->_ephemeralIdentifiers;
  self->_ephemeralIdentifiers = v4;
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

- (void)setOnDeviceDigest:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  onDeviceDigest = self->_onDeviceDigest;
  self->_onDeviceDigest = v4;
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

- (void)setLocaleNotRecognized:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  localeNotRecognized = self->_localeNotRecognized;
  self->_localeNotRecognized = v4;
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

- (void)setSiriAccountInformation:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = v4;
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

- (void)setDeviceFixedContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(DIMSchemaDIMClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 6)
  {
    return @"com.apple.aiml.siri.dim.DIMClientEvent";
  }

  else
  {
    return off_1E78D37A8[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = DIMSchemaDIMClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:v4];
  v6 = [(DIMSchemaDIMClientEvent *)self deviceFixedContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DIMSchemaDIMClientEvent *)self deleteDeviceFixedContext];
  }

  v9 = [(DIMSchemaDIMClientEvent *)self siriAccountInformation];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DIMSchemaDIMClientEvent *)self deleteSiriAccountInformation];
  }

  v12 = [(DIMSchemaDIMClientEvent *)self localeNotRecognized];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(DIMSchemaDIMClientEvent *)self deleteLocaleNotRecognized];
  }

  v15 = [(DIMSchemaDIMClientEvent *)self onDeviceDigest];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(DIMSchemaDIMClientEvent *)self deleteOnDeviceDigest];
  }

  v18 = [(DIMSchemaDIMClientEvent *)self ephemeralIdentifiers];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(DIMSchemaDIMClientEvent *)self deleteEphemeralIdentifiers];
  }

  v21 = [(DIMSchemaDIMClientEvent *)self ephemeralToAggregationIdentifierMap];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(DIMSchemaDIMClientEvent *)self deleteEphemeralToAggregationIdentifierMap];
  }

  v24 = [(DIMSchemaDIMClientEvent *)self experimentContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
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
  v3 = [(DIMSchemaDIMClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E94A8[v3 - 101]);
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
    return off_1E78E94E0[a3 - 101];
  }
}

@end