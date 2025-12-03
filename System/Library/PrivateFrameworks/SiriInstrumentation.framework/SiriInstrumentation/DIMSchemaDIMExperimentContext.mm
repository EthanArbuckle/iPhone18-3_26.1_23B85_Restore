@interface DIMSchemaDIMExperimentContext
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMExperimentContext)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMExperimentContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addExperimentInfo:(id)info;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMExperimentContext

- (DIMSchemaDIMExperimentContext)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = DIMSchemaDIMExperimentContext;
  v5 = [(DIMSchemaDIMExperimentContext *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"experimentInfo"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"experimentalBucketId", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMExperimentContext setExperimentalBucketId:](v5, "setExperimentalBucketId:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (DIMSchemaDIMExperimentContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMExperimentContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMExperimentContext *)self dictionaryRepresentation];
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
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_experimentInfos count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"experimentInfo"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DIMSchemaDIMExperimentContext experimentalBucketId](self, "experimentalBucketId")}];
    [dictionary setObject:v12 forKeyedSubscript:@"experimentalBucketId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v14];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  experimentInfos = [(DIMSchemaDIMExperimentContext *)self experimentInfos];
  experimentInfos2 = [equalCopy experimentInfos];
  v7 = experimentInfos2;
  if ((experimentInfos != 0) == (experimentInfos2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  experimentInfos3 = [(DIMSchemaDIMExperimentContext *)self experimentInfos];
  if (experimentInfos3)
  {
    v9 = experimentInfos3;
    experimentInfos4 = [(DIMSchemaDIMExperimentContext *)self experimentInfos];
    experimentInfos5 = [equalCopy experimentInfos];
    v12 = [experimentInfos4 isEqual:experimentInfos5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    experimentalBucketId = self->_experimentalBucketId;
    if (experimentalBucketId != [equalCopy experimentalBucketId])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)addExperimentInfo:(id)info
{
  infoCopy = info;
  experimentInfos = self->_experimentInfos;
  v8 = infoCopy;
  if (!experimentInfos)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_experimentInfos;
    self->_experimentInfos = array;

    infoCopy = v8;
    experimentInfos = self->_experimentInfos;
  }

  [(NSArray *)experimentInfos addObject:infoCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DIMSchemaDIMExperimentContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DIMSchemaDIMExperimentContext *)self experimentInfos:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

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