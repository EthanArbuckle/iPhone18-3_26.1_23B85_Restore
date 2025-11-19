@interface QOSAlertMessage
- (QOSAlertMessage)initWithTitle:(id)a3 body:(id)a4;
- (id)body;
- (id)title;
@end

@implementation QOSAlertMessage

- (QOSAlertMessage)initWithTitle:(id)a3 body:(id)a4
{
  v12.receiver = self;
  v12.super_class = QOSAlertMessage;
  v5 = a4;
  v6 = a3;
  v7 = [(QOSAlertMessage *)&v12 init];
  v8 = [QOSAlertMessageInternal alloc];
  v9 = [(QOSAlertMessageInternal *)v8 initWithTitle:v6 body:v5, v12.receiver, v12.super_class];

  underlyingObject = v7->_underlyingObject;
  v7->_underlyingObject = v9;

  return v7;
}

- (id)title
{
  v2 = [(QOSAlertMessage *)self underlyingObject];
  v3 = [v2 title];

  return v3;
}

- (id)body
{
  v2 = [(QOSAlertMessage *)self underlyingObject];
  v3 = [v2 body];

  return v3;
}

@end