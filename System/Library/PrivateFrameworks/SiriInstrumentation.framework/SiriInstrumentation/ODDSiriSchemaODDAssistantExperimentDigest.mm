@interface ODDSiriSchemaODDAssistantExperimentDigest
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantExperimentDigest)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAssistantExperimentDigest)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTurnIds:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAssistantExperimentDigest

- (ODDSiriSchemaODDAssistantExperimentDigest)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ODDSiriSchemaODDAssistantExperimentDigest;
  v5 = [(ODDSiriSchemaODDAssistantExperimentDigest *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantExperimentDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantExperimentDigest *)v5 setDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"counts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantExperimentCounts alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDAssistantExperimentDigest *)v5 setCounts:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"tuples"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDAssistantExperimentTuples alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDAssistantExperimentDigest *)v5 setTuples:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"turnIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v10;
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
              v19 = [[SISchemaUUID alloc] initWithDictionary:v18];
              [(ODDSiriSchemaODDAssistantExperimentDigest *)v5 addTurnIds:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v15);
      }

      v6 = v23;
      v10 = v22;
    }

    v20 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantExperimentDigest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantExperimentDigest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dictionaryRepresentation];
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
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_counts)
  {
    v4 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"counts"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"counts"];
    }
  }

  if (self->_dimensions)
  {
    v7 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"dimensions"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"dimensions"];
    }
  }

  if (self->_tuples)
  {
    v10 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"tuples"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"tuples"];
    }
  }

  if ([(NSArray *)self->_turnIds count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_turnIds;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"turnIds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v22];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self->_dimensions hash];
  v4 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self->_counts hash]^ v3;
  v5 = [(ODDSiriSchemaODDAssistantExperimentTuples *)self->_tuples hash];
  return v4 ^ v5 ^ [(NSArray *)self->_turnIds hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
  v6 = [v4 dimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
    v10 = [v4 dimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
  v6 = [v4 counts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
    v15 = [v4 counts];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
  v6 = [v4 tuples];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
    v20 = [v4 tuples];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self turnIds];
  v6 = [v4 turnIds];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self turnIds];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self turnIds];
    v25 = [v4 turnIds];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];

  if (v7)
  {
    v8 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];

  if (v9)
  {
    v10 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_turnIds;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addTurnIds:(id)a3
{
  v4 = a3;
  turnIds = self->_turnIds;
  v8 = v4;
  if (!turnIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_turnIds;
    self->_turnIds = v6;

    v4 = v8;
    turnIds = self->_turnIds;
  }

  [(NSArray *)turnIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ODDSiriSchemaODDAssistantExperimentDigest;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(ODDSiriSchemaODDAssistantExperimentDigest *)self deleteTurnIds];
  }

  v6 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDAssistantExperimentDigest *)self deleteDimensions];
  }

  v9 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDAssistantExperimentDigest *)self deleteCounts];
  }

  v12 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODDSiriSchemaODDAssistantExperimentDigest *)self deleteTuples];
  }

  v15 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self turnIds];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v15 underConditions:v4];
  [(ODDSiriSchemaODDAssistantExperimentDigest *)self setTurnIds:v16];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end