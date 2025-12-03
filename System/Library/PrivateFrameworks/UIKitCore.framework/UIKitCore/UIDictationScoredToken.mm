@interface UIDictationScoredToken
- (BOOL)isEqual:(id)equal;
- (UIDictationScoredToken)initWithCoder:(id)coder;
- (UIDictationScoredToken)initWithText:(id)text removeSpaceBefore:(BOOL)before removeSpaceAfter:(BOOL)after confidenceScore:(double)score;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDictationScoredToken

- (UIDictationScoredToken)initWithText:(id)text removeSpaceBefore:(BOOL)before removeSpaceAfter:(BOOL)after confidenceScore:(double)score
{
  v11.receiver = self;
  v11.super_class = UIDictationScoredToken;
  v7 = [(UIDictationToken *)&v11 initWithText:text removeSpaceBefore:before removeSpaceAfter:after];
  v8 = v7;
  if (v7)
  {
    v7->_confidenceScore = score;
    v9 = v7;
  }

  return v8;
}

- (UIDictationScoredToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIDictationScoredToken;
  v5 = [(UIDictationToken *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"confidenceScore"];
    v5->_confidenceScore = v6;
    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIDictationScoredToken;
  coderCopy = coder;
  [(UIDictationToken *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"confidenceScore" forKey:{self->_confidenceScore, v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = UIDictationScoredToken;
  if ([(UIDictationToken *)&v9 isEqual:equalCopy])
  {
    confidenceScore = self->_confidenceScore;
    [equalCopy confidenceScore];
    v7 = vabdd_f64(confidenceScore, v6) < 0.000000001;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end