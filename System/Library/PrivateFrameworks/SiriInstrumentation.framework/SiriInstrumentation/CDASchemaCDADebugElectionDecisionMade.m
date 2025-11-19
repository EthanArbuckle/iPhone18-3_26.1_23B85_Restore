@interface CDASchemaCDADebugElectionDecisionMade
- (BOOL)isEqual:(id)a3;
- (CDASchemaCDADebugElectionDecisionMade)initWithDictionary:(id)a3;
- (CDASchemaCDADebugElectionDecisionMade)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAdvertisementData:(id)a3;
- (void)setHasDeviceGroup:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CDASchemaCDADebugElectionDecisionMade

- (CDASchemaCDADebugElectionDecisionMade)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CDASchemaCDADebugElectionDecisionMade;
  v5 = [(CDASchemaCDADebugElectionDecisionMade *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isCrossDeviceArbitrationAllowed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDADebugElectionDecisionMade setIsCrossDeviceArbitrationAllowed:](v5, "setIsCrossDeviceArbitrationAllowed:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"advertisementData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[CDASchemaCDAAdvertisementData alloc] initWithDictionary:v13];
              [(CDASchemaCDADebugElectionDecisionMade *)v5 addAdvertisementData:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v10);
      }

      v6 = v18;
    }

    v15 = [v4 objectForKeyedSubscript:@"deviceGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDADebugElectionDecisionMade setDeviceGroup:](v5, "setDeviceGroup:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (CDASchemaCDADebugElectionDecisionMade)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CDASchemaCDADebugElectionDecisionMade *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CDASchemaCDADebugElectionDecisionMade *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_advertisementDatas count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_advertisementDatas;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"advertisementData"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDADebugElectionDecisionMade deviceGroup](self, "deviceGroup")}];
    [v3 setObject:v13 forKeyedSubscript:@"deviceGroup"];

    has = self->_has;
  }

  if (has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDADebugElectionDecisionMade isCrossDeviceArbitrationAllowed](self, "isCrossDeviceArbitrationAllowed")}];
    [v3 setObject:v14 forKeyedSubscript:@"isCrossDeviceArbitrationAllowed"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v16];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isCrossDeviceArbitrationAllowed;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_advertisementDatas hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_deviceGroup;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isCrossDeviceArbitrationAllowed = self->_isCrossDeviceArbitrationAllowed;
    if (isCrossDeviceArbitrationAllowed != [v4 isCrossDeviceArbitrationAllowed])
    {
      goto LABEL_15;
    }
  }

  v6 = [(CDASchemaCDADebugElectionDecisionMade *)self advertisementDatas];
  v7 = [v4 advertisementDatas];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(CDASchemaCDADebugElectionDecisionMade *)self advertisementDatas];
  if (v9)
  {
    v10 = v9;
    v11 = [(CDASchemaCDADebugElectionDecisionMade *)self advertisementDatas];
    v12 = [v4 advertisementDatas];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((v4[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    deviceGroup = self->_deviceGroup;
    if (deviceGroup != [v4 deviceGroup])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_advertisementDatas;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasDeviceGroup:(BOOL)a3
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

- (void)addAdvertisementData:(id)a3
{
  v4 = a3;
  advertisementDatas = self->_advertisementDatas;
  v8 = v4;
  if (!advertisementDatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_advertisementDatas;
    self->_advertisementDatas = v6;

    v4 = v8;
    advertisementDatas = self->_advertisementDatas;
  }

  [(NSArray *)advertisementDatas addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CDASchemaCDADebugElectionDecisionMade;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CDASchemaCDADebugElectionDecisionMade *)self advertisementDatas:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(CDASchemaCDADebugElectionDecisionMade *)self setAdvertisementDatas:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end