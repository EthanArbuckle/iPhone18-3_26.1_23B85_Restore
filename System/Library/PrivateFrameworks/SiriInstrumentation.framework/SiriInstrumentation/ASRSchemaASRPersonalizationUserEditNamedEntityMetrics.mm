@interface ASRSchemaASRPersonalizationUserEditNamedEntityMetrics
- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)initWithDictionary:(id)a3;
- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addLmeOverActivationEdits:(id)a3;
- (void)addNamedEntityUserEdits:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRPersonalizationUserEditNamedEntityMetrics

- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)initWithDictionary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = ASRSchemaASRPersonalizationUserEditNamedEntityMetrics;
  v5 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numTotalEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPersonalizationUserEditNamedEntityMetrics setNumTotalEdit:](v5, "setNumTotalEdit:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"namedEntityUserEdits"];
    objc_opt_class();
    v26 = v7;
    if (objc_opt_isKindOfClass())
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          v12 = 0;
          do
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[ASRSchemaASRNamedEntityUserEdit alloc] initWithDictionary:v13];
              [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)v5 addNamedEntityUserEdits:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v10);
      }

      v7 = v26;
    }

    v15 = [v4 objectForKeyedSubscript:@"lmeOverActivationEdits"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          v20 = 0;
          do
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[ASRSchemaASRLMEOverActivationEdit alloc] initWithDictionary:v21];
              [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)v5 addLmeOverActivationEdits:v22];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
        }

        while (v18);
      }

      v6 = v25;
      v7 = v26;
    }

    v23 = v5;
  }

  return v5;
}

- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self dictionaryRepresentation];
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
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_lmeOverActivationEdits count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_lmeOverActivationEdits;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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

          v10 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"lmeOverActivationEdits"];
  }

  if ([(NSArray *)self->_namedEntityUserEdits count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = self->_namedEntityUserEdits;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"namedEntityUserEdits"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSchemaASRPersonalizationUserEditNamedEntityMetrics numTotalEdit](self, "numTotalEdit")}];
    [v3 setObject:v20 forKeyedSubscript:@"numTotalEdit"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v22];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_numTotalEdit;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_namedEntityUserEdits hash]^ v3;
  return v4 ^ [(NSArray *)self->_lmeOverActivationEdits hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    numTotalEdit = self->_numTotalEdit;
    if (numTotalEdit != [v4 numTotalEdit])
    {
      goto LABEL_15;
    }
  }

  v6 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self namedEntityUserEdits];
  v7 = [v4 namedEntityUserEdits];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self namedEntityUserEdits];
  if (v8)
  {
    v9 = v8;
    v10 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self namedEntityUserEdits];
    v11 = [v4 namedEntityUserEdits];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self lmeOverActivationEdits];
  v7 = [v4 lmeOverActivationEdits];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self lmeOverActivationEdits];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self lmeOverActivationEdits];
    v16 = [v4 lmeOverActivationEdits];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_namedEntityUserEdits;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_lmeOverActivationEdits;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)addLmeOverActivationEdits:(id)a3
{
  v4 = a3;
  lmeOverActivationEdits = self->_lmeOverActivationEdits;
  v8 = v4;
  if (!lmeOverActivationEdits)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_lmeOverActivationEdits;
    self->_lmeOverActivationEdits = v6;

    v4 = v8;
    lmeOverActivationEdits = self->_lmeOverActivationEdits;
  }

  [(NSArray *)lmeOverActivationEdits addObject:v4];
}

- (void)addNamedEntityUserEdits:(id)a3
{
  v4 = a3;
  namedEntityUserEdits = self->_namedEntityUserEdits;
  v8 = v4;
  if (!namedEntityUserEdits)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_namedEntityUserEdits;
    self->_namedEntityUserEdits = v6;

    v4 = v8;
    namedEntityUserEdits = self->_namedEntityUserEdits;
  }

  [(NSArray *)namedEntityUserEdits addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = ASRSchemaASRPersonalizationUserEditNamedEntityMetrics;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self namedEntityUserEdits:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self setNamedEntityUserEdits:v7];

  v8 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self lmeOverActivationEdits];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];

  [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self setLmeOverActivationEdits:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end