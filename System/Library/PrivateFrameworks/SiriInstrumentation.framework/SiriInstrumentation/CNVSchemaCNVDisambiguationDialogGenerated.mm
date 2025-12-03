@interface CNVSchemaCNVDisambiguationDialogGenerated
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVDisambiguationDialogGenerated)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVDisambiguationDialogGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addActionCandidateIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVDisambiguationDialogGenerated

- (CNVSchemaCNVDisambiguationDialogGenerated)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = CNVSchemaCNVDisambiguationDialogGenerated;
  v5 = [(CNVSchemaCNVDisambiguationDialogGenerated *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidateIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [SISchemaUUID alloc];
              v14 = [(SISchemaUUID *)v13 initWithDictionary:v12, v19];
              [(CNVSchemaCNVDisambiguationDialogGenerated *)v5 addActionCandidateIds:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"dialogType", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(CNVSchemaCNVDisambiguationDialogGenerated *)v5 setDialogType:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (CNVSchemaCNVDisambiguationDialogGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVDisambiguationDialogGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_actionCandidateIds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_actionCandidateIds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"actionCandidateIds"];
  }

  if (self->_dialogType)
  {
    dialogType = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];
    v13 = [dialogType copy];
    [dictionary setObject:v13 forKeyedSubscript:@"dialogType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v15];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  actionCandidateIds = [(CNVSchemaCNVDisambiguationDialogGenerated *)self actionCandidateIds];
  actionCandidateIds2 = [equalCopy actionCandidateIds];
  if ((actionCandidateIds != 0) == (actionCandidateIds2 == 0))
  {
    goto LABEL_11;
  }

  actionCandidateIds3 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self actionCandidateIds];
  if (actionCandidateIds3)
  {
    v8 = actionCandidateIds3;
    actionCandidateIds4 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self actionCandidateIds];
    actionCandidateIds5 = [equalCopy actionCandidateIds];
    v11 = [actionCandidateIds4 isEqual:actionCandidateIds5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  actionCandidateIds = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];
  actionCandidateIds2 = [equalCopy dialogType];
  if ((actionCandidateIds != 0) != (actionCandidateIds2 == 0))
  {
    dialogType = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];
    if (!dialogType)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = dialogType;
    dialogType2 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];
    dialogType3 = [equalCopy dialogType];
    v16 = [dialogType2 isEqual:dialogType3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_actionCandidateIds;
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

  dialogType = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];

  if (dialogType)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addActionCandidateIds:(id)ids
{
  idsCopy = ids;
  actionCandidateIds = self->_actionCandidateIds;
  v8 = idsCopy;
  if (!actionCandidateIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionCandidateIds;
    self->_actionCandidateIds = array;

    idsCopy = v8;
    actionCandidateIds = self->_actionCandidateIds;
  }

  [(NSArray *)actionCandidateIds addObject:idsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVDisambiguationDialogGenerated;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self actionCandidateIds:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(CNVSchemaCNVDisambiguationDialogGenerated *)self setActionCandidateIds:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end