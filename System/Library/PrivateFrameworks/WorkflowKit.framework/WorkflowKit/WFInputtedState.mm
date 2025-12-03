@interface WFInputtedState
- (WFInputtedState)initWithParameterKey:(id)key parameterState:(id)state;
@end

@implementation WFInputtedState

- (WFInputtedState)initWithParameterKey:(id)key parameterState:(id)state
{
  keyCopy = key;
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = WFInputtedState;
  v8 = [(WFInputtedState *)&v13 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    parameterKey = v8->_parameterKey;
    v8->_parameterKey = v9;

    objc_storeStrong(&v8->_parameterState, state);
    v11 = v8;
  }

  return v8;
}

@end