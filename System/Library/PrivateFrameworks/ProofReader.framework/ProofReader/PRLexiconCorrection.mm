@interface PRLexiconCorrection
- (PRLexiconCorrection)initWithTokenID:(unsigned int)d score:(double)score errorType:(unint64_t)type;
@end

@implementation PRLexiconCorrection

- (PRLexiconCorrection)initWithTokenID:(unsigned int)d score:(double)score errorType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = PRLexiconCorrection;
  result = [(PRLexiconCorrection *)&v9 init];
  if (result)
  {
    result->_tokenID = d;
    result->_score = score;
    result->_errorType = type;
  }

  return result;
}

@end