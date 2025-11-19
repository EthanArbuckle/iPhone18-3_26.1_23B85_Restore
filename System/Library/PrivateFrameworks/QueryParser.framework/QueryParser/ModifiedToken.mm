@interface ModifiedToken
- (ModifiedToken)initWithToken:(id)a3 tokenRange:(_NSRange)a4 argIdsForToken:(id)a5 argScoresForToken:(id)a6;
- (_NSRange)tokenRange;
@end

@implementation ModifiedToken

- (ModifiedToken)initWithToken:(id)a3 tokenRange:(_NSRange)a4 argIdsForToken:(id)a5 argScoresForToken:(id)a6
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ModifiedToken;
  v15 = [(ModifiedToken *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_token, a3);
    v16->_tokenRange.location = location;
    v16->_tokenRange.length = length;
    objc_storeStrong(&v16->_argIdsForToken, a5);
    objc_storeStrong(&v16->_argScoresForToken, a6);
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