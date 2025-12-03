@interface NETSchemaNETSessionConnectionSnapshotCaptured
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETSessionConnectionSnapshotCaptured)initWithDictionary:(id)dictionary;
- (NETSchemaNETSessionConnectionSnapshotCaptured)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNetworkInterfaces:(id)interfaces;
- (void)setHasProvider:(BOOL)provider;
- (void)setHasSnapshotTriggerReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETSessionConnectionSnapshotCaptured

- (NETSchemaNETSessionConnectionSnapshotCaptured)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = NETSchemaNETSessionConnectionSnapshotCaptured;
  v5 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sequenceNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionSnapshotCaptured setSequenceNumber:](v5, "setSequenceNumber:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"snapshotTriggerReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionSnapshotCaptured setSnapshotTriggerReason:](v5, "setSnapshotTriggerReason:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"network"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NETSchemaNETSessionConnectionNetwork alloc] initWithDictionary:v8];
      [(NETSchemaNETSessionConnectionSnapshotCaptured *)v5 setNetwork:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"networkInterfaces"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v8;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[NETSchemaNETNetworkInterface alloc] initWithDictionary:v16];
              [(NETSchemaNETSessionConnectionSnapshotCaptured *)v5 addNetworkInterfaces:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }

      v6 = v22;
      v8 = v21;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionSnapshotCaptured setProvider:](v5, "setProvider:", [v18 intValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (NETSchemaNETSessionConnectionSnapshotCaptured)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self dictionaryRepresentation];
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
    network = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
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

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_34:
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETSessionConnectionSnapshotCaptured sequenceNumber](self, "sequenceNumber", v23)}];
    [dictionary setObject:v22 forKeyedSubscript:@"sequenceNumber"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v20 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self provider]- 1;
  if (v20 > 4)
  {
    v21 = @"NETPROVIDER_UNKNOWN";
  }

  else
  {
    v21 = off_1E78DB408[v20];
  }

  [dictionary setObject:v21 forKeyedSubscript:{@"provider", v23}];
  has = self->_has;
  if (has)
  {
    goto LABEL_34;
  }

LABEL_20:
  if ((has & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  snapshotTriggerReason = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self snapshotTriggerReason];
  v17 = @"NETSNAPSHOTSTATE_UNKNOWN";
  if (snapshotTriggerReason == 1)
  {
    v17 = @"NETSNAPSHOTSTATE_SIRI_REQUEST_END";
  }

  if (snapshotTriggerReason == 2)
  {
    v18 = @"NETSNAPSHOTSTATE_SESSION_FAILED";
  }

  else
  {
    v18 = v17;
  }

  [dictionary setObject:v18 forKeyedSubscript:@"snapshotTriggerReason"];
LABEL_27:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_sequenceNumber;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_snapshotTriggerReason;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NETSchemaNETSessionConnectionNetwork *)self->_network hash];
  v6 = [(NSArray *)self->_networkInterfaces hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_provider;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = equalCopy[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    sequenceNumber = self->_sequenceNumber;
    if (sequenceNumber != [equalCopy sequenceNumber])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    snapshotTriggerReason = self->_snapshotTriggerReason;
    if (snapshotTriggerReason != [equalCopy snapshotTriggerReason])
    {
      goto LABEL_19;
    }
  }

  network = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
  network2 = [equalCopy network];
  if ((network != 0) == (network2 == 0))
  {
    goto LABEL_18;
  }

  network3 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
  if (network3)
  {
    v13 = network3;
    network4 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
    network5 = [equalCopy network];
    v16 = [network4 isEqual:network5];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  network = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self networkInterfaces];
  network2 = [equalCopy networkInterfaces];
  if ((network != 0) == (network2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  networkInterfaces = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self networkInterfaces];
  if (networkInterfaces)
  {
    v18 = networkInterfaces;
    networkInterfaces2 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self networkInterfaces];
    networkInterfaces3 = [equalCopy networkInterfaces];
    v21 = [networkInterfaces2 isEqual:networkInterfaces3];

    if (!v21)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v24 = (*&self->_has >> 2) & 1;
  if (v24 == ((equalCopy[36] >> 2) & 1))
  {
    if (!v24 || (provider = self->_provider, provider == [equalCopy provider]))
    {
      v22 = 1;
      goto LABEL_20;
    }
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  network = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];

  if (network)
  {
    network2 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_networkInterfaces;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasProvider:(BOOL)provider
{
  if (provider)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)setHasSnapshotTriggerReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = NETSchemaNETSessionConnectionSnapshotCaptured;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  network = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
  v7 = [network applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NETSchemaNETSessionConnectionSnapshotCaptured *)self deleteNetwork];
  }

  networkInterfaces = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self networkInterfaces];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:networkInterfaces underConditions:policyCopy];
  [(NETSchemaNETSessionConnectionSnapshotCaptured *)self setNetworkInterfaces:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end