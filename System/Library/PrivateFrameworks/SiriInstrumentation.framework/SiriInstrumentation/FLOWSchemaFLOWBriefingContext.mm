@interface FLOWSchemaFLOWBriefingContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWBriefingContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWBriefingContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)enabledFeaturesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addEnabledFeatures:(int)features;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWBriefingContext

- (FLOWSchemaFLOWBriefingContext)initWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = FLOWSchemaFLOWBriefingContext;
  v5 = [(FLOWSchemaFLOWBriefingContext *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"enabledFeatures"];
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
              -[FLOWSchemaFLOWBriefingContext addEnabledFeatures:](v5, "addEnabledFeatures:", [v12 intValue]);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v9);
      }
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:{@"briefingAttribute", v16}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWBriefingContext setBriefingAttribute:](v5, "setBriefingAttribute:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWBriefingContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWBriefingContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWBriefingContext *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(FLOWSchemaFLOWBriefingContext *)self briefingAttribute]- 1;
    if (v4 > 0xB)
    {
      v5 = @"FLOWBRIEFINGTASKATTRIBUTE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D4FF0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"briefingAttribute"];
  }

  if ([(NSArray *)self->_enabledFeatures count])
  {
    enabledFeatures = [(FLOWSchemaFLOWBriefingContext *)self enabledFeatures];
    v7 = [enabledFeatures copy];
    [dictionary setObject:v7 forKeyedSubscript:@"enabledFeatures"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_enabledFeatures hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_briefingAttribute;
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

  enabledFeatures = [(FLOWSchemaFLOWBriefingContext *)self enabledFeatures];
  enabledFeatures2 = [equalCopy enabledFeatures];
  v7 = enabledFeatures2;
  if ((enabledFeatures != 0) == (enabledFeatures2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  enabledFeatures3 = [(FLOWSchemaFLOWBriefingContext *)self enabledFeatures];
  if (enabledFeatures3)
  {
    v9 = enabledFeatures3;
    enabledFeatures4 = [(FLOWSchemaFLOWBriefingContext *)self enabledFeatures];
    enabledFeatures5 = [equalCopy enabledFeatures];
    v12 = [enabledFeatures4 isEqual:enabledFeatures5];

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
    briefingAttribute = self->_briefingAttribute;
    if (briefingAttribute != [equalCopy briefingAttribute])
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
  v5 = self->_enabledFeatures;
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

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (int)enabledFeaturesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_enabledFeatures objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addEnabledFeatures:(int)features
{
  v3 = *&features;
  enabledFeatures = self->_enabledFeatures;
  if (!enabledFeatures)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_enabledFeatures;
    self->_enabledFeatures = array;

    enabledFeatures = self->_enabledFeatures;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)enabledFeatures addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end