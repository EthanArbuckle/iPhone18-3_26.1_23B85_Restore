@interface SBAssistantPresentationObservationToken
- (SBAssistantPresentationObservationToken)initWithAssistantController:(id)a3 scene:(id)a4;
- (int64_t)state;
- (void)assistantDidAppear:(id)a3 windowScene:(id)a4;
- (void)assistantDidDisappear:(id)a3 windowScene:(id)a4;
- (void)assistantWillAppear:(id)a3 windowScene:(id)a4;
- (void)assistantWillDisappear:(id)a3 windowScene:(id)a4;
- (void)dealloc;
@end

@implementation SBAssistantPresentationObservationToken

- (SBAssistantPresentationObservationToken)initWithAssistantController:(id)a3 scene:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBAssistantPresentationObservationToken;
  v8 = [(SBPresentationObservationToken *)&v11 initWithScene:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assistantController, a3);
    [(SBAssistantController *)v9->_assistantController addObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  [(SBAssistantController *)self->_assistantController removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBAssistantPresentationObservationToken;
  [(SBAssistantPresentationObservationToken *)&v3 dealloc];
}

- (int64_t)state
{
  v3 = [(SBAssistantController *)self->_assistantController isVisible];
  v4 = [(SBPresentationObservationToken *)self windowScene];
  if (v4)
  {
    v3 = [(SBAssistantController *)self->_assistantController isVisibleInWindowScene:v4];
  }

  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)assistantWillAppear:(id)a3 windowScene:(id)a4
{
  v5 = a4;
  v7 = [(SBPresentationObservationToken *)self windowScene];

  v6 = v7;
  if (!v7 || v7 == v5)
  {
    [(SBPresentationObservationToken *)self willPresent];
    v6 = v7;
  }
}

- (void)assistantDidAppear:(id)a3 windowScene:(id)a4
{
  v5 = a4;
  v7 = [(SBPresentationObservationToken *)self windowScene];

  v6 = v7;
  if (!v7 || v7 == v5)
  {
    [(SBPresentationObservationToken *)self didPresent];
    v6 = v7;
  }
}

- (void)assistantWillDisappear:(id)a3 windowScene:(id)a4
{
  v5 = a4;
  v7 = [(SBPresentationObservationToken *)self windowScene];

  v6 = v7;
  if (!v7 || v7 == v5)
  {
    [(SBPresentationObservationToken *)self willDismiss];
    v6 = v7;
  }
}

- (void)assistantDidDisappear:(id)a3 windowScene:(id)a4
{
  v5 = a4;
  v7 = [(SBPresentationObservationToken *)self windowScene];

  v6 = v7;
  if (!v7 || v7 == v5)
  {
    [(SBPresentationObservationToken *)self didDismiss];
    v6 = v7;
  }
}

@end