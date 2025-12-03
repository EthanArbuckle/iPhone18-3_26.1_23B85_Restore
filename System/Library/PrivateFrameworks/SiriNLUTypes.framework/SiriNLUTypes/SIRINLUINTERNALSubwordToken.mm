@interface SIRINLUINTERNALSubwordToken
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTokenIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSubwordToken

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SIRINLUINTERNALSubwordToken *)self setValue:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_subwordTokenIndex = fromCopy[2];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_tokenIndex = fromCopy[3];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  value = self->_value;
  if (value | *(equalCopy + 2))
  {
    if (![(NSString *)value isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_subwordTokenIndex != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_tokenIndex != *(equalCopy + 3))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_value)
  {
    v6 = toCopy;
    [toCopy setValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_subwordTokenIndex;
    *(toCopy + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 3) = self->_tokenIndex;
    *(toCopy + 24) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_value)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    subwordTokenIndex = self->_subwordTokenIndex;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    tokenIndex = self->_tokenIndex;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
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
  dictionaryRepresentation = [(SIRINLUINTERNALSubwordToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasTokenIndex:(BOOL)index
{
  if (index)
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