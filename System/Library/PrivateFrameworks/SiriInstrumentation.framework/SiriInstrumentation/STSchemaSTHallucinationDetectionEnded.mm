@interface STSchemaSTHallucinationDetectionEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTHallucinationDetectionEnded)initWithDictionary:(id)dictionary;
- (STSchemaSTHallucinationDetectionEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)hallucinationDetectedRulesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addHallucinationDetectedRules:(int)rules;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTHallucinationDetectionEnded

- (STSchemaSTHallucinationDetectionEnded)initWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = STSchemaSTHallucinationDetectionEnded;
  v5 = [(STSchemaSTHallucinationDetectionEnded *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hallucinationDetectionLatencyMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTHallucinationDetectionEnded setHallucinationDetectionLatencyMs:](v5, "setHallucinationDetectionLatencyMs:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hallucinationDetectedRules"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[STSchemaSTHallucinationDetectionEnded addHallucinationDetectedRules:](v5, "addHallucinationDetectedRules:", [v13 intValue]);
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }
    }

    v14 = v5;
  }

  return v5;
}

- (STSchemaSTHallucinationDetectionEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTHallucinationDetectionEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTHallucinationDetectionEnded *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_hallucinationDetectedRules count])
  {
    hallucinationDetectedRules = [(STSchemaSTHallucinationDetectionEnded *)self hallucinationDetectedRules];
    v5 = [hallucinationDetectedRules copy];
    [dictionary setObject:v5 forKeyedSubscript:@"hallucinationDetectedRules"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTHallucinationDetectionEnded hallucinationDetectionLatencyMs](self, "hallucinationDetectionLatencyMs")}];
    [dictionary setObject:v6 forKeyedSubscript:@"hallucinationDetectionLatencyMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_hallucinationDetectionLatencyMs;
  }

  else
  {
    v2 = 0;
  }

  return [(NSArray *)self->_hallucinationDetectedRules hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (hallucinationDetectionLatencyMs = self->_hallucinationDetectionLatencyMs, hallucinationDetectionLatencyMs == [equalCopy hallucinationDetectionLatencyMs]))
      {
        hallucinationDetectedRules = [(STSchemaSTHallucinationDetectionEnded *)self hallucinationDetectedRules];
        hallucinationDetectedRules2 = [equalCopy hallucinationDetectedRules];
        v8 = hallucinationDetectedRules2;
        if ((hallucinationDetectedRules != 0) != (hallucinationDetectedRules2 == 0))
        {
          hallucinationDetectedRules3 = [(STSchemaSTHallucinationDetectionEnded *)self hallucinationDetectedRules];
          if (!hallucinationDetectedRules3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = hallucinationDetectedRules3;
          hallucinationDetectedRules4 = [(STSchemaSTHallucinationDetectionEnded *)self hallucinationDetectedRules];
          hallucinationDetectedRules5 = [equalCopy hallucinationDetectedRules];
          v13 = [hallucinationDetectedRules4 isEqual:hallucinationDetectedRules5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_hallucinationDetectedRules;
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

        [*(*(&v10 + 1) + 8 * v9) intValue];
        PBDataWriterWriteInt32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int)hallucinationDetectedRulesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_hallucinationDetectedRules objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addHallucinationDetectedRules:(int)rules
{
  v3 = *&rules;
  hallucinationDetectedRules = self->_hallucinationDetectedRules;
  if (!hallucinationDetectedRules)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_hallucinationDetectedRules;
    self->_hallucinationDetectedRules = array;

    hallucinationDetectedRules = self->_hallucinationDetectedRules;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)hallucinationDetectedRules addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end