@interface WFHarnessInteraction
- (WFHarnessInteraction)initWithSelector:(id)selector dialogRequestClass:(Class)class interaction:(id)interaction;
@end

@implementation WFHarnessInteraction

- (WFHarnessInteraction)initWithSelector:(id)selector dialogRequestClass:(Class)class interaction:(id)interaction
{
  selectorCopy = selector;
  interactionCopy = interaction;
  if (!interactionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessInteraction.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
  }

  v19.receiver = self;
  v19.super_class = WFHarnessInteraction;
  v12 = [(WFHarnessInteraction *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selector, selector);
    objc_storeStrong(&v13->_dialogRequestClass, class);
    v14 = [interactionCopy copy];
    interaction = v13->_interaction;
    v13->_interaction = v14;

    v16 = v13;
  }

  return v13;
}

@end