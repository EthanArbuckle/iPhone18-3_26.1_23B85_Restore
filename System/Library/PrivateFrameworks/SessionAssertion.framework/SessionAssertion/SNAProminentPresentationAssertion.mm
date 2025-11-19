@interface SNAProminentPresentationAssertion
- (SNAProminentPresentationAssertion)initWithExplanation:(id)a3 sessionIdentifier:(id)a4 duration:(double)a5 invalidationHandler:(id)a6;
@end

@implementation SNAProminentPresentationAssertion

- (SNAProminentPresentationAssertion)initWithExplanation:(id)a3 sessionIdentifier:(id)a4 duration:(double)a5 invalidationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
    v21 = v12;
    v15 = v13;
    v20 = v15;
    v16 = [(ProminentPresentationAssertion *)v14 initWithExplanation:v10 activityIdentifier:v11 duration:v19 invalidationHandler:a5];
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