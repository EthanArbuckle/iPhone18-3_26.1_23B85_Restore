@interface DIMSchemaDIMExperimentContext
- (BOOL)isEqual:(id)a3;
- (DIMSchemaDIMExperimentContext)initWithDictionary:(id)a3;
- (DIMSchemaDIMExperimentContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addExperimentInfo:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DIMSchemaDIMExperimentContext

- (DIMSchemaDIMExperimentContext)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DIMSchemaDIMExperimentContext;
  v5 = [(DIMSchemaDIMExperimentContext *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"experimentInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [DIMSchemaDIMExperimentInfo alloc];
              v14 = [(DIMSchemaDIMExperimentInfo *)v13 initWithDictionary:v12, v18];
              [(DIMSchemaDIMExperimentContext *)v5 addExperimentInfo:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"experimentalBucketId", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMExperimentContext setExperimentalBucketId:](v5, "setExperimentalBucketId:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (DIMSchemaDIMExperimentContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DIMSchemaDIMExperimentContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DIMSchemaDIMExperimentContext *)self dictionaryRepresentation];
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
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_experimentInfos count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_experimentInfos;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"experimentInfo"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DIMSchemaDIMExperimentContext experimentalBucketId](self, "experimentalBucketId")}];
    [v3 setObject:v12 forKeyedSubscript:@"experimentalBucketId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v14];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_experimentInfos hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_experimentalBucketId;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(DIMSchemaDIMExperimentContext *)self experimentInfos];
  v6 = [v4 experimentInfos];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(DIMSchemaDIMExperimentContext *)self experimentInfos];
  if (v8)
  {
    v9 = v8;
    v10 = [(DIMSchemaDIMExperimentContext *)self experimentInfos];
    v11 = [v4 experimentInfos];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    experimentalBucketId = self->_experimentalBucketId;
    if (experimentalBucketId != [v4 experimentalBucketId])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_experimentInfos;
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

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)addExperimentInfo:(id)a3
{
  v4 = a3;
  experimentInfos = self->_experimentInfos;
  v8 = v4;
  if (!experimentInfos)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_experimentInfos;
    self->_experimentInfos = v6;

    v4 = v8;
    experimentInfos = self->_experimentInfos;
  }

  [(NSArray *)experimentInfos addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = DIMSchemaDIMExperimentContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(DIMSchemaDIMExperimentContext *)self experimentInfos:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(DIMSchemaDIMExperimentContext *)self setExperimentInfos:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end