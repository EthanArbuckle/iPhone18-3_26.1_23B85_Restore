@interface UAFSchemaUAFAssetSet
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (UAFSchemaUAFAssetSet)initWithDictionary:(id)a3;
- (UAFSchemaUAFAssetSet)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAssets:(id)a3;
- (void)addMobileAssetDownloadErrorCodeFrequency:(id)a3;
- (void)setHasExpensiveCellularDownloadRequested:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation UAFSchemaUAFAssetSet

- (UAFSchemaUAFAssetSet)initWithDictionary:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46.receiver = self;
  v46.super_class = UAFSchemaUAFAssetSet;
  v5 = [(UAFSchemaUAFAssetSet *)&v46 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assetSetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAssetSet *)v5 setAssetSetName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assets"];
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

    v16 = [v4 objectForKeyedSubscript:@"assetType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(UAFSchemaUAFAssetSet *)v5 setAssetType:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"assetSetId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(UAFSchemaUAFAssetSet *)v5 setAssetSetId:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"audienceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(UAFSchemaUAFAssetSet *)v5 setAudienceId:v21];
    }

    v35 = v20;
    v22 = [v4 objectForKeyedSubscript:@"mobileAssetDownloadErrorCodeFrequency"];
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

    v30 = [v4 objectForKeyedSubscript:@"fromPreSoftwareUpdateStaging"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAssetSet setFromPreSoftwareUpdateStaging:](v5, "setFromPreSoftwareUpdateStaging:", [v30 BOOLValue]);
    }

    v31 = [v4 objectForKeyedSubscript:@"expensiveCellularDownloadRequested"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFAssetSet setExpensiveCellularDownloadRequested:](v5, "setExpensiveCellularDownloadRequested:", [v31 BOOLValue]);
    }

    v32 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetSet)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetSet *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(UAFSchemaUAFAssetSet *)self dictionaryRepresentation];
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
  v42 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assetSetId)
  {
    v4 = [(UAFSchemaUAFAssetSet *)self assetSetId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetSetId"];
  }

  if (self->_assetSetName)
  {
    v6 = [(UAFSchemaUAFAssetSet *)self assetSetName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"assetSetName"];
  }

  if (self->_assetType)
  {
    v8 = [(UAFSchemaUAFAssetSet *)self assetType];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"assetType"];
  }

  if ([(NSArray *)self->_assets count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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

          v16 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"assets"];
  }

  if (self->_audienceId)
  {
    v18 = [(UAFSchemaUAFAssetSet *)self audienceId];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"audienceId"];
  }

  v20 = *(&self->_expensiveCellularDownloadRequested + 1);
  if ((v20 & 2) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UAFSchemaUAFAssetSet expensiveCellularDownloadRequested](self, "expensiveCellularDownloadRequested")}];
    [v3 setObject:v21 forKeyedSubscript:@"expensiveCellularDownloadRequested"];

    v20 = *(&self->_expensiveCellularDownloadRequested + 1);
  }

  if (v20)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[UAFSchemaUAFAssetSet fromPreSoftwareUpdateStaging](self, "fromPreSoftwareUpdateStaging")}];
    [v3 setObject:v22 forKeyedSubscript:@"fromPreSoftwareUpdateStaging"];
  }

  if ([(NSArray *)self->_mobileAssetDownloadErrorCodeFrequencys count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
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

          v29 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          if (v29)
          {
            [v23 addObject:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E695DFB0] null];
            [v23 addObject:v30];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"mobileAssetDownloadErrorCodeFrequency"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v32];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(UAFSchemaUAFAssetSet *)self assetSetName];
  v6 = [v4 assetSetName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(UAFSchemaUAFAssetSet *)self assetSetName];
  if (v7)
  {
    v8 = v7;
    v9 = [(UAFSchemaUAFAssetSet *)self assetSetName];
    v10 = [v4 assetSetName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetSet *)self assets];
  v6 = [v4 assets];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(UAFSchemaUAFAssetSet *)self assets];
  if (v12)
  {
    v13 = v12;
    v14 = [(UAFSchemaUAFAssetSet *)self assets];
    v15 = [v4 assets];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetSet *)self assetType];
  v6 = [v4 assetType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(UAFSchemaUAFAssetSet *)self assetType];
  if (v17)
  {
    v18 = v17;
    v19 = [(UAFSchemaUAFAssetSet *)self assetType];
    v20 = [v4 assetType];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetSet *)self assetSetId];
  v6 = [v4 assetSetId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(UAFSchemaUAFAssetSet *)self assetSetId];
  if (v22)
  {
    v23 = v22;
    v24 = [(UAFSchemaUAFAssetSet *)self assetSetId];
    v25 = [v4 assetSetId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetSet *)self audienceId];
  v6 = [v4 audienceId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(UAFSchemaUAFAssetSet *)self audienceId];
  if (v27)
  {
    v28 = v27;
    v29 = [(UAFSchemaUAFAssetSet *)self audienceId];
    v30 = [v4 audienceId];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequencys];
  v6 = [v4 mobileAssetDownloadErrorCodeFrequencys];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = [(UAFSchemaUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequencys];
  if (v32)
  {
    v33 = v32;
    v34 = [(UAFSchemaUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequencys];
    v35 = [v4 mobileAssetDownloadErrorCodeFrequencys];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v39 = *(&self->_expensiveCellularDownloadRequested + 1);
  v40 = v4[58];
  if ((v39 & 1) == (v40 & 1))
  {
    if (v39)
    {
      fromPreSoftwareUpdateStaging = self->_fromPreSoftwareUpdateStaging;
      if (fromPreSoftwareUpdateStaging != [v4 fromPreSoftwareUpdateStaging])
      {
        goto LABEL_32;
      }

      v39 = *(&self->_expensiveCellularDownloadRequested + 1);
      v40 = v4[58];
    }

    v42 = (v39 >> 1) & 1;
    if (v42 == ((v40 >> 1) & 1))
    {
      if (!v42 || (expensiveCellularDownloadRequested = self->_expensiveCellularDownloadRequested, expensiveCellularDownloadRequested == [v4 expensiveCellularDownloadRequested]))
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

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UAFSchemaUAFAssetSet *)self assetSetName];

  if (v5)
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

  v11 = [(UAFSchemaUAFAssetSet *)self assetType];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(UAFSchemaUAFAssetSet *)self assetSetId];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(UAFSchemaUAFAssetSet *)self audienceId];

  if (v13)
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

- (void)setHasExpensiveCellularDownloadRequested:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_expensiveCellularDownloadRequested + 1) = *(&self->_expensiveCellularDownloadRequested + 1) & 0xFD | v3;
}

- (void)addMobileAssetDownloadErrorCodeFrequency:(id)a3
{
  v4 = a3;
  mobileAssetDownloadErrorCodeFrequencys = self->_mobileAssetDownloadErrorCodeFrequencys;
  v8 = v4;
  if (!mobileAssetDownloadErrorCodeFrequencys)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_mobileAssetDownloadErrorCodeFrequencys;
    self->_mobileAssetDownloadErrorCodeFrequencys = v6;

    v4 = v8;
    mobileAssetDownloadErrorCodeFrequencys = self->_mobileAssetDownloadErrorCodeFrequencys;
  }

  [(NSArray *)mobileAssetDownloadErrorCodeFrequencys addObject:v4];
}

- (void)addAssets:(id)a3
{
  v4 = a3;
  assets = self->_assets;
  v8 = v4;
  if (!assets)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_assets;
    self->_assets = v6;

    v4 = v8;
    assets = self->_assets;
  }

  [(NSArray *)assets addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = UAFSchemaUAFAssetSet;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(UAFSchemaUAFAssetSet *)self assets:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(UAFSchemaUAFAssetSet *)self setAssets:v7];

  v8 = [(UAFSchemaUAFAssetSet *)self mobileAssetDownloadErrorCodeFrequencys];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];

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