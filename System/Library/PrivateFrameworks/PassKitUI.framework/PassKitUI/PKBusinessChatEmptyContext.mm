@interface PKBusinessChatEmptyContext
- (PKBusinessChatEmptyContext)initWithBusinessIdentifier:(id)a3;
@end

@implementation PKBusinessChatEmptyContext

- (PKBusinessChatEmptyContext)initWithBusinessIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKBusinessChatEmptyContext;
  v6 = [(PKBusinessChatEmptyContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessIdentifier, a3);
  }

  return v7;
}

@end