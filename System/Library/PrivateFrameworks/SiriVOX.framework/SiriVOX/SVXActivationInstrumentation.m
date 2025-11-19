@interface SVXActivationInstrumentation
- (SVXActivationInstrumentation)initWithTurnIdentifier:(id)a3 buttonTimestamp:(unint64_t)a4;
@end

@implementation SVXActivationInstrumentation

- (SVXActivationInstrumentation)initWithTurnIdentifier:(id)a3 buttonTimestamp:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SVXActivationInstrumentation;
  v8 = [(SVXActivationInstrumentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_turnIdentifier, a3);
    v9->_buttonDownTimestamp = a4;
  }

  return v9;
}

@end