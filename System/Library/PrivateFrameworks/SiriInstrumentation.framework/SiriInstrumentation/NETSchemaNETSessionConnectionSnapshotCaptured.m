@interface NETSchemaNETSessionConnectionSnapshotCaptured
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETSessionConnectionSnapshotCaptured)initWithDictionary:(id)a3;
- (NETSchemaNETSessionConnectionSnapshotCaptured)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNetworkInterfaces:(id)a3;
- (void)setHasProvider:(BOOL)a3;
- (void)setHasSnapshotTriggerReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETSessionConnectionSnapshotCaptured

- (NETSchemaNETSessionConnectionSnapshotCaptured)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = NETSchemaNETSessionConnectionSnapshotCaptured;
  v5 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sequenceNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionSnapshotCaptured setSequenceNumber:](v5, "setSequenceNumber:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"snapshotTriggerReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionSnapshotCaptured setSnapshotTriggerReason:](v5, "setSnapshotTriggerReason:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"network"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NETSchemaNETSessionConnectionNetwork alloc] initWithDictionary:v8];
      [(NETSchemaNETSessionConnectionSnapshotCaptured *)v5 setNetwork:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"networkInterfaces"];
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

    v18 = [v4 objectForKeyedSubscript:@"provider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionSnapshotCaptured setProvider:](v5, "setProvider:", [v18 intValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (NETSchemaNETSessionConnectionSnapshotCaptured)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_network)
  {
    v4 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"network"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"network"];
    }
  }

  if ([(NSArray *)self->_networkInterfaces count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"networkInterfaces"];
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
    [v3 setObject:v22 forKeyedSubscript:@"sequenceNumber"];

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

  [v3 setObject:v21 forKeyedSubscript:{@"provider", v23}];
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
  v16 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self snapshotTriggerReason];
  v17 = @"NETSNAPSHOTSTATE_UNKNOWN";
  if (v16 == 1)
  {
    v17 = @"NETSNAPSHOTSTATE_SIRI_REQUEST_END";
  }

  if (v16 == 2)
  {
    v18 = @"NETSNAPSHOTSTATE_SESSION_FAILED";
  }

  else
  {
    v18 = v17;
  }

  [v3 setObject:v18 forKeyedSubscript:@"snapshotTriggerReason"];
LABEL_27:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v23];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = v4[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    sequenceNumber = self->_sequenceNumber;
    if (sequenceNumber != [v4 sequenceNumber])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    snapshotTriggerReason = self->_snapshotTriggerReason;
    if (snapshotTriggerReason != [v4 snapshotTriggerReason])
    {
      goto LABEL_19;
    }
  }

  v10 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
  v11 = [v4 network];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_18;
  }

  v12 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
  if (v12)
  {
    v13 = v12;
    v14 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
    v15 = [v4 network];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self networkInterfaces];
  v11 = [v4 networkInterfaces];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self networkInterfaces];
  if (v17)
  {
    v18 = v17;
    v19 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self networkInterfaces];
    v20 = [v4 networkInterfaces];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v24 = (*&self->_has >> 2) & 1;
  if (v24 == ((v4[36] >> 2) & 1))
  {
    if (!v24 || (provider = self->_provider, provider == [v4 provider]))
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

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v6 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];

  if (v6)
  {
    v7 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
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

- (void)setHasProvider:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addNetworkInterfaces:(id)a3
{
  v4 = a3;
  networkInterfaces = self->_networkInterfaces;
  v8 = v4;
  if (!networkInterfaces)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_networkInterfaces;
    self->_networkInterfaces = v6;

    v4 = v8;
    networkInterfaces = self->_networkInterfaces;
  }

  [(NSArray *)networkInterfaces addObject:v4];
}

- (void)setHasSnapshotTriggerReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NETSchemaNETSessionConnectionSnapshotCaptured;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self network];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NETSchemaNETSessionConnectionSnapshotCaptured *)self deleteNetwork];
  }

  v9 = [(NETSchemaNETSessionConnectionSnapshotCaptured *)self networkInterfaces];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
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