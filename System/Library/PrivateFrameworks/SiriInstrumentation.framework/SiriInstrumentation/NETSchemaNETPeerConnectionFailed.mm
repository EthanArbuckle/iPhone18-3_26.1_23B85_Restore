@interface NETSchemaNETPeerConnectionFailed
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETPeerConnectionFailed)initWithDictionary:(id)dictionary;
- (NETSchemaNETPeerConnectionFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addConnectedBtDevices:(id)devices;
- (void)setHasHasDevice:(BOOL)device;
- (void)setHasIsConnected:(BOOL)connected;
- (void)setHasIsNearby:(BOOL)nearby;
- (void)setHasIsPreferringBtClassic:(BOOL)classic;
- (void)setHasTimeSinceLastNearbyChangeInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETPeerConnectionFailed

- (NETSchemaNETPeerConnectionFailed)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = NETSchemaNETPeerConnectionFailed;
  v5 = [(NETSchemaNETPeerConnectionFailed *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"connectedBtDevices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          v11 = 0;
          do
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [NETSchemaNETBluetoothDevice alloc];
              v14 = [(NETSchemaNETBluetoothDevice *)v13 initWithDictionary:v12, v23];
              [(NETSchemaNETPeerConnectionFailed *)v5 addConnectedBtDevices:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"isCloudConnected", v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPeerConnectionFailed setIsCloudConnected:](v5, "setIsCloudConnected:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isConnected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPeerConnectionFailed setIsConnected:](v5, "setIsConnected:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"hasDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPeerConnectionFailed setHasDevice:](v5, "setHasDevice:", [v17 BOOLValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastNearbyChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 doubleValue];
      [(NETSchemaNETPeerConnectionFailed *)v5 setTimeSinceLastNearbyChangeInSeconds:?];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"isNearby"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPeerConnectionFailed setIsNearby:](v5, "setIsNearby:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isPreferringBtClassic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPeerConnectionFailed setIsPreferringBtClassic:](v5, "setIsPreferringBtClassic:", [v20 BOOLValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (NETSchemaNETPeerConnectionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETPeerConnectionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETPeerConnectionFailed *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_connectedBtDevices count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_connectedBtDevices;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"connectedBtDevices"];
  }

  v12 = *(&self->_isPreferringBtClassic + 1);
  if ((v12 & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETPeerConnectionFailed hasDevice](self, "hasDevice")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasDevice"];

    v12 = *(&self->_isPreferringBtClassic + 1);
    if ((v12 & 1) == 0)
    {
LABEL_15:
      if ((v12 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else if (!*(&self->_isPreferringBtClassic + 1))
  {
    goto LABEL_15;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETPeerConnectionFailed isCloudConnected](self, "isCloudConnected", v21)}];
  [dictionary setObject:v17 forKeyedSubscript:@"isCloudConnected"];

  v12 = *(&self->_isPreferringBtClassic + 1);
  if ((v12 & 2) == 0)
  {
LABEL_16:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETPeerConnectionFailed isConnected](self, "isConnected", v21)}];
  [dictionary setObject:v18 forKeyedSubscript:@"isConnected"];

  v12 = *(&self->_isPreferringBtClassic + 1);
  if ((v12 & 0x10) == 0)
  {
LABEL_17:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETPeerConnectionFailed isNearby](self, "isNearby", v21)}];
  [dictionary setObject:v19 forKeyedSubscript:@"isNearby"];

  v12 = *(&self->_isPreferringBtClassic + 1);
  if ((v12 & 0x20) == 0)
  {
LABEL_18:
    if ((v12 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_27:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETPeerConnectionFailed isPreferringBtClassic](self, "isPreferringBtClassic", v21)}];
  [dictionary setObject:v20 forKeyedSubscript:@"isPreferringBtClassic"];

  if ((*(&self->_isPreferringBtClassic + 1) & 8) != 0)
  {
LABEL_19:
    v13 = MEMORY[0x1E696AD98];
    [(NETSchemaNETPeerConnectionFailed *)self timeSinceLastNearbyChangeInSeconds];
    v14 = [v13 numberWithDouble:?];
    [dictionary setObject:v14 forKeyedSubscript:@"timeSinceLastNearbyChangeInSeconds"];
  }

LABEL_20:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v21];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_connectedBtDevices hash];
  if (*(&self->_isPreferringBtClassic + 1))
  {
    v6 = 2654435761 * self->_isCloudConnected;
    if ((*(&self->_isPreferringBtClassic + 1) & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_isConnected;
      if ((*(&self->_isPreferringBtClassic + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v8 = 0;
      if ((*(&self->_isPreferringBtClassic + 1) & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    if ((*(&self->_isPreferringBtClassic + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*(&self->_isPreferringBtClassic + 1) & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v8 = 2654435761 * self->_hasDevice;
  if ((*(&self->_isPreferringBtClassic + 1) & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  timeSinceLastNearbyChangeInSeconds = self->_timeSinceLastNearbyChangeInSeconds;
  if (timeSinceLastNearbyChangeInSeconds < 0.0)
  {
    timeSinceLastNearbyChangeInSeconds = -timeSinceLastNearbyChangeInSeconds;
  }

  *v4.i64 = floor(timeSinceLastNearbyChangeInSeconds + 0.5);
  v10 = (timeSinceLastNearbyChangeInSeconds - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v5, v4).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_13:
  if ((*(&self->_isPreferringBtClassic + 1) & 0x10) != 0)
  {
    v13 = 2654435761 * self->_isNearby;
    if ((*(&self->_isPreferringBtClassic + 1) & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    v14 = 0;
    return v6 ^ v3 ^ v7 ^ v8 ^ v12 ^ v13 ^ v14;
  }

  v13 = 0;
  if ((*(&self->_isPreferringBtClassic + 1) & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v14 = 2654435761 * self->_isPreferringBtClassic;
  return v6 ^ v3 ^ v7 ^ v8 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  connectedBtDevices = [(NETSchemaNETPeerConnectionFailed *)self connectedBtDevices];
  connectedBtDevices2 = [equalCopy connectedBtDevices];
  v7 = connectedBtDevices2;
  if ((connectedBtDevices != 0) == (connectedBtDevices2 == 0))
  {

    goto LABEL_32;
  }

  connectedBtDevices3 = [(NETSchemaNETPeerConnectionFailed *)self connectedBtDevices];
  if (connectedBtDevices3)
  {
    v9 = connectedBtDevices3;
    connectedBtDevices4 = [(NETSchemaNETPeerConnectionFailed *)self connectedBtDevices];
    connectedBtDevices5 = [equalCopy connectedBtDevices];
    v12 = [connectedBtDevices4 isEqual:connectedBtDevices5];

    if (!v12)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v13 = *(&self->_isPreferringBtClassic + 1);
  v14 = equalCopy[34];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_32:
    v27 = 0;
    goto LABEL_33;
  }

  if (v13)
  {
    isCloudConnected = self->_isCloudConnected;
    if (isCloudConnected != [equalCopy isCloudConnected])
    {
      goto LABEL_32;
    }

    v13 = *(&self->_isPreferringBtClassic + 1);
    v14 = equalCopy[34];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_32;
  }

  if (v16)
  {
    isConnected = self->_isConnected;
    if (isConnected != [equalCopy isConnected])
    {
      goto LABEL_32;
    }

    v13 = *(&self->_isPreferringBtClassic + 1);
    v14 = equalCopy[34];
  }

  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_32;
  }

  if (v18)
  {
    hasDevice = self->_hasDevice;
    if (hasDevice != [equalCopy hasDevice])
    {
      goto LABEL_32;
    }

    v13 = *(&self->_isPreferringBtClassic + 1);
    v14 = equalCopy[34];
  }

  v20 = (v13 >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_32;
  }

  if (v20)
  {
    timeSinceLastNearbyChangeInSeconds = self->_timeSinceLastNearbyChangeInSeconds;
    [equalCopy timeSinceLastNearbyChangeInSeconds];
    if (timeSinceLastNearbyChangeInSeconds != v22)
    {
      goto LABEL_32;
    }

    v13 = *(&self->_isPreferringBtClassic + 1);
    v14 = equalCopy[34];
  }

  v23 = (v13 >> 4) & 1;
  if (v23 != ((v14 >> 4) & 1))
  {
    goto LABEL_32;
  }

  if (v23)
  {
    isNearby = self->_isNearby;
    if (isNearby == [equalCopy isNearby])
    {
      v13 = *(&self->_isPreferringBtClassic + 1);
      v14 = equalCopy[34];
      goto LABEL_28;
    }

    goto LABEL_32;
  }

LABEL_28:
  v25 = (v13 >> 5) & 1;
  if (v25 != ((v14 >> 5) & 1))
  {
    goto LABEL_32;
  }

  if (v25)
  {
    isPreferringBtClassic = self->_isPreferringBtClassic;
    if (isPreferringBtClassic != [equalCopy isPreferringBtClassic])
    {
      goto LABEL_32;
    }
  }

  v27 = 1;
LABEL_33:

  return v27;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_connectedBtDevices;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *(&self->_isPreferringBtClassic + 1);
  if (v10)
  {
    PBDataWriterWriteBOOLField();
    v10 = *(&self->_isPreferringBtClassic + 1);
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((*(&self->_isPreferringBtClassic + 1) & 2) == 0)
  {
    goto LABEL_10;
  }

  PBDataWriterWriteBOOLField();
  v10 = *(&self->_isPreferringBtClassic + 1);
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteBOOLField();
  v10 = *(&self->_isPreferringBtClassic + 1);
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    PBDataWriterWriteBOOLField();
    if ((*(&self->_isPreferringBtClassic + 1) & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_19:
  PBDataWriterWriteDoubleField();
  v10 = *(&self->_isPreferringBtClassic + 1);
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v10 & 0x20) != 0)
  {
LABEL_14:
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
}

- (void)setHasIsPreferringBtClassic:(BOOL)classic
{
  if (classic)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPreferringBtClassic + 1) = *(&self->_isPreferringBtClassic + 1) & 0xDF | v3;
}

- (void)setHasIsNearby:(BOOL)nearby
{
  if (nearby)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPreferringBtClassic + 1) = *(&self->_isPreferringBtClassic + 1) & 0xEF | v3;
}

- (void)setHasTimeSinceLastNearbyChangeInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPreferringBtClassic + 1) = *(&self->_isPreferringBtClassic + 1) & 0xF7 | v3;
}

- (void)setHasHasDevice:(BOOL)device
{
  if (device)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPreferringBtClassic + 1) = *(&self->_isPreferringBtClassic + 1) & 0xFB | v3;
}

- (void)setHasIsConnected:(BOOL)connected
{
  if (connected)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isPreferringBtClassic + 1) = *(&self->_isPreferringBtClassic + 1) & 0xFD | v3;
}

- (void)addConnectedBtDevices:(id)devices
{
  devicesCopy = devices;
  connectedBtDevices = self->_connectedBtDevices;
  v8 = devicesCopy;
  if (!connectedBtDevices)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_connectedBtDevices;
    self->_connectedBtDevices = array;

    devicesCopy = v8;
    connectedBtDevices = self->_connectedBtDevices;
  }

  [(NSArray *)connectedBtDevices addObject:devicesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NETSchemaNETPeerConnectionFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NETSchemaNETPeerConnectionFailed *)self connectedBtDevices:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(NETSchemaNETPeerConnectionFailed *)self setConnectedBtDevices:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end