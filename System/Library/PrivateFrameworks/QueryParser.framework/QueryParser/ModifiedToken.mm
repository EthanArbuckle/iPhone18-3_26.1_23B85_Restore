@interface ModifiedToken
- (ModifiedToken)initWithToken:(id)token tokenRange:(_NSRange)range argIdsForToken:(id)forToken argScoresForToken:(id)scoresForToken;
- (_NSRange)tokenRange;
@end

@implementation ModifiedToken

- (ModifiedToken)initWithToken:(id)token tokenRange:(_NSRange)range argIdsForToken:(id)forToken argScoresForToken:(id)scoresForToken
{
  length = range.length;
  location = range.location;
  tokenCopy = token;
  forTokenCopy = forToken;
  scoresForTokenCopy = scoresForToken;
  v18.receiver = self;
  v18.super_class = ModifiedToken;
  v15 = [(ModifiedToken *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_token, token);
    v16->_tokenRange.location = location;
    v16->_tokenRange.length = length;
    objc_storeStrong(&v16->_argIdsForToken, forToken);
    objc_storeStrong(&v16->_argScoresForToken, scoresForToken);
  }

  return v16;
}

- (_NSRange)tokenRange
{
  length = self->_tokenRange.length;
  location = self->_tokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end