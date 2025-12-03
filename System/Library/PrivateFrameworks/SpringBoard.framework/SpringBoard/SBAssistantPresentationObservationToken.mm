@interface SBAssistantPresentationObservationToken
- (SBAssistantPresentationObservationToken)initWithAssistantController:(id)controller scene:(id)scene;
- (int64_t)state;
- (void)assistantDidAppear:(id)appear windowScene:(id)scene;
- (void)assistantDidDisappear:(id)disappear windowScene:(id)scene;
- (void)assistantWillAppear:(id)appear windowScene:(id)scene;
- (void)assistantWillDisappear:(id)disappear windowScene:(id)scene;
- (void)dealloc;
@end

@implementation SBAssistantPresentationObservationToken

- (SBAssistantPresentationObservationToken)initWithAssistantController:(id)controller scene:(id)scene
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SBAssistantPresentationObservationToken;
  v8 = [(SBPresentationObservationToken *)&v11 initWithScene:scene];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assistantController, controller);
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
  isVisible = [(SBAssistantController *)self->_assistantController isVisible];
  windowScene = [(SBPresentationObservationToken *)self windowScene];
  if (windowScene)
  {
    isVisible = [(SBAssistantController *)self->_assistantController isVisibleInWindowScene:windowScene];
  }

  if (isVisible)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)assistantWillAppear:(id)appear windowScene:(id)scene
{
  sceneCopy = scene;
  windowScene = [(SBPresentationObservationToken *)self windowScene];

  v6 = windowScene;
  if (!windowScene || windowScene == sceneCopy)
  {
    [(SBPresentationObservationToken *)self willPresent];
    v6 = windowScene;
  }
}

- (void)assistantDidAppear:(id)appear windowScene:(id)scene
{
  sceneCopy = scene;
  windowScene = [(SBPresentationObservationToken *)self windowScene];

  v6 = windowScene;
  if (!windowScene || windowScene == sceneCopy)
  {
    [(SBPresentationObservationToken *)self didPresent];
    v6 = windowScene;
  }
}

- (void)assistantWillDisappear:(id)disappear windowScene:(id)scene
{
  sceneCopy = scene;
  windowScene = [(SBPresentationObservationToken *)self windowScene];

  v6 = windowScene;
  if (!windowScene || windowScene == sceneCopy)
  {
    [(SBPresentationObservationToken *)self willDismiss];
    v6 = windowScene;
  }
}

- (void)assistantDidDisappear:(id)disappear windowScene:(id)scene
{
  sceneCopy = scene;
  windowScene = [(SBPresentationObservationToken *)self windowScene];

  v6 = windowScene;
  if (!windowScene || windowScene == sceneCopy)
  {
    [(SBPresentationObservationToken *)self didDismiss];
    v6 = windowScene;
  }
}

@end