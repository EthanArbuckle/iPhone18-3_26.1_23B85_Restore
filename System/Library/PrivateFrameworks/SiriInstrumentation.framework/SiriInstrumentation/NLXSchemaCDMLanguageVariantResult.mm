@interface NLXSchemaCDMLanguageVariantResult
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMLanguageVariantResult)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMLanguageVariantResult)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addMultilingualVariants:(id)variants;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMLanguageVariantResult

- (NLXSchemaCDMLanguageVariantResult)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = NLXSchemaCDMLanguageVariantResult;
  v5 = [(NLXSchemaCDMLanguageVariantResult *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"multilingualVariants"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"cdmParser", v19}];
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

- (NLXSchemaCDMLanguageVariantResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMLanguageVariantResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMLanguageVariantResult *)self dictionaryRepresentation];
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
  if (self->_cdmParser)
  {
    cdmParser = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
    dictionaryRepresentation = [cdmParser dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cdmParser"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cdmParser"];
    }
  }

  if ([(NSArray *)self->_multilingualVariants count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"multilingualVariants"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  multilingualVariants = [(NLXSchemaCDMLanguageVariantResult *)self multilingualVariants];
  multilingualVariants2 = [equalCopy multilingualVariants];
  if ((multilingualVariants != 0) == (multilingualVariants2 == 0))
  {
    goto LABEL_11;
  }

  multilingualVariants3 = [(NLXSchemaCDMLanguageVariantResult *)self multilingualVariants];
  if (multilingualVariants3)
  {
    v8 = multilingualVariants3;
    multilingualVariants4 = [(NLXSchemaCDMLanguageVariantResult *)self multilingualVariants];
    multilingualVariants5 = [equalCopy multilingualVariants];
    v11 = [multilingualVariants4 isEqual:multilingualVariants5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  multilingualVariants = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
  multilingualVariants2 = [equalCopy cdmParser];
  if ((multilingualVariants != 0) != (multilingualVariants2 == 0))
  {
    cdmParser = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
    if (!cdmParser)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = cdmParser;
    cdmParser2 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
    cdmParser3 = [equalCopy cdmParser];
    v16 = [cdmParser2 isEqual:cdmParser3];

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
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  cdmParser = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];

  if (cdmParser)
  {
    cdmParser2 = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addMultilingualVariants:(id)variants
{
  variantsCopy = variants;
  multilingualVariants = self->_multilingualVariants;
  v8 = variantsCopy;
  if (!multilingualVariants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_multilingualVariants;
    self->_multilingualVariants = array;

    variantsCopy = v8;
    multilingualVariants = self->_multilingualVariants;
  }

  [(NSArray *)multilingualVariants addObject:variantsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = NLXSchemaCDMLanguageVariantResult;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMLanguageVariantResult *)self multilingualVariants:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(NLXSchemaCDMLanguageVariantResult *)self setMultilingualVariants:v7];

  cdmParser = [(NLXSchemaCDMLanguageVariantResult *)self cdmParser];
  v9 = [cdmParser applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
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