@interface HALSchemaHALClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HALSchemaHALClientEvent)initWithDictionary:(id)a3;
- (HALSchemaHALClientEvent)initWithJSON:(id)a3;
- (HALSchemaHALCompanionDeviceCommunicationContext)companionDeviceCommunicationContext;
- (HALSchemaHALCompanionDeviceDiscoveryContext)companionDeviceDiscoveryContext;
- (HALSchemaHALContextCollectorFetchContext)contextCollectorFetchContext;
- (HALSchemaHALCrossDeviceCommandExecutionContext)crossDeviceCommandContext;
- (HALSchemaHALForceFetchContext)forceFetchContext;
- (HALSchemaHALLocalFetchContext)localFetchContext;
- (HALSchemaHALNearbyPersonalDevicesReported)nearbyPersonalDevicesReported;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCompanionDeviceCommunicationContext;
- (void)deleteCompanionDeviceDiscoveryContext;
- (void)deleteContextCollectorFetchContext;
- (void)deleteCrossDeviceCommandContext;
- (void)deleteForceFetchContext;
- (void)deleteLocalFetchContext;
- (void)deleteNearbyPersonalDevicesReported;
- (void)setCompanionDeviceCommunicationContext:(id)a3;
- (void)setCompanionDeviceDiscoveryContext:(id)a3;
- (void)setContextCollectorFetchContext:(id)a3;
- (void)setCrossDeviceCommandContext:(id)a3;
- (void)setForceFetchContext:(id)a3;
- (void)setLocalFetchContext:(id)a3;
- (void)setNearbyPersonalDevicesReported:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HALSchemaHALClientEvent

- (id)qualifiedMessageName
{
  v2 = [(HALSchemaHALClientEvent *)self whichEvent_Type];
  if (v2 - 2 > 6)
  {
    return @"com.apple.aiml.siri.hal.HALClientEvent";
  }

  else
  {
    return off_1E78D7A28[v2 - 2];
  }
}

