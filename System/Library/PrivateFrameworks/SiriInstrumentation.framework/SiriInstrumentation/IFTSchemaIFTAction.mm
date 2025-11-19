@interface IFTSchemaIFTAction
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTAction)initWithDictionary:(id)a3;
- (IFTSchemaIFTAction)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addActionParameterValues:(id)a3;
- (void)setHasIsConfirmed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTAction

- (IFTSchemaIFTAction)initWithDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = IFTSchemaIFTAction;
  v5 = [(IFTSchemaIFTAction *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAction setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTAction *)v5 setStatementId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(IFTSchemaIFTAction *)v5 setToolId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(IFTSchemaIFTAction *)v5 setBundleId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"isConfirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAction setIsConfirmed:](v5, "setIsConfirmed:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"actionParameterValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v13;
      v28 = v11;
      v29 = v9;
      v30 = v7;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v32;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v31 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[IFTSchemaIFTActionParameterValue alloc] initWithDictionary:v20];
              [(IFTSchemaIFTAction *)v5 addActionParameterValues:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v17);
      }

      v7 = v30;
      v11 = v28;
      v9 = v29;
      v13 = v27;
    }

    v22 = [v4 objectForKeyedSubscript:@"planEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v13;
      v24 = [[SISchemaUUID alloc] initWithDictionary:v22];
      [(IFTSchemaIFTAction *)v5 setPlanEventId:v24];

      v13 = v23;
    }

    v25 = v5;
  }

  return v5;
}

- (IFTSchemaIFTAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTAction *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_actionParameterValues count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_actionParameterValues;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"actionParameterValues"];
  }

  if (self->_bundleId)
  {
    v12 = [(IFTSchemaIFTAction *)self bundleId];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"bundleId"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAction exists](self, "exists")}];
    [v3 setObject:v15 forKeyedSubscript:@"exists"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAction isConfirmed](self, "isConfirmed")}];
    [v3 setObject:v16 forKeyedSubscript:@"isConfirmed"];
  }

  if (self->_planEventId)
  {
    v17 = [(IFTSchemaIFTAction *)self planEventId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"planEventId"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"planEventId"];
    }
  }

  if (self->_statementId)
  {
    v20 = [(IFTSchemaIFTAction *)self statementId];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    v23 = [(IFTSchemaIFTAction *)self toolId];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v26];

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

  v4 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v5 = [(NSString *)self->_toolId hash];
  v6 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_isConfirmed;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSArray *)self->_actionParameterValues hash];
  return v8 ^ v9 ^ [(SISchemaUUID *)self->_planEventId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 1) != (v4[64] & 1))
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_33;
    }
  }

  v6 = [(IFTSchemaIFTAction *)self statementId];
  v7 = [v4 statementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v8 = [(IFTSchemaIFTAction *)self statementId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTAction *)self statementId];
    v11 = [v4 statementId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTAction *)self toolId];
  v7 = [v4 toolId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v13 = [(IFTSchemaIFTAction *)self toolId];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTAction *)self toolId];
    v16 = [v4 toolId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTAction *)self bundleId];
  v7 = [v4 bundleId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v18 = [(IFTSchemaIFTAction *)self bundleId];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTAction *)self bundleId];
    v21 = [v4 bundleId];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v23 = (*&self->_has >> 1) & 1;
  if (v23 != ((v4[64] >> 1) & 1))
  {
    goto LABEL_33;
  }

  if (v23)
  {
    isConfirmed = self->_isConfirmed;
    if (isConfirmed != [v4 isConfirmed])
    {
      goto LABEL_33;
    }
  }

  v6 = [(IFTSchemaIFTAction *)self actionParameterValues];
  v7 = [v4 actionParameterValues];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v25 = [(IFTSchemaIFTAction *)self actionParameterValues];
  if (v25)
  {
    v26 = v25;
    v27 = [(IFTSchemaIFTAction *)self actionParameterValues];
    v28 = [v4 actionParameterValues];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTAction *)self planEventId];
  v7 = [v4 planEventId];
  if ((v6 != 0) != (v7 == 0))
  {
    v30 = [(IFTSchemaIFTAction *)self planEventId];
    if (!v30)
    {

LABEL_36:
      v35 = 1;
      goto LABEL_34;
    }

    v31 = v30;
    v32 = [(IFTSchemaIFTAction *)self planEventId];
    v33 = [v4 planEventId];
    v34 = [v32 isEqual:v33];

    if (v34)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v35 = 0;
LABEL_34:

  return v35;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(IFTSchemaIFTAction *)self statementId];

  if (v5)
  {
    v6 = [(IFTSchemaIFTAction *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(IFTSchemaIFTAction *)self toolId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(IFTSchemaIFTAction *)self bundleId];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_actionParameterValues;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(IFTSchemaIFTAction *)self planEventId];

  if (v14)
  {
    v15 = [(IFTSchemaIFTAction *)self planEventId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addActionParameterValues:(id)a3
{
  v4 = a3;
  actionParameterValues = self->_actionParameterValues;
  v8 = v4;
  if (!actionParameterValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionParameterValues;
    self->_actionParameterValues = v6;

    v4 = v8;
    actionParameterValues = self->_actionParameterValues;
  }

  [(NSArray *)actionParameterValues addObject:v4];
}

- (void)setHasIsConfirmed:(BOOL)a3
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
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTAction;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTAction *)self deleteToolId];
    [(IFTSchemaIFTAction *)self deleteBundleId];
  }

  v6 = [(IFTSchemaIFTAction *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTAction *)self deleteStatementId];
  }

  v9 = [(IFTSchemaIFTAction *)self actionParameterValues];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(IFTSchemaIFTAction *)self setActionParameterValues:v10];

  v11 = [(IFTSchemaIFTAction *)self planEventId];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(IFTSchemaIFTAction *)self deletePlanEventId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end