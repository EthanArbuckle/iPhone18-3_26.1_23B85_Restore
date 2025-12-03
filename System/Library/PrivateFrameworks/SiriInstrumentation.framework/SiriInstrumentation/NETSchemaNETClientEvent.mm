@interface NETSchemaNETClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETClientEvent)initWithDictionary:(id)dictionary;
- (NETSchemaNETClientEvent)initWithJSON:(id)n;
- (NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured)debugNetworkConnectionStatePreparationSnapshotCaptured;
- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)debugNetworkConnectionStateReadySnapshotCaptured;
- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)debugSessionConnectionSnapshotCaptured;
- (NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured)networkConnectionStatePreparationSnapshotCaptured;
- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)networkConnectionStateReadySnapshotCaptured;
- (NETSchemaNETPeerConnectionFailed)peerConnectionFailed;
- (NETSchemaNETSessionConnectionFailed)sessionConnectionFailed;
- (NETSchemaNETSessionConnectionHttpHeaderCreated)sessionConnectionHttpHeaderCreated;
- (NETSchemaNETSessionConnectionSnapshotCaptured)sessionConnectionSnapshotCaptured;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteDebugNetworkConnectionStatePreparationSnapshotCaptured;
- (void)deleteDebugNetworkConnectionStateReadySnapshotCaptured;
- (void)deleteDebugSessionConnectionSnapshotCaptured;
- (void)deleteNetworkConnectionStatePreparationSnapshotCaptured;
- (void)deleteNetworkConnectionStateReadySnapshotCaptured;
- (void)deletePeerConnectionFailed;
- (void)deleteSessionConnectionFailed;
- (void)deleteSessionConnectionHttpHeaderCreated;
- (void)deleteSessionConnectionSnapshotCaptured;
- (void)setDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)captured;
- (void)setDebugNetworkConnectionStateReadySnapshotCaptured:(id)captured;
- (void)setDebugSessionConnectionSnapshotCaptured:(id)captured;
- (void)setNetworkConnectionStatePreparationSnapshotCaptured:(id)captured;
- (void)setNetworkConnectionStateReadySnapshotCaptured:(id)captured;
- (void)setPeerConnectionFailed:(id)failed;
- (void)setSessionConnectionFailed:(id)failed;
- (void)setSessionConnectionHttpHeaderCreated:(id)created;
- (void)setSessionConnectionSnapshotCaptured:(id)captured;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(NETSchemaNETClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 8)
  {
    return @"com.apple.aiml.siri.net.NETClientEvent";
  }

  else
  {
    return off_1E78DB060[whichEvent_Type - 101];
  }
}

