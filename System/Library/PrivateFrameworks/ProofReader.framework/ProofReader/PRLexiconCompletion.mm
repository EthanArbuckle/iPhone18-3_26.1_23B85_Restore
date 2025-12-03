@interface PRLexiconCompletion
- (PRLexiconCompletion)initWithTokenID:(unsigned int)d score:(double)score;
@end

@implementation PRLexiconCompletion

- (PRLexiconCompletion)initWithTokenID:(unsigned int)d score:(double)score
{
  v7.receiver = self;
  v7.super_class = PRLexiconCompletion;
  result = [(PRLexiconCompletion *)&v7 init];
  if (result)
  {
    result->_tokenID = d;
    result->_score = score;
  }

  return result;
}

@end