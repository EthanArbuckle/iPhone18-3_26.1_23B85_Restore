@interface SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsStableEmbeddingsVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (*(v4 + 3))
  {
    [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)self setEmbeddingVersion:?];
    v4 = v10;
  }

  embeddingTensor = self->_embeddingTensor;
  v6 = *(v4 + 2);
  if (embeddingTensor)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)self setEmbeddingTensor:?];
  }

  v4 = v10;
LABEL_9:
  sentenceEmbeddingTensor = self->_sentenceEmbeddingTensor;
  v8 = *(v4 + 4);
  if (sentenceEmbeddingTensor)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(SIRINLUINTERNALNLv4EmbeddingTensor *)sentenceEmbeddingTensor mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)self setSentenceEmbeddingTensor:?];
  }

  v4 = v10;
LABEL_15:
  v9 = *(v4 + 44);
  if (v9)
  {
    self->_embeddingDim = *(v4 + 1);
    *&self->_has |= 1u;
    v9 = *(v4 + 44);
  }

  if ((v9 & 2) != 0)
  {
    self->_isStableEmbeddingsVersion = *(v4 + 40);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_embeddingVersion hash];
  v4 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor hash];
  v5 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_sentenceEmbeddingTensor hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_embeddingDim;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_isStableEmbeddingsVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  embeddingVersion = self->_embeddingVersion;
  if (embeddingVersion | *(v4 + 3))
  {
    if (![(NSString *)embeddingVersion isEqual:?])
    {
      goto LABEL_15;
    }
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor | *(v4 + 2))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor isEqual:?])
    {
      goto LABEL_15;
    }
  }

  sentenceEmbeddingTensor = self->_sentenceEmbeddingTensor;
  if (sentenceEmbeddingTensor | *(v4 + 4))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)sentenceEmbeddingTensor isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_embeddingDim != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_15;
  }

  v8 = (*(v4 + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    if (self->_isStableEmbeddingsVersion)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_embeddingVersion copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_sentenceEmbeddingTensor copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_embeddingDim;
    *(v5 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_isStableEmbeddingsVersion;
    *(v5 + 44) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_embeddingVersion)
  {
    [v4 setEmbeddingVersion:?];
    v4 = v6;
  }

  if (self->_embeddingTensor)
  {
    [v6 setEmbeddingTensor:?];
    v4 = v6;
  }

  if (self->_sentenceEmbeddingTensor)
  {
    [v6 setSentenceEmbeddingTensor:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_embeddingDim;
    *(v4 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_isStableEmbeddingsVersion;
    *(v4 + 44) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_embeddingVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_embeddingTensor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_sentenceEmbeddingTensor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    embeddingDim = self->_embeddingDim;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isStableEmbeddingsVersion = self->_isStableEmbeddingsVersion;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  embeddingVersion = self->_embeddingVersion;
  if (embeddingVersion)
  {
    [v3 setObject:embeddingVersion forKey:@"embedding_version"];
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor)
  {
    v7 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"embedding_tensor"];
  }

  sentenceEmbeddingTensor = self->_sentenceEmbeddingTensor;
  if (sentenceEmbeddingTensor)
  {
    v9 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)sentenceEmbeddingTensor dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"sentence_embedding_tensor"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_embeddingDim];
    [v4 setObject:v11 forKey:@"embedding_dim"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStableEmbeddingsVersion];
    [v4 setObject:v12 forKey:@"is_stable_embeddings_version"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput;
  v4 = [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)&v8 description];
  v5 = [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIsStableEmbeddingsVersion:(BOOL)a3
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