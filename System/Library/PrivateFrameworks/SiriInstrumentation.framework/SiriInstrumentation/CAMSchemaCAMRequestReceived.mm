@interface CAMSchemaCAMRequestReceived
- (BOOL)isEqual:(id)equal;
- (CAMSchemaCAMRequestReceived)initWithDictionary:(id)dictionary;
- (CAMSchemaCAMRequestReceived)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addFeature:(id)feature;
- (void)writeTo:(id)to;
@end

@implementation CAMSchemaCAMRequestReceived

- (CAMSchemaCAMRequestReceived)initWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = CAMSchemaCAMRequestReceived;
  v5 = [(CAMSchemaCAMRequestReceived *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"feature"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
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

            v12 = *(*(&v16 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(CAMSchemaCAMRequestReceived *)v5 addFeature:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v9);
      }
    }

    v14 = v5;
  }

  return v5;
}

- (CAMSchemaCAMRequestReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAMSchemaCAMRequestReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAMSchemaCAMRequestReceived *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_features)
  {
    features = [(CAMSchemaCAMRequestReceived *)self features];
    v5 = [features copy];
    [dictionary setObject:v5 forKeyedSubscript:@"feature"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    features = [(CAMSchemaCAMRequestReceived *)self features];
    features2 = [equalCopy features];
    v7 = features2;
    if ((features != 0) != (features2 == 0))
    {
      features3 = [(CAMSchemaCAMRequestReceived *)self features];
      if (!features3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = features3;
      features4 = [(CAMSchemaCAMRequestReceived *)self features];
      features5 = [equalCopy features];
      v12 = [features4 isEqual:features5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_features;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addFeature:(id)feature
{
  featureCopy = feature;
  features = self->_features;
  v8 = featureCopy;
  if (!features)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_features;
    self->_features = array;

    featureCopy = v8;
    features = self->_features;
  }

  [(NSArray *)features addObject:featureCopy];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end