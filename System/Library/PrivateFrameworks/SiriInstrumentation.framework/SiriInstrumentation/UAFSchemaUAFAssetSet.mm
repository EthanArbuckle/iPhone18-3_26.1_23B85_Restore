@interface UAFSchemaUAFAssetSet
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (UAFSchemaUAFAssetSet)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFAssetSet)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAssets:(id)assets;
- (void)addMobileAssetDownloadErrorCodeFrequency:(id)frequency;
- (void)setHasExpensiveCellularDownloadRequested:(BOOL)requested;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFAssetSet

- (UAFSchemaUAFAssetSet)initWithDictionary:(id)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = UAFSchemaUAFAssetSet;
  v5 = [(UAFSchemaUAFAssetSet *)&v46 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assetSetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAssetSet *)v5 setAssetSetName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assets"];
    objc_opt_class();
    v36 = v8;
    v37 = v6;
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = v8;
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
              v15 = [[UAFSchemaUAFAsset alloc] initWithDictionary:v14];
              [(UAFSchemaUAFAssetSet *)v5 addAssets:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v11);
      }

      v8 = v36;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"assetType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(UAFSchemaUAFAssetSet *)v5 setAssetType:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"assetSetId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(UAFSchemaUAFAssetSet *)v5 setAssetSetId:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"audienceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(UAFSchemaUAFAssetSet *)v5 setAudienceId:v21];
    }

    v35 = v20;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"mobileAssetDownloadErrorCodeFrequency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v18;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v39;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v38 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[UAFSchemaUAFMobileAssetDownloadErrorCodeFrequency alloc] initWithDictionary:v28];
              [(UAFSchemaUAFAssetSet *)v5 addMobileAssetDownloadErrorCodeFrequency:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v25);
      }

      v8 = v36;
      v6 = v37;
      v18 = v34;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"fromPreSoftwareUpdateStaging"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAssetSet setFromPreSoftwareUpdateStaging:](v5, "setFromPreSoftwareUpdateStaging:", [v30 BOOLValue]);
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"expensiveCellularDownloadRequested"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAssetSet setExpensiveCellularDownloadRequested:](v5, "setExpensiveCellularDownloadRequested:", [v31 BOOLValue]);
    }

    v32 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetSet)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetSet *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFAssetSet *)self dictionaryRepresentation];
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
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assetSetId)
  {
    assetSetId = [(UAFSchemaUAFAssetSet *)self assetSetId];
    v5 = [assetSetId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetSetId"];
  }

  if (self->_assetSetName)
  {
    assetSetName = [(UAFSchemaUAFAssetSet *)self assetSetName];
    v7 = [assetSetName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"assetSetName"];
  }

  if (self->_assetType)
  {
    assetType = [(UAFSchemaUAFAssetSet *)self assetType];
    v9 = [assetType copy];
    [dictionary setObject:v9 forKeyedSubscript:@"assetType"];
  }

  if ([(NSArray *)self->_assets count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = self->_assets;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"assets"];
  }

  if (self->_audienceId)
  {
    audienceId = [(UAFSchemaUAFAssetSet *)self audienceId];
    v19 = [audienceId copy];
    [dictionary setObject:v19 forKeyedSubscript:@"audienceId"];
  }

  v20 = *(&self->_expensiveCellularDownloadRequested + 1);
  if ((v20 & 2) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UAFSchemaUAFAssetSet expensiveCellularDownloadRequested](self, "expensiveCellularDownloadRequested")}];
    [dictionary setObject:v21 forKeyedSubscript:@"expensiveCellularDownloadRequested"];

    v20 = *(&self->_expensiveCellularDownloadRequested + 1);
  }

  if (v20)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[UAFSchemaUAFAssetSet fromPreSoftwareUpdateStaging](self, "fromPreSoftwareUpdateStaging")}];
    [dictionary setObject:v22 forKeyedSubscript:@"fromPreSoftwareUpdateStaging"];
  }

  if ([(NSArray *)self->_mobileAssetDownloadErrorCodeFrequencys count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = self->_mobileAssetDownloadErrorCodeFrequencys;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation2 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
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

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"mobileAssetDownloadErrorCodeFrequency"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v32];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetSetName hash];
  v4 = [(NSArray *)self->_assets hash];
  v5 = [(NSString *)self->_assetType hash];
  v6 = [(NSString *)self->_assetSetId hash];
  v7 = [(NSString *)self->_audienceId hash];
  v8 = [(NSArray *)self->_mobileAssetDownloadErrorCodeFrequencys hash];
  if (*(&self->_expensiveCellularDownloadRequested + 1))
  {
    v9 = 2654435761 * self->_fromPreSoftwareUpdateStaging;
    if ((*(&self->_expensiveCellularDownloadRequested + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*(&self->_expensiveCellularDownloadRequested + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 2654435761 * self->_expensiveCellularDownloadRequested;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  assetSetName = [(UAFSchemaUAFAssetSet *)self assetSetName];
  assetSetName2 = [equalCopy assetSetName];
  if ((assetSetName != 0) == (assetSetName2 == 0))
  {
    goto LABEL_31;
  }

  assetSetName3 = [(UAFSchemaUAFAssetSet *)self assetSetName];
  if (assetSetName3)
  {
    v8 = assetSetName3;
    assetSetName4 = [(UAFSchemaUAFAssetSet *)self assetSetName];
    assetSetName5 = [equalCopy assetSetName];
    v11 = [assetSetName4 isEqual:assetSetName5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  assetSetName = [(UAFSchemaUAFAssetSet *)self assets];
  assetSetName2 = [equalCopy assets];
  if ((assetSetName != 0) == (assetSetName2 == 0))
  {
    goto LABEL_31;
  }

  assets = [(UAFSchemaUAFAssetSet *)self assets];
  if (assets)
  {
    v13 = assets;
    assets2 = [(UAFSchemaUAFAssetSet *)self assets];
    assets3 = [equalCopy assets];
    v16 = [assets2 isEqual:assets3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  assetSetName = [(UAFSchemaUAFAssetSet *)self assetType];
  assetSetName2 = [equalCopy assetType];
  if ((assetSetName != 0) == (assetSetName2 == 0))
  {
    goto LABEL_31;
  }

  assetType = [(UAFSchemaUAFAssetSet *)self assetType];
  if (assetType)
  {
    v18 = assetType;
    assetType2 = [(UAFSchemaUAFAssetSet *)self assetType];
    assetType3 = [equalCopy assetType];
    v21 = [assetType2 isEqual:assetType3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  assetSetName = [(UAFSchemaUAFAssetSet *)self assetSetId];
  assetSetName2 = [equalCopy assetSetId];
  if ((assetSetName != 0) == (assetSetName2 == 0))
  {
    goto LABEL_31;
  }

  assetSetId = [(UAFSchemaUAFAssetSet *)self assetSetId];
  if (assetSetId)
  {
    v23 = assetSetId;
    assetSetId2 = [(UAFSchemaUAFAssetSet *)self assetSetId];
    assetSetId3 = [equalCopy assetSetId];
    v26 = [assetSetId2 isEqual:assetSetId3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  assetSetName = [(UAFSchemaUAFAssetSet *)self audienceId];
  assetSetName2 = [equalCopy audienceId];
  if ((assetSetName != 0) == (assetSetName2 == 0))
  {
    goto LABEL_31;
  }

  audienceId = [(UAFSchemaUAFAssetSet *)self audienceId];
  if (audienceId)
  {
    v28 = audienceId;
    audienceId2 = [(UAFSchemaUAFAssetSet *)self audienceId];
    audienceId3 = [equalCopy audienceId];
    v31 = [audienceId2 isEqual:audienceId3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  assetSetName = [(UAFSchemaUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequencys];
  assetSetName2 = [equalCopy mobileAssetDownloadErrorCodeFrequencys];
  if ((assetSetName != 0) == (assetSetName2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  mobileAssetDownloadErrorCodeFrequencys = [(UAFSchemaUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequencys];
  if (mobileAssetDownloadErrorCodeFrequencys)
  {
    v33 = mobileAssetDownloadErrorCodeFrequencys;
    mobileAssetDownloadErrorCodeFrequencys2 = [(UAFSchemaUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequencys];
    mobileAssetDownloadErrorCodeFrequencys3 = [equalCopy mobileAssetDownloadErrorCodeFrequencys];
    v36 = [mobileAssetDownloadErrorCodeFrequencys2 isEqual:mobileAssetDownloadErrorCodeFrequencys3];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v39 = *(&self->_expensiveCellularDownloadRequested + 1);
  v40 = equalCopy[58];
  if ((v39 & 1) == (v40 & 1))
  {
    if (v39)
    {
      fromPreSoftwareUpdateStaging = self->_fromPreSoftwareUpdateStaging;
      if (fromPreSoftwareUpdateStaging != [equalCopy fromPreSoftwareUpdateStaging])
      {
        goto LABEL_32;
      }

      v39 = *(&self->_expensiveCellularDownloadRequested + 1);
      v40 = equalCopy[58];
    }

    v42 = (v39 >> 1) & 1;
    if (v42 == ((v40 >> 1) & 1))
    {
      if (!v42 || (expensiveCellularDownloadRequested = self->_expensiveCellularDownloadRequested, expensiveCellularDownloadRequested == [equalCopy expensiveCellularDownloadRequested]))
      {
        v37 = 1;
        goto LABEL_33;
      }
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  assetSetName = [(UAFSchemaUAFAssetSet *)self assetSetName];

  if (assetSetName)
  {
    PBDataWriterWriteStringField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_assets;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  assetType = [(UAFSchemaUAFAssetSet *)self assetType];

  if (assetType)
  {
    PBDataWriterWriteStringField();
  }

  assetSetId = [(UAFSchemaUAFAssetSet *)self assetSetId];

  if (assetSetId)
  {
    PBDataWriterWriteStringField();
  }

  audienceId = [(UAFSchemaUAFAssetSet *)self audienceId];

  if (audienceId)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = self->_mobileAssetDownloadErrorCodeFrequencys;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  v19 = *(&self->_expensiveCellularDownloadRequested + 1);
  if (v19)
  {
    PBDataWriterWriteBOOLField();
    v19 = *(&self->_expensiveCellularDownloadRequested + 1);
  }

  if ((v19 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasExpensiveCellularDownloadRequested:(BOOL)requested
{
  if (requested)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_expensiveCellularDownloadRequested + 1) = *(&self->_expensiveCellularDownloadRequested + 1) & 0xFD | v3;
}

- (void)addMobileAssetDownloadErrorCodeFrequency:(id)frequency
{
  frequencyCopy = frequency;
  mobileAssetDownloadErrorCodeFrequencys = self->_mobileAssetDownloadErrorCodeFrequencys;
  v8 = frequencyCopy;
  if (!mobileAssetDownloadErrorCodeFrequencys)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_mobileAssetDownloadErrorCodeFrequencys;
    self->_mobileAssetDownloadErrorCodeFrequencys = array;

    frequencyCopy = v8;
    mobileAssetDownloadErrorCodeFrequencys = self->_mobileAssetDownloadErrorCodeFrequencys;
  }

  [(NSArray *)mobileAssetDownloadErrorCodeFrequencys addObject:frequencyCopy];
}

- (void)addAssets:(id)assets
{
  assetsCopy = assets;
  assets = self->_assets;
  v8 = assetsCopy;
  if (!assets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_assets;
    self->_assets = array;

    assetsCopy = v8;
    assets = self->_assets;
  }

  [(NSArray *)assets addObject:assetsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = UAFSchemaUAFAssetSet;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(UAFSchemaUAFAssetSet *)self assets:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(UAFSchemaUAFAssetSet *)self setAssets:v7];

  mobileAssetDownloadErrorCodeFrequencys = [(UAFSchemaUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequencys];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:mobileAssetDownloadErrorCodeFrequencys underConditions:policyCopy];

  [(UAFSchemaUAFAssetSet *)self setMobileAssetDownloadErrorCodeFrequencys:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end