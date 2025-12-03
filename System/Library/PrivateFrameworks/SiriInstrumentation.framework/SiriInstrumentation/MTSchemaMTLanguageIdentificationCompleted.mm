@interface MTSchemaMTLanguageIdentificationCompleted
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTLanguageIdentificationCompleted)initWithDictionary:(id)dictionary;
- (MTSchemaMTLanguageIdentificationCompleted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addLidConfidence:(id)confidence;
- (void)setHasTopLocale:(BOOL)locale;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTLanguageIdentificationCompleted

- (MTSchemaMTLanguageIdentificationCompleted)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = MTSchemaMTLanguageIdentificationCompleted;
  v5 = [(MTSchemaMTLanguageIdentificationCompleted *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"inputSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTLanguageIdentificationCompleted setInputSource:](v5, "setInputSource:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"topLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTLanguageIdentificationCompleted setTopLocale:](v5, "setTopLocale:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"lidConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v7;
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[MTSchemaMTLanguageIdentificationConfidence alloc] initWithDictionary:v14];
              [(MTSchemaMTLanguageIdentificationCompleted *)v5 addLidConfidence:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v7 = v18;
      v6 = v19;
    }

    v16 = v5;
  }

  return v5;
}

- (MTSchemaMTLanguageIdentificationCompleted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTLanguageIdentificationCompleted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTLanguageIdentificationCompleted *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(MTSchemaMTLanguageIdentificationCompleted *)self inputSource]- 1;
    if (v4 > 3)
    {
      v5 = @"MTINPUTSOURCE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D9FB8[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"inputSource"];
  }

  if ([(NSArray *)self->_lidConfidences count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_lidConfidences;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"lidConfidence"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [(MTSchemaMTLanguageIdentificationCompleted *)self topLocale]- 1;
    if (v14 > 0x3D)
    {
      v15 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v15 = off_1E78D9FD8[v14];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"topLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_inputSource;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSArray *)self->_lidConfidences hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_topLocale;
  return v7 ^ v6 ^ [(NSArray *)self->_lidConfidences hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    inputSource = self->_inputSource;
    if (inputSource != [equalCopy inputSource])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (topLocale = self->_topLocale, topLocale == [equalCopy topLocale]))
    {
      lidConfidences = [(MTSchemaMTLanguageIdentificationCompleted *)self lidConfidences];
      lidConfidences2 = [equalCopy lidConfidences];
      v12 = lidConfidences2;
      if ((lidConfidences != 0) != (lidConfidences2 == 0))
      {
        lidConfidences3 = [(MTSchemaMTLanguageIdentificationCompleted *)self lidConfidences];
        if (!lidConfidences3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = lidConfidences3;
        lidConfidences4 = [(MTSchemaMTLanguageIdentificationCompleted *)self lidConfidences];
        lidConfidences5 = [equalCopy lidConfidences];
        v17 = [lidConfidences4 isEqual:lidConfidences5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_lidConfidences;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addLidConfidence:(id)confidence
{
  confidenceCopy = confidence;
  lidConfidences = self->_lidConfidences;
  v8 = confidenceCopy;
  if (!lidConfidences)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_lidConfidences;
    self->_lidConfidences = array;

    confidenceCopy = v8;
    lidConfidences = self->_lidConfidences;
  }

  [(NSArray *)lidConfidences addObject:confidenceCopy];
}

- (void)setHasTopLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MTSchemaMTLanguageIdentificationCompleted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MTSchemaMTLanguageIdentificationCompleted *)self lidConfidences:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(MTSchemaMTLanguageIdentificationCompleted *)self setLidConfidences:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end