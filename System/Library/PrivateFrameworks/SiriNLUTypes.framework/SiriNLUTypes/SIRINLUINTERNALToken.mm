@interface SIRINLUINTERNALToken
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCleanValues:(id)values;
- (void)addNormalizedValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEnd:(BOOL)end;
- (void)setHasIsSignificant:(BOOL)significant;
- (void)setHasIsWhitespace:(BOOL)whitespace;
- (void)setHasNonWhitespaceTokenIndex:(BOOL)index;
- (void)setHasTokenIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALToken

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 7))
  {
    [(SIRINLUINTERNALToken *)self setValue:?];
  }

  v5 = *(fromCopy + 68);
  if (v5)
  {
    self->_begin = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 68);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }
  }

  else if ((*(fromCopy + 68) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_end = *(fromCopy + 8);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_31:
  self->_isSignificant = *(fromCopy + 64);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 68) & 0x20) != 0)
  {
LABEL_7:
    self->_isWhitespace = *(fromCopy + 65);
    *&self->_has |= 0x20u;
  }

LABEL_8:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(fromCopy + 3);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SIRINLUINTERNALToken *)self addCleanValues:*(*(&v22 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v11 = *(fromCopy + 68);
  if ((v11 & 8) != 0)
  {
    self->_tokenIndex = *(fromCopy + 12);
    *&self->_has |= 8u;
    v11 = *(fromCopy + 68);
  }

  if ((v11 & 4) != 0)
  {
    self->_nonWhitespaceTokenIndex = *(fromCopy + 9);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 2))
  {
    [(SIRINLUINTERNALToken *)self setCleanValue:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(fromCopy + 5);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUINTERNALToken *)self addNormalizedValues:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
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
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
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
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_isSignificant;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_isWhitespace;
    goto LABEL_10;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  v8 = [(NSMutableArray *)self->_cleanValues hash];
  if ((*&self->_has & 8) != 0)
  {
    v9 = 2654435761 * self->_tokenIndex;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v9 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v10 = 2654435761 * self->_nonWhitespaceTokenIndex;
LABEL_15:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  v12 = v9 ^ v10 ^ [(NSString *)self->_cleanValue hash];
  return v11 ^ v12 ^ [(NSMutableArray *)self->_normalizedValues hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  value = self->_value;
  if (value | *(equalCopy + 7))
  {
    if (![(NSString *)value isEqual:?])
    {
      goto LABEL_47;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 68);
  if (has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_begin != *(equalCopy + 2))
    {
      goto LABEL_47;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_end != *(equalCopy + 8))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 68) & 0x10) == 0)
    {
      goto LABEL_47;
    }

    v9 = *(equalCopy + 64);
    if (self->_isSignificant)
    {
      if ((*(equalCopy + 64) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(equalCopy + 64))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 68) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 68) & 0x20) == 0)
    {
      goto LABEL_47;
    }

    v10 = *(equalCopy + 65);
    if (self->_isWhitespace)
    {
      if ((*(equalCopy + 65) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(equalCopy + 65))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 68) & 0x20) != 0)
  {
    goto LABEL_47;
  }

  cleanValues = self->_cleanValues;
  if (!(cleanValues | *(equalCopy + 3)))
  {
    goto LABEL_21;
  }

  if (![(NSMutableArray *)cleanValues isEqual:?])
  {
LABEL_47:
    v13 = 0;
    goto LABEL_48;
  }

  has = self->_has;
  v7 = *(equalCopy + 68);
