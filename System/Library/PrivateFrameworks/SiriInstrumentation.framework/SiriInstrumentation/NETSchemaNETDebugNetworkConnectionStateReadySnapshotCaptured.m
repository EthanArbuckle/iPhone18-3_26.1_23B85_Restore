@interface NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)initWithDictionary:(id)a3;
- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addConnectionEstablishmentProtocols:(id)a3;
- (void)addResolution:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured

- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured;
  v5 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"resolution"];
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

    v14 = [v4 objectForKeyedSubscript:@"proxyConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NETSchemaNETProxyConfiguration alloc] initWithDictionary:v14];
      [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)v5 setProxyConfiguration:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"durationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured setDurationInMs:](v5, "setDurationInMs:", [v16 unsignedLongLongValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"connectionEstablishmentProtocols"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v6;
      v28 = v4;
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
      v4 = v28;
    }

    v25 = v5;
  }

  return v5;
}

- (NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_connectionEstablishmentProtocols count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"connectionEstablishmentProtocols"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured durationInMs](self, "durationInMs")}];
    [v3 setObject:v12 forKeyedSubscript:@"durationInMs"];
  }

  if (self->_proxyConfiguration)
  {
    v13 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"proxyConfiguration"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"proxyConfiguration"];
    }
  }

  if ([(NSArray *)self->_resolutions count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
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

          v22 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          if (v22)
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E695DFB0] null];
            [v16 addObject:v23];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"resolution"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v25];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self resolutions];
  v6 = [v4 resolutions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self resolutions];
  if (v7)
  {
    v8 = v7;
    v9 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self resolutions];
    v10 = [v4 resolutions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
  v6 = [v4 proxyConfiguration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v12 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
  if (v12)
  {
    v13 = v12;
    v14 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
    v15 = [v4 proxyConfiguration];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    durationInMs = self->_durationInMs;
    if (durationInMs != [v4 durationInMs])
    {
      goto LABEL_20;
    }
  }

  v5 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self connectionEstablishmentProtocols];
  v6 = [v4 connectionEstablishmentProtocols];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self connectionEstablishmentProtocols];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self connectionEstablishmentProtocols];
    v21 = [v4 connectionEstablishmentProtocols];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];

  if (v10)
  {
    v11 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
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

- (void)addConnectionEstablishmentProtocols:(id)a3
{
  v4 = a3;
  connectionEstablishmentProtocols = self->_connectionEstablishmentProtocols;
  v8 = v4;
  if (!connectionEstablishmentProtocols)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_connectionEstablishmentProtocols;
    self->_connectionEstablishmentProtocols = v6;

    v4 = v8;
    connectionEstablishmentProtocols = self->_connectionEstablishmentProtocols;
  }

  [(NSArray *)connectionEstablishmentProtocols addObject:v4];
}

- (void)addResolution:(id)a3
{
  v4 = a3;
  resolutions = self->_resolutions;
  v8 = v4;
  if (!resolutions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_resolutions;
    self->_resolutions = v6;

    v4 = v8;
    resolutions = self->_resolutions;
  }

  [(NSArray *)resolutions addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:v4];
  v6 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self resolutions];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self setResolutions:v7];

  v8 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self proxyConfiguration];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self deleteProxyConfiguration];
  }

  v11 = [(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured *)self connectionEstablishmentProtocols];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
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