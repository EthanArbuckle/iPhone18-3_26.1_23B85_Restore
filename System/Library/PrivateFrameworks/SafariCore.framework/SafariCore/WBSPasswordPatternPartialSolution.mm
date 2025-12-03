@interface WBSPasswordPatternPartialSolution
- (WBSPasswordPatternPartialSolution)initWithPatternMatch:(id)match guessesRequiredWithoutPatternCountPenalty:(double)penalty withPatternCountPenalty:(double)countPenalty;
@end

@implementation WBSPasswordPatternPartialSolution

- (WBSPasswordPatternPartialSolution)initWithPatternMatch:(id)match guessesRequiredWithoutPatternCountPenalty:(double)penalty withPatternCountPenalty:(double)countPenalty
{
  matchCopy = match;
  v14.receiver = self;
  v14.super_class = WBSPasswordPatternPartialSolution;
  v10 = [(WBSPasswordPatternPartialSolution *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_patternMatch, match);
    v11->_guessesRequiredWithoutPatternCountPenalty = penalty;
    v11->_guessesRequiredWithPatternCountPenalty = countPenalty;
    v12 = v11;
  }

  return v11;
}

@end