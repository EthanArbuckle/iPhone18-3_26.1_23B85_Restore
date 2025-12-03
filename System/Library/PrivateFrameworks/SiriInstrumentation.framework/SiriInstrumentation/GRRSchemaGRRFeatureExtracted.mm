@interface GRRSchemaGRRFeatureExtracted
- (BOOL)isEqual:(id)equal;
- (GRRSchemaGRRFeatureExtracted)initWithDictionary:(id)dictionary;
- (GRRSchemaGRRFeatureExtracted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addFeatureNames:(id)names;
- (void)addFeatures:(id)features;
- (void)writeTo:(id)to;
@end

@implementation GRRSchemaGRRFeatureExtracted

- (GRRSchemaGRRFeatureExtracted)initWithDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = GRRSchemaGRRFeatureExtracted;
  v5 = [(GRRSchemaGRRFeatureExtracted *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRRSchemaGRRSource alloc] initWithDictionary:v6];
      [(GRRSchemaGRRFeatureExtracted *)v5 setSource:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"featureNames"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"features", v26, v28}];
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

- (GRRSchemaGRRFeatureExtracted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRRSchemaGRRFeatureExtracted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRRSchemaGRRFeatureExtracted *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_featureNames)
  {
    featureNames = [(GRRSchemaGRRFeatureExtracted *)self featureNames];
    v5 = [featureNames copy];
    [dictionary setObject:v5 forKeyedSubscript:@"featureNames"];
  }

  if ([(NSArray *)self->_features count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"features"];
  }

  if (self->_source)
  {
    source = [(GRRSchemaGRRFeatureExtracted *)self source];
    dictionaryRepresentation2 = [source dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"source"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"source"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GRRSchemaGRRSource *)self->_source hash];
  v4 = [(NSArray *)self->_featureNames hash]^ v3;
  return v4 ^ [(NSArray *)self->_features hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  source = [(GRRSchemaGRRFeatureExtracted *)self source];
  source2 = [equalCopy source];
  if ((source != 0) == (source2 == 0))
  {
    goto LABEL_16;
  }

  source3 = [(GRRSchemaGRRFeatureExtracted *)self source];
  if (source3)
  {
    v8 = source3;
    source4 = [(GRRSchemaGRRFeatureExtracted *)self source];
    source5 = [equalCopy source];
    v11 = [source4 isEqual:source5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  source = [(GRRSchemaGRRFeatureExtracted *)self featureNames];
  source2 = [equalCopy featureNames];
  if ((source != 0) == (source2 == 0))
  {
    goto LABEL_16;
  }

  featureNames = [(GRRSchemaGRRFeatureExtracted *)self featureNames];
  if (featureNames)
  {
    v13 = featureNames;
    featureNames2 = [(GRRSchemaGRRFeatureExtracted *)self featureNames];
    featureNames3 = [equalCopy featureNames];
    v16 = [featureNames2 isEqual:featureNames3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  source = [(GRRSchemaGRRFeatureExtracted *)self features];
  source2 = [equalCopy features];
  if ((source != 0) != (source2 == 0))
  {
    features = [(GRRSchemaGRRFeatureExtracted *)self features];
    if (!features)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = features;
    features2 = [(GRRSchemaGRRFeatureExtracted *)self features];
    features3 = [equalCopy features];
    v21 = [features2 isEqual:features3];

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

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  source = [(GRRSchemaGRRFeatureExtracted *)self source];

  if (source)
  {
    source2 = [(GRRSchemaGRRFeatureExtracted *)self source];
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

- (void)addFeatures:(id)features
{
  featuresCopy = features;
  features = self->_features;
  v8 = featuresCopy;
  if (!features)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_features;
    self->_features = array;

    featuresCopy = v8;
    features = self->_features;
  }

  [(NSArray *)features addObject:featuresCopy];
}

- (void)addFeatureNames:(id)names
{
  namesCopy = names;
  featureNames = self->_featureNames;
  v8 = namesCopy;
  if (!featureNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_featureNames;
    self->_featureNames = array;

    namesCopy = v8;
    featureNames = self->_featureNames;
  }

  [(NSArray *)featureNames addObject:namesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = GRRSchemaGRRFeatureExtracted;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  source = [(GRRSchemaGRRFeatureExtracted *)self source];
  v7 = [source applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GRRSchemaGRRFeatureExtracted *)self deleteSource];
  }

  features = [(GRRSchemaGRRFeatureExtracted *)self features];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:features underConditions:policyCopy];
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