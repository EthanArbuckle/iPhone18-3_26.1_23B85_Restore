@interface SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  subwordTokenChain = self->_subwordTokenChain;
  v6 = v4[1];
  v9 = v4;
  if (subwordTokenChain)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSubwordTokenChain *)subwordTokenChain mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)self setSubwordTokenChain:?];
  }

  v4 = v9;
LABEL_7:
  subwordTokenEmbedding = self->_subwordTokenEmbedding;
  v8 = v4[2];
  if (subwordTokenEmbedding)
  {
    if (v8)
    {
      [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)subwordTokenEmbedding mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)self setSubwordTokenEmbedding:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((subwordTokenChain = self->_subwordTokenChain, !(subwordTokenChain | v4[1])) || -[SIRINLUINTERNALSubwordTokenChain isEqual:](subwordTokenChain, "isEqual:")))
  {
    subwordTokenEmbedding = self->_subwordTokenEmbedding;
    if (subwordTokenEmbedding | v4[2])
    {
      v7 = [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)subwordTokenEmbedding isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALSubwordTokenChain *)self->_subwordTokenChain copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)self->_subwordTokenEmbedding copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_subwordTokenChain)
  {
    [v4 setSubwordTokenChain:?];
    v4 = v5;
  }

  if (self->_subwordTokenEmbedding)
  {
    [v5 setSubwordTokenEmbedding:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_subwordTokenChain)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subwordTokenEmbedding)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  subwordTokenChain = self->_subwordTokenChain;
  if (subwordTokenChain)
  {
    v5 = [(SIRINLUINTERNALSubwordTokenChain *)subwordTokenChain dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"subword_token_chain"];
  }

  subwordTokenEmbedding = self->_subwordTokenEmbedding;
  if (subwordTokenEmbedding)
  {
    v7 = [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)subwordTokenEmbedding dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"subword_token_embedding"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse;
  v4 = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)&v8 description];
  v5 = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end