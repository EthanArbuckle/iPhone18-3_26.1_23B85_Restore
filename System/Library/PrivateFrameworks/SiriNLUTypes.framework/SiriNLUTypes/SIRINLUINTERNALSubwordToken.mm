@interface SIRINLUINTERNALSubwordToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTokenIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSubwordToken

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(SIRINLUINTERNALSubwordToken *)self setValue:?];
    v4 = v6;
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    self->_subwordTokenIndex = v4[2];
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_tokenIndex = v4[3];
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_value hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_subwordTokenIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_tokenIndex;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  value = self->_value;
  if (value | *(v4 + 2))
  {
    if (![(NSString *)value isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_subwordTokenIndex != *(v4 + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_tokenIndex != *(v4 + 3))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_subwordTokenIndex;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_tokenIndex;
    *(v5 + 24) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_value)
  {
    v6 = v4;
    [v4 setValue:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_subwordTokenIndex;
    *(v4 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 3) = self->_tokenIndex;
    *(v4 + 24) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_value)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    subwordTokenIndex = self->_subwordTokenIndex;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    tokenIndex = self->_tokenIndex;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKey:@"value"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_subwordTokenIndex];
    [v4 setObject:v7 forKey:@"subword_token_index"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_tokenIndex];
    [v4 setObject:v8 forKey:@"token_index"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSubwordToken;
  v4 = [(SIRINLUINTERNALSubwordToken *)&v8 description];
  v5 = [(SIRINLUINTERNALSubwordToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasTokenIndex:(BOOL)a3
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

@end