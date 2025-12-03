@interface QOSAlertMessage
- (QOSAlertMessage)initWithTitle:(id)title body:(id)body;
- (id)body;
- (id)title;
@end

@implementation QOSAlertMessage

- (QOSAlertMessage)initWithTitle:(id)title body:(id)body
{
  v12.receiver = self;
  v12.super_class = QOSAlertMessage;
  bodyCopy = body;
  titleCopy = title;
  v7 = [(QOSAlertMessage *)&v12 init];
  v8 = [QOSAlertMessageInternal alloc];
  v9 = [(QOSAlertMessageInternal *)v8 initWithTitle:titleCopy body:bodyCopy, v12.receiver, v12.super_class];

  underlyingObject = v7->_underlyingObject;
  v7->_underlyingObject = v9;

  return v7;
}

- (id)title
{
  underlyingObject = [(QOSAlertMessage *)self underlyingObject];
  title = [underlyingObject title];

  return title;
}

- (id)body
{
  underlyingObject = [(QOSAlertMessage *)self underlyingObject];
  body = [underlyingObject body];

  return body;
}

@end