- (HALSchemaHALLocalFetchContext)localFetchContext
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_localFetchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HALSchemaHALContextCollectorFetchContext)contextCollectorFetchContext
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_contextCollectorFetchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HALSchemaHALForceFetchContext)forceFetchContext
{
  if (self->_whichEvent_Type == 5)
  {
    v3 = self->_forceFetchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HALSchemaHALCompanionDeviceDiscoveryContext)companionDeviceDiscoveryContext
{
  if (self->_whichEvent_Type == 6)
  {
    v3 = self->_companionDeviceDiscoveryContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HALSchemaHALCompanionDeviceCommunicationContext)companionDeviceCommunicationContext
{
  if (self->_whichEvent_Type == 7)
  {
    v3 = self->_companionDeviceCommunicationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HALSchemaHALNearbyPersonalDevicesReported)nearbyPersonalDevicesReported
{
  if (self->_whichEvent_Type == 8)
  {
    v3 = self->_nearbyPersonalDevicesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HALSchemaHALCrossDeviceCommandExecutionContext)crossDeviceCommandContext
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_crossDeviceCommandContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HALSchemaHALClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HALSchemaHALClientEvent;
  v5 = [(HALSchemaHALClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[HALSchemaHALClientEventMetadata alloc] initWithDictionary:v6];
      [(HALSchemaHALClientEvent *)v5 setEventMetadata:v7];
    }

    v24 = v6;
    v8 = [v4 objectForKeyedSubscript:@"crossDeviceCommandContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[HALSchemaHALCrossDeviceCommandExecutionContext alloc] initWithDictionary:v8];
      [(HALSchemaHALClientEvent *)v5 setCrossDeviceCommandContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"localFetchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[HALSchemaHALLocalFetchContext alloc] initWithDictionary:v10];
      [(HALSchemaHALClientEvent *)v5 setLocalFetchContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"contextCollectorFetchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[HALSchemaHALContextCollectorFetchContext alloc] initWithDictionary:v12];
      [(HALSchemaHALClientEvent *)v5 setContextCollectorFetchContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"forceFetchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[HALSchemaHALForceFetchContext alloc] initWithDictionary:v14];
      [(HALSchemaHALClientEvent *)v5 setForceFetchContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"companionDeviceDiscoveryContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[HALSchemaHALCompanionDeviceDiscoveryContext alloc] initWithDictionary:v16];
      [(HALSchemaHALClientEvent *)v5 setCompanionDeviceDiscoveryContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"companionDeviceCommunicationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[HALSchemaHALCompanionDeviceCommunicationContext alloc] initWithDictionary:v18];
      [(HALSchemaHALClientEvent *)v5 setCompanionDeviceCommunicationContext:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"nearbyPersonalDevicesReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[HALSchemaHALNearbyPersonalDevicesReported alloc] initWithDictionary:v20];
      [(HALSchemaHALClientEvent *)v5 setNearbyPersonalDevicesReported:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (HALSchemaHALClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HALSchemaHALClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HALSchemaHALClientEvent *)self dictionaryRepresentation];
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
  if (self->_companionDeviceCommunicationContext)
  {
    v4 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"companionDeviceCommunicationContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"companionDeviceCommunicationContext"];
    }
  }

  if (self->_companionDeviceDiscoveryContext)
  {
    v7 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"companionDeviceDiscoveryContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"companionDeviceDiscoveryContext"];
    }
  }

  if (self->_contextCollectorFetchContext)
  {
    v10 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"contextCollectorFetchContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"contextCollectorFetchContext"];
    }
  }

  if (self->_crossDeviceCommandContext)
  {
    v13 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"crossDeviceCommandContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"crossDeviceCommandContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v16 = [(HALSchemaHALClientEvent *)self eventMetadata];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_forceFetchContext)
  {
    v19 = [(HALSchemaHALClientEvent *)self forceFetchContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"forceFetchContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"forceFetchContext"];
    }
  }

  if (self->_localFetchContext)
  {
    v22 = [(HALSchemaHALClientEvent *)self localFetchContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"localFetchContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"localFetchContext"];
    }
  }

  if (self->_nearbyPersonalDevicesReported)
  {
    v25 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"nearbyPersonalDevicesReported"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"nearbyPersonalDevicesReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(HALSchemaHALClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(HALSchemaHALCrossDeviceCommandExecutionContext *)self->_crossDeviceCommandContext hash]^ v3;
  v5 = [(HALSchemaHALLocalFetchContext *)self->_localFetchContext hash];
  v6 = v4 ^ v5 ^ [(HALSchemaHALContextCollectorFetchContext *)self->_contextCollectorFetchContext hash];
  v7 = [(HALSchemaHALForceFetchContext *)self->_forceFetchContext hash];
  v8 = v7 ^ [(HALSchemaHALCompanionDeviceDiscoveryContext *)self->_companionDeviceDiscoveryContext hash];
  v9 = v6 ^ v8 ^ [(HALSchemaHALCompanionDeviceCommunicationContext *)self->_companionDeviceCommunicationContext hash];
  return v9 ^ [(HALSchemaHALNearbyPersonalDevicesReported *)self->_nearbyPersonalDevicesReported hash];
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

  v6 = [(HALSchemaHALClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v8 = [(HALSchemaHALClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(HALSchemaHALClientEvent *)self eventMetadata];
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

  v6 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
  v7 = [v4 crossDeviceCommandContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v13 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
    v16 = [v4 crossDeviceCommandContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(HALSchemaHALClientEvent *)self localFetchContext];
  v7 = [v4 localFetchContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v18 = [(HALSchemaHALClientEvent *)self localFetchContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(HALSchemaHALClientEvent *)self localFetchContext];
    v21 = [v4 localFetchContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
  v7 = [v4 contextCollectorFetchContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v23 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
    v26 = [v4 contextCollectorFetchContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(HALSchemaHALClientEvent *)self forceFetchContext];
  v7 = [v4 forceFetchContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v28 = [(HALSchemaHALClientEvent *)self forceFetchContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(HALSchemaHALClientEvent *)self forceFetchContext];
    v31 = [v4 forceFetchContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
  v7 = [v4 companionDeviceDiscoveryContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v33 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
    v36 = [v4 companionDeviceDiscoveryContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
  v7 = [v4 companionDeviceCommunicationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v38 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
    v41 = [v4 companionDeviceCommunicationContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
  v7 = [v4 nearbyPersonalDevicesReported];
  if ((v6 != 0) != (v7 == 0))
  {
    v43 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
    if (!v43)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = v43;
    v45 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
    v46 = [v4 nearbyPersonalDevicesReported];
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
  v4 = [(HALSchemaHALClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(HALSchemaHALClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];

  if (v6)
  {
    v7 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(HALSchemaHALClientEvent *)self localFetchContext];

  if (v8)
  {
    v9 = [(HALSchemaHALClientEvent *)self localFetchContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];

  if (v10)
  {
    v11 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(HALSchemaHALClientEvent *)self forceFetchContext];

  if (v12)
  {
    v13 = [(HALSchemaHALClientEvent *)self forceFetchContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];

  if (v14)
  {
    v15 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];

  if (v16)
  {
    v17 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];

  v19 = v21;
  if (v18)
  {
    v20 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
    PBDataWriterWriteSubmessage();

    v19 = v21;
  }
}

- (void)deleteNearbyPersonalDevicesReported
{
  if (self->_whichEvent_Type == 8)
  {
    self->_whichEvent_Type = 0;
    self->_nearbyPersonalDevicesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNearbyPersonalDevicesReported:(id)a3
{
  v4 = a3;
  crossDeviceCommandContext = self->_crossDeviceCommandContext;
  self->_crossDeviceCommandContext = 0;

  localFetchContext = self->_localFetchContext;
  self->_localFetchContext = 0;

  contextCollectorFetchContext = self->_contextCollectorFetchContext;
  self->_contextCollectorFetchContext = 0;

  forceFetchContext = self->_forceFetchContext;
  self->_forceFetchContext = 0;

  companionDeviceDiscoveryContext = self->_companionDeviceDiscoveryContext;
  self->_companionDeviceDiscoveryContext = 0;

  companionDeviceCommunicationContext = self->_companionDeviceCommunicationContext;
  self->_companionDeviceCommunicationContext = 0;

  self->_whichEvent_Type = 8 * (v4 != 0);
  nearbyPersonalDevicesReported = self->_nearbyPersonalDevicesReported;
  self->_nearbyPersonalDevicesReported = v4;
}

- (void)deleteCompanionDeviceCommunicationContext
{
  if (self->_whichEvent_Type == 7)
  {
    self->_whichEvent_Type = 0;
    self->_companionDeviceCommunicationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCompanionDeviceCommunicationContext:(id)a3
{
  v4 = a3;
  crossDeviceCommandContext = self->_crossDeviceCommandContext;
  self->_crossDeviceCommandContext = 0;

  localFetchContext = self->_localFetchContext;
  self->_localFetchContext = 0;

  contextCollectorFetchContext = self->_contextCollectorFetchContext;
  self->_contextCollectorFetchContext = 0;

  forceFetchContext = self->_forceFetchContext;
  self->_forceFetchContext = 0;

  companionDeviceDiscoveryContext = self->_companionDeviceDiscoveryContext;
  self->_companionDeviceDiscoveryContext = 0;

  nearbyPersonalDevicesReported = self->_nearbyPersonalDevicesReported;
  self->_nearbyPersonalDevicesReported = 0;

  v11 = 7;
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  companionDeviceCommunicationContext = self->_companionDeviceCommunicationContext;
  self->_companionDeviceCommunicationContext = v4;
}

- (void)deleteCompanionDeviceDiscoveryContext
{
  if (self->_whichEvent_Type == 6)
  {
    self->_whichEvent_Type = 0;
    self->_companionDeviceDiscoveryContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCompanionDeviceDiscoveryContext:(id)a3
{
  v4 = a3;
  crossDeviceCommandContext = self->_crossDeviceCommandContext;
  self->_crossDeviceCommandContext = 0;

  localFetchContext = self->_localFetchContext;
  self->_localFetchContext = 0;

  contextCollectorFetchContext = self->_contextCollectorFetchContext;
  self->_contextCollectorFetchContext = 0;

  forceFetchContext = self->_forceFetchContext;
  self->_forceFetchContext = 0;

  companionDeviceCommunicationContext = self->_companionDeviceCommunicationContext;
  self->_companionDeviceCommunicationContext = 0;

  nearbyPersonalDevicesReported = self->_nearbyPersonalDevicesReported;
  self->_nearbyPersonalDevicesReported = 0;

  v11 = 6;
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  companionDeviceDiscoveryContext = self->_companionDeviceDiscoveryContext;
  self->_companionDeviceDiscoveryContext = v4;
}

- (void)deleteForceFetchContext
{
  if (self->_whichEvent_Type == 5)
  {
    self->_whichEvent_Type = 0;
    self->_forceFetchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setForceFetchContext:(id)a3
{
  v4 = a3;
  crossDeviceCommandContext = self->_crossDeviceCommandContext;
  self->_crossDeviceCommandContext = 0;

  localFetchContext = self->_localFetchContext;
  self->_localFetchContext = 0;

  contextCollectorFetchContext = self->_contextCollectorFetchContext;
  self->_contextCollectorFetchContext = 0;

  companionDeviceDiscoveryContext = self->_companionDeviceDiscoveryContext;
  self->_companionDeviceDiscoveryContext = 0;

  companionDeviceCommunicationContext = self->_companionDeviceCommunicationContext;
  self->_companionDeviceCommunicationContext = 0;

  nearbyPersonalDevicesReported = self->_nearbyPersonalDevicesReported;
  self->_nearbyPersonalDevicesReported = 0;

  v11 = 5;
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  forceFetchContext = self->_forceFetchContext;
  self->_forceFetchContext = v4;
}

- (void)deleteContextCollectorFetchContext
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_contextCollectorFetchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setContextCollectorFetchContext:(id)a3
{
  v4 = a3;
  crossDeviceCommandContext = self->_crossDeviceCommandContext;
  self->_crossDeviceCommandContext = 0;

  localFetchContext = self->_localFetchContext;
  self->_localFetchContext = 0;

  forceFetchContext = self->_forceFetchContext;
  self->_forceFetchContext = 0;

  companionDeviceDiscoveryContext = self->_companionDeviceDiscoveryContext;
  self->_companionDeviceDiscoveryContext = 0;

  companionDeviceCommunicationContext = self->_companionDeviceCommunicationContext;
  self->_companionDeviceCommunicationContext = 0;

  nearbyPersonalDevicesReported = self->_nearbyPersonalDevicesReported;
  self->_nearbyPersonalDevicesReported = 0;

  self->_whichEvent_Type = 4 * (v4 != 0);
  contextCollectorFetchContext = self->_contextCollectorFetchContext;
  self->_contextCollectorFetchContext = v4;
}

- (void)deleteLocalFetchContext
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_localFetchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setLocalFetchContext:(id)a3
{
  v4 = a3;
  crossDeviceCommandContext = self->_crossDeviceCommandContext;
  self->_crossDeviceCommandContext = 0;

  contextCollectorFetchContext = self->_contextCollectorFetchContext;
  self->_contextCollectorFetchContext = 0;

  forceFetchContext = self->_forceFetchContext;
  self->_forceFetchContext = 0;

  companionDeviceDiscoveryContext = self->_companionDeviceDiscoveryContext;
  self->_companionDeviceDiscoveryContext = 0;

  companionDeviceCommunicationContext = self->_companionDeviceCommunicationContext;
  self->_companionDeviceCommunicationContext = 0;

  nearbyPersonalDevicesReported = self->_nearbyPersonalDevicesReported;
  self->_nearbyPersonalDevicesReported = 0;

  v11 = 3;
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  localFetchContext = self->_localFetchContext;
  self->_localFetchContext = v4;
}

- (void)deleteCrossDeviceCommandContext
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_crossDeviceCommandContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCrossDeviceCommandContext:(id)a3
{
  v4 = a3;
  localFetchContext = self->_localFetchContext;
  self->_localFetchContext = 0;

  contextCollectorFetchContext = self->_contextCollectorFetchContext;
  self->_contextCollectorFetchContext = 0;

  forceFetchContext = self->_forceFetchContext;
  self->_forceFetchContext = 0;

  companionDeviceDiscoveryContext = self->_companionDeviceDiscoveryContext;
  self->_companionDeviceDiscoveryContext = 0;

  companionDeviceCommunicationContext = self->_companionDeviceCommunicationContext;
  self->_companionDeviceCommunicationContext = 0;

  nearbyPersonalDevicesReported = self->_nearbyPersonalDevicesReported;
  self->_nearbyPersonalDevicesReported = 0;

  self->_whichEvent_Type = 2 * (v4 != 0);
  crossDeviceCommandContext = self->_crossDeviceCommandContext;
  self->_crossDeviceCommandContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = HALSchemaHALClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:v4];
  v6 = [(HALSchemaHALClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(HALSchemaHALClientEvent *)self deleteEventMetadata];
  }

  v9 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(HALSchemaHALClientEvent *)self deleteCrossDeviceCommandContext];
  }

  v12 = [(HALSchemaHALClientEvent *)self localFetchContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(HALSchemaHALClientEvent *)self deleteLocalFetchContext];
  }

  v15 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(HALSchemaHALClientEvent *)self deleteContextCollectorFetchContext];
  }

  v18 = [(HALSchemaHALClientEvent *)self forceFetchContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(HALSchemaHALClientEvent *)self deleteForceFetchContext];
  }

  v21 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(HALSchemaHALClientEvent *)self deleteCompanionDeviceDiscoveryContext];
  }

  v24 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(HALSchemaHALClientEvent *)self deleteCompanionDeviceCommunicationContext];
  }

  v27 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(HALSchemaHALClientEvent *)self deleteNearbyPersonalDevicesReported];
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
  v3 = [(HALSchemaHALClientEvent *)self eventMetadata];
  v4 = [v3 halId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 17;
  }

  else
  {
    v10 = [(HALSchemaHALClientEvent *)self eventMetadata];
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
  v3 = [(HALSchemaHALClientEvent *)self eventMetadata];
  v4 = [v3 halId];

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

  v9 = [(HALSchemaHALClientEvent *)self eventMetadata];
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
  v3 = [(HALSchemaHALClientEvent *)self whichEvent_Type];
  if (v3 - 2 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9918[v3 - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 2 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E78E9950[a3 - 2];
  }
}

@end