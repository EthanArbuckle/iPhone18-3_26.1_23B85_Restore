@interface MessagesDataSourceMessage
- (MessagesDataSourceMessage)initWithDate:(id)a3 recipient:(id)a4 body:(id)a5;
- (void)dealloc;
@end

@implementation MessagesDataSourceMessage

- (MessagesDataSourceMessage)initWithDate:(id)a3 recipient:(id)a4 body:(id)a5
{
  v10.receiver = self;
  v10.super_class = MessagesDataSourceMessage;
  v8 = [(MessagesDataSourceMessage *)&v10 init];
  if (v8)
  {
    v8->_dateSent = [a3 copy];
    v8->_recipient = [a4 copy];
    v8->_body = [a5 copy];
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