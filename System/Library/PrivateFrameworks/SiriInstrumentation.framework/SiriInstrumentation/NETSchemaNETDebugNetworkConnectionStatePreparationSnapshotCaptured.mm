@interface NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured)initWithDictionary:(id)dictionary;
- (NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPathGateways:(id)gateways;
- (void)addPathInterfaces:(id)interfaces;
- (void)setHasHasIpv4:(BOOL)ipv4;
- (void)setHasHasIpv6:(BOOL)ipv6;
- (void)setHasIsConstrained:(BOOL)constrained;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured

- (NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured)initWithDictionary:(id)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured;
  v5 = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)&v46 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isExpensive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured setIsExpensive:](v5, "setIsExpensive:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"pathGateways"];
    objc_opt_class();
    v37 = v6;
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v8 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v43;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v43 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v42 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[NETSchemaNETEndpoint alloc] initWithDictionary:v14];
              [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)v5 addPathGateways:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v11);
      }

      v6 = v37;
      v7 = v8;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"connectionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)v5 setConnectionInfo:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"hasIpv6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured setHasIpv6:](v5, "setHasIpv6:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasIpv4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured setHasIpv4:](v5, "setHasIpv4:", [v19 BOOLValue]);
    }

    v36 = v19;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"isConstrained"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured setIsConstrained:](v5, "setIsConstrained:", [v20 BOOLValue]);
    }

    v35 = v20;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"pathInterfaces"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v18;
      v33 = v16;
      v34 = v7;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v38 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [[NETSchemaNETPathInterface alloc] initWithDictionary:v27];
              [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)v5 addPathInterfaces:v28];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v24);
      }

      v6 = v37;
      v18 = v32;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:{@"status", v32, v33, v34}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured setStatus:](v5, "setStatus:", [v29 intValue]);
    }

    v30 = v5;
  }

  return v5;
}

- (NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self dictionaryRepresentation];
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
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_connectionInfo)
  {
    connectionInfo = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self connectionInfo];
    v5 = [connectionInfo copy];
    [dictionary setObject:v5 forKeyedSubscript:@"connectionInfo"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured hasIpv4](self, "hasIpv4")}];
    [dictionary setObject:v26 forKeyedSubscript:@"hasIpv4"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured hasIpv6](self, "hasIpv6")}];
  [dictionary setObject:v27 forKeyedSubscript:@"hasIpv6"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_37:
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured isConstrained](self, "isConstrained")}];
  [dictionary setObject:v28 forKeyedSubscript:@"isConstrained"];

  if (*&self->_has)
  {
LABEL_7:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured isExpensive](self, "isExpensive")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isExpensive"];
  }

