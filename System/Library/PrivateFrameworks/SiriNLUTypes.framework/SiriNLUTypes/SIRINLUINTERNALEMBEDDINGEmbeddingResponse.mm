@interface SIRINLUINTERNALEMBEDDINGEmbeddingResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEmbeddingTensorOutputs:(id)a3;
- (void)addSubwordEmbeddingTensorOutputs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumLayer:(BOOL)a3;
- (void)setHasNumSubwordToken:(BOOL)a3;
- (void)setHasNumToken:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALEMBEDDINGEmbeddingResponse

- (void)mergeFrom:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  embeddingTensor = self->_embeddingTensor;
  v6 = *(v4 + 5);
  if (embeddingTensor)
  {
    if (v6)
    {
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self setEmbeddingTensor:?];
  }

  tokenChain = self->_tokenChain;
  v8 = *(v4 + 10);
  if (tokenChain)
  {
    if (v8)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self setTokenChain:?];
  }

  v9 = *(v4 + 88);
  if ((v9 & 8) != 0)
  {
    self->_numToken = *(v4 + 4);
    *&self->_has |= 8u;
    v9 = *(v4 + 88);
    if ((v9 & 2) == 0)
    {
LABEL_13:
      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 88) & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_numLayer = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 88))
  {
LABEL_14:
    self->_embeddingDim = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_15:
  sentenceEmbeddingTensor = self->_sentenceEmbeddingTensor;
  v11 = *(v4 + 7);
  if (sentenceEmbeddingTensor)
  {
    if (v11)
    {
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)sentenceEmbeddingTensor mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self setSentenceEmbeddingTensor:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = *(v4 + 6);
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self addEmbeddingTensorOutputs:*(*(&v29 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  subwordTokenChain = self->_subwordTokenChain;
  v18 = *(v4 + 9);
  if (subwordTokenChain)
  {
    if (v18)
    {
      [(SIRINLUINTERNALSubwordTokenChain *)subwordTokenChain mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self setSubwordTokenChain:?];
  }

  if ((*(v4 + 88) & 4) != 0)
  {
    self->_numSubwordToken = *(v4 + 3);
    *&self->_has |= 4u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = *(v4 + 8);
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self addSubwordEmbeddingTensorOutputs:*(*(&v25 + 1) + 8 * j), v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor hash];
  v4 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash];
  if ((*&self->_has & 8) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v5 = 2654435761u * self->_numToken;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761u * self->_numLayer;
  if (*&self->_has)
  {
LABEL_4:
    v7 = 2654435761u * self->_embeddingDim;
    goto LABEL_8;
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  v8 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_sentenceEmbeddingTensor hash];
  v9 = [(NSMutableArray *)self->_embeddingTensorOutputs hash];
  v10 = [(SIRINLUINTERNALSubwordTokenChain *)self->_subwordTokenChain hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761u * self->_numSubwordToken;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_subwordEmbeddingTensorOutputs hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor | *(v4 + 5))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor isEqual:?])
    {
      goto LABEL_34;
    }
  }

  tokenChain = self->_tokenChain;
  if (tokenChain | *(v4 + 10))
  {
    if (![(SIRINLUINTERNALTokenChain *)tokenChain isEqual:?])
    {
      goto LABEL_34;
    }
  }

  v7 = *(v4 + 88);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 88) & 8) == 0 || self->_numToken != *(v4 + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 88) & 8) != 0)
  {
LABEL_34:
    v13 = 0;
    goto LABEL_35;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_numLayer != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 88) & 2) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_embeddingDim != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_34;
  }

  sentenceEmbeddingTensor = self->_sentenceEmbeddingTensor;
  if (sentenceEmbeddingTensor | *(v4 + 7) && ![(SIRINLUINTERNALNLv4EmbeddingTensor *)sentenceEmbeddingTensor isEqual:?])
  {
    goto LABEL_34;
  }

  embeddingTensorOutputs = self->_embeddingTensorOutputs;
  if (embeddingTensorOutputs | *(v4 + 6))
  {
    if (![(NSMutableArray *)embeddingTensorOutputs isEqual:?])
    {
      goto LABEL_34;
    }
  }

  subwordTokenChain = self->_subwordTokenChain;
  if (subwordTokenChain | *(v4 + 9))
  {
    if (![(SIRINLUINTERNALSubwordTokenChain *)subwordTokenChain isEqual:?])
    {
      goto LABEL_34;
    }
  }

  v11 = *(v4 + 88);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 88) & 4) == 0 || self->_numSubwordToken != *(v4 + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 88) & 4) != 0)
  {
    goto LABEL_34;
  }

  subwordEmbeddingTensorOutputs = self->_subwordEmbeddingTensorOutputs;
  if (subwordEmbeddingTensorOutputs | *(v4 + 8))
  {
    v13 = [(NSMutableArray *)subwordEmbeddingTensorOutputs isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_35:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_numToken;
    *(v5 + 88) |= 8u;
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

  *(v5 + 16) = self->_numLayer;
  *(v5 + 88) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_embeddingDim;
    *(v5 + 88) |= 1u;
  }

LABEL_5:
  v11 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_sentenceEmbeddingTensor copyWithZone:a3];
  v12 = *(v5 + 56);
  *(v5 + 56) = v11;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = self->_embeddingTensorOutputs;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v33 + 1) + 8 * i) copyWithZone:a3];
        [v5 addEmbeddingTensorOutputs:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v15);
  }

  v19 = [(SIRINLUINTERNALSubwordTokenChain *)self->_subwordTokenChain copyWithZone:a3];
  v20 = *(v5 + 72);
  *(v5 + 72) = v19;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_numSubwordToken;
    *(v5 + 88) |= 4u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = self->_subwordEmbeddingTensorOutputs;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v29 + 1) + 8 * j) copyWithZone:{a3, v29}];
        [v5 addSubwordEmbeddingTensorOutputs:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (self->_embeddingTensor)
  {
    [v4 setEmbeddingTensor:?];
    v4 = v14;
  }

  if (self->_tokenChain)
  {
    [v14 setTokenChain:?];
    v4 = v14;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 4) = self->_numToken;
    *(v4 + 88) |= 8u;
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

  *(v4 + 2) = self->_numLayer;
  *(v4 + 88) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(v4 + 1) = self->_embeddingDim;
    *(v4 + 88) |= 1u;
  }

