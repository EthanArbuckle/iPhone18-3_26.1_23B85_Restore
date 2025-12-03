@interface JRSchemaRankingTuple
- (BOOL)isEqual:(id)equal;
- (JRSchemaRankingTuple)initWithDictionary:(id)dictionary;
- (JRSchemaRankingTuple)initWithJSON:(id)n;
- (NSData)jsonData;
- (float)scoresAtIndex:(unint64_t)index;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addScores:(float)scores;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaRankingTuple

- (JRSchemaRankingTuple)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = JRSchemaRankingTuple;
  v5 = [(JRSchemaRankingTuple *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"scores"];
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
              [(JRSchemaRankingTuple *)v5 addScores:?];
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

- (JRSchemaRankingTuple)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaRankingTuple *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaRankingTuple *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_scores count])
  {
    scores = [(JRSchemaRankingTuple *)self scores];
    v5 = [scores copy];
    [dictionary setObject:v5 forKeyedSubscript:@"scores"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    scores = [(JRSchemaRankingTuple *)self scores];
    scores2 = [equalCopy scores];
    v7 = scores2;
    if ((scores != 0) != (scores2 == 0))
    {
      scores3 = [(JRSchemaRankingTuple *)self scores];
      if (!scores3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = scores3;
      scores4 = [(JRSchemaRankingTuple *)self scores];
      scores5 = [equalCopy scores];
      v12 = [scores4 isEqual:scores5];

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
  v5 = self->_scores;
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

- (float)scoresAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_scores objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addScores:(float)scores
{
  scores = self->_scores;
  if (!scores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_scores;
    self->_scores = array;

    scores = self->_scores;
  }

  *&v8 = scores;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)scores addObject:v9];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end