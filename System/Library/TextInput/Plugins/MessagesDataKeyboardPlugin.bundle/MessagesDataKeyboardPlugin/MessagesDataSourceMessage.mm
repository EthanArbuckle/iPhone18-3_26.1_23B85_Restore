@interface MessagesDataSourceMessage
- (MessagesDataSourceMessage)initWithDate:(id)date recipient:(id)recipient body:(id)body;
- (void)dealloc;
@end

@implementation MessagesDataSourceMessage

- (MessagesDataSourceMessage)initWithDate:(id)date recipient:(id)recipient body:(id)body
{
  v10.receiver = self;
  v10.super_class = MessagesDataSourceMessage;
  v8 = [(MessagesDataSourceMessage *)&v10 init];
  if (v8)
  {
    v8->_dateSent = [date copy];
    v8->_recipient = [recipient copy];
    v8->_body = [body copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MessagesDataSourceMessage;
  [(MessagesDataSourceMessage *)&v3 dealloc];
}

@end