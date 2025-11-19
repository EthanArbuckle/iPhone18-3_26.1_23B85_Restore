@interface NLXSchemaCDMLanguageVariantResult
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMLanguageVariantResult)initWithDictionary:(id)a3;
- (NLXSchemaCDMLanguageVariantResult)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addMultilingualVariants:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMLanguageVariantResult

- (NLXSchemaCDMLanguageVariantResult)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NLXSchemaCDMLanguageVariantResult;
  v5 = [(NLXSchemaCDMLanguageVariantResult *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"multilingualVariants"];
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
              v13 = [NLXSchemaCDMMultilingualVariant alloc];
              v14 = [(NLXSchemaCDMMultilingualVariant *)v13 initWithDictionary:v12, v19];
              [(NLXSchemaCDMLanguageVariantResult *)v5 addMultilingualVariants:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"cdmParser", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[NLXSchemaCDMParser alloc] initWithDictionary:v15];
      [(NLXSchemaCDMLanguageVariantResult *)v5 setCdmParser:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaCDMLanguageVariantResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMLanguageVariantResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMLanguageVariantResult *)self dictionaryRepresentation];
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
  if (self->_cdmParser)
  {
    v4 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"cdmParser"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"cdmParser"];
    }
  }

  if ([(NSArray *)self->_multilingualVariants count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_multilingualVariants;
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

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"multilingualVariants"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v16];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NLXSchemaCDMLanguageVariantResult *)self multilingualVariants];
  v6 = [v4 multilingualVariants];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NLXSchemaCDMLanguageVariantResult *)self multilingualVariants];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMLanguageVariantResult *)self multilingualVariants];
    v10 = [v4 multilingualVariants];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
  v6 = [v4 cdmParser];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
    v15 = [v4 cdmParser];
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_multilingualVariants;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];

  if (v10)
  {
    v11 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addMultilingualVariants:(id)a3
{
  v4 = a3;
  multilingualVariants = self->_multilingualVariants;
  v8 = v4;
  if (!multilingualVariants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_multilingualVariants;
    self->_multilingualVariants = v6;

    v4 = v8;
    multilingualVariants = self->_multilingualVariants;
  }

  [(NSArray *)multilingualVariants addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = NLXSchemaCDMLanguageVariantResult;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMLanguageVariantResult *)self multilingualVariants:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(NLXSchemaCDMLanguageVariantResult *)self setMultilingualVariants:v7];

  v8 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
  {
    [(NLXSchemaCDMLanguageVariantResult *)self deleteCdmParser];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end