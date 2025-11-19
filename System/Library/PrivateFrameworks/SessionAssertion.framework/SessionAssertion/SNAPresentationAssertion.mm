@interface SNAPresentationAssertion
- (SNAPresentationAssertion)initWithExplanation:(id)a3 sessionIdentifier:(id)a4 presentationState:(unint64_t)a5 invalidationHandler:(id)a6;
@end

@implementation SNAPresentationAssertion

- (SNAPresentationAssertion)initWithExplanation:(id)a3 sessionIdentifier:(id)a4 presentationState:(unint64_t)a5 invalidationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = SNAPresentationAssertion;
  v13 = [(SNAPresentationAssertion *)&v22 init];
  if (v13)
  {
    v14 = [_TtC16SessionAssertion21PresentationAssertion alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __104__SNAPresentationAssertion_initWithExplanation_sessionIdentifier_presentationState_invalidationHandler___block_invoke;
    v19[3] = &unk_279B9F648;
    v21 = v12;
    v15 = v13;
    v20 = v15;
    v16 = [(PresentationAssertion *)v14 initWithExplanation:v10 activityIdentifier:v11 presentationState:a5 invalidationHandler:v19];
    assertion = v15->_assertion;
    v15->_assertion = v16;
  }

  return v13;
}

uint64_t __104__SNAPresentationAssertion_initWithExplanation_sessionIdentifier_presentationState_invalidationHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end