@interface ODDSiriSchemaODDDictationDigest
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationDigest)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDictationDigest)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTurnIds:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDictationDigest

- (ODDSiriSchemaODDDictationDigest)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ODDSiriSchemaODDDictationDigest;
  v5 = [(ODDSiriSchemaODDDictationDigest *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDDictationDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDDictationDigest *)v5 setDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"counts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDDictationCounts alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDDictationDigest *)v5 setCounts:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"turnIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v8;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
              [(ODDSiriSchemaODDDictationDigest *)v5 addTurnIds:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v13);
      }

      v8 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationDigest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationDigest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDictationDigest *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_counts)
  {
    v4 = [(ODDSiriSchemaODDDictationDigest *)self counts];
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
    v7 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
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

  if ([(NSArray *)self->_turnIds count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_turnIds;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"turnIds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDDictationDimensions *)self->_dimensions hash];
  v4 = [(ODDSiriSchemaODDDictationCounts *)self->_counts hash]^ v3;
  return v4 ^ [(NSArray *)self->_turnIds hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
  v6 = [v4 dimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
    v10 = [v4 dimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDDictationDigest *)self counts];
  v6 = [v4 counts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(ODDSiriSchemaODDDictationDigest *)self counts];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDDictationDigest *)self counts];
    v15 = [v4 counts];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDDictationDigest *)self turnIds];
  v6 = [v4 turnIds];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(ODDSiriSchemaODDDictationDigest *)self turnIds];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(ODDSiriSchemaODDDictationDigest *)self turnIds];
    v20 = [v4 turnIds];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(ODDSiriSchemaODDDictationDigest *)self counts];

  if (v7)
  {
    v8 = [(ODDSiriSchemaODDDictationDigest *)self counts];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_turnIds;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
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
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDDictationDigest;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(ODDSiriSchemaODDDictationDigest *)self deleteTurnIds];
  }

  v6 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDDictationDigest *)self deleteDimensions];
  }

  v9 = [(ODDSiriSchemaODDDictationDigest *)self counts];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDDictationDigest *)self deleteCounts];
  }

  v12 = [(ODDSiriSchemaODDDictationDigest *)self turnIds];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(ODDSiriSchemaODDDictationDigest *)self setTurnIds:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end