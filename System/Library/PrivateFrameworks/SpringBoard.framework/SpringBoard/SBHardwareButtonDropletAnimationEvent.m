@interface SBHardwareButtonDropletAnimationEvent
- (SBHardwareButtonDropletAnimationEvent)initWithPreludeToken:(id)a3 zoomUpToken:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBHardwareButtonDropletAnimationEvent

- (SBHardwareButtonDropletAnimationEvent)initWithPreludeToken:(id)a3 zoomUpToken:(id)a4
{
  v8 = a3;
  v9 = a4;
  if ((v8 != 0) != (v9 == 0))
  {
    [SBHardwareButtonDropletAnimationEvent initWithPreludeToken:a2 zoomUpToken:self];
  }

  v13.receiver = self;
  v13.super_class = SBHardwareButtonDropletAnimationEvent;
  v10 = [(SBWindowingModifierActivity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_preludeToken, a3);
    objc_storeStrong(&v11->_zoomUpToken, a4);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBHardwareButtonDropletAnimationEvent alloc];
  preludeToken = self->_preludeToken;
  zoomUpToken = self->_zoomUpToken;

  return [(SBHardwareButtonDropletAnimationEvent *)v4 initWithPreludeToken:preludeToken zoomUpToken:zoomUpToken];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBHardwareButtonDropletAnimationEvent;
  v4 = [(SBSwitcherModifierEvent *)&v8 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_preludeToken withName:@"preludeToken"];
  v6 = [v4 appendObject:self->_zoomUpToken withName:@"zoomUpToken"];

  return v4;
}

- (void)initWithPreludeToken:(uint64_t)a1 zoomUpToken:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHardwareButtonDropletAnimationEvent.m" lineNumber:27 description:@"Must have either preludeToken OR zoomUpToken"];
}

@end