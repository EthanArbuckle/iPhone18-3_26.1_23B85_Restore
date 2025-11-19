@interface SBSceneLayoutSynchronizeTransitionTransaction
- (SBSceneLayoutSynchronizeTransitionTransaction)initWithDebugName:(id)a3;
- (id)_graphNodeDebugName;
@end

@implementation SBSceneLayoutSynchronizeTransitionTransaction

- (SBSceneLayoutSynchronizeTransitionTransaction)initWithDebugName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSceneLayoutSynchronizeTransitionTransaction;
  v5 = [(SBSceneLayoutSynchronizeTransitionTransaction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    debugName = v5->_debugName;
    v5->_debugName = v6;

    [(SBSceneLayoutSynchronizeTransitionTransaction *)v5 addMilestone:*MEMORY[0x277D0AA58]];
  }

  return v5;
}

- (id)_graphNodeDebugName
{
  debugName = self->_debugName;
  if (debugName)
  {
    v3 = debugName;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBSceneLayoutSynchronizeTransitionTransaction;
    v3 = [(SBSceneLayoutSynchronizeTransitionTransaction *)&v5 _graphNodeDebugName];
  }

  return v3;
}

@end