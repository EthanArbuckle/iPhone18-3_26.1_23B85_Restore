@interface FLSchemaFLTaskEvaluationNode
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLTaskEvaluationNode)initWithDictionary:(id)dictionary;
- (FLSchemaFLTaskEvaluationNode)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)sourcesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addSources:(int)sources;
- (void)setHasResult:(BOOL)result;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLTaskEvaluationNode

- (FLSchemaFLTaskEvaluationNode)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = FLSchemaFLTaskEvaluationNode;
  v5 = [(FLSchemaFLTaskEvaluationNode *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"evaluator"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLTaskEvaluationNode setEvaluator:](v5, "setEvaluator:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLTaskEvaluationNode setResult:](v5, "setResult:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sources"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v6;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          v13 = 0;
          do
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLSchemaFLTaskEvaluationNode addSources:](v5, "addSources:", [v14 intValue]);
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v11);
      }

      v6 = v17;
    }

    v15 = v5;
  }

  return v5;
}

- (FLSchemaFLTaskEvaluationNode)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLTaskEvaluationNode *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLTaskEvaluationNode *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(FLSchemaFLTaskEvaluationNode *)self evaluator]- 1;
    if (v5 > 4)
    {
      v6 = @"FLEVALUATOR_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D6DB8[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"evaluator"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [(FLSchemaFLTaskEvaluationNode *)self result]- 1;
    if (v7 > 2)
    {
      v8 = @"FLEVALUATIONVOTE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D6DE0[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"result"];
  }

  if ([(NSArray *)self->_sources count])
  {
    sources = [(FLSchemaFLTaskEvaluationNode *)self sources];
    v10 = [sources copy];
    [dictionary setObject:v10 forKeyedSubscript:@"sources"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_evaluator;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSArray *)self->_sources hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_result;
  return v7 ^ v6 ^ [(NSArray *)self->_sources hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    evaluator = self->_evaluator;
    if (evaluator != [equalCopy evaluator])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (v9 = self->_result, v9 == [equalCopy result]))
    {
      sources = [(FLSchemaFLTaskEvaluationNode *)self sources];
      sources2 = [equalCopy sources];
      v12 = sources2;
      if ((sources != 0) != (sources2 == 0))
      {
        sources3 = [(FLSchemaFLTaskEvaluationNode *)self sources];
        if (!sources3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = sources3;
        sources4 = [(FLSchemaFLTaskEvaluationNode *)self sources];
        sources5 = [equalCopy sources];
        v17 = [sources4 isEqual:sources5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_sources;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (int)sourcesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_sources objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addSources:(int)sources
{
  v3 = *&sources;
  sources = self->_sources;
  if (!sources)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sources;
    self->_sources = array;

    sources = self->_sources;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)sources addObject:v8];
}

- (void)setHasResult:(BOOL)result
{
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end