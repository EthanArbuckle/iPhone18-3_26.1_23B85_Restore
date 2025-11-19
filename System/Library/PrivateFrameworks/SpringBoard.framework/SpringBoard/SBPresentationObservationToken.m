@interface SBPresentationObservationToken
- (SBPresentationObservationToken)initWithScene:(id)a3;
- (SBWindowScene)windowScene;
- (void)didDismiss;
- (void)didPresent;
- (void)invalidate;
- (void)willDismiss;
- (void)willPresent;
@end

@implementation SBPresentationObservationToken

- (SBPresentationObservationToken)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBPresentationObservationToken;
  v5 = [(SBPresentationObservationToken *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
  }

  return v6;
}

- (void)willPresent
{
  v3 = MEMORY[0x223D6F7F0](self->_willPresentHandler, a2);
  if (v3)
  {
    v4 = v3;
    (v3)[2](v3, self);
    v3 = v4;
  }
}

- (void)didPresent
{
  v3 = MEMORY[0x223D6F7F0](self->_didPresentHandler, a2);
  if (v3)
  {
    v4 = v3;
    (v3)[2](v3, self);
    v3 = v4;
  }
}

- (void)willDismiss
{
  v3 = MEMORY[0x223D6F7F0](self->_willDismissHandler, a2);
  if (v3)
  {
    v4 = v3;
    (v3)[2](v3, self);
    v3 = v4;
  }
}

- (void)didDismiss
{
  v3 = MEMORY[0x223D6F7F0](self->_didDismissHandler, a2);
  if (v3)
  {
    v4 = v3;
    (v3)[2](v3, self);
    v3 = v4;
  }
}

- (void)invalidate
{
  willPresentHandler = self->_willPresentHandler;
  self->_willPresentHandler = 0;

  didPresentHandler = self->_didPresentHandler;
  self->_didPresentHandler = 0;

  willDismissHandler = self->_willDismissHandler;
  self->_willDismissHandler = 0;

  didDismissHandler = self->_didDismissHandler;
  self->_didDismissHandler = 0;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end