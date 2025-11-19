@interface PRLexiconCorrection
- (PRLexiconCorrection)initWithTokenID:(unsigned int)a3 score:(double)a4 errorType:(unint64_t)a5;
@end

@implementation PRLexiconCorrection

- (PRLexiconCorrection)initWithTokenID:(unsigned int)a3 score:(double)a4 errorType:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = PRLexiconCorrection;
  result = [(PRLexiconCorrection *)&v9 init];
  if (result)
  {
    result->_tokenID = a3;
    result->_score = a4;
    result->_errorType = a5;
  }

  return result;
}

@end