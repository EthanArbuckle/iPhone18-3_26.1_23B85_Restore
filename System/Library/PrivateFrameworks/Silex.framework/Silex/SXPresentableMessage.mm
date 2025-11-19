@interface SXPresentableMessage
- (SXPresentableMessage)initWithRecipient:(id)a3 message:(id)a4;
@end

@implementation SXPresentableMessage

- (SXPresentableMessage)initWithRecipient:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SXPresentableMessage;
  v8 = [(SXPresentableMessage *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    recipient = v8->_recipient;
    v8->_recipient = v9;

    v11 = [v7 copy];
    message = v8->_message;
    v8->_message = v11;
  }

  return v8;
}

@end