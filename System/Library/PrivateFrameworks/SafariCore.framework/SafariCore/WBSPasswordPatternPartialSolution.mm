@interface WBSPasswordPatternPartialSolution
- (WBSPasswordPatternPartialSolution)initWithPatternMatch:(id)a3 guessesRequiredWithoutPatternCountPenalty:(double)a4 withPatternCountPenalty:(double)a5;
@end

@implementation WBSPasswordPatternPartialSolution

- (WBSPasswordPatternPartialSolution)initWithPatternMatch:(id)a3 guessesRequiredWithoutPatternCountPenalty:(double)a4 withPatternCountPenalty:(double)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = WBSPasswordPatternPartialSolution;
  v10 = [(WBSPasswordPatternPartialSolution *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_patternMatch, a3);
    v11->_guessesRequiredWithoutPatternCountPenalty = a4;
    v11->_guessesRequiredWithPatternCountPenalty = a5;
    v12 = v11;
  }

  return v11;
}

@end