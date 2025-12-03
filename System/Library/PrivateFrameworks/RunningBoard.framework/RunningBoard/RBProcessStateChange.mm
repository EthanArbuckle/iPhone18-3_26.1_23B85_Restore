@interface RBProcessStateChange
- (RBProcessStateChange)initWithIdentity:(id)identity originalState:(id)state updatedState:(id)updatedState;
- (id)changeByApplyingChange:(id)change;
@end

@implementation RBProcessStateChange

- (RBProcessStateChange)initWithIdentity:(id)identity originalState:(id)state updatedState:(id)updatedState
{
  identityCopy = identity;
  stateCopy = state;
  updatedStateCopy = updatedState;
  v15.receiver = self;
  v15.super_class = RBProcessStateChange;
  v12 = [(RBProcessStateChange *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identity, identity);
    objc_storeStrong(&v13->_originalState, state);
    objc_storeStrong(&v13->_updatedState, updatedState);
  }

  return v13;
}

- (id)changeByApplyingChange:(id)change
{
  changeCopy = change;
  updatedState = [changeCopy updatedState];
  v6 = updatedState;
  originalState = self->_originalState;
  if (originalState == updatedState || updatedState && originalState && ([changeCopy updatedState], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[RBProcessState isEqual:](originalState, "isEqual:", v8), v8, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [[RBProcessStateChange alloc] initWithIdentity:self->_identity originalState:self->_originalState updatedState:v6];
  }

  return v10;
}

@end