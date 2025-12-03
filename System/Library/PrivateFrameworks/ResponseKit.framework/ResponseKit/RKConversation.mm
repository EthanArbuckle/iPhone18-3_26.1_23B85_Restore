@interface RKConversation
- (RKConversation)initWithString:(unint64_t)string messages:(id)messages;
@end

@implementation RKConversation

- (RKConversation)initWithString:(unint64_t)string messages:(id)messages
{
  messagesCopy = messages;
  v11.receiver = self;
  v11.super_class = RKConversation;
  v8 = [(RKConversation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = string;
    objc_storeStrong(&v8->_messages, messages);
  }

  return v9;
}

@end