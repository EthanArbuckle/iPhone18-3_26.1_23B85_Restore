@interface NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)initWithDictionary:(id)dictionary;
- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addConnectionEstablishmentProtocols:(id)protocols;
- (void)addResolution:(id)resolution;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured

- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured;
  v5 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"resolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v34;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v34 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v33 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[NETSchemaNETEstablishmentResolution alloc] initWithDictionary:v12];
              [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)v5 addResolution:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"proxyConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NETSchemaNETProxyConfiguration alloc] initWithDictionary:v14];
      [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)v5 setProxyConfiguration:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"durationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured setDurationInMs:](v5, "setDurationInMs:", [v16 unsignedLongLongValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"connectionEstablishmentProtocols"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v6;
      v28 = dictionaryCopy;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[NETSchemaNETHandShakeProtocol alloc] initWithDictionary:v23];
              [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)v5 addConnectionEstablishmentProtocols:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v20);
      }

      v6 = v27;
      dictionaryCopy = v28;
    }

    v25 = v5;
  }

  return v5;
}

- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_connectionEstablishmentProtocols count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = self->_connectionEstablishmentProtocols;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"connectionEstablishmentProtocols"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured durationInMs](self, "durationInMs")}];
    [dictionary setObject:v12 forKeyedSubscript:@"durationInMs"];
  }

  if (self->_proxyConfiguration)
  {
    proxyConfiguration = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
    dictionaryRepresentation2 = [proxyConfiguration dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"proxyConfiguration"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"proxyConfiguration"];
    }
  }

  if ([(NSArray *)self->_resolutions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = self->_resolutions;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation3 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"resolution"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v25];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_resolutions hash];
  v4 = [(NETSchemaNETProxyConfiguration *)self->_proxyConfiguration hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_durationInMs;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_connectionEstablishmentProtocols hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  resolutions = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self resolutions];
  resolutions2 = [equalCopy resolutions];
  if ((resolutions != 0) == (resolutions2 == 0))
  {
    goto LABEL_19;
  }

  resolutions3 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self resolutions];
  if (resolutions3)
  {
    v8 = resolutions3;
    resolutions4 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self resolutions];
    resolutions5 = [equalCopy resolutions];
    v11 = [resolutions4 isEqual:resolutions5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  resolutions = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
  resolutions2 = [equalCopy proxyConfiguration];
  if ((resolutions != 0) == (resolutions2 == 0))
  {
    goto LABEL_19;
  }

  proxyConfiguration = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
  if (proxyConfiguration)
  {
    v13 = proxyConfiguration;
    proxyConfiguration2 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
    proxyConfiguration3 = [equalCopy proxyConfiguration];
    v16 = [proxyConfiguration2 isEqual:proxyConfiguration3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    durationInMs = self->_durationInMs;
    if (durationInMs != [equalCopy durationInMs])
    {
      goto LABEL_20;
    }
  }

  resolutions = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self connectionEstablishmentProtocols];
  resolutions2 = [equalCopy connectionEstablishmentProtocols];
  if ((resolutions != 0) != (resolutions2 == 0))
  {
    connectionEstablishmentProtocols = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self connectionEstablishmentProtocols];
    if (!connectionEstablishmentProtocols)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = connectionEstablishmentProtocols;
    connectionEstablishmentProtocols2 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self connectionEstablishmentProtocols];
    connectionEstablishmentProtocols3 = [equalCopy connectionEstablishmentProtocols];
    v22 = [connectionEstablishmentProtocols2 isEqual:connectionEstablishmentProtocols3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_resolutions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  proxyConfiguration = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];

  if (proxyConfiguration)
  {
    proxyConfiguration2 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_connectionEstablishmentProtocols;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addConnectionEstablishmentProtocols:(id)protocols
{
  protocolsCopy = protocols;
  connectionEstablishmentProtocols = self->_connectionEstablishmentProtocols;
  v8 = protocolsCopy;
  if (!connectionEstablishmentProtocols)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_connectionEstablishmentProtocols;
    self->_connectionEstablishmentProtocols = array;

    protocolsCopy = v8;
    connectionEstablishmentProtocols = self->_connectionEstablishmentProtocols;
  }

  [(NSArray *)connectionEstablishmentProtocols addObject:protocolsCopy];
}

- (void)addResolution:(id)resolution
{
  resolutionCopy = resolution;
  resolutions = self->_resolutions;
  v8 = resolutionCopy;
  if (!resolutions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_resolutions;
    self->_resolutions = array;

    resolutionCopy = v8;
    resolutions = self->_resolutions;
  }

  [(NSArray *)resolutions addObject:resolutionCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:policyCopy];
  resolutions = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self resolutions];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:resolutions underConditions:policyCopy];
  [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self setResolutions:v7];

  proxyConfiguration = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
  v9 = [proxyConfiguration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self deleteProxyConfiguration];
  }

  connectionEstablishmentProtocols = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self connectionEstablishmentProtocols];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:connectionEstablishmentProtocols underConditions:policyCopy];
  [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self setConnectionEstablishmentProtocols:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end