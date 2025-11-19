@interface SBSceneRenderingEnvironmentParticipant
- (SBSceneRenderingEnvironmentParticipant)initWithRenderingEnvironmentIdentifier:(id)a3 assertion:(id)a4;
- (void)invalidate;
@end

@implementation SBSceneRenderingEnvironmentParticipant

- (SBSceneRenderingEnvironmentParticipant)initWithRenderingEnvironmentIdentifier:(id)a3 assertion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBSceneRenderingEnvironmentParticipant;
  v8 = [(SBSceneRenderingEnvironmentParticipant *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assertion, a4);
    v10 = [v6 copy];
    renderingEnvironmentIdentifier = v9->_renderingEnvironmentIdentifier;
    v9->_renderingEnvironmentIdentifier = v10;
  }

  return v9;
}

- (void)invalidate
{
  [(BSInvalidatable *)self->_assertion invalidate];
  assertion = self->_assertion;
  self->_assertion = 0;
}

@end