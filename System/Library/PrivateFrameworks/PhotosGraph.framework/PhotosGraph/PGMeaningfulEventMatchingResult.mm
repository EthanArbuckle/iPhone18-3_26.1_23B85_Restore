@interface PGMeaningfulEventMatchingResult
- (PGMeaningfulEventMatchingResult)initWithIsMatching:(BOOL)matching score:(double)score isReliable:(BOOL)reliable requiredCriteria:(id)criteria;
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

- (PGMeaningfulEventMatchingResult)initWithIsMatching:(BOOL)matching score:(double)score isReliable:(BOOL)reliable requiredCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v15.receiver = self;
  v15.super_class = PGMeaningfulEventMatchingResult;
  v12 = [(PGMeaningfulEventMatchingResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_isMatching = matching;
    v12->_score = score;
    v12->_isReliable = reliable;
    objc_storeStrong(&v12->_requiredCriteria, criteria);
  }

  return v13;
}

@end