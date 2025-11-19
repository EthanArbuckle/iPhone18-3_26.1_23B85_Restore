@interface NLXSchemaCDMToken
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMToken)initWithDictionary:(id)a3;
- (NLXSchemaCDMToken)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNormalizedValues:(id)a3;
- (void)setHasEnd:(BOOL)a3;
- (void)setHasIsSignificant:(BOOL)a3;
- (void)setHasIsWhitespace:(BOOL)a3;
- (void)setHasNonWhitespaceTokenIndex:(BOOL)a3;
- (void)setHasTokenIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMToken

- (NLXSchemaCDMToken)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = NLXSchemaCDMToken;
  v5 = [(NLXSchemaCDMToken *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLXSchemaCDMToken *)v5 setValue:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"begin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setBegin:](v5, "setBegin:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"end"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setEnd:](v5, "setEnd:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isSignificant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setIsSignificant:](v5, "setIsSignificant:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isWhitespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setIsWhitespace:](v5, "setIsWhitespace:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"tokenIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setTokenIndex:](v5, "setTokenIndex:", [v12 unsignedIntValue]);
    }

    v32 = v12;
    v13 = [v4 objectForKeyedSubscript:@"nonWhitespaceTokenIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMToken setNonWhitespaceTokenIndex:](v5, "setNonWhitespaceTokenIndex:", [v13 unsignedIntValue]);
    }

    v31 = v13;
    v14 = [v4 objectForKeyedSubscript:@"cleanValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(NLXSchemaCDMToken *)v5 setCleanValue:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"normalizedValues"];
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

- (NLXSchemaCDMToken)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMToken *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMToken *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMToken begin](self, "begin")}];
    [v3 setObject:v4 forKeyedSubscript:@"begin"];
  }

  if (self->_cleanValue)
  {
    v5 = [(NLXSchemaCDMToken *)self cleanValue];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"cleanValue"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMToken end](self, "end")}];
    [v3 setObject:v15 forKeyedSubscript:@"end"];

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
  [v3 setObject:v16 forKeyedSubscript:@"isSignificant"];

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
  [v3 setObject:v17 forKeyedSubscript:@"isWhitespace"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMToken nonWhitespaceTokenIndex](self, "nonWhitespaceTokenIndex")}];
    [v3 setObject:v8 forKeyedSubscript:@"nonWhitespaceTokenIndex"];
  }

LABEL_10:
  if (self->_normalizedValues)
  {
    v9 = [(NLXSchemaCDMToken *)self normalizedValues];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"normalizedValues"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMToken tokenIndex](self, "tokenIndex")}];
    [v3 setObject:v11 forKeyedSubscript:@"tokenIndex"];
  }

  if (self->_value)
  {
    v12 = [(NLXSchemaCDMToken *)self value];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  v5 = [(NLXSchemaCDMToken *)self value];
  v6 = [v4 value];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_39;
  }

  v7 = [(NLXSchemaCDMToken *)self value];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMToken *)self value];
    v10 = [v4 value];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[56];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_40;
  }

  if (*&has)
  {
    begin = self->_begin;
    if (begin != [v4 begin])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = v4[56];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_40;
  }

  if (v15)
  {
    end = self->_end;
    if (end != [v4 end])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = v4[56];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_40;
  }

  if (v17)
  {
    isSignificant = self->_isSignificant;
    if (isSignificant != [v4 isSignificant])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = v4[56];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_40;
  }

  if (v19)
  {
    isWhitespace = self->_isWhitespace;
    if (isWhitespace != [v4 isWhitespace])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = v4[56];
  }

  v21 = (*&has >> 4) & 1;
  if (v21 != ((v13 >> 4) & 1))
  {
    goto LABEL_40;
  }

  if (v21)
  {
    tokenIndex = self->_tokenIndex;
    if (tokenIndex != [v4 tokenIndex])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v13 = v4[56];
  }

  v23 = (*&has >> 5) & 1;
  if (v23 != ((v13 >> 5) & 1))
  {
    goto LABEL_40;
  }

  if (v23)
  {
    nonWhitespaceTokenIndex = self->_nonWhitespaceTokenIndex;
    if (nonWhitespaceTokenIndex != [v4 nonWhitespaceTokenIndex])
    {
      goto LABEL_40;
    }
  }

  v5 = [(NLXSchemaCDMToken *)self cleanValue];
  v6 = [v4 cleanValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_39;
  }

  v25 = [(NLXSchemaCDMToken *)self cleanValue];
  if (v25)
  {
    v26 = v25;
    v27 = [(NLXSchemaCDMToken *)self cleanValue];
    v28 = [v4 cleanValue];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMToken *)self normalizedValues];
  v6 = [v4 normalizedValues];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_39:

    goto LABEL_40;
  }

  v30 = [(NLXSchemaCDMToken *)self normalizedValues];
  if (!v30)
  {

LABEL_43:
    v35 = 1;
    goto LABEL_41;
  }

  v31 = v30;
  v32 = [(NLXSchemaCDMToken *)self normalizedValues];
  v33 = [v4 normalizedValues];
  v34 = [v32 isEqual:v33];

  if (v34)
  {
    goto LABEL_43;
  }

LABEL_40:
  v35 = 0;
LABEL_41:

  return v35;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NLXSchemaCDMToken *)self value];

  if (v5)
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
  v7 = [(NLXSchemaCDMToken *)self cleanValue];

  if (v7)
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

- (void)addNormalizedValues:(id)a3
{
  v4 = a3;
  normalizedValues = self->_normalizedValues;
  v8 = v4;
  if (!normalizedValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_normalizedValues;
    self->_normalizedValues = v6;

    v4 = v8;
    normalizedValues = self->_normalizedValues;
  }

  [(NSArray *)normalizedValues addObject:v4];
}

- (void)setHasNonWhitespaceTokenIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTokenIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsWhitespace:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsSignificant:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NLXSchemaCDMToken;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
  }

  if ([v4 isConditionSet:4])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
  }

  if ([v4 isConditionSet:5])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
  }

  if ([v4 isConditionSet:6])
  {
    [(NLXSchemaCDMToken *)self deleteValue];
    [(NLXSchemaCDMToken *)self deleteCleanValue];
    [(NLXSchemaCDMToken *)self deleteNormalizedValues];
  }

  if ([v4 isConditionSet:7])
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