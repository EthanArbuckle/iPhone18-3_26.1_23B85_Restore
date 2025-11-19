@interface JRSchemaJRTokenConfidence
- (BOOL)isEqual:(id)a3;
- (JRSchemaJRTokenConfidence)initWithDictionary:(id)a3;
- (JRSchemaJRTokenConfidence)initWithJSON:(id)a3;
- (NSData)jsonData;
- (float)asrScoresAtIndex:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAsrScores:(float)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaJRTokenConfidence

- (JRSchemaJRTokenConfidence)initWithDictionary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = JRSchemaJRTokenConfidence;
  v5 = [(JRSchemaJRTokenConfidence *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"asrScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v12 floatValue];
              [(JRSchemaJRTokenConfidence *)v5 addAsrScores:?];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v13 = v5;
  }

  return v5;
}

- (JRSchemaJRTokenConfidence)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaJRTokenConfidence *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaJRTokenConfidence *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_asrScores count])
  {
    v4 = [(JRSchemaJRTokenConfidence *)self asrScores];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"asrScores"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(JRSchemaJRTokenConfidence *)self asrScores];
    v6 = [v4 asrScores];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(JRSchemaJRTokenConfidence *)self asrScores];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(JRSchemaJRTokenConfidence *)self asrScores];
      v11 = [v4 asrScores];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_asrScores;
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

        [*(*(&v10 + 1) + 8 * v9) floatValue];
        PBDataWriterWriteFloatField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (float)asrScoresAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_asrScores objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addAsrScores:(float)a3
{
  asrScores = self->_asrScores;
  if (!asrScores)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_asrScores;
    self->_asrScores = v6;

    asrScores = self->_asrScores;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)asrScores addObject:v9];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end