@interface NETSchemaNETDebugSessionConnectionSnapshotCaptured
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)initWithDictionary:(id)a3;
- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNetworkInterfaces:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETDebugSessionConnectionSnapshotCaptured

- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)initWithDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = NETSchemaNETDebugSessionConnectionSnapshotCaptured;
  v5 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sequenceNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionSnapshotCaptured setSequenceNumber:](v5, "setSequenceNumber:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"network"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[NETSchemaNETDebugSessionConnectionNetwork alloc] initWithDictionary:v7];
      [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)v5 setNetwork:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"networkInterfaces"];
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

    v17 = [v4 objectForKeyedSubscript:{@"pingInfo", v23, v24, v25}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[NETSchemaNETDebugSessionConnectionPingInfo alloc] initWithDictionary:v17];
      [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)v5 setPingInfo:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"quality"];
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

- (NETSchemaNETDebugSessionConnectionSnapshotCaptured)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self dictionaryRepresentation];
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
    v4 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
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

  if (self->_pingInfo)
  {
    v15 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"pingInfo"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"pingInfo"];
    }
  }

  if (self->_quality)
  {
    v18 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"quality"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"quality"];
    }
  }

  if (*&self->_has)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugSessionConnectionSnapshotCaptured sequenceNumber](self, "sequenceNumber")}];
    [v3 setObject:v21 forKeyedSubscript:@"sequenceNumber"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v23];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    sequenceNumber = self->_sequenceNumber;
    if (sequenceNumber != [v4 sequenceNumber])
    {
      goto LABEL_25;
    }
  }

  v6 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
  v7 = [v4 network];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v8 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
  if (v8)
  {
    v9 = v8;
    v10 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
    v11 = [v4 network];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self networkInterfaces];
  v7 = [v4 networkInterfaces];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v13 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self networkInterfaces];
  if (v13)
  {
    v14 = v13;
    v15 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self networkInterfaces];
    v16 = [v4 networkInterfaces];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
  v7 = [v4 pingInfo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v18 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
  if (v18)
  {
    v19 = v18;
    v20 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
    v21 = [v4 pingInfo];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
  v7 = [v4 quality];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
    if (!v23)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = v23;
    v25 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
    v26 = [v4 quality];
    v27 = [v25 isEqual:v26];

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

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];

  if (v5)
  {
    v6 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
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

  v12 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];

  if (v12)
  {
    v13 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];

  if (v14)
  {
    v15 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
    PBDataWriterWriteSubmessage();
  }
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NETSchemaNETDebugSessionConnectionSnapshotCaptured;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self network];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self deleteNetwork];
  }

  v9 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self networkInterfaces];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self setNetworkInterfaces:v10];

  v11 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self pingInfo];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self deletePingInfo];
  }

  v14 = [(NETSchemaNETDebugSessionConnectionSnapshotCaptured *)self quality];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
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