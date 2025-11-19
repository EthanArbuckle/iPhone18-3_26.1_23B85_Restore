@interface FLOWSchemaFLOWBriefingContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWBriefingContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWBriefingContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)enabledFeaturesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addEnabledFeatures:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWBriefingContext

- (FLOWSchemaFLOWBriefingContext)initWithDictionary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FLOWSchemaFLOWBriefingContext;
  v5 = [(FLOWSchemaFLOWBriefingContext *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enabledFeatures"];
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

    v13 = [v4 objectForKeyedSubscript:{@"briefingAttribute", v16}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWBriefingContext setBriefingAttribute:](v5, "setBriefingAttribute:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWBriefingContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWBriefingContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWBriefingContext *)self dictionaryRepresentation];
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

    [v3 setObject:v5 forKeyedSubscript:@"briefingAttribute"];
  }

  if ([(NSArray *)self->_enabledFeatures count])
  {
    v6 = [(FLOWSchemaFLOWBriefingContext *)self enabledFeatures];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"enabledFeatures"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(FLOWSchemaFLOWBriefingContext *)self enabledFeatures];
  v6 = [v4 enabledFeatures];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(FLOWSchemaFLOWBriefingContext *)self enabledFeatures];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWBriefingContext *)self enabledFeatures];
    v11 = [v4 enabledFeatures];
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
    briefingAttribute = self->_briefingAttribute;
    if (briefingAttribute != [v4 briefingAttribute])
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

- (int)enabledFeaturesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_enabledFeatures objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addEnabledFeatures:(int)a3
{
  v3 = *&a3;
  enabledFeatures = self->_enabledFeatures;
  if (!enabledFeatures)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_enabledFeatures;
    self->_enabledFeatures = v6;

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