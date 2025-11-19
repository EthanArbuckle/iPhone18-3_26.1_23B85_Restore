@interface PRLexiconCompletion
- (PRLexiconCompletion)initWithTokenID:(unsigned int)a3 score:(double)a4;
@end

@implementation PRLexiconCompletion

- (PRLexiconCompletion)initWithTokenID:(unsigned int)a3 score:(double)a4
{
  v7.receiver = self;
  v7.super_class = PRLexiconCompletion;
  result = [(PRLexiconCompletion *)&v7 init];
  if (result)
  {
    result->_tokenID = a3;
    result->_score = a4;
  }

  return result;
}

@end