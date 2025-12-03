@interface WFHarnessSiriInteraction
- (WFHarnessSiriInteraction)initWithSelector:(id)selector siriActionRequestClass:(Class)class interaction:(id)interaction;
@end

@implementation WFHarnessSiriInteraction

- (WFHarnessSiriInteraction)initWithSelector:(id)selector siriActionRequestClass:(Class)class interaction:(id)interaction
{
  selectorCopy = selector;
  interactionCopy = interaction;
  if (!interactionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessSiriInteraction.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
  }

  v19.receiver = self;
  v19.super_class = WFHarnessSiriInteraction;
  v12 = [(WFHarnessSiriInteraction *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selector, selector);
    objc_storeStrong(&v13->_siriActionRequestClass, class);
    v14 = [interactionCopy copy];
    interaction = v13->_interaction;
    v13->_interaction = v14;

    v16 = v13;
  }

  return v13;
}

@end