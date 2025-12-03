@interface SVXActivationInstrumentation
- (SVXActivationInstrumentation)initWithTurnIdentifier:(id)identifier buttonTimestamp:(unint64_t)timestamp;
@end

@implementation SVXActivationInstrumentation

- (SVXActivationInstrumentation)initWithTurnIdentifier:(id)identifier buttonTimestamp:(unint64_t)timestamp
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SVXActivationInstrumentation;
  v8 = [(SVXActivationInstrumentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_turnIdentifier, identifier);
    v9->_buttonDownTimestamp = timestamp;
  }

  return v9;
}

@end