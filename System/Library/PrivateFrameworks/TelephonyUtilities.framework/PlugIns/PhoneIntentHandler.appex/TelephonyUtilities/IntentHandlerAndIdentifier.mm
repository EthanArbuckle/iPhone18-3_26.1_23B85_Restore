@interface IntentHandlerAndIdentifier
- (IntentHandlerAndIdentifier)initWithHandler:(id)handler intentIdentifier:(id)identifier;
@end

@implementation IntentHandlerAndIdentifier

- (IntentHandlerAndIdentifier)initWithHandler:(id)handler intentIdentifier:(id)identifier
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = IntentHandlerAndIdentifier;
  v9 = [(IntentHandlerAndIdentifier *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    intentIdentifier = v9->_intentIdentifier;
    v9->_intentIdentifier = v10;

    objc_storeStrong(&v9->_handler, handler);
  }

  return v9;
}

@end