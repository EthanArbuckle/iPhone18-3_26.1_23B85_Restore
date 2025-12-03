@interface SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  subwordTokenChain = self->_subwordTokenChain;
  v6 = fromCopy[1];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  subwordTokenEmbedding = self->_subwordTokenEmbedding;
  v8 = fromCopy[2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((subwordTokenChain = self->_subwordTokenChain, !(subwordTokenChain | equalCopy[1])) || -[SIRINLUINTERNALSubwordTokenChain isEqual:](subwordTokenChain, "isEqual:")))
  {
    subwordTokenEmbedding = self->_subwordTokenEmbedding;
    if (subwordTokenEmbedding | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALSubwordTokenChain *)self->_subwordTokenChain copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)self->_subwordTokenEmbedding copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_subwordTokenChain)
  {
    [toCopy setSubwordTokenChain:?];
    toCopy = v5;
  }

  if (self->_subwordTokenEmbedding)
  {
    [v5 setSubwordTokenEmbedding:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_subwordTokenChain)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_subwordTokenEmbedding)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  subwordTokenChain = self->_subwordTokenChain;
  if (subwordTokenChain)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALSubwordTokenChain *)subwordTokenChain dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"subword_token_chain"];
  }

  subwordTokenEmbedding = self->_subwordTokenEmbedding;
  if (subwordTokenEmbedding)
  {
    dictionaryRepresentation2 = [(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *)subwordTokenEmbedding dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"subword_token_embedding"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse;
  v4 = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end