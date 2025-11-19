@interface PGMeaningfulEventMatchingResult
- (PGMeaningfulEventMatchingResult)initWithIsMatching:(BOOL)a3 score:(double)a4 isReliable:(BOOL)a5 requiredCriteria:(id)a6;
- (id)description;
@end

@implementation PGMeaningfulEventMatchingResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGMeaningfulEventMatchingResult;
  v4 = [(PGMeaningfulEventMatchingResult *)&v10 description];
  v5 = v4;
  v6 = @"NO";
  if (self->_isMatching)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_isReliable)
  {
    v6 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"%@ isMatching %@, score %.2f, isReliable %@, criteria %@", v4, v7, *&self->_score, v6, self->_requiredCriteria];

  return v8;
}

- (PGMeaningfulEventMatchingResult)initWithIsMatching:(BOOL)a3 score:(double)a4 isReliable:(BOOL)a5 requiredCriteria:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PGMeaningfulEventMatchingResult;
  v12 = [(PGMeaningfulEventMatchingResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_isMatching = a3;
    v12->_score = a4;
    v12->_isReliable = a5;
    objc_storeStrong(&v12->_requiredCriteria, a6);
  }

  return v13;
}

@end