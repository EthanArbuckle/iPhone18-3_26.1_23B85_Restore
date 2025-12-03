@interface IFTSchemaIFTActionResolverRequest
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionResolverRequest)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionResolverRequest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUnresolvedParameterSets:(id)sets;
- (void)setHasIsAuthenticated:(BOOL)authenticated;
- (void)setHasIsClientAction:(BOOL)action;
- (void)setHasIsConfirmed:(BOOL)confirmed;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTActionResolverRequest

- (IFTSchemaIFTActionResolverRequest)initWithDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = IFTSchemaIFTActionResolverRequest;
  v5 = [(IFTSchemaIFTActionResolverRequest *)&v39 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionResolverRequest setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTActionResolverRequest *)v5 setStatementId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(IFTSchemaIFTActionResolverRequest *)v5 setToolId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isClientAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionResolverRequest setIsClientAction:](v5, "setIsClientAction:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isConfirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionResolverRequest setIsConfirmed:](v5, "setIsConfirmed:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isAuthenticated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionResolverRequest setIsAuthenticated:](v5, "setIsAuthenticated:", [v13 BOOLValue]);
    }

    v34 = v13;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"resolvedParameters"];
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

    v19 = [dictionaryCopy objectForKeyedSubscript:@"unresolvedParameterSets"];
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

- (IFTSchemaIFTActionResolverRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionResolverRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionResolverRequest *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionResolverRequest exists](self, "exists")}];
    [dictionary setObject:v8 forKeyedSubscript:@"exists"];

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
  [dictionary setObject:v9 forKeyedSubscript:@"isAuthenticated"];

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
  [dictionary setObject:v10 forKeyedSubscript:@"isClientAction"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionResolverRequest isConfirmed](self, "isConfirmed")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isConfirmed"];
  }

LABEL_6:
  if (self->_resolvedParameters)
  {
    resolvedParameters = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
    dictionaryRepresentation = [resolvedParameters dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"resolvedParameters"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"resolvedParameters"];
    }
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTActionResolverRequest *)self statementId];
    dictionaryRepresentation2 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    toolId = [(IFTSchemaIFTActionResolverRequest *)self toolId];
    v16 = [toolId copy];
    [dictionary setObject:v16 forKeyedSubscript:@"toolId"];
  }

  if ([(NSArray *)self->_unresolvedParameterSets count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array forKeyedSubscript:@"unresolvedParameterSets"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v26];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_36;
    }
  }

  statementId = [(IFTSchemaIFTActionResolverRequest *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_35;
  }

  statementId3 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
  if (statementId3)
  {
    v9 = statementId3;
    statementId4 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
    statementId5 = [equalCopy statementId];
    v12 = [statementId4 isEqual:statementId5];

    if (!v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTActionResolverRequest *)self toolId];
  statementId2 = [equalCopy toolId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_35;
  }

  toolId = [(IFTSchemaIFTActionResolverRequest *)self toolId];
  if (toolId)
  {
    v14 = toolId;
    toolId2 = [(IFTSchemaIFTActionResolverRequest *)self toolId];
    toolId3 = [equalCopy toolId];
    v17 = [toolId2 isEqual:toolId3];

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
  v20 = equalCopy[56];
  if (v19 != ((v20 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v19)
  {
    isClientAction = self->_isClientAction;
    if (isClientAction != [equalCopy isClientAction])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v20 = equalCopy[56];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v20 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v22)
  {
    isConfirmed = self->_isConfirmed;
    if (isConfirmed != [equalCopy isConfirmed])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v20 = equalCopy[56];
  }

  v24 = (*&has >> 3) & 1;
  if (v24 != ((v20 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v24)
  {
    isAuthenticated = self->_isAuthenticated;
    if (isAuthenticated != [equalCopy isAuthenticated])
    {
      goto LABEL_36;
    }
  }

  statementId = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
  statementId2 = [equalCopy resolvedParameters];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_35;
  }

  resolvedParameters = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
  if (resolvedParameters)
  {
    v27 = resolvedParameters;
    resolvedParameters2 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
    resolvedParameters3 = [equalCopy resolvedParameters];
    v30 = [resolvedParameters2 isEqual:resolvedParameters3];

    if (!v30)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTActionResolverRequest *)self unresolvedParameterSets];
  statementId2 = [equalCopy unresolvedParameterSets];
  if ((statementId != 0) == (statementId2 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  unresolvedParameterSets = [(IFTSchemaIFTActionResolverRequest *)self unresolvedParameterSets];
  if (!unresolvedParameterSets)
  {

LABEL_39:
    v36 = 1;
    goto LABEL_37;
  }

  v32 = unresolvedParameterSets;
  unresolvedParameterSets2 = [(IFTSchemaIFTActionResolverRequest *)self unresolvedParameterSets];
  unresolvedParameterSets3 = [equalCopy unresolvedParameterSets];
  v35 = [unresolvedParameterSets2 isEqual:unresolvedParameterSets3];

  if (v35)
  {
    goto LABEL_39;
  }

LABEL_36:
  v36 = 0;
LABEL_37:

  return v36;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  statementId = [(IFTSchemaIFTActionResolverRequest *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTActionResolverRequest *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  toolId = [(IFTSchemaIFTActionResolverRequest *)self toolId];

  if (toolId)
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
  resolvedParameters = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];

  if (resolvedParameters)
  {
    resolvedParameters2 = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
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

- (void)addUnresolvedParameterSets:(id)sets
{
  setsCopy = sets;
  unresolvedParameterSets = self->_unresolvedParameterSets;
  v8 = setsCopy;
  if (!unresolvedParameterSets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_unresolvedParameterSets;
    self->_unresolvedParameterSets = array;

    setsCopy = v8;
    unresolvedParameterSets = self->_unresolvedParameterSets;
  }

  [(NSArray *)unresolvedParameterSets addObject:setsCopy];
}

- (void)setHasIsAuthenticated:(BOOL)authenticated
{
  if (authenticated)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsConfirmed:(BOOL)confirmed
{
  if (confirmed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsClientAction:(BOOL)action
{
  if (action)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTActionResolverRequest;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTActionResolverRequest *)self deleteToolId];
  }

  statementId = [(IFTSchemaIFTActionResolverRequest *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTActionResolverRequest *)self deleteStatementId];
  }

  resolvedParameters = [(IFTSchemaIFTActionResolverRequest *)self resolvedParameters];
  v10 = [resolvedParameters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTActionResolverRequest *)self deleteResolvedParameters];
  }

  unresolvedParameterSets = [(IFTSchemaIFTActionResolverRequest *)self unresolvedParameterSets];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:unresolvedParameterSets underConditions:policyCopy];
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