@interface SUTSchemaTestSessionInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUTSchemaTestSessionInfo)initWithDictionary:(id)a3;
- (SUTSchemaTestSessionInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTestSessionInfoItem:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SUTSchemaTestSessionInfo

- (SUTSchemaTestSessionInfo)initWithDictionary:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = SUTSchemaTestSessionInfo;
  v5 = [(SUTSchemaTestSessionInfo *)&v45 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    v40 = v6;
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUTSchemaTestSessionInfo *)v5 setSystemBuild:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"cpuArchitecture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SUTSchemaTestSessionInfo *)v5 setCpuArchitecture:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"hardwareModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SUTSchemaTestSessionInfo *)v5 setHardwareModel:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SUTSchemaTestSessionInfo *)v5 setModelNumber:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(SUTSchemaTestSessionInfo *)v5 setProductType:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"productVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(SUTSchemaTestSessionInfo *)v5 setProductVersion:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"isSimulator"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUTSchemaTestSessionInfo setIsSimulator:](v5, "setIsSimulator:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    v39 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = v18;
      v21 = [v39 copy];
      [(SUTSchemaTestSessionInfo *)v5 setBundleId:v21];

      v18 = v20;
    }

    v22 = [v4 objectForKeyedSubscript:@"deviceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(SUTSchemaTestSessionInfo *)v5 setDeviceName:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"testSessionInfoItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v22;
      v35 = v18;
      v36 = v12;
      v37 = v10;
      v38 = v8;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v42;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v42 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = [[SUTSchemaTestSessionInfoItem alloc] initWithDictionary:v30];
              [(SUTSchemaTestSessionInfo *)v5 addTestSessionInfoItem:v31];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v27);
      }

      v10 = v37;
      v8 = v38;
      v12 = v36;
      v18 = v35;
      v22 = v34;
    }

    v32 = v5;
  }

  return v5;
}

- (SUTSchemaTestSessionInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUTSchemaTestSessionInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUTSchemaTestSessionInfo *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    v4 = [(SUTSchemaTestSessionInfo *)self bundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_cpuArchitecture)
  {
    v6 = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"cpuArchitecture"];
  }

  if (self->_deviceName)
  {
    v8 = [(SUTSchemaTestSessionInfo *)self deviceName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"deviceName"];
  }

  if (self->_hardwareModel)
  {
    v10 = [(SUTSchemaTestSessionInfo *)self hardwareModel];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"hardwareModel"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUTSchemaTestSessionInfo isSimulator](self, "isSimulator")}];
    [v3 setObject:v12 forKeyedSubscript:@"isSimulator"];
  }

  if (self->_modelNumber)
  {
    v13 = [(SUTSchemaTestSessionInfo *)self modelNumber];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"modelNumber"];
  }

  if (self->_productType)
  {
    v15 = [(SUTSchemaTestSessionInfo *)self productType];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"productType"];
  }

  if (self->_productVersion)
  {
    v17 = [(SUTSchemaTestSessionInfo *)self productVersion];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"productVersion"];
  }

  if (self->_systemBuild)
  {
    v19 = [(SUTSchemaTestSessionInfo *)self systemBuild];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"systemBuild"];
  }

  if ([(NSArray *)self->_testSessionInfoItems count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = self->_testSessionInfoItems;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          if (v27)
          {
            [v21 addObject:v27];
          }

          else
          {
            v28 = [MEMORY[0x1E695DFB0] null];
            [v21 addObject:v28];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"testSessionInfoItem"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v30];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_systemBuild hash];
  v4 = [(NSString *)self->_cpuArchitecture hash];
  v5 = [(NSString *)self->_hardwareModel hash];
  v6 = [(NSString *)self->_modelNumber hash];
  v7 = [(NSString *)self->_productType hash];
  v8 = [(NSString *)self->_productVersion hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_isSimulator;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v11 = [(NSString *)self->_bundleId hash];
  v12 = v11 ^ [(NSString *)self->_deviceName hash];
  return v10 ^ v12 ^ [(NSArray *)self->_testSessionInfoItems hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  v5 = [(SUTSchemaTestSessionInfo *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v7 = [(SUTSchemaTestSessionInfo *)self systemBuild];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUTSchemaTestSessionInfo *)self systemBuild];
    v10 = [v4 systemBuild];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];
  v6 = [v4 cpuArchitecture];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v12 = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];
  if (v12)
  {
    v13 = v12;
    v14 = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];
    v15 = [v4 cpuArchitecture];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SUTSchemaTestSessionInfo *)self hardwareModel];
  v6 = [v4 hardwareModel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v17 = [(SUTSchemaTestSessionInfo *)self hardwareModel];
  if (v17)
  {
    v18 = v17;
    v19 = [(SUTSchemaTestSessionInfo *)self hardwareModel];
    v20 = [v4 hardwareModel];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SUTSchemaTestSessionInfo *)self modelNumber];
  v6 = [v4 modelNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v22 = [(SUTSchemaTestSessionInfo *)self modelNumber];
  if (v22)
  {
    v23 = v22;
    v24 = [(SUTSchemaTestSessionInfo *)self modelNumber];
    v25 = [v4 modelNumber];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SUTSchemaTestSessionInfo *)self productType];
  v6 = [v4 productType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v27 = [(SUTSchemaTestSessionInfo *)self productType];
  if (v27)
  {
    v28 = v27;
    v29 = [(SUTSchemaTestSessionInfo *)self productType];
    v30 = [v4 productType];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SUTSchemaTestSessionInfo *)self productVersion];
  v6 = [v4 productVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v32 = [(SUTSchemaTestSessionInfo *)self productVersion];
  if (v32)
  {
    v33 = v32;
    v34 = [(SUTSchemaTestSessionInfo *)self productVersion];
    v35 = [v4 productVersion];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[88] & 1))
  {
    goto LABEL_50;
  }

  if (*&self->_has)
  {
    isSimulator = self->_isSimulator;
    if (isSimulator != [v4 isSimulator])
    {
      goto LABEL_50;
    }
  }

  v5 = [(SUTSchemaTestSessionInfo *)self bundleId];
  v6 = [v4 bundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v38 = [(SUTSchemaTestSessionInfo *)self bundleId];
  if (v38)
  {
    v39 = v38;
    v40 = [(SUTSchemaTestSessionInfo *)self bundleId];
    v41 = [v4 bundleId];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SUTSchemaTestSessionInfo *)self deviceName];
  v6 = [v4 deviceName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_49;
  }

  v43 = [(SUTSchemaTestSessionInfo *)self deviceName];
  if (v43)
  {
    v44 = v43;
    v45 = [(SUTSchemaTestSessionInfo *)self deviceName];
    v46 = [v4 deviceName];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v5 = [(SUTSchemaTestSessionInfo *)self testSessionInfoItems];
  v6 = [v4 testSessionInfoItems];
  if ((v5 != 0) != (v6 == 0))
  {
    v48 = [(SUTSchemaTestSessionInfo *)self testSessionInfoItems];
    if (!v48)
    {

LABEL_53:
      v53 = 1;
      goto LABEL_51;
    }

    v49 = v48;
    v50 = [(SUTSchemaTestSessionInfo *)self testSessionInfoItems];
    v51 = [v4 testSessionInfoItems];
    v52 = [v50 isEqual:v51];

    if (v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
LABEL_49:
  }

LABEL_50:
  v53 = 0;
LABEL_51:

  return v53;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUTSchemaTestSessionInfo *)self systemBuild];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(SUTSchemaTestSessionInfo *)self hardwareModel];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(SUTSchemaTestSessionInfo *)self modelNumber];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(SUTSchemaTestSessionInfo *)self productType];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(SUTSchemaTestSessionInfo *)self productVersion];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v11 = [(SUTSchemaTestSessionInfo *)self bundleId];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(SUTSchemaTestSessionInfo *)self deviceName];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_testSessionInfoItems;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)addTestSessionInfoItem:(id)a3
{
  v4 = a3;
  testSessionInfoItems = self->_testSessionInfoItems;
  v8 = v4;
  if (!testSessionInfoItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_testSessionInfoItems;
    self->_testSessionInfoItems = v6;

    v4 = v8;
    testSessionInfoItems = self->_testSessionInfoItems;
  }

  [(NSArray *)testSessionInfoItems addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SUTSchemaTestSessionInfo;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SUTSchemaTestSessionInfo *)self testSessionInfoItems:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(SUTSchemaTestSessionInfo *)self setTestSessionInfoItems:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end