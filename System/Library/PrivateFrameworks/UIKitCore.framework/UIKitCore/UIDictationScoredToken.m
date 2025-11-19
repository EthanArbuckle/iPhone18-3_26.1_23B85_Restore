@interface UIDictationScoredToken
- (BOOL)isEqual:(id)a3;
- (UIDictationScoredToken)initWithCoder:(id)a3;
- (UIDictationScoredToken)initWithText:(id)a3 removeSpaceBefore:(BOOL)a4 removeSpaceAfter:(BOOL)a5 confidenceScore:(double)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDictationScoredToken

- (UIDictationScoredToken)initWithText:(id)a3 removeSpaceBefore:(BOOL)a4 removeSpaceAfter:(BOOL)a5 confidenceScore:(double)a6
{
  v11.receiver = self;
  v11.super_class = UIDictationScoredToken;
  v7 = [(UIDictationToken *)&v11 initWithText:a3 removeSpaceBefore:a4 removeSpaceAfter:a5];
  v8 = v7;
  if (v7)
  {
    v7->_confidenceScore = a6;
    v9 = v7;
  }

  return v8;
}

- (UIDictationScoredToken)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIDictationScoredToken;
  v5 = [(UIDictationToken *)&v9 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"confidenceScore"];
    v5->_confidenceScore = v6;
    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIDictationScoredToken;
  v4 = a3;
  [(UIDictationToken *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"confidenceScore" forKey:{self->_confidenceScore, v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIDictationScoredToken;
  if ([(UIDictationToken *)&v9 isEqual:v4])
  {
    confidenceScore = self->_confidenceScore;
    [v4 confidenceScore];
    v7 = vabdd_f64(confidenceScore, v6) < 0.000000001;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end