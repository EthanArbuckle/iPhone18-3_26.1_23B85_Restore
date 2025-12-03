@interface IFTSchemaIFTPlan
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTPlan)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTPlan)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addStatements:(id)statements;
- (void)setHasPlanSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTPlan

- (IFTSchemaIFTPlan)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = IFTSchemaIFTPlan;
  v5 = [(IFTSchemaIFTPlan *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPlan setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"statements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[IFTSchemaIFTProgramStatement alloc] initWithDictionary:v13];
              [(IFTSchemaIFTPlan *)v5 addStatements:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v10);
      }

      v6 = v20;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"overrideId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(IFTSchemaIFTPlan *)v5 setOverrideId:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"planSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPlan setPlanSource:](v5, "setPlanSource:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (IFTSchemaIFTPlan)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTPlan *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTPlan *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPlan exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_overrideId)
  {
    overrideId = [(IFTSchemaIFTPlan *)self overrideId];
    v6 = [overrideId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"overrideId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [(IFTSchemaIFTPlan *)self planSource]- 1;
    if (v7 > 4)
    {
      v8 = @"IFTPLANSOURCE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D84C0[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"planSource"];
  }

  if ([(NSArray *)self->_statements count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_statements;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"statements"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

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

  v4 = [(NSArray *)self->_statements hash];
  v5 = [(NSString *)self->_overrideId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_planSource;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_15;
    }
  }

  statements = [(IFTSchemaIFTPlan *)self statements];
  statements2 = [equalCopy statements];
  if ((statements != 0) == (statements2 == 0))
  {
    goto LABEL_14;
  }

  statements3 = [(IFTSchemaIFTPlan *)self statements];
  if (statements3)
  {
    v9 = statements3;
    statements4 = [(IFTSchemaIFTPlan *)self statements];
    statements5 = [equalCopy statements];
    v12 = [statements4 isEqual:statements5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  statements = [(IFTSchemaIFTPlan *)self overrideId];
  statements2 = [equalCopy overrideId];
  if ((statements != 0) == (statements2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  overrideId = [(IFTSchemaIFTPlan *)self overrideId];
  if (overrideId)
  {
    v14 = overrideId;
    overrideId2 = [(IFTSchemaIFTPlan *)self overrideId];
    overrideId3 = [equalCopy overrideId];
    v17 = [overrideId2 isEqual:overrideId3];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((equalCopy[36] >> 1) & 1))
  {
    if (!v20 || (planSource = self->_planSource, planSource == [equalCopy planSource]))
    {
      v18 = 1;
      goto LABEL_16;
    }
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_statements;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  overrideId = [(IFTSchemaIFTPlan *)self overrideId];

  if (overrideId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasPlanSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addStatements:(id)statements
{
  statementsCopy = statements;
  statements = self->_statements;
  v8 = statementsCopy;
  if (!statements)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_statements;
    self->_statements = array;

    statementsCopy = v8;
    statements = self->_statements;
  }

  [(NSArray *)statements addObject:statementsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTPlan;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTPlan *)self statements:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(IFTSchemaIFTPlan *)self setStatements:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end