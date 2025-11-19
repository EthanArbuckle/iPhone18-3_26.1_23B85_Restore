@interface WFHarnessSiriInteraction
- (WFHarnessSiriInteraction)initWithSelector:(id)a3 siriActionRequestClass:(Class)a4 interaction:(id)a5;
@end

@implementation WFHarnessSiriInteraction

- (WFHarnessSiriInteraction)initWithSelector:(id)a3 siriActionRequestClass:(Class)a4 interaction:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (!v11)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFHarnessSiriInteraction.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
  }

  v19.receiver = self;
  v19.super_class = WFHarnessSiriInteraction;
  v12 = [(WFHarnessSiriInteraction *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selector, a3);
    objc_storeStrong(&v13->_siriActionRequestClass, a4);
    v14 = [v11 copy];
    interaction = v13->_interaction;
    v13->_interaction = v14;

    v16 = v13;
  }

  return v13;
}

@end