LABEL_8:
  if ([(NSArray *)self->_pathGateways count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = self->_pathGateways;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"pathGateways"];
  }

  if ([(NSArray *)self->_pathInterfaces count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = self->_pathInterfaces;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"pathInterfaces"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v24 = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self status]- 1;
    if (v24 > 3)
    {
      v25 = @"NETPATHSTATUS_UNKNOWN";
    }

    else
    {
      v25 = off_1E78DB0D0[v24];
    }

    [dictionary setObject:v25 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isExpensive;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_pathGateways hash];
  v5 = [(NSString *)self->_connectionInfo hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v6 = 2654435761 * self->_hasIpv6;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_hasIpv4;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_isConstrained;
    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
LABEL_11:
  v9 = [(NSArray *)self->_pathInterfaces hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v10 = 2654435761 * self->_status;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 1) != (equalCopy[52] & 1))
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    isExpensive = self->_isExpensive;
    if (isExpensive != [equalCopy isExpensive])
    {
      goto LABEL_31;
    }
  }

  pathGateways = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self pathGateways];
  pathGateways2 = [equalCopy pathGateways];
  if ((pathGateways != 0) == (pathGateways2 == 0))
  {
    goto LABEL_30;
  }

  pathGateways3 = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self pathGateways];
  if (pathGateways3)
  {
    v9 = pathGateways3;
    pathGateways4 = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self pathGateways];
    pathGateways5 = [equalCopy pathGateways];
    v12 = [pathGateways4 isEqual:pathGateways5];

    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  pathGateways = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self connectionInfo];
  pathGateways2 = [equalCopy connectionInfo];
  if ((pathGateways != 0) == (pathGateways2 == 0))
  {
    goto LABEL_30;
  }

  connectionInfo = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self connectionInfo];
  if (connectionInfo)
  {
    v14 = connectionInfo;
    connectionInfo2 = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self connectionInfo];
    connectionInfo3 = [equalCopy connectionInfo];
    v17 = [connectionInfo2 isEqual:connectionInfo3];

    if (!v17)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  has = self->_has;
  v19 = (*&has >> 1) & 1;
  v20 = equalCopy[52];
  if (v19 != ((v20 >> 1) & 1))
  {
    goto LABEL_31;
  }

  if (v19)
  {
    hasIpv6 = self->_hasIpv6;
    if (hasIpv6 != [equalCopy hasIpv6])
    {
      goto LABEL_31;
    }

    has = self->_has;
    v20 = equalCopy[52];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v20 >> 2) & 1))
  {
    goto LABEL_31;
  }

  if (v22)
  {
    hasIpv4 = self->_hasIpv4;
    if (hasIpv4 != [equalCopy hasIpv4])
    {
      goto LABEL_31;
    }

    has = self->_has;
    v20 = equalCopy[52];
  }

  v24 = (*&has >> 3) & 1;
  if (v24 != ((v20 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v24)
  {
    isConstrained = self->_isConstrained;
    if (isConstrained != [equalCopy isConstrained])
    {
      goto LABEL_31;
    }
  }

  pathGateways = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self pathInterfaces];
  pathGateways2 = [equalCopy pathInterfaces];
  if ((pathGateways != 0) == (pathGateways2 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  pathInterfaces = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self pathInterfaces];
  if (pathInterfaces)
  {
    v27 = pathInterfaces;
    pathInterfaces2 = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self pathInterfaces];
    pathInterfaces3 = [equalCopy pathInterfaces];
    v30 = [pathInterfaces2 isEqual:pathInterfaces3];

    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v33 = (*&self->_has >> 4) & 1;
  if (v33 == ((equalCopy[52] >> 4) & 1))
  {
    if (!v33 || (status = self->_status, status == [equalCopy status]))
    {
      v31 = 1;
      goto LABEL_32;
    }
  }

LABEL_31:
  v31 = 0;
LABEL_32:

  return v31;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_pathGateways;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
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

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  connectionInfo = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self connectionInfo];

  if (connectionInfo)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_14:
      if ((has & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    PBDataWriterWriteBOOLField();
  }

LABEL_16:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_pathInterfaces;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addPathInterfaces:(id)interfaces
{
  interfacesCopy = interfaces;
  pathInterfaces = self->_pathInterfaces;
  v8 = interfacesCopy;
  if (!pathInterfaces)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pathInterfaces;
    self->_pathInterfaces = array;

    interfacesCopy = v8;
    pathInterfaces = self->_pathInterfaces;
  }

  [(NSArray *)pathInterfaces addObject:interfacesCopy];
}

- (void)setHasIsConstrained:(BOOL)constrained
{
  if (constrained)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasIpv4:(BOOL)ipv4
{
  if (ipv4)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHasIpv6:(BOOL)ipv6
{
  if (ipv6)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addPathGateways:(id)gateways
{
  gatewaysCopy = gateways;
  pathGateways = self->_pathGateways;
  v8 = gatewaysCopy;
  if (!pathGateways)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pathGateways;
    self->_pathGateways = array;

    gatewaysCopy = v8;
    pathGateways = self->_pathGateways;
  }

  [(NSArray *)pathGateways addObject:gatewaysCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self pathGateways:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self setPathGateways:v7];

  pathInterfaces = [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self pathInterfaces];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:pathInterfaces underConditions:policyCopy];

  [(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured *)self setPathInterfaces:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end