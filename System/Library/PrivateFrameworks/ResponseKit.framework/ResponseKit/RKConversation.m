@interface RKConversation
- (RKConversation)initWithString:(unint64_t)a3 messages:(id)a4;
@end

@implementation RKConversation

- (RKConversation)initWithString:(unint64_t)a3 messages:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RKConversation;
  v8 = [(RKConversation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_messages, a4);
  }

  return v9;
}

@end