@interface CNVSchemaCNVDisambiguationDialogGenerated
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVDisambiguationDialogGenerated)initWithDictionary:(id)a3;
- (CNVSchemaCNVDisambiguationDialogGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addActionCandidateIds:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVDisambiguationDialogGenerated

- (CNVSchemaCNVDisambiguationDialogGenerated)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CNVSchemaCNVDisambiguationDialogGenerated;
  v5 = [(CNVSchemaCNVDisambiguationDialogGenerated *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionCandidateIds"];
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

    v15 = [v4 objectForKeyedSubscript:{@"dialogType", v19}];
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

- (CNVSchemaCNVDisambiguationDialogGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVDisambiguationDialogGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_actionCandidateIds count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"actionCandidateIds"];
  }

  if (self->_dialogType)
  {
    v12 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"dialogType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v15];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self actionCandidateIds];
  v6 = [v4 actionCandidateIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self actionCandidateIds];
  if (v7)
  {
    v8 = v7;
    v9 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self actionCandidateIds];
    v10 = [v4 actionCandidateIds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];
  v6 = [v4 dialogType];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];
    v15 = [v4 dialogType];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self dialogType];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addActionCandidateIds:(id)a3
{
  v4 = a3;
  actionCandidateIds = self->_actionCandidateIds;
  v8 = v4;
  if (!actionCandidateIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionCandidateIds;
    self->_actionCandidateIds = v6;

    v4 = v8;
    actionCandidateIds = self->_actionCandidateIds;
  }

  [(NSArray *)actionCandidateIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVDisambiguationDialogGenerated;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CNVSchemaCNVDisambiguationDialogGenerated *)self actionCandidateIds:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

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