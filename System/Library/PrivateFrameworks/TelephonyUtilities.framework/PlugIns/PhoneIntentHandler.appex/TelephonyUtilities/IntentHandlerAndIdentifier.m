@interface IntentHandlerAndIdentifier
- (IntentHandlerAndIdentifier)initWithHandler:(id)a3 intentIdentifier:(id)a4;
@end

@implementation IntentHandlerAndIdentifier

- (IntentHandlerAndIdentifier)initWithHandler:(id)a3 intentIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IntentHandlerAndIdentifier;
  v9 = [(IntentHandlerAndIdentifier *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    intentIdentifier = v9->_intentIdentifier;
    v9->_intentIdentifier = v10;

    objc_storeStrong(&v9->_handler, a3);
  }

  return v9;
}

@end