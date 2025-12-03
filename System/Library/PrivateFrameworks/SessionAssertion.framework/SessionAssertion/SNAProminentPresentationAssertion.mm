@interface SNAProminentPresentationAssertion
- (SNAProminentPresentationAssertion)initWithExplanation:(id)explanation sessionIdentifier:(id)identifier duration:(double)duration invalidationHandler:(id)handler;
@end

@implementation SNAProminentPresentationAssertion

- (SNAProminentPresentationAssertion)initWithExplanation:(id)explanation sessionIdentifier:(id)identifier duration:(double)duration invalidationHandler:(id)handler
{
  explanationCopy = explanation;
  identifierCopy = identifier;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = SNAProminentPresentationAssertion;
  v13 = [(SNAProminentPresentationAssertion *)&v22 init];
  if (v13)
  {
    v14 = [_TtC16SessionAssertion30ProminentPresentationAssertion alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __104__SNAProminentPresentationAssertion_initWithExplanation_sessionIdentifier_duration_invalidationHandler___block_invoke;
    v19[3] = &unk_279B9F620;
    v21 = handlerCopy;
    v15 = v13;
    v20 = v15;
    v16 = [(ProminentPresentationAssertion *)v14 initWithExplanation:explanationCopy activityIdentifier:identifierCopy duration:v19 invalidationHandler:duration];
    assertion = v15->_assertion;
    v15->_assertion = v16;
  }

  return v13;
}

uint64_t __104__SNAProminentPresentationAssertion_initWithExplanation_sessionIdentifier_duration_invalidationHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end