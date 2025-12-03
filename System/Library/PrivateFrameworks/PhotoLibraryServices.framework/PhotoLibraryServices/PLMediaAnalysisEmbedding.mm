@interface PLMediaAnalysisEmbedding
- (PLMediaAnalysisEmbedding)initWithMADEmbedding:(id)embedding;
@end

@implementation PLMediaAnalysisEmbedding

- (PLMediaAnalysisEmbedding)initWithMADEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v9.receiver = self;
  v9.super_class = PLMediaAnalysisEmbedding;
  v6 = [(PLMediaAnalysisEmbedding *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_madEmbedding, embedding);
  }

  return v7;
}

@end