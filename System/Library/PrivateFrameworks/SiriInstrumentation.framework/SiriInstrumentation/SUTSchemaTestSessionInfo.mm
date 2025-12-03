@interface SUTSchemaTestSessionInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUTSchemaTestSessionInfo)initWithDictionary:(id)dictionary;
- (SUTSchemaTestSessionInfo)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTestSessionInfoItem:(id)item;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestSessionInfo

- (SUTSchemaTestSessionInfo)initWithDictionary:(id)dictionary
{
  v47 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v45.receiver = self;
  v45.super_class = SUTSchemaTestSessionInfo;
  v5 = [(SUTSchemaTestSessionInfo *)&v45 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    v40 = v6;
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUTSchemaTestSessionInfo *)v5 setSystemBuild:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"cpuArchitecture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SUTSchemaTestSessionInfo *)v5 setCpuArchitecture:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"hardwareModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SUTSchemaTestSessionInfo *)v5 setHardwareModel:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SUTSchemaTestSessionInfo *)v5 setModelNumber:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(SUTSchemaTestSessionInfo *)v5 setProductType:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"productVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(SUTSchemaTestSessionInfo *)v5 setProductVersion:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"isSimulator"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUTSchemaTestSessionInfo setIsSimulator:](v5, "setIsSimulator:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    v39 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = v18;
      v21 = [v39 copy];
      [(SUTSchemaTestSessionInfo *)v5 setBundleId:v21];

      v18 = v20;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"deviceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(SUTSchemaTestSessionInfo *)v5 setDeviceName:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"testSessionInfoItem"];
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

- (SUTSchemaTestSessionInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestSessionInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestSessionInfo *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    bundleId = [(SUTSchemaTestSessionInfo *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_cpuArchitecture)
  {
    cpuArchitecture = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];
    v7 = [cpuArchitecture copy];
    [dictionary setObject:v7 forKeyedSubscript:@"cpuArchitecture"];
  }

  if (self->_deviceName)
  {
    deviceName = [(SUTSchemaTestSessionInfo *)self deviceName];
    v9 = [deviceName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"deviceName"];
  }

  if (self->_hardwareModel)
  {
    hardwareModel = [(SUTSchemaTestSessionInfo *)self hardwareModel];
    v11 = [hardwareModel copy];
    [dictionary setObject:v11 forKeyedSubscript:@"hardwareModel"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUTSchemaTestSessionInfo isSimulator](self, "isSimulator")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isSimulator"];
  }

  if (self->_modelNumber)
  {
    modelNumber = [(SUTSchemaTestSessionInfo *)self modelNumber];
    v14 = [modelNumber copy];
    [dictionary setObject:v14 forKeyedSubscript:@"modelNumber"];
  }

  if (self->_productType)
  {
    productType = [(SUTSchemaTestSessionInfo *)self productType];
    v16 = [productType copy];
    [dictionary setObject:v16 forKeyedSubscript:@"productType"];
  }

  if (self->_productVersion)
  {
    productVersion = [(SUTSchemaTestSessionInfo *)self productVersion];
    v18 = [productVersion copy];
    [dictionary setObject:v18 forKeyedSubscript:@"productVersion"];
  }

  if (self->_systemBuild)
  {
    systemBuild = [(SUTSchemaTestSessionInfo *)self systemBuild];
    v20 = [systemBuild copy];
    [dictionary setObject:v20 forKeyedSubscript:@"systemBuild"];
  }

  if ([(NSArray *)self->_testSessionInfoItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
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

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array forKeyedSubscript:@"testSessionInfoItem"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v30];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self systemBuild];
  systemBuild2 = [equalCopy systemBuild];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_49;
  }

  systemBuild3 = [(SUTSchemaTestSessionInfo *)self systemBuild];
  if (systemBuild3)
  {
    v8 = systemBuild3;
    systemBuild4 = [(SUTSchemaTestSessionInfo *)self systemBuild];
    systemBuild5 = [equalCopy systemBuild];
    v11 = [systemBuild4 isEqual:systemBuild5];

    if (!v11)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];
  systemBuild2 = [equalCopy cpuArchitecture];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_49;
  }

  cpuArchitecture = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];
  if (cpuArchitecture)
  {
    v13 = cpuArchitecture;
    cpuArchitecture2 = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];
    cpuArchitecture3 = [equalCopy cpuArchitecture];
    v16 = [cpuArchitecture2 isEqual:cpuArchitecture3];

    if (!v16)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self hardwareModel];
  systemBuild2 = [equalCopy hardwareModel];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_49;
  }

  hardwareModel = [(SUTSchemaTestSessionInfo *)self hardwareModel];
  if (hardwareModel)
  {
    v18 = hardwareModel;
    hardwareModel2 = [(SUTSchemaTestSessionInfo *)self hardwareModel];
    hardwareModel3 = [equalCopy hardwareModel];
    v21 = [hardwareModel2 isEqual:hardwareModel3];

    if (!v21)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self modelNumber];
  systemBuild2 = [equalCopy modelNumber];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_49;
  }

  modelNumber = [(SUTSchemaTestSessionInfo *)self modelNumber];
  if (modelNumber)
  {
    v23 = modelNumber;
    modelNumber2 = [(SUTSchemaTestSessionInfo *)self modelNumber];
    modelNumber3 = [equalCopy modelNumber];
    v26 = [modelNumber2 isEqual:modelNumber3];

    if (!v26)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self productType];
  systemBuild2 = [equalCopy productType];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_49;
  }

  productType = [(SUTSchemaTestSessionInfo *)self productType];
  if (productType)
  {
    v28 = productType;
    productType2 = [(SUTSchemaTestSessionInfo *)self productType];
    productType3 = [equalCopy productType];
    v31 = [productType2 isEqual:productType3];

    if (!v31)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self productVersion];
  systemBuild2 = [equalCopy productVersion];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_49;
  }

  productVersion = [(SUTSchemaTestSessionInfo *)self productVersion];
  if (productVersion)
  {
    v33 = productVersion;
    productVersion2 = [(SUTSchemaTestSessionInfo *)self productVersion];
    productVersion3 = [equalCopy productVersion];
    v36 = [productVersion2 isEqual:productVersion3];

    if (!v36)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[88] & 1))
  {
    goto LABEL_50;
  }

  if (*&self->_has)
  {
    isSimulator = self->_isSimulator;
    if (isSimulator != [equalCopy isSimulator])
    {
      goto LABEL_50;
    }
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self bundleId];
  systemBuild2 = [equalCopy bundleId];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_49;
  }

  bundleId = [(SUTSchemaTestSessionInfo *)self bundleId];
  if (bundleId)
  {
    v39 = bundleId;
    bundleId2 = [(SUTSchemaTestSessionInfo *)self bundleId];
    bundleId3 = [equalCopy bundleId];
    v42 = [bundleId2 isEqual:bundleId3];

    if (!v42)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self deviceName];
  systemBuild2 = [equalCopy deviceName];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_49;
  }

  deviceName = [(SUTSchemaTestSessionInfo *)self deviceName];
  if (deviceName)
  {
    v44 = deviceName;
    deviceName2 = [(SUTSchemaTestSessionInfo *)self deviceName];
    deviceName3 = [equalCopy deviceName];
    v47 = [deviceName2 isEqual:deviceName3];

    if (!v47)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  systemBuild = [(SUTSchemaTestSessionInfo *)self testSessionInfoItems];
  systemBuild2 = [equalCopy testSessionInfoItems];
  if ((systemBuild != 0) != (systemBuild2 == 0))
  {
    testSessionInfoItems = [(SUTSchemaTestSessionInfo *)self testSessionInfoItems];
    if (!testSessionInfoItems)
    {

LABEL_53:
      v53 = 1;
      goto LABEL_51;
    }

    v49 = testSessionInfoItems;
    testSessionInfoItems2 = [(SUTSchemaTestSessionInfo *)self testSessionInfoItems];
    testSessionInfoItems3 = [equalCopy testSessionInfoItems];
    v52 = [testSessionInfoItems2 isEqual:testSessionInfoItems3];

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

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  systemBuild = [(SUTSchemaTestSessionInfo *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  cpuArchitecture = [(SUTSchemaTestSessionInfo *)self cpuArchitecture];

  if (cpuArchitecture)
  {
    PBDataWriterWriteStringField();
  }

  hardwareModel = [(SUTSchemaTestSessionInfo *)self hardwareModel];

  if (hardwareModel)
  {
    PBDataWriterWriteStringField();
  }

  modelNumber = [(SUTSchemaTestSessionInfo *)self modelNumber];

  if (modelNumber)
  {
    PBDataWriterWriteStringField();
  }

  productType = [(SUTSchemaTestSessionInfo *)self productType];

  if (productType)
  {
    PBDataWriterWriteStringField();
  }

  productVersion = [(SUTSchemaTestSessionInfo *)self productVersion];

  if (productVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  bundleId = [(SUTSchemaTestSessionInfo *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  deviceName = [(SUTSchemaTestSessionInfo *)self deviceName];

  if (deviceName)
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

- (void)addTestSessionInfoItem:(id)item
{
  itemCopy = item;
  testSessionInfoItems = self->_testSessionInfoItems;
  v8 = itemCopy;
  if (!testSessionInfoItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_testSessionInfoItems;
    self->_testSessionInfoItems = array;

    itemCopy = v8;
    testSessionInfoItems = self->_testSessionInfoItems;
  }

  [(NSArray *)testSessionInfoItems addObject:itemCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SUTSchemaTestSessionInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SUTSchemaTestSessionInfo *)self testSessionInfoItems:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

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