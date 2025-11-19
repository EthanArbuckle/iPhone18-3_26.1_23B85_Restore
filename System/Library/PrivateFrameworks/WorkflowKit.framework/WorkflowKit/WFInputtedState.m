@interface WFInputtedState
- (WFInputtedState)initWithParameterKey:(id)a3 parameterState:(id)a4;
@end

@implementation WFInputtedState

- (WFInputtedState)initWithParameterKey:(id)a3 parameterState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WFInputtedState;
  v8 = [(WFInputtedState *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    parameterKey = v8->_parameterKey;
    v8->_parameterKey = v9;

    objc_storeStrong(&v8->_parameterState, a4);
    v11 = v8;
  }

  return v8;
}

@end