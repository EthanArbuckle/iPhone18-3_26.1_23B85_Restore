@interface PLPersistentHistoryMarkerToken
- (PLPersistentHistoryMarkerToken)initWithToken:(id)a3;
@end

@implementation PLPersistentHistoryMarkerToken

- (PLPersistentHistoryMarkerToken)initWithToken:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLPersistentHistoryMarkerToken;
  v5 = [(PLPersistentHistoryMarkerToken *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    token = v5->_token;
    v5->_token = v6;

    v8 = v5;
  }

  return v5;
}

@end