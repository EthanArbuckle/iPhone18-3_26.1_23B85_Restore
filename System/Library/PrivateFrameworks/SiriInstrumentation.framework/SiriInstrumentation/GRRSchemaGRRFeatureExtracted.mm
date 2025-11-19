@interface GRRSchemaGRRFeatureExtracted
- (BOOL)isEqual:(id)a3;
- (GRRSchemaGRRFeatureExtracted)initWithDictionary:(id)a3;
- (GRRSchemaGRRFeatureExtracted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addFeatureNames:(id)a3;
- (void)addFeatures:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GRRSchemaGRRFeatureExtracted

- (GRRSchemaGRRFeatureExtracted)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = GRRSchemaGRRFeatureExtracted;
  v5 = [(GRRSchemaGRRFeatureExtracted *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRRSchemaGRRSource alloc] initWithDictionary:v6];
      [(GRRSchemaGRRFeatureExtracted *)v5 setSource:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"featureNames"];
    objc_opt_class();
    v26 = v8;
    v28 = v6;
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          v13 = 0;
          do
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v34 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(GRRSchemaGRRFeatureExtracted *)v5 addFeatureNames:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v11);
      }

      v8 = v26;
      v6 = v28;
    }

    v16 = [v4 objectForKeyedSubscript:{@"features", v26, v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        do
        {
          v21 = 0;
          do
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v30 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[GRRSchemaGRRFeature alloc] initWithDictionary:v22];
              [(GRRSchemaGRRFeatureExtracted *)v5 addFeatures:v23];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v19);
      }

      v8 = v27;
      v6 = v29;
    }

    v24 = v5;
  }

  return v5;
}

- (GRRSchemaGRRFeatureExtracted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRRSchemaGRRFeatureExtracted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRRSchemaGRRFeatureExtracted *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_featureNames)
  {
    v4 = [(GRRSchemaGRRFeatureExtracted *)self featureNames];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"featureNames"];
  }

  if ([(NSArray *)self->_features count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_features;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"features"];
  }

  if (self->_source)
  {
    v14 = [(GRRSchemaGRRFeatureExtracted *)self source];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"source"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"source"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(GRRSchemaGRRSource *)self->_source hash];
  v4 = [(NSArray *)self->_featureNames hash]^ v3;
  return v4 ^ [(NSArray *)self->_features hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(GRRSchemaGRRFeatureExtracted *)self source];
  v6 = [v4 source];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(GRRSchemaGRRFeatureExtracted *)self source];
  if (v7)
  {
    v8 = v7;
    v9 = [(GRRSchemaGRRFeatureExtracted *)self source];
    v10 = [v4 source];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(GRRSchemaGRRFeatureExtracted *)self featureNames];
  v6 = [v4 featureNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(GRRSchemaGRRFeatureExtracted *)self featureNames];
  if (v12)
  {
    v13 = v12;
    v14 = [(GRRSchemaGRRFeatureExtracted *)self featureNames];
    v15 = [v4 featureNames];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(GRRSchemaGRRFeatureExtracted *)self features];
  v6 = [v4 features];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(GRRSchemaGRRFeatureExtracted *)self features];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(GRRSchemaGRRFeatureExtracted *)self features];
    v20 = [v4 features];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(GRRSchemaGRRFeatureExtracted *)self source];

  if (v5)
  {
    v6 = [(GRRSchemaGRRFeatureExtracted *)self source];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_featureNames;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_features;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addFeatures:(id)a3
{
  v4 = a3;
  features = self->_features;
  v8 = v4;
  if (!features)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_features;
    self->_features = v6;

    v4 = v8;
    features = self->_features;
  }

  [(NSArray *)features addObject:v4];
}

- (void)addFeatureNames:(id)a3
{
  v4 = a3;
  featureNames = self->_featureNames;
  v8 = v4;
  if (!featureNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_featureNames;
    self->_featureNames = v6;

    v4 = v8;
    featureNames = self->_featureNames;
  }

  [(NSArray *)featureNames addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GRRSchemaGRRFeatureExtracted;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(GRRSchemaGRRFeatureExtracted *)self source];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GRRSchemaGRRFeatureExtracted *)self deleteSource];
  }

  v9 = [(GRRSchemaGRRFeatureExtracted *)self features];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(GRRSchemaGRRFeatureExtracted *)self setFeatures:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end