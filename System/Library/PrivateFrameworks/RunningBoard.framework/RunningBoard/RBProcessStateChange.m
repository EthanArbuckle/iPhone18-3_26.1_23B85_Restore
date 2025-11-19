@interface RBProcessStateChange
- (RBProcessStateChange)initWithIdentity:(id)a3 originalState:(id)a4 updatedState:(id)a5;
- (id)changeByApplyingChange:(id)a3;
@end

@implementation RBProcessStateChange

- (RBProcessStateChange)initWithIdentity:(id)a3 originalState:(id)a4 updatedState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RBProcessStateChange;
  v12 = [(RBProcessStateChange *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identity, a3);
    objc_storeStrong(&v13->_originalState, a4);
    objc_storeStrong(&v13->_updatedState, a5);
  }

  return v13;
}

- (id)changeByApplyingChange:(id)a3
{
  v4 = a3;
  v5 = [v4 updatedState];
  v6 = v5;
  originalState = self->_originalState;
  if (originalState == v5 || v5 && originalState && ([v4 updatedState], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[RBProcessState isEqual:](originalState, "isEqual:", v8), v8, v9))
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