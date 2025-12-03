@interface HALSchemaHALClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (HALSchemaHALClientEvent)initWithDictionary:(id)dictionary;
- (HALSchemaHALClientEvent)initWithJSON:(id)n;
- (HALSchemaHALCompanionDeviceCommunicationContext)companionDeviceCommunicationContext;
- (HALSchemaHALCompanionDeviceDiscoveryContext)companionDeviceDiscoveryContext;
- (HALSchemaHALContextCollectorFetchContext)contextCollectorFetchContext;
- (HALSchemaHALCrossDeviceCommandExecutionContext)crossDeviceCommandContext;
- (HALSchemaHALForceFetchContext)forceFetchContext;
- (HALSchemaHALLocalFetchContext)localFetchContext;
- (HALSchemaHALNearbyPersonalDevicesReported)nearbyPersonalDevicesReported;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setCompanionDeviceCommunicationContext:(id)context;
- (void)setCompanionDeviceDiscoveryContext:(id)context;
- (void)setContextCollectorFetchContext:(id)context;
- (void)setCrossDeviceCommandContext:(id)context;
- (void)setForceFetchContext:(id)context;
- (void)setLocalFetchContext:(id)context;
- (void)setNearbyPersonalDevicesReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation HALSchemaHALClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(HALSchemaHALClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 6)
  {
    return @"com.apple.aiml.siri.hal.HALClientEvent";
  }

  else
  {
    return off_1E78D7A28[whichEvent_Type - 2];
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

- (HALSchemaHALClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = HALSchemaHALClientEvent;
  v5 = [(HALSchemaHALClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[HALSchemaHALClientEventMetadata alloc] initWithDictionary:v6];
      [(HALSchemaHALClientEvent *)v5 setEventMetadata:v7];
    }

    v24 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"crossDeviceCommandContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[HALSchemaHALCrossDeviceCommandExecutionContext alloc] initWithDictionary:v8];
      [(HALSchemaHALClientEvent *)v5 setCrossDeviceCommandContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"localFetchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[HALSchemaHALLocalFetchContext alloc] initWithDictionary:v10];
      [(HALSchemaHALClientEvent *)v5 setLocalFetchContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"contextCollectorFetchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[HALSchemaHALContextCollectorFetchContext alloc] initWithDictionary:v12];
      [(HALSchemaHALClientEvent *)v5 setContextCollectorFetchContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"forceFetchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[HALSchemaHALForceFetchContext alloc] initWithDictionary:v14];
      [(HALSchemaHALClientEvent *)v5 setForceFetchContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"companionDeviceDiscoveryContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[HALSchemaHALCompanionDeviceDiscoveryContext alloc] initWithDictionary:v16];
      [(HALSchemaHALClientEvent *)v5 setCompanionDeviceDiscoveryContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"companionDeviceCommunicationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[HALSchemaHALCompanionDeviceCommunicationContext alloc] initWithDictionary:v18];
      [(HALSchemaHALClientEvent *)v5 setCompanionDeviceCommunicationContext:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"nearbyPersonalDevicesReported"];
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

- (HALSchemaHALClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HALSchemaHALClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HALSchemaHALClientEvent *)self dictionaryRepresentation];
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
  if (self->_companionDeviceCommunicationContext)
  {
    companionDeviceCommunicationContext = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
    dictionaryRepresentation = [companionDeviceCommunicationContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"companionDeviceCommunicationContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"companionDeviceCommunicationContext"];
    }
  }

  if (self->_companionDeviceDiscoveryContext)
  {
    companionDeviceDiscoveryContext = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
    dictionaryRepresentation2 = [companionDeviceDiscoveryContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"companionDeviceDiscoveryContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"companionDeviceDiscoveryContext"];
    }
  }

  if (self->_contextCollectorFetchContext)
  {
    contextCollectorFetchContext = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
    dictionaryRepresentation3 = [contextCollectorFetchContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"contextCollectorFetchContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"contextCollectorFetchContext"];
    }
  }

  if (self->_crossDeviceCommandContext)
  {
    crossDeviceCommandContext = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
    dictionaryRepresentation4 = [crossDeviceCommandContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"crossDeviceCommandContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"crossDeviceCommandContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(HALSchemaHALClientEvent *)self eventMetadata];
    dictionaryRepresentation5 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_forceFetchContext)
  {
    forceFetchContext = [(HALSchemaHALClientEvent *)self forceFetchContext];
    dictionaryRepresentation6 = [forceFetchContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"forceFetchContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"forceFetchContext"];
    }
  }

  if (self->_localFetchContext)
  {
    localFetchContext = [(HALSchemaHALClientEvent *)self localFetchContext];
    dictionaryRepresentation7 = [localFetchContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"localFetchContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"localFetchContext"];
    }
  }

  if (self->_nearbyPersonalDevicesReported)
  {
    nearbyPersonalDevicesReported = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
    dictionaryRepresentation8 = [nearbyPersonalDevicesReported dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"nearbyPersonalDevicesReported"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"nearbyPersonalDevicesReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_43;
  }

  eventMetadata = [(HALSchemaHALClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  eventMetadata3 = [(HALSchemaHALClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(HALSchemaHALClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
  eventMetadata2 = [equalCopy crossDeviceCommandContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  crossDeviceCommandContext = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
  if (crossDeviceCommandContext)
  {
    v14 = crossDeviceCommandContext;
    crossDeviceCommandContext2 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
    crossDeviceCommandContext3 = [equalCopy crossDeviceCommandContext];
    v17 = [crossDeviceCommandContext2 isEqual:crossDeviceCommandContext3];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(HALSchemaHALClientEvent *)self localFetchContext];
  eventMetadata2 = [equalCopy localFetchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  localFetchContext = [(HALSchemaHALClientEvent *)self localFetchContext];
  if (localFetchContext)
  {
    v19 = localFetchContext;
    localFetchContext2 = [(HALSchemaHALClientEvent *)self localFetchContext];
    localFetchContext3 = [equalCopy localFetchContext];
    v22 = [localFetchContext2 isEqual:localFetchContext3];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
  eventMetadata2 = [equalCopy contextCollectorFetchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  contextCollectorFetchContext = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
  if (contextCollectorFetchContext)
  {
    v24 = contextCollectorFetchContext;
    contextCollectorFetchContext2 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
    contextCollectorFetchContext3 = [equalCopy contextCollectorFetchContext];
    v27 = [contextCollectorFetchContext2 isEqual:contextCollectorFetchContext3];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(HALSchemaHALClientEvent *)self forceFetchContext];
  eventMetadata2 = [equalCopy forceFetchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  forceFetchContext = [(HALSchemaHALClientEvent *)self forceFetchContext];
  if (forceFetchContext)
  {
    v29 = forceFetchContext;
    forceFetchContext2 = [(HALSchemaHALClientEvent *)self forceFetchContext];
    forceFetchContext3 = [equalCopy forceFetchContext];
    v32 = [forceFetchContext2 isEqual:forceFetchContext3];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
  eventMetadata2 = [equalCopy companionDeviceDiscoveryContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  companionDeviceDiscoveryContext = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
  if (companionDeviceDiscoveryContext)
  {
    v34 = companionDeviceDiscoveryContext;
    companionDeviceDiscoveryContext2 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
    companionDeviceDiscoveryContext3 = [equalCopy companionDeviceDiscoveryContext];
    v37 = [companionDeviceDiscoveryContext2 isEqual:companionDeviceDiscoveryContext3];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
  eventMetadata2 = [equalCopy companionDeviceCommunicationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_42;
  }

  companionDeviceCommunicationContext = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
  if (companionDeviceCommunicationContext)
  {
    v39 = companionDeviceCommunicationContext;
    companionDeviceCommunicationContext2 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
    companionDeviceCommunicationContext3 = [equalCopy companionDeviceCommunicationContext];
    v42 = [companionDeviceCommunicationContext2 isEqual:companionDeviceCommunicationContext3];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  eventMetadata = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
  eventMetadata2 = [equalCopy nearbyPersonalDevicesReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    nearbyPersonalDevicesReported = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
    if (!nearbyPersonalDevicesReported)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = nearbyPersonalDevicesReported;
    nearbyPersonalDevicesReported2 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
    nearbyPersonalDevicesReported3 = [equalCopy nearbyPersonalDevicesReported];
    v47 = [nearbyPersonalDevicesReported2 isEqual:nearbyPersonalDevicesReported3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(HALSchemaHALClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(HALSchemaHALClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  crossDeviceCommandContext = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];

  if (crossDeviceCommandContext)
  {
    crossDeviceCommandContext2 = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
    PBDataWriterWriteSubmessage();
  }

  localFetchContext = [(HALSchemaHALClientEvent *)self localFetchContext];

  if (localFetchContext)
  {
    localFetchContext2 = [(HALSchemaHALClientEvent *)self localFetchContext];
    PBDataWriterWriteSubmessage();
  }

  contextCollectorFetchContext = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];

  if (contextCollectorFetchContext)
  {
    contextCollectorFetchContext2 = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
    PBDataWriterWriteSubmessage();
  }

  forceFetchContext = [(HALSchemaHALClientEvent *)self forceFetchContext];

  if (forceFetchContext)
  {
    forceFetchContext2 = [(HALSchemaHALClientEvent *)self forceFetchContext];
    PBDataWriterWriteSubmessage();
  }

  companionDeviceDiscoveryContext = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];

  if (companionDeviceDiscoveryContext)
  {
    companionDeviceDiscoveryContext2 = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
    PBDataWriterWriteSubmessage();
  }

  companionDeviceCommunicationContext = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];

  if (companionDeviceCommunicationContext)
  {
    companionDeviceCommunicationContext2 = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
    PBDataWriterWriteSubmessage();
  }

  nearbyPersonalDevicesReported = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];

  v19 = toCopy;
  if (nearbyPersonalDevicesReported)
  {
    nearbyPersonalDevicesReported2 = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
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

- (void)setNearbyPersonalDevicesReported:(id)reported
{
  reportedCopy = reported;
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

  self->_whichEvent_Type = 8 * (reportedCopy != 0);
  nearbyPersonalDevicesReported = self->_nearbyPersonalDevicesReported;
  self->_nearbyPersonalDevicesReported = reportedCopy;
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

- (void)setCompanionDeviceCommunicationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  companionDeviceCommunicationContext = self->_companionDeviceCommunicationContext;
  self->_companionDeviceCommunicationContext = contextCopy;
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

- (void)setCompanionDeviceDiscoveryContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  companionDeviceDiscoveryContext = self->_companionDeviceDiscoveryContext;
  self->_companionDeviceDiscoveryContext = contextCopy;
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

- (void)setForceFetchContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  forceFetchContext = self->_forceFetchContext;
  self->_forceFetchContext = contextCopy;
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

- (void)setContextCollectorFetchContext:(id)context
{
  contextCopy = context;
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

  self->_whichEvent_Type = 4 * (contextCopy != 0);
  contextCollectorFetchContext = self->_contextCollectorFetchContext;
  self->_contextCollectorFetchContext = contextCopy;
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

- (void)setLocalFetchContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v11 = 0;
  }

  self->_whichEvent_Type = v11;
  localFetchContext = self->_localFetchContext;
  self->_localFetchContext = contextCopy;
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

- (void)setCrossDeviceCommandContext:(id)context
{
  contextCopy = context;
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

  self->_whichEvent_Type = 2 * (contextCopy != 0);
  crossDeviceCommandContext = self->_crossDeviceCommandContext;
  self->_crossDeviceCommandContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v31.receiver = self;
  v31.super_class = HALSchemaHALClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(HALSchemaHALClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(HALSchemaHALClientEvent *)self deleteEventMetadata];
  }

  crossDeviceCommandContext = [(HALSchemaHALClientEvent *)self crossDeviceCommandContext];
  v10 = [crossDeviceCommandContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(HALSchemaHALClientEvent *)self deleteCrossDeviceCommandContext];
  }

  localFetchContext = [(HALSchemaHALClientEvent *)self localFetchContext];
  v13 = [localFetchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(HALSchemaHALClientEvent *)self deleteLocalFetchContext];
  }

  contextCollectorFetchContext = [(HALSchemaHALClientEvent *)self contextCollectorFetchContext];
  v16 = [contextCollectorFetchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(HALSchemaHALClientEvent *)self deleteContextCollectorFetchContext];
  }

  forceFetchContext = [(HALSchemaHALClientEvent *)self forceFetchContext];
  v19 = [forceFetchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(HALSchemaHALClientEvent *)self deleteForceFetchContext];
  }

  companionDeviceDiscoveryContext = [(HALSchemaHALClientEvent *)self companionDeviceDiscoveryContext];
  v22 = [companionDeviceDiscoveryContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(HALSchemaHALClientEvent *)self deleteCompanionDeviceDiscoveryContext];
  }

  companionDeviceCommunicationContext = [(HALSchemaHALClientEvent *)self companionDeviceCommunicationContext];
  v25 = [companionDeviceCommunicationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(HALSchemaHALClientEvent *)self deleteCompanionDeviceCommunicationContext];
  }

  nearbyPersonalDevicesReported = [(HALSchemaHALClientEvent *)self nearbyPersonalDevicesReported];
  v28 = [nearbyPersonalDevicesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
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
  eventMetadata = [(HALSchemaHALClientEvent *)self eventMetadata];
  halId = [eventMetadata halId];

  if (halId && ([halId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(halId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 17;
  }

  else
  {
    eventMetadata2 = [(HALSchemaHALClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId)
    {
      value = [requestId value];
      if (value)
      {
        v13 = value;
        value2 = [requestId value];
        v9 = [value2 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      halId = requestId;
    }

    else
    {
      v9 = 0;
      halId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(HALSchemaHALClientEvent *)self eventMetadata];
  halId = [eventMetadata halId];

  if (halId)
  {
    value = [halId value];
    if (value)
    {
      v6 = value;
      value2 = [halId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(HALSchemaHALClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [requestId value];
    v13 = [value4 length];

    if (v13)
    {
      halId = requestId;
LABEL_8:
      value3 = halId;
      requestId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(HALSchemaHALClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9918[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E78E9950[tag - 2];
  }
}

@end