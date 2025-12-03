@interface JRSchemaJRTokenConfidence
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRTokenConfidence)initWithDictionary:(id)dictionary;
- (JRSchemaJRTokenConfidence)initWithJSON:(id)n;
- (NSData)jsonData;
- (float)asrScoresAtIndex:(unint64_t)index;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAsrScores:(float)scores;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRTokenConfidence

- (JRSchemaJRTokenConfidence)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = JRSchemaJRTokenConfidence;
  v5 = [(JRSchemaJRTokenConfidence *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asrScores"];
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

- (JRSchemaJRTokenConfidence)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRTokenConfidence *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRTokenConfidence *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_asrScores count])
  {
    asrScores = [(JRSchemaJRTokenConfidence *)self asrScores];
    v5 = [asrScores copy];
    [dictionary setObject:v5 forKeyedSubscript:@"asrScores"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    asrScores = [(JRSchemaJRTokenConfidence *)self asrScores];
    asrScores2 = [equalCopy asrScores];
    v7 = asrScores2;
    if ((asrScores != 0) != (asrScores2 == 0))
    {
      asrScores3 = [(JRSchemaJRTokenConfidence *)self asrScores];
      if (!asrScores3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = asrScores3;
      asrScores4 = [(JRSchemaJRTokenConfidence *)self asrScores];
      asrScores5 = [equalCopy asrScores];
      v12 = [asrScores4 isEqual:asrScores5];

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

- (float)asrScoresAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_asrScores objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addAsrScores:(float)scores
{
  asrScores = self->_asrScores;
  if (!asrScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_asrScores;
    self->_asrScores = array;

    asrScores = self->_asrScores;
  }

  *&v8 = scores;
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