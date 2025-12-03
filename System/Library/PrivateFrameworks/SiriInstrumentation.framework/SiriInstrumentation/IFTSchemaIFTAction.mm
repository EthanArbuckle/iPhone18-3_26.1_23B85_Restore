@interface IFTSchemaIFTAction
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTAction)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTAction)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addActionParameterValues:(id)values;
- (void)setHasIsConfirmed:(BOOL)confirmed;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTAction

- (IFTSchemaIFTAction)initWithDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = IFTSchemaIFTAction;
  v5 = [(IFTSchemaIFTAction *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAction setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTAction *)v5 setStatementId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(IFTSchemaIFTAction *)v5 setToolId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(IFTSchemaIFTAction *)v5 setBundleId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isConfirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAction setIsConfirmed:](v5, "setIsConfirmed:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"actionParameterValues"];
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

    v22 = [dictionaryCopy objectForKeyedSubscript:@"planEventId"];
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

- (IFTSchemaIFTAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTAction *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_actionParameterValues count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"actionParameterValues"];
  }

  if (self->_bundleId)
  {
    bundleId = [(IFTSchemaIFTAction *)self bundleId];
    v13 = [bundleId copy];
    [dictionary setObject:v13 forKeyedSubscript:@"bundleId"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAction exists](self, "exists")}];
    [dictionary setObject:v15 forKeyedSubscript:@"exists"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAction isConfirmed](self, "isConfirmed")}];
    [dictionary setObject:v16 forKeyedSubscript:@"isConfirmed"];
  }

  if (self->_planEventId)
  {
    planEventId = [(IFTSchemaIFTAction *)self planEventId];
    dictionaryRepresentation2 = [planEventId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"planEventId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"planEventId"];
    }
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTAction *)self statementId];
    dictionaryRepresentation3 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    toolId = [(IFTSchemaIFTAction *)self toolId];
    v24 = [toolId copy];
    [dictionary setObject:v24 forKeyedSubscript:@"toolId"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 1) != (equalCopy[64] & 1))
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_33;
    }
  }

  statementId = [(IFTSchemaIFTAction *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_32;
  }

  statementId3 = [(IFTSchemaIFTAction *)self statementId];
  if (statementId3)
  {
    v9 = statementId3;
    statementId4 = [(IFTSchemaIFTAction *)self statementId];
    statementId5 = [equalCopy statementId];
    v12 = [statementId4 isEqual:statementId5];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTAction *)self toolId];
  statementId2 = [equalCopy toolId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_32;
  }

  toolId = [(IFTSchemaIFTAction *)self toolId];
  if (toolId)
  {
    v14 = toolId;
    toolId2 = [(IFTSchemaIFTAction *)self toolId];
    toolId3 = [equalCopy toolId];
    v17 = [toolId2 isEqual:toolId3];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTAction *)self bundleId];
  statementId2 = [equalCopy bundleId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_32;
  }

  bundleId = [(IFTSchemaIFTAction *)self bundleId];
  if (bundleId)
  {
    v19 = bundleId;
    bundleId2 = [(IFTSchemaIFTAction *)self bundleId];
    bundleId3 = [equalCopy bundleId];
    v22 = [bundleId2 isEqual:bundleId3];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v23 = (*&self->_has >> 1) & 1;
  if (v23 != ((equalCopy[64] >> 1) & 1))
  {
    goto LABEL_33;
  }

  if (v23)
  {
    isConfirmed = self->_isConfirmed;
    if (isConfirmed != [equalCopy isConfirmed])
    {
      goto LABEL_33;
    }
  }

  statementId = [(IFTSchemaIFTAction *)self actionParameterValues];
  statementId2 = [equalCopy actionParameterValues];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_32;
  }

  actionParameterValues = [(IFTSchemaIFTAction *)self actionParameterValues];
  if (actionParameterValues)
  {
    v26 = actionParameterValues;
    actionParameterValues2 = [(IFTSchemaIFTAction *)self actionParameterValues];
    actionParameterValues3 = [equalCopy actionParameterValues];
    v29 = [actionParameterValues2 isEqual:actionParameterValues3];

    if (!v29)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTAction *)self planEventId];
  statementId2 = [equalCopy planEventId];
  if ((statementId != 0) != (statementId2 == 0))
  {
    planEventId = [(IFTSchemaIFTAction *)self planEventId];
    if (!planEventId)
    {

LABEL_36:
      v35 = 1;
      goto LABEL_34;
    }

    v31 = planEventId;
    planEventId2 = [(IFTSchemaIFTAction *)self planEventId];
    planEventId3 = [equalCopy planEventId];
    v34 = [planEventId2 isEqual:planEventId3];

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

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  statementId = [(IFTSchemaIFTAction *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTAction *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  toolId = [(IFTSchemaIFTAction *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  bundleId = [(IFTSchemaIFTAction *)self bundleId];

  if (bundleId)
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

  planEventId = [(IFTSchemaIFTAction *)self planEventId];

  if (planEventId)
  {
    planEventId2 = [(IFTSchemaIFTAction *)self planEventId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addActionParameterValues:(id)values
{
  valuesCopy = values;
  actionParameterValues = self->_actionParameterValues;
  v8 = valuesCopy;
  if (!actionParameterValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionParameterValues;
    self->_actionParameterValues = array;

    valuesCopy = v8;
    actionParameterValues = self->_actionParameterValues;
  }

  [(NSArray *)actionParameterValues addObject:valuesCopy];
}

- (void)setHasIsConfirmed:(BOOL)confirmed
{
  if (confirmed)
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
  v15.super_class = IFTSchemaIFTAction;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTAction *)self deleteToolId];
    [(IFTSchemaIFTAction *)self deleteBundleId];
  }

  statementId = [(IFTSchemaIFTAction *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTAction *)self deleteStatementId];
  }

  actionParameterValues = [(IFTSchemaIFTAction *)self actionParameterValues];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:actionParameterValues underConditions:policyCopy];
  [(IFTSchemaIFTAction *)self setActionParameterValues:v10];

  planEventId = [(IFTSchemaIFTAction *)self planEventId];
  v12 = [planEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
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