LABEL_9:
  if (self->_sentenceEmbeddingTensor)
  {
    [v14 setSentenceEmbeddingTensor:?];
  }

  if ([(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self embeddingTensorOutputsCount])
  {
    [v14 clearEmbeddingTensorOutputs];
    v6 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self embeddingTensorOutputsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self embeddingTensorOutputsAtIndex:i];
        [v14 addEmbeddingTensorOutputs:v9];
      }
    }
  }

  if (self->_subwordTokenChain)
  {
    [v14 setSubwordTokenChain:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v14 + 3) = self->_numSubwordToken;
    *(v14 + 88) |= 4u;
  }

  if ([(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self subwordEmbeddingTensorOutputsCount])
  {
    [v14 clearSubwordEmbeddingTensorOutputs];
    v10 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self subwordEmbeddingTensorOutputsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self subwordEmbeddingTensorOutputsAtIndex:j];
        [v14 addSubwordEmbeddingTensorOutputs:v13];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_embeddingTensor)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    numToken = self->_numToken;
    PBDataWriterWriteUint64Field();
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

  numLayer = self->_numLayer;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_8:
    embeddingDim = self->_embeddingDim;
    PBDataWriterWriteUint64Field();
  }

LABEL_9:
  if (self->_sentenceEmbeddingTensor)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_embeddingTensorOutputs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  if (self->_subwordTokenChain)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    numSubwordToken = self->_numSubwordToken;
    PBDataWriterWriteUint64Field();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_subwordEmbeddingTensorOutputs;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor)
  {
    v5 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"embedding_tensor"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    v7 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"token_chain"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numToken];
    [v3 setObject:v31 forKey:@"num_token"];

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

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numLayer];
  [v3 setObject:v32 forKey:@"num_layer"];

  if (*&self->_has)
  {
LABEL_8:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_embeddingDim];
    [v3 setObject:v9 forKey:@"embedding_dim"];
  }

LABEL_9:
  sentenceEmbeddingTensor = self->_sentenceEmbeddingTensor;
  if (sentenceEmbeddingTensor)
  {
    v11 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)sentenceEmbeddingTensor dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"sentence_embedding_tensor"];
  }

  if ([(NSMutableArray *)self->_embeddingTensorOutputs count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_embeddingTensorOutputs, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = self->_embeddingTensorOutputs;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"embedding_tensor_outputs"];
  }

  subwordTokenChain = self->_subwordTokenChain;
  if (subwordTokenChain)
  {
    v20 = [(SIRINLUINTERNALSubwordTokenChain *)subwordTokenChain dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"subword_token_chain"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numSubwordToken];
    [v3 setObject:v21 forKey:@"num_subword_token"];
  }

  if ([(NSMutableArray *)self->_subwordEmbeddingTensorOutputs count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_subwordEmbeddingTensorOutputs, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = self->_subwordEmbeddingTensorOutputs;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKey:@"subword_embedding_tensor_outputs"];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALEMBEDDINGEmbeddingResponse;
  v4 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addSubwordEmbeddingTensorOutputs:(id)a3
{
  v4 = a3;
  subwordEmbeddingTensorOutputs = self->_subwordEmbeddingTensorOutputs;
  v8 = v4;
  if (!subwordEmbeddingTensorOutputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_subwordEmbeddingTensorOutputs;
    self->_subwordEmbeddingTensorOutputs = v6;

    v4 = v8;
    subwordEmbeddingTensorOutputs = self->_subwordEmbeddingTensorOutputs;
  }

  [(NSMutableArray *)subwordEmbeddingTensorOutputs addObject:v4];
}

- (void)setHasNumSubwordToken:(BOOL)a3
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

- (void)addEmbeddingTensorOutputs:(id)a3
{
  v4 = a3;
  embeddingTensorOutputs = self->_embeddingTensorOutputs;
  v8 = v4;
  if (!embeddingTensorOutputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_embeddingTensorOutputs;
    self->_embeddingTensorOutputs = v6;

    v4 = v8;
    embeddingTensorOutputs = self->_embeddingTensorOutputs;
  }

  [(NSMutableArray *)embeddingTensorOutputs addObject:v4];
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

@end