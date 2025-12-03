@interface WFAddButtonParameterStateUpdate
- (WFAddButtonParameterStateUpdate)initWithParameterKey:(id)key parameterState:(id)state;
@end

@implementation WFAddButtonParameterStateUpdate

- (WFAddButtonParameterStateUpdate)initWithParameterKey:(id)key parameterState:(id)state
{
  keyCopy = key;
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = WFAddButtonParameterStateUpdate;
  v8 = [(WFAddButtonParameterStateUpdate *)&v13 init];
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