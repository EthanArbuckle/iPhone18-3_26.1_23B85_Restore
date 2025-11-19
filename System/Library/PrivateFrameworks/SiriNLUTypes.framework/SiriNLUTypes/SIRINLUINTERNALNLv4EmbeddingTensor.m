@interface SIRINLUINTERNALNLv4EmbeddingTensor
- (BOOL)isEqual:(id)a3;
- (float)valuesAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNumLayer:(BOOL)a3;
- (void)setHasNumToken:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALNLv4EmbeddingTensor

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = SIRINLUINTERNALNLv4EmbeddingTensor;
  [(SIRINLUINTERNALNLv4EmbeddingTensor *)&v3 dealloc];
}

- (void)mergeFrom:(id)a3
{
  v9 = a3;
  v4 = [v9 valuesCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [v9 valuesAtIndex:i];
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)self addValues:?];
    }
  }

  v7 = v9;
  v8 = *(v9 + 64);
  if ((v8 & 4) != 0)
  {
    self->_numToken = v9[6];
    *&self->_has |= 4u;
    v8 = *(v9 + 64);
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

  else if ((v9[8] & 2) == 0)
  {
    goto LABEL_6;
  }

  self->_numLayer = v9[5];
  *&self->_has |= 2u;
  if (v9[8])
  {
LABEL_7:
    self->_embeddingDim = v9[4];
    *&self->_has |= 1u;
  }

LABEL_8:
  if (v9[7])
  {
    [(SIRINLUINTERNALNLv4EmbeddingTensor *)self setEmbedderId:?];
    v7 = v9;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedFloatIsEqual())
  {
    goto LABEL_20;
  }

  v5 = *(v4 + 64);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_numToken != *(v4 + 6))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_numLayer != *(v4 + 5))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_embeddingDim != *(v4 + 4))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_20;
  }

  embedderId = self->_embedderId;
  if (embedderId | *(v4 + 7))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v7 = [(NSString *)self->_embedderId copyWithZone:a3];
  v8 = *(v5 + 56);
  *(v5 + 56) = v7;

  return v5;
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(SIRINLUINTERNALNLv4EmbeddingTensor *)self valuesCount])
  {
    [v9 clearValues];
    v4 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self valuesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(SIRINLUINTERNALNLv4EmbeddingTensor *)self valuesAtIndex:i];
        [v9 addValues:?];
      }
    }
  }

  has = self->_has;
  v8 = v9;
  if ((has & 4) != 0)
  {
    *(v9 + 6) = self->_numToken;
    *(v9 + 64) |= 4u;
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

  *(v9 + 5) = self->_numLayer;
  *(v9 + 64) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(v9 + 4) = self->_embeddingDim;
    *(v9 + 64) |= 1u;
  }

LABEL_9:
  if (self->_embedderId)
  {
    [v9 setEmbedderId:?];
    v8 = v9;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_values.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_values.list[v5];
      PBDataWriterWriteFloatField();
      v4 = v11;
      ++v5;
    }

    while (v5 < self->_values.count);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    numToken = self->_numToken;
    PBDataWriterWriteUint64Field();
    v4 = v11;
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
  v4 = v11;
  if (*&self->_has)
  {
LABEL_7:
    embeddingDim = self->_embeddingDim;
    PBDataWriterWriteUint64Field();
    v4 = v11;
  }

LABEL_8:
  if (self->_embedderId)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedFloatNSArray();
  [v3 setObject:v4 forKey:@"values"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numToken];
    [v3 setObject:v9 forKey:@"num_token"];

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
  [v3 setObject:v10 forKey:@"num_layer"];

  if (*&self->_has)
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_embeddingDim];
    [v3 setObject:v6 forKey:@"embedding_dim"];
  }

LABEL_5:
  embedderId = self->_embedderId;
  if (embedderId)
  {
    [v3 setObject:embedderId forKey:@"embedder_id"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALNLv4EmbeddingTensor;
  v4 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)&v8 description];
  v5 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasNumLayer:(BOOL)a3
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

- (void)setHasNumToken:(BOOL)a3
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

- (float)valuesAtIndex:(unint64_t)a3
{
  p_values = &self->_values;
  count = self->_values.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_values->list[a3];
}

@end