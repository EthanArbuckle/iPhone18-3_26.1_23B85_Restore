@interface IFTSchemaIFTToolDisambiguation
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTToolDisambiguation)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTToolDisambiguation)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTools:(id)tools;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTToolDisambiguation

- (IFTSchemaIFTToolDisambiguation)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = IFTSchemaIFTToolDisambiguation;
  v5 = [(IFTSchemaIFTToolDisambiguation *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTToolDisambiguation setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"assistantSchemaKind"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTToolDisambiguation *)v5 setAssistantSchemaKind:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"tools"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v7;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[IFTSchemaIFTToolDefinition alloc] initWithDictionary:v15];
              [(IFTSchemaIFTToolDisambiguation *)v5 addTools:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v7 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (IFTSchemaIFTToolDisambiguation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTToolDisambiguation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTToolDisambiguation *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assistantSchemaKind)
  {
    assistantSchemaKind = [(IFTSchemaIFTToolDisambiguation *)self assistantSchemaKind];
    v5 = [assistantSchemaKind copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assistantSchemaKind"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTToolDisambiguation exists](self, "exists")}];
    [dictionary setObject:v6 forKeyedSubscript:@"exists"];
  }

  if ([(NSArray *)self->_tools count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_tools;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"tools"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

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

  v4 = [(NSString *)self->_assistantSchemaKind hash]^ v3;
  return v4 ^ [(NSArray *)self->_tools hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
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

  assistantSchemaKind = [(IFTSchemaIFTToolDisambiguation *)self assistantSchemaKind];
  assistantSchemaKind2 = [equalCopy assistantSchemaKind];
  if ((assistantSchemaKind != 0) == (assistantSchemaKind2 == 0))
  {
    goto LABEL_14;
  }

  assistantSchemaKind3 = [(IFTSchemaIFTToolDisambiguation *)self assistantSchemaKind];
  if (assistantSchemaKind3)
  {
    v9 = assistantSchemaKind3;
    assistantSchemaKind4 = [(IFTSchemaIFTToolDisambiguation *)self assistantSchemaKind];
    assistantSchemaKind5 = [equalCopy assistantSchemaKind];
    v12 = [assistantSchemaKind4 isEqual:assistantSchemaKind5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  assistantSchemaKind = [(IFTSchemaIFTToolDisambiguation *)self tools];
  assistantSchemaKind2 = [equalCopy tools];
  if ((assistantSchemaKind != 0) != (assistantSchemaKind2 == 0))
  {
    tools = [(IFTSchemaIFTToolDisambiguation *)self tools];
    if (!tools)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = tools;
    tools2 = [(IFTSchemaIFTToolDisambiguation *)self tools];
    tools3 = [equalCopy tools];
    v17 = [tools2 isEqual:tools3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
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

  assistantSchemaKind = [(IFTSchemaIFTToolDisambiguation *)self assistantSchemaKind];

  if (assistantSchemaKind)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_tools;
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

- (void)addTools:(id)tools
{
  toolsCopy = tools;
  tools = self->_tools;
  v8 = toolsCopy;
  if (!tools)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tools;
    self->_tools = array;

    toolsCopy = v8;
    tools = self->_tools;
  }

  [(NSArray *)tools addObject:toolsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTToolDisambiguation;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTToolDisambiguation *)self deleteAssistantSchemaKind];
  }

  tools = [(IFTSchemaIFTToolDisambiguation *)self tools];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:tools underConditions:policyCopy];
  [(IFTSchemaIFTToolDisambiguation *)self setTools:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end