@interface PLPersistentHistoryMarkerToken
- (PLPersistentHistoryMarkerToken)initWithToken:(id)token;
@end

@implementation PLPersistentHistoryMarkerToken

- (PLPersistentHistoryMarkerToken)initWithToken:(id)token
{
  tokenCopy = token;
  v10.receiver = self;
  v10.super_class = PLPersistentHistoryMarkerToken;
  v5 = [(PLPersistentHistoryMarkerToken *)&v10 init];
  if (v5)
  {
    v6 = [tokenCopy copy];
    token = v5->_token;
    v5->_token = v6;

    v8 = v5;
  }

  return v5;
}

@end