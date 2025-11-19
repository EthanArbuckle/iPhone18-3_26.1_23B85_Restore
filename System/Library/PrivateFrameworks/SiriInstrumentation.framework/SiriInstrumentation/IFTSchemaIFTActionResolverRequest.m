@interface IFTSchemaIFTActionResolverRequest
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionResolverRequest)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionResolverRequest)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUnresolvedParameterSets:(id)a3;
- (void)setHasIsAuthenticated:(BOOL)a3;
- (void)setHasIsClientAction:(BOOL)a3;
- (void)setHasIsConfirmed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTActionResolverRequest

- (IFTSchemaIFTActionResolverRequest)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = IFTSchemaIFTActionResolverRequest;
  v5 = [(IFTSchemaIFTActionResolverRequest *)&v39 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionResolverRequest setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTActionResolverRequest *)v5 setStatementId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(IFTSchemaIFTActionResolverRequest *)v5 setToolId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"isClientAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionResolverRequest setIsClientAction:](v5, "setIsClientAction:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"isConfirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionResolverRequest setIsConfirmed:](v5, "setIsConfirmed:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"isAuthenticated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionResolverRequest setIsAuthenticated:](v5, "setIsAuthenticated:", [v13 BOOLValue]);
    }

    v34 = v13;
    v14 = [v4 objectForKeyedSubscript:@"resolvedParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTParameterSet alloc] initWithDictionary:v14];
      v16 = v14;
      v17 = v12;
      v18 = v15;
      [(IFTSchemaIFTActionResolverRequest *)v5 setResolvedParameters:v15];

      v12 = v17;
      v14 = v16;
    }

    v19 = [v4 objectForKeyedSubscript:@"unresolvedParameterSets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v14;
      v30 = v12;
      v31 = v11;
      v32 = v7;
      v33 = v6;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = [[IFTSchemaIFTParameterSet alloc] initWithDictionary:v25];
              [(IFTSchemaIFTActionResolverRequest *)v5 addUnresolvedParameterSets:v26];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v22);
      }

      v7 = v32;
      v6 = v33;
      v11 = v31;
      v14 = v29;
      v12 = v30;
    }

    v27 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionResolverRequest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionResolverRequest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionResolverRequest *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionResolverRequest exists](self, "exists")}];
    [v3 setObject:v8 forKeyedSubscript:@"exists"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionResolverRequest isAuthenticated](self, "isAuthenticated")}];
  [v3 setObject:v9 forKeyedSubscript:@"isAuthenticated"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionResolverRequest isClientAction](self, "isClientAction")}];
  [v3 setObject:v10 forKeyedSubscript:@"isClientAction"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionResolverRequest isConfirmed](self, "isConfirmed")}];
    [v3 setObject:v5 forKeyedSubscript:@"isConfirmed"];
  }

LABEL_6:
  if (self->_resolvedParameters)
  {
    v6 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"resolvedParameters"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"resolvedParameters"];
    }
  }

  if (self->_statementId)
  {
    v12 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    v15 = [(IFTSchemaIFTActionResolverRequest *)self toolId];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"toolId"];
  }

  if ([(NSArray *)self->_unresolvedParameterSets count])
  {
    v17 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = self->_unresolvedParameterSets;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (v23)
          {
            [v17 addObject:v23];
          }

          else
          {
            v24 = [MEMORY[0x1E695DFB0] null];
            [v17 addObject:v24];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"unresolvedParameterSets"];
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
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = 2654435761 * self->_isClientAction;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_isConfirmed;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = 2654435761 * self->_isAuthenticated;
LABEL_11:
  v9 = v4 ^ v3 ^ v5 ^ v6;
  v10 = v7 ^ v8 ^ [(IFTSchemaIFTParameterSet *)self->_resolvedParameters hash];
  return v9 ^ v10 ^ [(NSArray *)self->_unresolvedParameterSets hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_36;
    }
  }

  v6 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
  v7 = [v4 statementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_35;
  }

  v8 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
    v11 = [v4 statementId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTActionResolverRequest *)self toolId];
  v7 = [v4 toolId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_35;
  }

  v13 = [(IFTSchemaIFTActionResolverRequest *)self toolId];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTActionResolverRequest *)self toolId];
    v16 = [v4 toolId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  has = self->_has;
  v19 = (*&has >> 1) & 1;
  v20 = v4[56];
  if (v19 != ((v20 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v19)
  {
    isClientAction = self->_isClientAction;
    if (isClientAction != [v4 isClientAction])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v20 = v4[56];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v20 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v22)
  {
    isConfirmed = self->_isConfirmed;
    if (isConfirmed != [v4 isConfirmed])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v20 = v4[56];
  }

  v24 = (*&has >> 3) & 1;
  if (v24 != ((v20 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v24)
  {
    isAuthenticated = self->_isAuthenticated;
    if (isAuthenticated != [v4 isAuthenticated])
    {
      goto LABEL_36;
    }
  }

  v6 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
  v7 = [v4 resolvedParameters];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_35;
  }

  v26 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
  if (v26)
  {
    v27 = v26;
    v28 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
    v29 = [v4 resolvedParameters];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTActionResolverRequest *)self unresolvedParameterSets];
  v7 = [v4 unresolvedParameterSets];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  v31 = [(IFTSchemaIFTActionResolverRequest *)self unresolvedParameterSets];
  if (!v31)
  {

LABEL_39:
    v36 = 1;
    goto LABEL_37;
  }

  v32 = v31;
  v33 = [(IFTSchemaIFTActionResolverRequest *)self unresolvedParameterSets];
  v34 = [v4 unresolvedParameterSets];
  v35 = [v33 isEqual:v34];

  if (v35)
  {
    goto LABEL_39;
  }

LABEL_36:
  v36 = 0;
LABEL_37:

  return v36;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(IFTSchemaIFTActionResolverRequest *)self statementId];

  if (v5)
  {
    v6 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(IFTSchemaIFTActionResolverRequest *)self toolId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
  v9 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];

  if (v9)
  {
    v10 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_unresolvedParameterSets;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addUnresolvedParameterSets:(id)a3
{
  v4 = a3;
  unresolvedParameterSets = self->_unresolvedParameterSets;
  v8 = v4;
  if (!unresolvedParameterSets)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_unresolvedParameterSets;
    self->_unresolvedParameterSets = v6;

    v4 = v8;
    unresolvedParameterSets = self->_unresolvedParameterSets;
  }

  [(NSArray *)unresolvedParameterSets addObject:v4];
}

- (void)setHasIsAuthenticated:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsConfirmed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsClientAction:(BOOL)a3
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
  v15.super_class = IFTSchemaIFTActionResolverRequest;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTActionResolverRequest *)self deleteToolId];
  }

  v6 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTActionResolverRequest *)self deleteStatementId];
  }

  v9 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTActionResolverRequest *)self deleteResolvedParameters];
  }

  v12 = [(IFTSchemaIFTActionResolverRequest *)self unresolvedParameterSets];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(IFTSchemaIFTActionResolverRequest *)self setUnresolvedParameterSets:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end