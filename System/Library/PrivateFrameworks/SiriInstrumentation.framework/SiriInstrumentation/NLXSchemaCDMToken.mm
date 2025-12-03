@interface NLXSchemaCDMToken
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMToken)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMToken)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNormalizedValues:(id)values;
- (void)setHasEnd:(BOOL)end;
- (void)setHasIsSignificant:(BOOL)significant;
- (void)setHasIsWhitespace:(BOOL)whitespace;
- (void)setHasNonWhitespaceTokenIndex:(BOOL)index;
- (void)setHasTokenIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMToken

- (NLXSchemaCDMToken)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = NLXSchemaCDMToken;
  v5 = [(NLXSchemaCDMToken *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLXSchemaCDMToken *)v5 setValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"begin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setBegin:](v5, "setBegin:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"end"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setEnd:](v5, "setEnd:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isSignificant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setIsSignificant:](v5, "setIsSignificant:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isWhitespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setIsWhitespace:](v5, "setIsWhitespace:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"tokenIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setTokenIndex:](v5, "setTokenIndex:", [v12 unsignedIntValue]);
    }

    v32 = v12;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"nonWhitespaceTokenIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setNonWhitespaceTokenIndex:](v5, "setNonWhitespaceTokenIndex:", [v13 unsignedIntValue]);
    }

    v31 = v13;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"cleanValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(NLXSchemaCDMToken *)v5 setCleanValue:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"normalizedValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v11;
      v27 = v10;
      v28 = v9;
      v29 = v8;
      v30 = v6;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        do
        {
          v21 = 0;
          do
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v33 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [v22 copy];
              [(NLXSchemaCDMToken *)v5 addNormalizedValues:v23];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v19);
      }

      v8 = v29;
      v6 = v30;
      v10 = v27;
      v9 = v28;
      v11 = v26;
    }

    v24 = v5;
  }

  return v5;
}

- (NLXSchemaCDMToken)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMToken *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMToken *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMToken begin](self, "begin")}];
    [dictionary setObject:v4 forKeyedSubscript:@"begin"];
  }

  if (self->_cleanValue)
  {
    cleanValue = [(NLXSchemaCDMToken *)self cleanValue];
    v6 = [cleanValue copy];
    [dictionary setObject:v6 forKeyedSubscript:@"cleanValue"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMToken end](self, "end")}];
    [dictionary setObject:v15 forKeyedSubscript:@"end"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaCDMToken isSignificant](self, "isSignificant")}];
  [dictionary setObject:v16 forKeyedSubscript:@"isSignificant"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaCDMToken isWhitespace](self, "isWhitespace")}];
  [dictionary setObject:v17 forKeyedSubscript:@"isWhitespace"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMToken nonWhitespaceTokenIndex](self, "nonWhitespaceTokenIndex")}];
    [dictionary setObject:v8 forKeyedSubscript:@"nonWhitespaceTokenIndex"];
  }

