@interface SBSceneLayoutSynchronizeTransitionTransaction
- (SBSceneLayoutSynchronizeTransitionTransaction)initWithDebugName:(id)name;
- (id)_graphNodeDebugName;
@end

@implementation SBSceneLayoutSynchronizeTransitionTransaction

- (SBSceneLayoutSynchronizeTransitionTransaction)initWithDebugName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SBSceneLayoutSynchronizeTransitionTransaction;
  v5 = [(SBSceneLayoutSynchronizeTransitionTransaction *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
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
    _graphNodeDebugName = debugName;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBSceneLayoutSynchronizeTransitionTransaction;
    _graphNodeDebugName = [(SBSceneLayoutSynchronizeTransitionTransaction *)&v5 _graphNodeDebugName];
  }

  return _graphNodeDebugName;
}

@end