LABEL_21:
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_tokenIndex != *(equalCopy + 12))
    {
      goto LABEL_47;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_nonWhitespaceTokenIndex != *(equalCopy + 9))
    {
      goto LABEL_47;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_47;
  }

  cleanValue = self->_cleanValue;
  if (cleanValue | *(equalCopy + 2) && ![(NSString *)cleanValue isEqual:?])
  {
    goto LABEL_47;
  }

  normalizedValues = self->_normalizedValues;
  if (normalizedValues | *(equalCopy + 5))
  {
    v13 = [(NSMutableArray *)normalizedValues isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_48:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_begin;
    *(v5 + 68) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_end;
  *(v5 + 68) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  *(v5 + 64) = self->_isSignificant;
  *(v5 + 68) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    *(v5 + 65) = self->_isWhitespace;
    *(v5 + 68) |= 0x20u;
  }

LABEL_6:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = self->_cleanValues;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v30 + 1) + 8 * i) copyWithZone:zone];
        [v5 addCleanValues:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    *(v5 + 48) = self->_tokenIndex;
    *(v5 + 68) |= 8u;
    v15 = self->_has;
  }

  if ((v15 & 4) != 0)
  {
    *(v5 + 36) = self->_nonWhitespaceTokenIndex;
    *(v5 + 68) |= 4u;
  }

  v16 = [(NSString *)self->_cleanValue copyWithZone:zone];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_normalizedValues;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * j) copyWithZone:{zone, v26}];
        [v5 addNormalizedValues:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v15 = toCopy;
  if (self->_value)
  {
    [toCopy setValue:?];
    toCopy = v15;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_begin;
    *(toCopy + 68) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_27:
      *(toCopy + 64) = self->_isSignificant;
      *(toCopy + 68) |= 0x10u;
      if ((*&self->_has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 8) = self->_end;
  *(toCopy + 68) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  if ((has & 0x20) != 0)
  {
LABEL_7:
    *(toCopy + 65) = self->_isWhitespace;
    *(toCopy + 68) |= 0x20u;
  }

LABEL_8:
  if ([(SIRINLUINTERNALToken *)self cleanValuesCount])
  {
    [v15 clearCleanValues];
    cleanValuesCount = [(SIRINLUINTERNALToken *)self cleanValuesCount];
    if (cleanValuesCount)
    {
      v7 = cleanValuesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SIRINLUINTERNALToken *)self cleanValuesAtIndex:i];
        [v15 addCleanValues:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    *(v15 + 12) = self->_tokenIndex;
    *(v15 + 68) |= 8u;
    v10 = self->_has;
  }

  if ((v10 & 4) != 0)
  {
    *(v15 + 9) = self->_nonWhitespaceTokenIndex;
    *(v15 + 68) |= 4u;
  }

  if (self->_cleanValue)
  {
    [v15 setCleanValue:?];
  }

  if ([(SIRINLUINTERNALToken *)self normalizedValuesCount])
  {
    [v15 clearNormalizedValues];
    normalizedValuesCount = [(SIRINLUINTERNALToken *)self normalizedValuesCount];
    if (normalizedValuesCount)
    {
      v12 = normalizedValuesCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(SIRINLUINTERNALToken *)self normalizedValuesAtIndex:j];
        [v15 addNormalizedValues:v14];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_value)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    begin = self->_begin;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  end = self->_end;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_31:
  isSignificant = self->_isSignificant;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    isWhitespace = self->_isWhitespace;
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_cleanValues;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    tokenIndex = self->_tokenIndex;
    PBDataWriterWriteInt32Field();
    v13 = self->_has;
  }

  if ((v13 & 4) != 0)
  {
    nonWhitespaceTokenIndex = self->_nonWhitespaceTokenIndex;
    PBDataWriterWriteInt32Field();
  }

  if (self->_cleanValue)
  {
    PBDataWriterWriteStringField();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_normalizedValues;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_begin];
    [v4 setObject:v15 forKey:@"begin"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInt:self->_end];
  [v4 setObject:v16 forKey:@"end"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSignificant];
  [v4 setObject:v17 forKey:@"is_significant"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isWhitespace];
    [v4 setObject:v7 forKey:@"is_whitespace"];
  }

LABEL_8:
  cleanValues = self->_cleanValues;
  if (cleanValues)
  {
    [v4 setObject:cleanValues forKey:@"clean_values"];
  }

  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_tokenIndex];
    [v4 setObject:v10 forKey:@"token_index"];

    v9 = self->_has;
  }

  if ((v9 & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_nonWhitespaceTokenIndex];
    [v4 setObject:v11 forKey:@"non_whitespace_token_index"];
  }

  cleanValue = self->_cleanValue;
  if (cleanValue)
  {
    [v4 setObject:cleanValue forKey:@"clean_value"];
  }

  normalizedValues = self->_normalizedValues;
  if (normalizedValues)
  {
    [v4 setObject:normalizedValues forKey:@"normalized_values"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALToken;
  v4 = [(SIRINLUINTERNALToken *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addNormalizedValues:(id)values
{
  valuesCopy = values;
  normalizedValues = self->_normalizedValues;
  v8 = valuesCopy;
  if (!normalizedValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_normalizedValues;
    self->_normalizedValues = v6;

    valuesCopy = v8;
    normalizedValues = self->_normalizedValues;
  }

  [(NSMutableArray *)normalizedValues addObject:valuesCopy];
}

- (void)setHasNonWhitespaceTokenIndex:(BOOL)index
{
  if (index)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTokenIndex:(BOOL)index
{
  if (index)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addCleanValues:(id)values
{
  valuesCopy = values;
  cleanValues = self->_cleanValues;
  v8 = valuesCopy;
  if (!cleanValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_cleanValues;
    self->_cleanValues = v6;

    valuesCopy = v8;
    cleanValues = self->_cleanValues;
  }

  [(NSMutableArray *)cleanValues addObject:valuesCopy];
}

- (void)setHasIsWhitespace:(BOOL)whitespace
{
  if (whitespace)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsSignificant:(BOOL)significant
{
  if (significant)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
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

@end