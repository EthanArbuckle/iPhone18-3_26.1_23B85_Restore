@interface ODDSiriSchemaODDDictationProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDictationProperties)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEnabledDictationLocales:(id)a3;
- (void)setHasIsAutoPunctuationEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDictationProperties

- (ODDSiriSchemaODDDictationProperties)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ODDSiriSchemaODDDictationProperties;
  v5 = [(ODDSiriSchemaODDDictationProperties *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isDictationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationProperties setIsDictationEnabled:](v5, "setIsDictationEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"enabledDictationLocales"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v13];
              [(ODDSiriSchemaODDDictationProperties *)v5 addEnabledDictationLocales:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v10);
      }

      v6 = v18;
    }

    v15 = [v4 objectForKeyedSubscript:@"isAutoPunctuationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationProperties setIsAutoPunctuationEnabled:](v5, "setIsAutoPunctuationEnabled:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDictationProperties *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_enabledDictationLocales count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_enabledDictationLocales;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"enabledDictationLocales"];
  }

  v12 = *(&self->_isAutoPunctuationEnabled + 1);
  if ((v12 & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDDictationProperties isAutoPunctuationEnabled](self, "isAutoPunctuationEnabled")}];
    [v3 setObject:v13 forKeyedSubscript:@"isAutoPunctuationEnabled"];

    v12 = *(&self->_isAutoPunctuationEnabled + 1);
  }

  if (v12)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDDictationProperties isDictationEnabled](self, "isDictationEnabled")}];
    [v3 setObject:v14 forKeyedSubscript:@"isDictationEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v16];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isAutoPunctuationEnabled + 1))
  {
    v3 = 2654435761 * self->_isDictationEnabled;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_enabledDictationLocales hash];
  if ((*(&self->_isAutoPunctuationEnabled + 1) & 2) != 0)
  {
    v5 = 2654435761 * self->_isAutoPunctuationEnabled;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*(&self->_isAutoPunctuationEnabled + 1) != (v4[25] & 1))
  {
    goto LABEL_15;
  }

  if (*(&self->_isAutoPunctuationEnabled + 1))
  {
    isDictationEnabled = self->_isDictationEnabled;
    if (isDictationEnabled != [v4 isDictationEnabled])
    {
      goto LABEL_15;
    }
  }

  v6 = [(ODDSiriSchemaODDDictationProperties *)self enabledDictationLocales];
  v7 = [v4 enabledDictationLocales];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(ODDSiriSchemaODDDictationProperties *)self enabledDictationLocales];
  if (v9)
  {
    v10 = v9;
    v11 = [(ODDSiriSchemaODDDictationProperties *)self enabledDictationLocales];
    v12 = [v4 enabledDictationLocales];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*(&self->_isAutoPunctuationEnabled + 1) >> 1) & 1;
  if (v14 != ((v4[25] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    isAutoPunctuationEnabled = self->_isAutoPunctuationEnabled;
    if (isAutoPunctuationEnabled != [v4 isAutoPunctuationEnabled])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(&self->_isAutoPunctuationEnabled + 1))
  {
    PBDataWriterWriteBOOLField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_enabledDictationLocales;
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

  if ((*(&self->_isAutoPunctuationEnabled + 1) & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsAutoPunctuationEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAutoPunctuationEnabled + 1) = *(&self->_isAutoPunctuationEnabled + 1) & 0xFD | v3;
}

- (void)addEnabledDictationLocales:(id)a3
{
  v4 = a3;
  enabledDictationLocales = self->_enabledDictationLocales;
  v8 = v4;
  if (!enabledDictationLocales)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_enabledDictationLocales;
    self->_enabledDictationLocales = v6;

    v4 = v8;
    enabledDictationLocales = self->_enabledDictationLocales;
  }

  [(NSArray *)enabledDictationLocales addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDDictationProperties;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDDictationProperties *)self enabledDictationLocales:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(ODDSiriSchemaODDDictationProperties *)self setEnabledDictationLocales:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end