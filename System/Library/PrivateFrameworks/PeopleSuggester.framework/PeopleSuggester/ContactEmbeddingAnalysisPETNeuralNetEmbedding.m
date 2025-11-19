@interface ContactEmbeddingAnalysisPETNeuralNetEmbedding
- (BOOL)isEqual:(id)a3;
- (float)embeddingsAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ContactEmbeddingAnalysisPETNeuralNetEmbedding

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = ContactEmbeddingAnalysisPETNeuralNetEmbedding;
  [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)&v3 dealloc];
}

- (float)embeddingsAtIndex:(unint64_t)a3
{
  p_embeddings = &self->_embeddings;
  count = self->_embeddings.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_embeddings->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ContactEmbeddingAnalysisPETNeuralNetEmbedding;
  v4 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)&v8 description];
  v5 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = PBRepeatedFloatNSArray();
  [v2 setObject:v3 forKey:@"embeddings"];

  return v2;
}

- (void)writeTo:(id)a3
{
  p_embeddings = &self->_embeddings;
  if (self->_embeddings.count)
  {
    v4 = 0;
    do
    {
      v5 = p_embeddings->list[v4];
      PBDataWriterWriteFloatField();
      ++v4;
    }

    while (v4 < p_embeddings->count);
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self embeddingsCount])
  {
    [v7 clearEmbeddings];
    v4 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self embeddingsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self embeddingsAtIndex:i];
        [v7 addEmbeddings:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedFloatCopy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 embeddingsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [v7 embeddingsAtIndex:i];
      [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self addEmbeddings:?];
    }
  }
}

@end