LABEL_10:
  if (self->_normalizedValues)
  {
    normalizedValues = [(NLXSchemaCDMToken *)self normalizedValues];
    v10 = [normalizedValues copy];
    [dictionary setObject:v10 forKeyedSubscript:@"normalizedValues"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMToken tokenIndex](self, "tokenIndex")}];
    [dictionary setObject:v11 forKeyedSubscript:@"tokenIndex"];
  }

  if (self->_value)
  {
    value = [(NLXSchemaCDMToken *)self value];
    v13 = [value copy];
    [dictionary setObject:v13 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_value hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_begin;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_end;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_isSignificant;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_isWhitespace;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_tokenIndex;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = 2654435761 * self->_nonWhitespaceTokenIndex;
LABEL_14:
  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSString *)self->_cleanValue hash];
  return v10 ^ [(NSArray *)self->_normalizedValues hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  value = [(NLXSchemaCDMToken *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_39;
  }

  value3 = [(NLXSchemaCDMToken *)self value];
  if (value3)
  {
    v8 = value3;
    value4 = [(NLXSchemaCDMToken *)self value];
    value5 = [equalCopy value];
    v11 = [value4 isEqual:value5];

    if (!v11)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[56];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_40;
  }

  if (*&has)
  {
    begin = self->_begin;
    if (begin != [equalCopy begin])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = equalCopy[56];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_40;
  }

  if (v15)
  {
    end = self->_end;
    if (end != [equalCopy end])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = equalCopy[56];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_40;
  }

  if (v17)
  {
    isSignificant = self->_isSignificant;
    if (isSignificant != [equalCopy isSignificant])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = equalCopy[56];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_40;
  }

  if (v19)
  {
    isWhitespace = self->_isWhitespace;
    if (isWhitespace != [equalCopy isWhitespace])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = equalCopy[56];
  }

  v21 = (*&has >> 4) & 1;
  if (v21 != ((v13 >> 4) & 1))
  {
    goto LABEL_40;
  }

  if (v21)
  {
    tokenIndex = self->_tokenIndex;
    if (tokenIndex != [equalCopy tokenIndex])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = equalCopy[56];
  }

  v23 = (*&has >> 5) & 1;
  if (v23 != ((v13 >> 5) & 1))
  {
    goto LABEL_40;
  }

  if (v23)
  {
    nonWhitespaceTokenIndex = self->_nonWhitespaceTokenIndex;
    if (nonWhitespaceTokenIndex != [equalCopy nonWhitespaceTokenIndex])
    {
      goto LABEL_40;
    }
  }

  value = [(NLXSchemaCDMToken *)self cleanValue];
  value2 = [equalCopy cleanValue];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_39;
  }

  cleanValue = [(NLXSchemaCDMToken *)self cleanValue];
  if (cleanValue)
  {
    v26 = cleanValue;
    cleanValue2 = [(NLXSchemaCDMToken *)self cleanValue];
    cleanValue3 = [equalCopy cleanValue];
    v29 = [cleanValue2 isEqual:cleanValue3];

    if (!v29)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  value = [(NLXSchemaCDMToken *)self normalizedValues];
  value2 = [equalCopy normalizedValues];
  if ((value != 0) == (value2 == 0))
  {
LABEL_39:

    goto LABEL_40;
  }

  normalizedValues = [(NLXSchemaCDMToken *)self normalizedValues];
  if (!normalizedValues)
  {

LABEL_43:
    v35 = 1;
    goto LABEL_41;
  }

  v31 = normalizedValues;
  normalizedValues2 = [(NLXSchemaCDMToken *)self normalizedValues];
  normalizedValues3 = [equalCopy normalizedValues];
  v34 = [normalizedValues2 isEqual:normalizedValues3];

  if (v34)
  {
    goto LABEL_43;
  }

LABEL_40:
  v35 = 0;
LABEL_41:

  return v35;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  value = [(NLXSchemaCDMToken *)self value];

  if (value)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
  cleanValue = [(NLXSchemaCDMToken *)self cleanValue];

  if (cleanValue)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_normalizedValues;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteStringField();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)addNormalizedValues:(id)values
{
  valuesCopy = values;
  normalizedValues = self->_normalizedValues;
  v8 = valuesCopy;
  if (!normalizedValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_normalizedValues;
    self->_normalizedValues = array;

    valuesCopy = v8;
    normalizedValues = self->_normalizedValues;
  }

  [(NSArray *)normalizedValues addObject:valuesCopy];
}

- (void)setHasNonWhitespaceTokenIndex:(BOOL)index
{
  if (index)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTokenIndex:(BOOL)index
{
  if (index)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsWhitespace:(BOOL)whitespace
{
  if (whitespace)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsSignificant:(BOOL)significant
{
  if (significant)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEnd:(BOOL)end
{
  if (end)
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
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = NLXSchemaCDMToken;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
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