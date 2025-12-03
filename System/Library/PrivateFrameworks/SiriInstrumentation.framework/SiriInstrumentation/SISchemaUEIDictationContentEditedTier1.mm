@interface SISchemaUEIDictationContentEditedTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUEIDictationContentEditedTier1)initWithDictionary:(id)dictionary;
- (SISchemaUEIDictationContentEditedTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAutoPunctuationEdits:(id)edits;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUEIDictationContentEditedTier1

- (SISchemaUEIDictationContentEditedTier1)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = SISchemaUEIDictationContentEditedTier1;
  v5 = [(SISchemaUEIDictationContentEditedTier1 *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"autoPunctuationEdits"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [SISchemaAutoPunctuationEdit alloc];
              v14 = [(SISchemaAutoPunctuationEdit *)v13 initWithDictionary:v12, v17];
              [(SISchemaUEIDictationContentEditedTier1 *)v5 addAutoPunctuationEdits:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }

    v15 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationContentEditedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationContentEditedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUEIDictationContentEditedTier1 *)self dictionaryRepresentation];
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
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_autoPunctuationEdits count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_autoPunctuationEdits;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"autoPunctuationEdits"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v13];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    autoPunctuationEdits = [(SISchemaUEIDictationContentEditedTier1 *)self autoPunctuationEdits];
    autoPunctuationEdits2 = [equalCopy autoPunctuationEdits];
    v7 = autoPunctuationEdits2;
    if ((autoPunctuationEdits != 0) != (autoPunctuationEdits2 == 0))
    {
      autoPunctuationEdits3 = [(SISchemaUEIDictationContentEditedTier1 *)self autoPunctuationEdits];
      if (!autoPunctuationEdits3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = autoPunctuationEdits3;
      autoPunctuationEdits4 = [(SISchemaUEIDictationContentEditedTier1 *)self autoPunctuationEdits];
      autoPunctuationEdits5 = [equalCopy autoPunctuationEdits];
      v12 = [autoPunctuationEdits4 isEqual:autoPunctuationEdits5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_autoPunctuationEdits;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addAutoPunctuationEdits:(id)edits
{
  editsCopy = edits;
  autoPunctuationEdits = self->_autoPunctuationEdits;
  v8 = editsCopy;
  if (!autoPunctuationEdits)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_autoPunctuationEdits;
    self->_autoPunctuationEdits = array;

    editsCopy = v8;
    autoPunctuationEdits = self->_autoPunctuationEdits;
  }

  [(NSArray *)autoPunctuationEdits addObject:editsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v9.receiver = self;
  v9.super_class = SISchemaUEIDictationContentEditedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(SISchemaUEIDictationContentEditedTier1 *)self deleteAutoPunctuationEdits];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(SISchemaUEIDictationContentEditedTier1 *)self deleteAutoPunctuationEdits];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(SISchemaUEIDictationContentEditedTier1 *)self deleteAutoPunctuationEdits];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(SISchemaUEIDictationContentEditedTier1 *)self deleteAutoPunctuationEdits];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(SISchemaUEIDictationContentEditedTier1 *)self deleteAutoPunctuationEdits];
  }

  autoPunctuationEdits = [(SISchemaUEIDictationContentEditedTier1 *)self autoPunctuationEdits];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:autoPunctuationEdits underConditions:policyCopy];
  [(SISchemaUEIDictationContentEditedTier1 *)self setAutoPunctuationEdits:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end