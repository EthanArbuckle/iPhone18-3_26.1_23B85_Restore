@interface IFTSchemaIFTStructuredSearchExpression
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTStructuredSearchExpression)initWithDictionary:(id)a3;
- (IFTSchemaIFTStructuredSearchExpression)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addParameters:(id)a3;
- (void)addProperties:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTStructuredSearchExpression

- (IFTSchemaIFTStructuredSearchExpression)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = IFTSchemaIFTStructuredSearchExpression;
  v5 = [(IFTSchemaIFTStructuredSearchExpression *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isExpanded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTStructuredSearchExpression setIsExpanded:](v5, "setIsExpanded:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"properties"];
    objc_opt_class();
    v29 = v6;
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v8 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[IFTSchemaIFTStructuredSearchProperty alloc] initWithDictionary:v14];
              [(IFTSchemaIFTStructuredSearchExpression *)v5 addProperties:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v11);
      }

      v7 = v8;
    }

    v16 = [v4 objectForKeyedSubscript:@"returnType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTTypeInstance alloc] initWithDictionary:v16];
      [(IFTSchemaIFTStructuredSearchExpression *)v5 setReturnType:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v16;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v30 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[IFTSchemaIFTStructuredSearchExpressionParameters alloc] initWithDictionary:v24];
              [(IFTSchemaIFTStructuredSearchExpression *)v5 addParameters:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v21);
      }

      v6 = v29;
      v16 = v28;
    }

    v26 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStructuredSearchExpression)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStructuredSearchExpression *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTStructuredSearchExpression *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTStructuredSearchExpression isExpanded](self, "isExpanded")}];
    [v3 setObject:v4 forKeyedSubscript:@"isExpanded"];
  }

  if ([(NSArray *)self->_parameters count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = self->_parameters;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          if (v11)
          {
            [v5 addObject:v11];
          }

          else
          {
            v12 = [MEMORY[0x1E695DFB0] null];
            [v5 addObject:v12];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"parameters"];
  }

  if ([(NSArray *)self->_properties count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = self->_properties;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"properties"];
  }

  if (self->_returnType)
  {
    v21 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"returnType"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"returnType"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v25];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isExpanded;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_properties hash]^ v3;
  v5 = [(IFTSchemaIFTTypeInstance *)self->_returnType hash];
  return v4 ^ v5 ^ [(NSArray *)self->_parameters hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    isExpanded = self->_isExpanded;
    if (isExpanded != [v4 isExpanded])
    {
      goto LABEL_20;
    }
  }

  v6 = [(IFTSchemaIFTStructuredSearchExpression *)self properties];
  v7 = [v4 properties];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(IFTSchemaIFTStructuredSearchExpression *)self properties];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTStructuredSearchExpression *)self properties];
    v11 = [v4 properties];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
  v7 = [v4 returnType];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
    v16 = [v4 returnType];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTStructuredSearchExpression *)self parameters];
  v7 = [v4 parameters];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(IFTSchemaIFTStructuredSearchExpression *)self parameters];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(IFTSchemaIFTStructuredSearchExpression *)self parameters];
    v21 = [v4 parameters];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_properties;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];

  if (v10)
  {
    v11 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_parameters;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addParameters:(id)a3
{
  v4 = a3;
  parameters = self->_parameters;
  v8 = v4;
  if (!parameters)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameters;
    self->_parameters = v6;

    v4 = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:v4];
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  v8 = v4;
  if (!properties)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = v6;

    v4 = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTStructuredSearchExpression;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTStructuredSearchExpression *)self properties];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(IFTSchemaIFTStructuredSearchExpression *)self setProperties:v7];

  v8 = [(IFTSchemaIFTStructuredSearchExpression *)self returnType];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(IFTSchemaIFTStructuredSearchExpression *)self deleteReturnType];
  }

  v11 = [(IFTSchemaIFTStructuredSearchExpression *)self parameters];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(IFTSchemaIFTStructuredSearchExpression *)self setParameters:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end