@interface PLMediaAnalysisEmbedding
- (PLMediaAnalysisEmbedding)initWithMADEmbedding:(id)a3;
@end

@implementation PLMediaAnalysisEmbedding

- (PLMediaAnalysisEmbedding)initWithMADEmbedding:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLMediaAnalysisEmbedding;
  v6 = [(PLMediaAnalysisEmbedding *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_madEmbedding, a3);
  }

  return v7;
}

@end