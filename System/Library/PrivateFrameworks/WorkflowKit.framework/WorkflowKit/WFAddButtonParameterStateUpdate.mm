@interface WFAddButtonParameterStateUpdate
- (WFAddButtonParameterStateUpdate)initWithParameterKey:(id)a3 parameterState:(id)a4;
@end

@implementation WFAddButtonParameterStateUpdate

- (WFAddButtonParameterStateUpdate)initWithParameterKey:(id)a3 parameterState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WFAddButtonParameterStateUpdate;
  v8 = [(WFAddButtonParameterStateUpdate *)&v13 init];
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