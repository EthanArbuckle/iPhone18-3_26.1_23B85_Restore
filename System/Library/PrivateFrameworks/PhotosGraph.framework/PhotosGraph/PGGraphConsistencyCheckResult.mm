@interface PGGraphConsistencyCheckResult
- (PGGraphConsistencyCheckResult)init;
- (id)description;
@end

@implementation PGGraphConsistencyCheckResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphConsistencyCheckResult;
  v4 = [(PGGraphConsistencyCheckResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - Overall similarity: %.2f\nResults per domain:\n%@", v4, *&self->_overallSimilarityScore, self->_similarityScoreByDomain];

  return v5;
}

- (PGGraphConsistencyCheckResult)init
{
  v7.receiver = self;
  v7.super_class = PGGraphConsistencyCheckResult;
  v2 = [(PGGraphConsistencyCheckResult *)&v7 init];
  v3 = v2;
  if (v2)
  {
    similarityScoreByDomain = v2->_similarityScoreByDomain;
    v5 = MEMORY[0x277CBEC10];
    v2->_overallSimilarityScore = 0.0;
    v2->_similarityScoreByDomain = v5;
  }

  return v3;
}

@end