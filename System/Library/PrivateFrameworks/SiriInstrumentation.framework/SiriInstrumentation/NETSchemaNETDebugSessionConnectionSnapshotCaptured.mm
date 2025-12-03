@interface NETSchemaNETDebugSessionConnectionSnapshotCaptured
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)initWithDictionary:(id)dictionary;
- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNetworkInterfaces:(id)interfaces;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETDebugSessionConnectionSnapshotCaptured

- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = NETSchemaNETDebugSessionConnectionSnapshotCaptured;
  v5 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sequenceNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionSnapshotCaptured setSequenceNumber:](v5, "setSequenceNumber:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"network"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[NETSchemaNETDebugSessionConnectionNetwork alloc] initWithDictionary:v7];
      [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)v5 setNetwork:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"networkInterfaces"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v7;
      v24 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[NETSchemaNETDebugNetworkInterface alloc] initWithDictionary:v15];
              [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)v5 addNetworkInterfaces:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v12);
      }

      v7 = v23;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:{@"pingInfo", v23, v24, v25}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[NETSchemaNETDebugSessionConnectionPingInfo alloc] initWithDictionary:v17];
      [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)v5 setPingInfo:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"quality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[NETSchemaNETDebugSessionConnectionQuality alloc] initWithDictionary:v19];
      [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)v5 setQuality:v20];
    }

    v21 = v5;
  }

  return v5;
}

- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_network)
  {
    network = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
    dictionaryRepresentation = [network dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"network"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"network"];
    }
  }

  if ([(NSArray *)self->_networkInterfaces count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_networkInterfaces;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"networkInterfaces"];
  }

  if (self->_pingInfo)
  {
    pingInfo = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
    dictionaryRepresentation3 = [pingInfo dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pingInfo"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pingInfo"];
    }
  }

  if (self->_quality)
  {
    quality = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
    dictionaryRepresentation4 = [quality dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"quality"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"quality"];
    }
  }

  if (*&self->_has)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugSessionConnectionSnapshotCaptured sequenceNumber](self, "sequenceNumber")}];
    [dictionary setObject:v21 forKeyedSubscript:@"sequenceNumber"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_sequenceNumber;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NETSchemaNETDebugSessionConnectionNetwork *)self->_network hash]^ v3;
  v5 = [(NSArray *)self->_networkInterfaces hash];
  v6 = v4 ^ v5 ^ [(NETSchemaNETDebugSessionConnectionPingInfo *)self->_pingInfo hash];
  return v6 ^ [(NETSchemaNETDebugSessionConnectionQuality *)self->_quality hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    sequenceNumber = self->_sequenceNumber;
    if (sequenceNumber != [equalCopy sequenceNumber])
    {
      goto LABEL_25;
    }
  }

  network = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
  network2 = [equalCopy network];
  if ((network != 0) == (network2 == 0))
  {
    goto LABEL_24;
  }

  network3 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
  if (network3)
  {
    v9 = network3;
    network4 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
    network5 = [equalCopy network];
    v12 = [network4 isEqual:network5];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  network = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self networkInterfaces];
  network2 = [equalCopy networkInterfaces];
  if ((network != 0) == (network2 == 0))
  {
    goto LABEL_24;
  }

  networkInterfaces = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self networkInterfaces];
  if (networkInterfaces)
  {
    v14 = networkInterfaces;
    networkInterfaces2 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self networkInterfaces];
    networkInterfaces3 = [equalCopy networkInterfaces];
    v17 = [networkInterfaces2 isEqual:networkInterfaces3];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  network = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
  network2 = [equalCopy pingInfo];
  if ((network != 0) == (network2 == 0))
  {
    goto LABEL_24;
  }

  pingInfo = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
  if (pingInfo)
  {
    v19 = pingInfo;
    pingInfo2 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
    pingInfo3 = [equalCopy pingInfo];
    v22 = [pingInfo2 isEqual:pingInfo3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  network = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
  network2 = [equalCopy quality];
  if ((network != 0) != (network2 == 0))
  {
    quality = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
    if (!quality)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = quality;
    quality2 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
    quality3 = [equalCopy quality];
    v27 = [quality2 isEqual:quality3];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  network = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];

  if (network)
  {
    network2 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_networkInterfaces;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  pingInfo = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];

  if (pingInfo)
  {
    pingInfo2 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
    PBDataWriterWriteSubmessage();
  }

  quality = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];

  if (quality)
  {
    quality2 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addNetworkInterfaces:(id)interfaces
{
  interfacesCopy = interfaces;
  networkInterfaces = self->_networkInterfaces;
  v8 = interfacesCopy;
  if (!networkInterfaces)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_networkInterfaces;
    self->_networkInterfaces = array;

    interfacesCopy = v8;
    networkInterfaces = self->_networkInterfaces;
  }

  [(NSArray *)networkInterfaces addObject:interfacesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = NETSchemaNETDebugSessionConnectionSnapshotCaptured;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  network = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
  v7 = [network applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self deleteNetwork];
  }

  networkInterfaces = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self networkInterfaces];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:networkInterfaces underConditions:policyCopy];
  [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self setNetworkInterfaces:v10];

  pingInfo = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
  v12 = [pingInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self deletePingInfo];
  }

  quality = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
  v15 = [quality applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
  {
    [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self deleteQuality];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end