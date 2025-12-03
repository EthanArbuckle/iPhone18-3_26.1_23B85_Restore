@interface PKBusinessChatEmptyContext
- (PKBusinessChatEmptyContext)initWithBusinessIdentifier:(id)identifier;
@end

@implementation PKBusinessChatEmptyContext

- (PKBusinessChatEmptyContext)initWithBusinessIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKBusinessChatEmptyContext;
  v6 = [(PKBusinessChatEmptyContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessIdentifier, identifier);
  }

  return v7;
}

@end