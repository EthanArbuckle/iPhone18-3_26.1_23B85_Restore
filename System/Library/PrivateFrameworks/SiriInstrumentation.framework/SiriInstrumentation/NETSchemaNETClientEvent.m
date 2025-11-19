@interface NETSchemaNETClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETClientEvent)initWithDictionary:(id)a3;
- (NETSchemaNETClientEvent)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)a3;
- (void)setDebugNetworkConnectionStateReadySnapshotCaptured:(id)a3;
- (void)setDebugSessionConnectionSnapshotCaptured:(id)a3;
- (void)setNetworkConnectionStatePreparationSnapshotCaptured:(id)a3;
- (void)setNetworkConnectionStateReadySnapshotCaptured:(id)a3;
- (void)setPeerConnectionFailed:(id)a3;
- (void)setSessionConnectionFailed:(id)a3;
- (void)setSessionConnectionHttpHeaderCreated:(id)a3;
- (void)setSessionConnectionSnapshotCaptured:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETClientEvent

- (id)qualifiedMessageName
{
  v2 = [(NETSchemaNETClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 8)
  {
    return @"com.apple.aiml.siri.net.NETClientEvent";
  }

  else
  {
    return off_1E78DB060[v2 - 101];
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

- (NETSchemaNETClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = NETSchemaNETClientEvent;
  v5 = [(NETSchemaNETClientEvent *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NETSchemaNETClientEventMetadata alloc] initWithDictionary:v6];
      [(NETSchemaNETClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sessionConnectionHttpHeaderCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NETSchemaNETSessionConnectionHttpHeaderCreated alloc] initWithDictionary:v8];
      [(NETSchemaNETClientEvent *)v5 setSessionConnectionHttpHeaderCreated:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"sessionConnectionSnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NETSchemaNETSessionConnectionSnapshotCaptured alloc] initWithDictionary:v10];
      [(NETSchemaNETClientEvent *)v5 setSessionConnectionSnapshotCaptured:v11];
    }

    v30 = v10;
    v12 = [v4 objectForKeyedSubscript:@"debugSessionConnectionSnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NETSchemaNETDebugSessionConnectionSnapshotCaptured alloc] initWithDictionary:v12];
      [(NETSchemaNETClientEvent *)v5 setDebugSessionConnectionSnapshotCaptured:v13];
    }

    v29 = v12;
    v14 = [v4 objectForKeyedSubscript:@"sessionConnectionFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NETSchemaNETSessionConnectionFailed alloc] initWithDictionary:v14];
      [(NETSchemaNETClientEvent *)v5 setSessionConnectionFailed:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"peerConnectionFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NETSchemaNETPeerConnectionFailed alloc] initWithDictionary:v16];
      [(NETSchemaNETClientEvent *)v5 setPeerConnectionFailed:v17];
    }

    v31 = v8;
    v18 = [v4 objectForKeyedSubscript:@"networkConnectionStatePreparationSnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured alloc] initWithDictionary:v18];
      [(NETSchemaNETClientEvent *)v5 setNetworkConnectionStatePreparationSnapshotCaptured:v19];
    }

    v20 = v6;
    v21 = [v4 objectForKeyedSubscript:@"debugNetworkConnectionStatePreparationSnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured alloc] initWithDictionary:v21];
      [(NETSchemaNETClientEvent *)v5 setDebugNetworkConnectionStatePreparationSnapshotCaptured:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"networkConnectionStateReadySnapshotCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[NETSchemaNETNetworkConnectionStateReadySnapshotCaptured alloc] initWithDictionary:v23];
      [(NETSchemaNETClientEvent *)v5 setNetworkConnectionStateReadySnapshotCaptured:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"debugNetworkConnectionStateReadySnapshotCaptured"];
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

- (NETSchemaNETClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETClientEvent *)self dictionaryRepresentation];
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
  if (self->_debugNetworkConnectionStatePreparationSnapshotCaptured)
  {
    v4 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"debugNetworkConnectionStatePreparationSnapshotCaptured"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"debugNetworkConnectionStatePreparationSnapshotCaptured"];
    }
  }

  if (self->_debugNetworkConnectionStateReadySnapshotCaptured)
  {
    v7 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"debugNetworkConnectionStateReadySnapshotCaptured"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"debugNetworkConnectionStateReadySnapshotCaptured"];
    }
  }

  if (self->_debugSessionConnectionSnapshotCaptured)
  {
    v10 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"debugSessionConnectionSnapshotCaptured"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"debugSessionConnectionSnapshotCaptured"];
    }
  }

  if (self->_eventMetadata)
  {
    v13 = [(NETSchemaNETClientEvent *)self eventMetadata];
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

  if (self->_networkConnectionStatePreparationSnapshotCaptured)
  {
    v16 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"networkConnectionStatePreparationSnapshotCaptured"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"networkConnectionStatePreparationSnapshotCaptured"];
    }
  }

  if (self->_networkConnectionStateReadySnapshotCaptured)
  {
    v19 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"networkConnectionStateReadySnapshotCaptured"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"networkConnectionStateReadySnapshotCaptured"];
    }
  }

  if (self->_peerConnectionFailed)
  {
    v22 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"peerConnectionFailed"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"peerConnectionFailed"];
    }
  }

  if (self->_sessionConnectionFailed)
  {
    v25 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"sessionConnectionFailed"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"sessionConnectionFailed"];
    }
  }

  if (self->_sessionConnectionHttpHeaderCreated)
  {
    v28 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"sessionConnectionHttpHeaderCreated"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"sessionConnectionHttpHeaderCreated"];
    }
  }

  if (self->_sessionConnectionSnapshotCaptured)
  {
    v31 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"sessionConnectionSnapshotCaptured"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"sessionConnectionSnapshotCaptured"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_53;
  }

  v6 = [(NETSchemaNETClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v8 = [(NETSchemaNETClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(NETSchemaNETClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
  v7 = [v4 sessionConnectionHttpHeaderCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v13 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
  if (v13)
  {
    v14 = v13;
    v15 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
    v16 = [v4 sessionConnectionHttpHeaderCreated];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
  v7 = [v4 sessionConnectionSnapshotCaptured];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v18 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
  if (v18)
  {
    v19 = v18;
    v20 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
    v21 = [v4 sessionConnectionSnapshotCaptured];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
  v7 = [v4 debugSessionConnectionSnapshotCaptured];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v23 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
  if (v23)
  {
    v24 = v23;
    v25 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
    v26 = [v4 debugSessionConnectionSnapshotCaptured];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
  v7 = [v4 sessionConnectionFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v28 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
  if (v28)
  {
    v29 = v28;
    v30 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
    v31 = [v4 sessionConnectionFailed];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
  v7 = [v4 peerConnectionFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v33 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
  if (v33)
  {
    v34 = v33;
    v35 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
    v36 = [v4 peerConnectionFailed];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
  v7 = [v4 networkConnectionStatePreparationSnapshotCaptured];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v38 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
  if (v38)
  {
    v39 = v38;
    v40 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
    v41 = [v4 networkConnectionStatePreparationSnapshotCaptured];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
  v7 = [v4 debugNetworkConnectionStatePreparationSnapshotCaptured];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v43 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
  if (v43)
  {
    v44 = v43;
    v45 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
    v46 = [v4 debugNetworkConnectionStatePreparationSnapshotCaptured];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
  v7 = [v4 networkConnectionStateReadySnapshotCaptured];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v48 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
  if (v48)
  {
    v49 = v48;
    v50 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
    v51 = [v4 networkConnectionStateReadySnapshotCaptured];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
  v7 = [v4 debugNetworkConnectionStateReadySnapshotCaptured];
  if ((v6 != 0) != (v7 == 0))
  {
    v53 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
    if (!v53)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = v53;
    v55 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
    v56 = [v4 debugNetworkConnectionStateReadySnapshotCaptured];
    v57 = [v55 isEqual:v56];

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

- (void)writeTo:(id)a3
{
  v25 = a3;
  v4 = [(NETSchemaNETClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(NETSchemaNETClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];

  if (v6)
  {
    v7 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];

  if (v8)
  {
    v9 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];

  if (v10)
  {
    v11 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];

  if (v12)
  {
    v13 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];

  if (v14)
  {
    v15 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];

  if (v16)
  {
    v17 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];

  if (v18)
  {
    v19 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];

  if (v20)
  {
    v21 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];

  v23 = v25;
  if (v22)
  {
    v24 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
    PBDataWriterWriteSubmessage();

    v23 = v25;
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

- (void)setDebugNetworkConnectionStateReadySnapshotCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  debugNetworkConnectionStateReadySnapshotCaptured = self->_debugNetworkConnectionStateReadySnapshotCaptured;
  self->_debugNetworkConnectionStateReadySnapshotCaptured = v4;
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

- (void)setNetworkConnectionStateReadySnapshotCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  networkConnectionStateReadySnapshotCaptured = self->_networkConnectionStateReadySnapshotCaptured;
  self->_networkConnectionStateReadySnapshotCaptured = v4;
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

- (void)setDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  debugNetworkConnectionStatePreparationSnapshotCaptured = self->_debugNetworkConnectionStatePreparationSnapshotCaptured;
  self->_debugNetworkConnectionStatePreparationSnapshotCaptured = v4;
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

- (void)setNetworkConnectionStatePreparationSnapshotCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  networkConnectionStatePreparationSnapshotCaptured = self->_networkConnectionStatePreparationSnapshotCaptured;
  self->_networkConnectionStatePreparationSnapshotCaptured = v4;
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

- (void)setPeerConnectionFailed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  peerConnectionFailed = self->_peerConnectionFailed;
  self->_peerConnectionFailed = v4;
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

- (void)setSessionConnectionFailed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  sessionConnectionFailed = self->_sessionConnectionFailed;
  self->_sessionConnectionFailed = v4;
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

- (void)setDebugSessionConnectionSnapshotCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  debugSessionConnectionSnapshotCaptured = self->_debugSessionConnectionSnapshotCaptured;
  self->_debugSessionConnectionSnapshotCaptured = v4;
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

- (void)setSessionConnectionSnapshotCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  sessionConnectionSnapshotCaptured = self->_sessionConnectionSnapshotCaptured;
  self->_sessionConnectionSnapshotCaptured = v4;
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

- (void)setSessionConnectionHttpHeaderCreated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  sessionConnectionHttpHeaderCreated = self->_sessionConnectionHttpHeaderCreated;
  self->_sessionConnectionHttpHeaderCreated = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = NETSchemaNETClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:v4];
  v6 = [(NETSchemaNETClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NETSchemaNETClientEvent *)self deleteEventMetadata];
  }

  v9 = [(NETSchemaNETClientEvent *)self sessionConnectionHttpHeaderCreated];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NETSchemaNETClientEvent *)self deleteSessionConnectionHttpHeaderCreated];
  }

  v12 = [(NETSchemaNETClientEvent *)self sessionConnectionSnapshotCaptured];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NETSchemaNETClientEvent *)self deleteSessionConnectionSnapshotCaptured];
  }

  v15 = [(NETSchemaNETClientEvent *)self debugSessionConnectionSnapshotCaptured];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(NETSchemaNETClientEvent *)self deleteDebugSessionConnectionSnapshotCaptured];
  }

  v18 = [(NETSchemaNETClientEvent *)self sessionConnectionFailed];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(NETSchemaNETClientEvent *)self deleteSessionConnectionFailed];
  }

  v21 = [(NETSchemaNETClientEvent *)self peerConnectionFailed];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(NETSchemaNETClientEvent *)self deletePeerConnectionFailed];
  }

  v24 = [(NETSchemaNETClientEvent *)self networkConnectionStatePreparationSnapshotCaptured];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(NETSchemaNETClientEvent *)self deleteNetworkConnectionStatePreparationSnapshotCaptured];
  }

  v27 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStatePreparationSnapshotCaptured];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(NETSchemaNETClientEvent *)self deleteDebugNetworkConnectionStatePreparationSnapshotCaptured];
  }

  v30 = [(NETSchemaNETClientEvent *)self networkConnectionStateReadySnapshotCaptured];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(NETSchemaNETClientEvent *)self deleteNetworkConnectionStateReadySnapshotCaptured];
  }

  v33 = [(NETSchemaNETClientEvent *)self debugNetworkConnectionStateReadySnapshotCaptured];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
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
  v2 = [(NETSchemaNETClientEvent *)self eventMetadata];
  v3 = [v2 netId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 18;
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
  v2 = [(NETSchemaNETClientEvent *)self eventMetadata];
  v3 = [v2 netId];

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
  v3 = [(NETSchemaNETClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA0C8[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78EA110[a3 - 101];
  }
}

@end