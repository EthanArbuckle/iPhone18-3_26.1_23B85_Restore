@interface SBSceneLayoutStateProvider
- (SBSceneLayoutStateProvider)initWithLayoutState:(id)state;
@end

@implementation SBSceneLayoutStateProvider

- (SBSceneLayoutStateProvider)initWithLayoutState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = SBSceneLayoutStateProvider;
  v6 = [(SBSceneLayoutStateProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutState, state);
  }

  return v7;
}

@end