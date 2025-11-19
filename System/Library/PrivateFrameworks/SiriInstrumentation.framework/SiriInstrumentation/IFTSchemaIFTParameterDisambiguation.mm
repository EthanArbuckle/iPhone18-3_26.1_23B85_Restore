@interface IFTSchemaIFTParameterDisambiguation
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTParameterDisambiguation)initWithDictionary:(id)a3;
- (IFTSchemaIFTParameterDisambiguation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addItems:(id)a3;
- (void)setHasParameterIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTParameterDisambiguation

- (IFTSchemaIFTParameterDisambiguation)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = IFTSchemaIFTParameterDisambiguation;
  v5 = [(IFTSchemaIFTParameterDisambiguation *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterDisambiguation setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterDisambiguation *)v5 setParameterId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"parameterIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterDisambiguation setParameterIndex:](v5, "setParameterIndex:", [v9 longLongValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"items"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v9;
      v21 = v7;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v16];
              [(IFTSchemaIFTParameterDisambiguation *)v5 addItems:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v7 = v21;
      v9 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterDisambiguation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterDisambiguation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTParameterDisambiguation *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterDisambiguation exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if ([(NSArray *)self->_items count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_items;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"items"];
  }

  if (self->_parameterId)
  {
    v13 = [(IFTSchemaIFTParameterDisambiguation *)self parameterId];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"parameterId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTParameterDisambiguation parameterIndex](self, "parameterIndex")}];
    [v3 setObject:v15 forKeyedSubscript:@"parameterIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_parameterId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_parameterIndex;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_items hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_18;
    }
  }

  v6 = [(IFTSchemaIFTParameterDisambiguation *)self parameterId];
  v7 = [v4 parameterId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(IFTSchemaIFTParameterDisambiguation *)self parameterId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTParameterDisambiguation *)self parameterId];
    v11 = [v4 parameterId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((v4[40] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    parameterIndex = self->_parameterIndex;
    if (parameterIndex != [v4 parameterIndex])
    {
      goto LABEL_18;
    }
  }

  v6 = [(IFTSchemaIFTParameterDisambiguation *)self items];
  v7 = [v4 items];
  if ((v6 != 0) != (v7 == 0))
  {
    v15 = [(IFTSchemaIFTParameterDisambiguation *)self items];
    if (!v15)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = v15;
    v17 = [(IFTSchemaIFTParameterDisambiguation *)self items];
    v18 = [v4 items];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(IFTSchemaIFTParameterDisambiguation *)self parameterId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addItems:(id)a3
{
  v4 = a3;
  items = self->_items;
  v8 = v4;
  if (!items)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_items;
    self->_items = v6;

    v4 = v8;
    items = self->_items;
  }

  [(NSArray *)items addObject:v4];
}

- (void)setHasParameterIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameterDisambiguation;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTParameterDisambiguation *)self items:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(IFTSchemaIFTParameterDisambiguation *)self setItems:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end