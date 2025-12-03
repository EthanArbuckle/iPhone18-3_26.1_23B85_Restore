@interface SIRINLUINTERNALNLv4EmbeddingTensor
- (BOOL)isEqual:(id)equal;
- (float)valuesAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasNumLayer:(BOOL)layer;
- (void)setHasNumToken:(BOOL)token;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALNLv4EmbeddingTensor

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = SIRINLUINTERNALNLv4EmbeddingTensor;
  [(SIRINLUINTERNALNLv4EmbeddingTensor *)&v3 dealloc];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  valuesCount = [fromCopy valuesCount];
  if (valuesCount)
  {
    v5 = valuesCount;
    for (i = 0; i != v5; ++i)
    {
      [fromCopy valuesAtIndex:i];
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)self addValues:?];
    }
  }

  v7 = fromCopy;
  v8 = *(fromCopy + 64);
  if ((v8 & 4) != 0)
  {
    self->_numToken = fromCopy[6];
    *&self->_has |= 4u;
    v8 = *(fromCopy + 64);
    if ((v8 & 2) == 0)
    {
LABEL_6:
      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((fromCopy[8] & 2) == 0)
  {
    goto LABEL_6;
  }

  self->_numLayer = fromCopy[5];
  *&self->_has |= 2u;
  if (fromCopy[8])
  {
LABEL_7:
    self->_embeddingDim = fromCopy[4];
    *&self->_has |= 1u;
  }

LABEL_8:
  if (fromCopy[7])
  {
    [(SIRINLUINTERNALNLv4EmbeddingTensor *)self setEmbedderId:?];
    v7 = fromCopy;
  }
}

- (unint64_t)hash
{
  v3 = PBRepeatedFloatHash();
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_embedderId hash];
  }

  v4 = 2654435761u * self->_numToken;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761u * self->_numLayer;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761u * self->_embeddingDim;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_embedderId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedFloatIsEqual())
  {
    goto LABEL_20;
  }

  v5 = *(equalCopy + 64);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_numToken != *(equalCopy + 6))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_numLayer != *(equalCopy + 5))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_embeddingDim != *(equalCopy + 4))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_20;
  }

  embedderId = self->_embedderId;
  if (embedderId | *(equalCopy + 7))
  {
    v7 = [(NSString *)embedderId isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedFloatCopy();
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 40) = self->_numLayer;
    *(v5 + 64) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 48) = self->_numToken;
  *(v5 + 64) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 32) = self->_embeddingDim;
    *(v5 + 64) |= 1u;
  }

LABEL_5:
  v7 = [(NSString *)self->_embedderId copyWithZone:zone];
  v8 = *(v5 + 56);
  *(v5 + 56) = v7;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SIRINLUINTERNALNLv4EmbeddingTensor *)self valuesCount])
  {
    [toCopy clearValues];
    valuesCount = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self valuesCount];
    if (valuesCount)
    {
      v5 = valuesCount;
      for (i = 0; i != v5; ++i)
      {
        [(SIRINLUINTERNALNLv4EmbeddingTensor *)self valuesAtIndex:i];
        [toCopy addValues:?];
      }
    }
  }

  has = self->_has;
  v8 = toCopy;
  if ((has & 4) != 0)
  {
    *(toCopy + 6) = self->_numToken;
    *(toCopy + 64) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 5) = self->_numLayer;
  *(toCopy + 64) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(toCopy + 4) = self->_embeddingDim;
    *(toCopy + 64) |= 1u;
  }

LABEL_9:
  if (self->_embedderId)
  {
    [toCopy setEmbedderId:?];
    v8 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_values.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_values.list[v5];
      PBDataWriterWriteFloatField();
      toCopy = v11;
      ++v5;
    }

    while (v5 < self->_values.count);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    numToken = self->_numToken;
    PBDataWriterWriteUint64Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_6:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

  numLayer = self->_numLayer;
  PBDataWriterWriteUint64Field();
  toCopy = v11;
  if (*&self->_has)
  {
LABEL_7:
    embeddingDim = self->_embeddingDim;
    PBDataWriterWriteUint64Field();
    toCopy = v11;
  }

LABEL_8:
  if (self->_embedderId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedFloatNSArray();
  [dictionary setObject:v4 forKey:@"values"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numToken];
    [dictionary setObject:v9 forKey:@"num_token"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numLayer];
  [dictionary setObject:v10 forKey:@"num_layer"];

  if (*&self->_has)
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_embeddingDim];
    [dictionary setObject:v6 forKey:@"embedding_dim"];
  }

LABEL_5:
  embedderId = self->_embedderId;
  if (embedderId)
  {
    [dictionary setObject:embedderId forKey:@"embedder_id"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALNLv4EmbeddingTensor;
  v4 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasNumLayer:(BOOL)layer
{
  if (layer)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasNumToken:(BOOL)token
{
  if (token)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (float)valuesAtIndex:(unint64_t)index
{
  p_values = &self->_values;
  count = self->_values.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_values->list[index];
}

@end