- (NETSchemaNETSessionConnectionHttpHeaderCreated)sessionConnectionHttpHeaderCreated
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_sessionConnectionHttpHeaderCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETSessionConnectionSnapshotCaptured)sessionConnectionSnapshotCaptured
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_sessionConnectionSnapshotCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)debugSessionConnectionSnapshotCaptured
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_debugSessionConnectionSnapshotCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETSessionConnectionFailed)sessionConnectionFailed
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_sessionConnectionFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETPeerConnectionFailed)peerConnectionFailed
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_peerConnectionFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured)networkConnectionStatePreparationSnapshotCaptured
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_networkConnectionStatePreparationSnapshotCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured)debugNetworkConnectionStatePreparationSnapshotCaptured
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETNetworkConnectionStateReadySnapshotCaptured)networkConnectionStateReadySnapshotCaptured
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_networkConnectionStateReadySnapshotCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)debugNetworkConnectionStateReadySnapshotCaptured
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NETSchemaNETClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = NETSchemaNETClientEvent;
  v5 = [(NETSchemaNETClientEvent *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NETSchemaNETClientEventMetadata alloc] initWithDictionary:v6];
      [(NETSchemaNETClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionConnectionHttpHeaderCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NETSchemaNETSessionConnectionHttpHeaderCreated alloc] initWithDictionary:v8];
      [(NETSchemaNETClientEvent *)v5 setSessionConnectionHttpHeaderCreated:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"sessionConnectionSnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NETSchemaNETSessionConnectionSnapshotCaptured alloc] initWithDictionary:v10];
      [(NETSchemaNETClientEvent *)v5 setSessionConnectionSnapshotCaptured:v11];
    }

    v30 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"debugSessionConnectionSnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NETSchemaNETDebugSessionConnectionSnapshotCaptured alloc] initWithDictionary:v12];
      [(NETSchemaNETClientEvent *)v5 setDebugSessionConnectionSnapshotCaptured:v13];
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"sessionConnectionFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NETSchemaNETSessionConnectionFailed alloc] initWithDictionary:v14];
      [(NETSchemaNETClientEvent *)v5 setSessionConnectionFailed:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"peerConnectionFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NETSchemaNETPeerConnectionFailed alloc] initWithDictionary:v16];
      [(NETSchemaNETClientEvent *)v5 setPeerConnectionFailed:v17];
    }

    v31 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"networkConnectionStatePreparationSnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured alloc] initWithDictionary:v18];
      [(NETSchemaNETClientEvent *)v5 setNetworkConnectionStatePreparationSnapshotCaptured:v19];
    }

    v20 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"debugNetworkConnectionStatePreparationSnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured alloc] initWithDictionary:v21];
      [(NETSchemaNETClientEvent *)v5 setDebugNetworkConnectionStatePreparationSnapshotCaptured:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"networkConnectionStateReadySnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured alloc] initWithDictionary:v23];
      [(NETSchemaNETClientEvent *)v5 setNetworkConnectionStateReadySnapshotCaptured:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"debugNetworkConnectionStateReadySnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured alloc] initWithDictionary:v25];
      [(NETSchemaNETClientEvent *)v5 setDebugNetworkConnectionStateReadySnapshotCaptured:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (NETSchemaNETClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETClientEvent *)self dictionaryRepresentation];
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
  if (self->_debugNetworkConnectionStatePreparationSnapshotCaptured)
  {
    debugNetworkConnectionStatePreparationSnapshotCaptured = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
    dictionaryRepresentation = [debugNetworkConnectionStatePreparationSnapshotCaptured dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"debugNetworkConnectionStatePreparationSnapshotCaptured"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"debugNetworkConnectionStatePreparationSnapshotCaptured"];
    }
  }

  if (self->_debugNetworkConnectionStateReadySnapshotCaptured)
  {
    debugNetworkConnectionStateReadySnapshotCaptured = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
    dictionaryRepresentation2 = [debugNetworkConnectionStateReadySnapshotCaptured dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"debugNetworkConnectionStateReadySnapshotCaptured"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"debugNetworkConnectionStateReadySnapshotCaptured"];
    }
  }

  if (self->_debugSessionConnectionSnapshotCaptured)
  {
    debugSessionConnectionSnapshotCaptured = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
    dictionaryRepresentation3 = [debugSessionConnectionSnapshotCaptured dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"debugSessionConnectionSnapshotCaptured"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"debugSessionConnectionSnapshotCaptured"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(NETSchemaNETClientEvent *)self eventMetadata];
    dictionaryRepresentation4 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_networkConnectionStatePreparationSnapshotCaptured)
  {
    networkConnectionStatePreparationSnapshotCaptured = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
    dictionaryRepresentation5 = [networkConnectionStatePreparationSnapshotCaptured dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"networkConnectionStatePreparationSnapshotCaptured"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"networkConnectionStatePreparationSnapshotCaptured"];
    }
  }

  if (self->_networkConnectionStateReadySnapshotCaptured)
  {
    networkConnectionStateReadySnapshotCaptured = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
    dictionaryRepresentation6 = [networkConnectionStateReadySnapshotCaptured dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"networkConnectionStateReadySnapshotCaptured"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"networkConnectionStateReadySnapshotCaptured"];
    }
  }

  if (self->_peerConnectionFailed)
  {
    peerConnectionFailed = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
    dictionaryRepresentation7 = [peerConnectionFailed dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"peerConnectionFailed"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"peerConnectionFailed"];
    }
  }

  if (self->_sessionConnectionFailed)
  {
    sessionConnectionFailed = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
    dictionaryRepresentation8 = [sessionConnectionFailed dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"sessionConnectionFailed"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"sessionConnectionFailed"];
    }
  }

  if (self->_sessionConnectionHttpHeaderCreated)
  {
    sessionConnectionHttpHeaderCreated = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
    dictionaryRepresentation9 = [sessionConnectionHttpHeaderCreated dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"sessionConnectionHttpHeaderCreated"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"sessionConnectionHttpHeaderCreated"];
    }
  }

  if (self->_sessionConnectionSnapshotCaptured)
  {
    sessionConnectionSnapshotCaptured = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
    dictionaryRepresentation10 = [sessionConnectionSnapshotCaptured dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"sessionConnectionSnapshotCaptured"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"sessionConnectionSnapshotCaptured"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NETSchemaNETClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self->_sessionConnectionHttpHeaderCreated hash]^ v3;
  v5 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self->_sessionConnectionSnapshotCaptured hash];
  v6 = v4 ^ v5 ^ [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self->_debugSessionConnectionSnapshotCaptured hash];
  v7 = [(NETSchemaNETSessionConnectionFailed *)self->_sessionConnectionFailed hash];
  v8 = v7 ^ [(NETSchemaNETPeerConnectionFailed *)self->_peerConnectionFailed hash];
  v9 = v6 ^ v8 ^ [(NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured *)self->_networkConnectionStatePreparationSnapshotCaptured hash];
  v10 = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self->_debugNetworkConnectionStatePreparationSnapshotCaptured hash];
  v11 = v10 ^ [(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured *)self->_networkConnectionStateReadySnapshotCaptured hash];
  return v9 ^ v11 ^ [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self->_debugNetworkConnectionStateReadySnapshotCaptured hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_53;
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  eventMetadata3 = [(NETSchemaNETClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(NETSchemaNETClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
  eventMetadata2 = [equalCopy sessionConnectionHttpHeaderCreated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  sessionConnectionHttpHeaderCreated = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
  if (sessionConnectionHttpHeaderCreated)
  {
    v14 = sessionConnectionHttpHeaderCreated;
    sessionConnectionHttpHeaderCreated2 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
    sessionConnectionHttpHeaderCreated3 = [equalCopy sessionConnectionHttpHeaderCreated];
    v17 = [sessionConnectionHttpHeaderCreated2 isEqual:sessionConnectionHttpHeaderCreated3];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
  eventMetadata2 = [equalCopy sessionConnectionSnapshotCaptured];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  sessionConnectionSnapshotCaptured = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
  if (sessionConnectionSnapshotCaptured)
  {
    v19 = sessionConnectionSnapshotCaptured;
    sessionConnectionSnapshotCaptured2 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
    sessionConnectionSnapshotCaptured3 = [equalCopy sessionConnectionSnapshotCaptured];
    v22 = [sessionConnectionSnapshotCaptured2 isEqual:sessionConnectionSnapshotCaptured3];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
  eventMetadata2 = [equalCopy debugSessionConnectionSnapshotCaptured];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  debugSessionConnectionSnapshotCaptured = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
  if (debugSessionConnectionSnapshotCaptured)
  {
    v24 = debugSessionConnectionSnapshotCaptured;
    debugSessionConnectionSnapshotCaptured2 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
    debugSessionConnectionSnapshotCaptured3 = [equalCopy debugSessionConnectionSnapshotCaptured];
    v27 = [debugSessionConnectionSnapshotCaptured2 isEqual:debugSessionConnectionSnapshotCaptured3];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
  eventMetadata2 = [equalCopy sessionConnectionFailed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  sessionConnectionFailed = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
  if (sessionConnectionFailed)
  {
    v29 = sessionConnectionFailed;
    sessionConnectionFailed2 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
    sessionConnectionFailed3 = [equalCopy sessionConnectionFailed];
    v32 = [sessionConnectionFailed2 isEqual:sessionConnectionFailed3];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
  eventMetadata2 = [equalCopy peerConnectionFailed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  peerConnectionFailed = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
  if (peerConnectionFailed)
  {
    v34 = peerConnectionFailed;
    peerConnectionFailed2 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
    peerConnectionFailed3 = [equalCopy peerConnectionFailed];
    v37 = [peerConnectionFailed2 isEqual:peerConnectionFailed3];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
  eventMetadata2 = [equalCopy networkConnectionStatePreparationSnapshotCaptured];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  networkConnectionStatePreparationSnapshotCaptured = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
  if (networkConnectionStatePreparationSnapshotCaptured)
  {
    v39 = networkConnectionStatePreparationSnapshotCaptured;
    networkConnectionStatePreparationSnapshotCaptured2 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
    networkConnectionStatePreparationSnapshotCaptured3 = [equalCopy networkConnectionStatePreparationSnapshotCaptured];
    v42 = [networkConnectionStatePreparationSnapshotCaptured2 isEqual:networkConnectionStatePreparationSnapshotCaptured3];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
  eventMetadata2 = [equalCopy debugNetworkConnectionStatePreparationSnapshotCaptured];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  debugNetworkConnectionStatePreparationSnapshotCaptured = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
  if (debugNetworkConnectionStatePreparationSnapshotCaptured)
  {
    v44 = debugNetworkConnectionStatePreparationSnapshotCaptured;
    debugNetworkConnectionStatePreparationSnapshotCaptured2 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
    debugNetworkConnectionStatePreparationSnapshotCaptured3 = [equalCopy debugNetworkConnectionStatePreparationSnapshotCaptured];
    v47 = [debugNetworkConnectionStatePreparationSnapshotCaptured2 isEqual:debugNetworkConnectionStatePreparationSnapshotCaptured3];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
  eventMetadata2 = [equalCopy networkConnectionStateReadySnapshotCaptured];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  networkConnectionStateReadySnapshotCaptured = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
  if (networkConnectionStateReadySnapshotCaptured)
  {
    v49 = networkConnectionStateReadySnapshotCaptured;
    networkConnectionStateReadySnapshotCaptured2 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
    networkConnectionStateReadySnapshotCaptured3 = [equalCopy networkConnectionStateReadySnapshotCaptured];
    v52 = [networkConnectionStateReadySnapshotCaptured2 isEqual:networkConnectionStateReadySnapshotCaptured3];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
  eventMetadata2 = [equalCopy debugNetworkConnectionStateReadySnapshotCaptured];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    debugNetworkConnectionStateReadySnapshotCaptured = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
    if (!debugNetworkConnectionStateReadySnapshotCaptured)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = debugNetworkConnectionStateReadySnapshotCaptured;
    debugNetworkConnectionStateReadySnapshotCaptured2 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
    debugNetworkConnectionStateReadySnapshotCaptured3 = [equalCopy debugNetworkConnectionStateReadySnapshotCaptured];
    v57 = [debugNetworkConnectionStateReadySnapshotCaptured2 isEqual:debugNetworkConnectionStateReadySnapshotCaptured3];

    if (v57)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_52:
  }

LABEL_53:
  v58 = 0;
LABEL_54:

  return v58;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(NETSchemaNETClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(NETSchemaNETClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  sessionConnectionHttpHeaderCreated = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];

  if (sessionConnectionHttpHeaderCreated)
  {
    sessionConnectionHttpHeaderCreated2 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
    PBDataWriterWriteSubmessage();
  }

  sessionConnectionSnapshotCaptured = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];

  if (sessionConnectionSnapshotCaptured)
  {
    sessionConnectionSnapshotCaptured2 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  debugSessionConnectionSnapshotCaptured = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];

  if (debugSessionConnectionSnapshotCaptured)
  {
    debugSessionConnectionSnapshotCaptured2 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  sessionConnectionFailed = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];

  if (sessionConnectionFailed)
  {
    sessionConnectionFailed2 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
    PBDataWriterWriteSubmessage();
  }

  peerConnectionFailed = [(NETSchemaNETClientEvent *)self peerConnectionFailed];

  if (peerConnectionFailed)
  {
    peerConnectionFailed2 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
    PBDataWriterWriteSubmessage();
  }

  networkConnectionStatePreparationSnapshotCaptured = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];

  if (networkConnectionStatePreparationSnapshotCaptured)
  {
    networkConnectionStatePreparationSnapshotCaptured2 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  debugNetworkConnectionStatePreparationSnapshotCaptured = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];

  if (debugNetworkConnectionStatePreparationSnapshotCaptured)
  {
    debugNetworkConnectionStatePreparationSnapshotCaptured2 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  networkConnectionStateReadySnapshotCaptured = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];

  if (networkConnectionStateReadySnapshotCaptured)
  {
    networkConnectionStateReadySnapshotCaptured2 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  debugNetworkConnectionStateReadySnapshotCaptured = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];

  v23 = toCopy;
  if (debugNetworkConnectionStateReadySnapshotCaptured)
  {
    debugNetworkConnectionStateReadySnapshotCaptured2 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
  }
}

- (void)deleteDebugNetworkConnectionStateReadySnapshotCaptured
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDebugNetworkConnectionStateReadySnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = 0;

  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = 0;

  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = 0;

  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = 0;

  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = 0;

  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = 0;

  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;

  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = 0;

  v13 = 109;
  if (!capturedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = capturedCopy;
}

- (void)deleteNetworkConnectionStateReadySnapshotCaptured
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_networkConnectionStateReadySnapshotCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNetworkConnectionStateReadySnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = 0;

  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = 0;

  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = 0;

  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = 0;

  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = 0;

  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = 0;

  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;

  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;

  v13 = 108;
  if (!capturedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = capturedCopy;
}

- (void)deleteDebugNetworkConnectionStatePreparationSnapshotCaptured
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = 0;

  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = 0;

  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = 0;

  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = 0;

  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = 0;

  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = 0;

  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = 0;

  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;

  v13 = 107;
  if (!capturedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = capturedCopy;
}

- (void)deleteNetworkConnectionStatePreparationSnapshotCaptured
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_networkConnectionStatePreparationSnapshotCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNetworkConnectionStatePreparationSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = 0;

  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = 0;

  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = 0;

  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = 0;

  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = 0;

  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;

  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = 0;

  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;

  v13 = 106;
  if (!capturedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = capturedCopy;
}

- (void)deletePeerConnectionFailed
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_peerConnectionFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPeerConnectionFailed:(id)failed
{
  failedCopy = failed;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = 0;

  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = 0;

  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = 0;

  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = 0;

  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = 0;

  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;

  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = 0;

  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;

  v13 = 105;
  if (!failedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = failedCopy;
}

- (void)deleteSessionConnectionFailed
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_sessionConnectionFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSessionConnectionFailed:(id)failed
{
  failedCopy = failed;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = 0;

  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = 0;

  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = 0;

  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = 0;

  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = 0;

  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;

  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = 0;

  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;

  v13 = 104;
  if (!failedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = failedCopy;
}

- (void)deleteDebugSessionConnectionSnapshotCaptured
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_debugSessionConnectionSnapshotCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDebugSessionConnectionSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = 0;

  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = 0;

  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = 0;

  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = 0;

  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = 0;

  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;

  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = 0;

  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;

  v13 = 103;
  if (!capturedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = capturedCopy;
}

- (void)deleteSessionConnectionSnapshotCaptured
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_sessionConnectionSnapshotCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSessionConnectionSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = 0;

  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = 0;

  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = 0;

  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = 0;

  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = 0;

  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;

  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = 0;

  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;

  v13 = 102;
  if (!capturedCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = capturedCopy;
}

- (void)deleteSessionConnectionHttpHeaderCreated
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_sessionConnectionHttpHeaderCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSessionConnectionHttpHeaderCreated:(id)created
{
  createdCopy = created;
  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = 0;

  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = 0;

  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = 0;

  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = 0;

  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = 0;

  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = 0;

  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = 0;

  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = 0;

  v13 = 101;
  if (!createdCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = createdCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = NETSchemaNETClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(NETSchemaNETClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NETSchemaNETClientEvent *)self deleteEventMetadata];
  }

  sessionConnectionHttpHeaderCreated = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
  v10 = [sessionConnectionHttpHeaderCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NETSchemaNETClientEvent *)self deleteSessionConnectionHttpHeaderCreated];
  }

  sessionConnectionSnapshotCaptured = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
  v13 = [sessionConnectionSnapshotCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NETSchemaNETClientEvent *)self deleteSessionConnectionSnapshotCaptured];
  }

  debugSessionConnectionSnapshotCaptured = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
  v16 = [debugSessionConnectionSnapshotCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NETSchemaNETClientEvent *)self deleteDebugSessionConnectionSnapshotCaptured];
  }

  sessionConnectionFailed = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
  v19 = [sessionConnectionFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NETSchemaNETClientEvent *)self deleteSessionConnectionFailed];
  }

  peerConnectionFailed = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
  v22 = [peerConnectionFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(NETSchemaNETClientEvent *)self deletePeerConnectionFailed];
  }

  networkConnectionStatePreparationSnapshotCaptured = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
  v25 = [networkConnectionStatePreparationSnapshotCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(NETSchemaNETClientEvent *)self deleteNetworkConnectionStatePreparationSnapshotCaptured];
  }

  debugNetworkConnectionStatePreparationSnapshotCaptured = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
  v28 = [debugNetworkConnectionStatePreparationSnapshotCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(NETSchemaNETClientEvent *)self deleteDebugNetworkConnectionStatePreparationSnapshotCaptured];
  }

  networkConnectionStateReadySnapshotCaptured = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
  v31 = [networkConnectionStateReadySnapshotCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(NETSchemaNETClientEvent *)self deleteNetworkConnectionStateReadySnapshotCaptured];
  }

  debugNetworkConnectionStateReadySnapshotCaptured = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
  v34 = [debugNetworkConnectionStateReadySnapshotCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(NETSchemaNETClientEvent *)self deleteDebugNetworkConnectionStateReadySnapshotCaptured];
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
  eventMetadata = [(NETSchemaNETClientEvent *)self eventMetadata];
  netId = [eventMetadata netId];

  if (netId)
  {
    value = [netId value];
    if (value)
    {
      value2 = [netId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 18;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(NETSchemaNETClientEvent *)self eventMetadata];
  netId = [eventMetadata netId];

  if (!netId)
  {
    goto LABEL_5;
  }

  value = [netId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [netId value];
  v6 = [value2 length];

  if (v6)
  {
    value = netId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(NETSchemaNETClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA0C8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78EA110[tag - 101];
  }
}

@end