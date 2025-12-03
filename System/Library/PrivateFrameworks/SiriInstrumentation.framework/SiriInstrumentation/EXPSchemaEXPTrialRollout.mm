@interface EXPSchemaEXPTrialRollout
- (BOOL)isEqual:(id)equal;
- (EXPSchemaEXPTrialRollout)initWithDictionary:(id)dictionary;
- (EXPSchemaEXPTrialRollout)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNamespaces:(id)namespaces;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation EXPSchemaEXPTrialRollout

- (EXPSchemaEXPTrialRollout)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = EXPSchemaEXPTrialRollout;
  v5 = [(EXPSchemaEXPTrialRollout *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rolloutId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(EXPSchemaEXPTrialRollout *)v5 setRolloutId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rampId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(EXPSchemaEXPTrialRollout *)v5 setRampId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deploymentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialRollout setDeploymentId:](v5, "setDeploymentId:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialRollout setStatus:](v5, "setStatus:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"namespaces"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v11;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[EXPSchemaEXPTrialRolloutNamespace alloc] initWithDictionary:v18];
              [(EXPSchemaEXPTrialRollout *)v5 addNamespaces:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v15);
      }

      v6 = v23;
      v11 = v22;
    }

    v20 = v5;
  }

  return v5;
}

- (EXPSchemaEXPTrialRollout)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSchemaEXPTrialRollout *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSchemaEXPTrialRollout *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[EXPSchemaEXPTrialRollout deploymentId](self, "deploymentId")}];
    [dictionary setObject:v4 forKeyedSubscript:@"deploymentId"];
  }

  if ([(NSArray *)self->_namespaces count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_namespaces;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
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

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"namespaces"];
  }

  if (self->_rampId)
  {
    rampId = [(EXPSchemaEXPTrialRollout *)self rampId];
    v14 = [rampId copy];
    [dictionary setObject:v14 forKeyedSubscript:@"rampId"];
  }

  if (self->_rolloutId)
  {
    rolloutId = [(EXPSchemaEXPTrialRollout *)self rolloutId];
    v16 = [rolloutId copy];
    [dictionary setObject:v16 forKeyedSubscript:@"rolloutId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v17 = [(EXPSchemaEXPTrialRollout *)self status]- 1;
    if (v17 > 2)
    {
      v18 = @"EXPROLLOUTALLOCATIONSTATUS_UNKNOWN";
    }

    else
    {
      v18 = off_1E78D4918[v17];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_rolloutId hash];
  v4 = [(NSString *)self->_rampId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_deploymentId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSArray *)self->_namespaces hash];
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_status;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSArray *)self->_namespaces hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  rolloutId = [(EXPSchemaEXPTrialRollout *)self rolloutId];
  rolloutId2 = [equalCopy rolloutId];
  if ((rolloutId != 0) == (rolloutId2 == 0))
  {
    goto LABEL_23;
  }

  rolloutId3 = [(EXPSchemaEXPTrialRollout *)self rolloutId];
  if (rolloutId3)
  {
    v8 = rolloutId3;
    rolloutId4 = [(EXPSchemaEXPTrialRollout *)self rolloutId];
    rolloutId5 = [equalCopy rolloutId];
    v11 = [rolloutId4 isEqual:rolloutId5];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  rolloutId = [(EXPSchemaEXPTrialRollout *)self rampId];
  rolloutId2 = [equalCopy rampId];
  if ((rolloutId != 0) == (rolloutId2 == 0))
  {
    goto LABEL_23;
  }

  rampId = [(EXPSchemaEXPTrialRollout *)self rampId];
  if (rampId)
  {
    v13 = rampId;
    rampId2 = [(EXPSchemaEXPTrialRollout *)self rampId];
    rampId3 = [equalCopy rampId];
    v16 = [rampId2 isEqual:rampId3];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    deploymentId = self->_deploymentId;
    if (deploymentId != [equalCopy deploymentId])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    status = self->_status;
    if (status != [equalCopy status])
    {
      goto LABEL_24;
    }
  }

  rolloutId = [(EXPSchemaEXPTrialRollout *)self namespaces];
  rolloutId2 = [equalCopy namespaces];
  if ((rolloutId != 0) == (rolloutId2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  namespaces = [(EXPSchemaEXPTrialRollout *)self namespaces];
  if (!namespaces)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = namespaces;
  namespaces2 = [(EXPSchemaEXPTrialRollout *)self namespaces];
  namespaces3 = [equalCopy namespaces];
  v26 = [namespaces2 isEqual:namespaces3];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  rolloutId = [(EXPSchemaEXPTrialRollout *)self rolloutId];

  if (rolloutId)
  {
    PBDataWriterWriteStringField();
  }

  rampId = [(EXPSchemaEXPTrialRollout *)self rampId];

  if (rampId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_namespaces;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)addNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  namespaces = self->_namespaces;
  v8 = namespacesCopy;
  if (!namespaces)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_namespaces;
    self->_namespaces = array;

    namespacesCopy = v8;
    namespaces = self->_namespaces;
  }

  [(NSArray *)namespaces addObject:namespacesCopy];
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
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
  v9.receiver = self;
  v9.super_class = EXPSchemaEXPTrialRollout;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(EXPSchemaEXPTrialRollout *)self namespaces:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(EXPSchemaEXPTrialRollout *)self setNamespaces:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];
  [(SISensitiveConditionsSet *)v2 addCondition:2];
  [(SISensitiveConditionsSet *)v2 addCondition:4];
  [(SISensitiveConditionsSet *)v2 addCondition:5];
  [(SISensitiveConditionsSet *)v2 addCondition:6];
  [(SISensitiveConditionsSet *)v2 addCondition:7];

  return v2;
}

@end