@interface ContactEmbeddingAnalysisPETNeuralNetEmbedding
- (BOOL)isEqual:(id)equal;
- (float)embeddingsAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ContactEmbeddingAnalysisPETNeuralNetEmbedding

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = ContactEmbeddingAnalysisPETNeuralNetEmbedding;
  [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)&v3 dealloc];
}

- (float)embeddingsAtIndex:(unint64_t)index
{
  p_embeddings = &self->_embeddings;
  count = self->_embeddings.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_embeddings->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ContactEmbeddingAnalysisPETNeuralNetEmbedding;
  v4 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)&v8 description];
  dictionaryRepresentation = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = PBRepeatedFloatNSArray();
  [dictionary setObject:v3 forKey:@"embeddings"];

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self embeddingsCount])
  {
    [toCopy clearEmbeddings];
    embeddingsCount = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self embeddingsCount];
    if (embeddingsCount)
    {
      v5 = embeddingsCount;
      for (i = 0; i != v5; ++i)
      {
        [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self embeddingsAtIndex:i];
        [toCopy addEmbeddings:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedFloatCopy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  embeddingsCount = [fromCopy embeddingsCount];
  if (embeddingsCount)
  {
    v5 = embeddingsCount;
    for (i = 0; i != v5; ++i)
    {
      [fromCopy embeddingsAtIndex:i];
      [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self addEmbeddings:?];
    }
  }
}

@end