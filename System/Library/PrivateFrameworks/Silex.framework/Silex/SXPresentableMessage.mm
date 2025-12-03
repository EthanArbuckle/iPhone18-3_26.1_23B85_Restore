@interface SXPresentableMessage
- (SXPresentableMessage)initWithRecipient:(id)recipient message:(id)message;
@end

@implementation SXPresentableMessage

- (SXPresentableMessage)initWithRecipient:(id)recipient message:(id)message
{
  recipientCopy = recipient;
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = SXPresentableMessage;
  v8 = [(SXPresentableMessage *)&v14 init];
  if (v8)
  {
    v9 = [recipientCopy copy];
    recipient = v8->_recipient;
    v8->_recipient = v9;

    v11 = [messageCopy copy];
    message = v8->_message;
    v8->_message = v11;
  }

  return v8;
}

@end