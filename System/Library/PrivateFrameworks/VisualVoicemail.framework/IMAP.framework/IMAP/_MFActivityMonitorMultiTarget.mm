@interface _MFActivityMonitorMultiTarget
- (BOOL)addActivityTarget:(id)target;
- (BOOL)removeActivityTarget:(id)target;
- (id)displayName;
- (void)dealloc;
@end

@implementation _MFActivityMonitorMultiTarget

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFActivityMonitorMultiTarget;
  [(_MFActivityMonitorMultiTarget *)&v2 dealloc];
}

- (BOOL)addActivityTarget:(id)target
{
  targetCopy = target;
  allTargets = self->_allTargets;
  if (!allTargets)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_allTargets;
    self->_allTargets = v6;

    allTargets = self->_allTargets;
  }

  v8 = [(NSMutableSet *)allTargets containsObject:targetCopy];
  if ((v8 & 1) == 0)
  {
    [(NSMutableSet *)self->_allTargets addObject:targetCopy];
  }

  return v8 ^ 1;
}

- (BOOL)removeActivityTarget:(id)target
{
  targetCopy = target;
  allTargets = self->_allTargets;
  if (allTargets && [(NSMutableSet *)allTargets containsObject:targetCopy])
  {
    [(NSMutableSet *)self->_allTargets removeObject:targetCopy];
    if (self->_primaryTarget == targetCopy)
    {
      [(_MFActivityMonitorMultiTarget *)self setPrimaryTarget:0];
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)displayName
{
  primaryTarget = self->_primaryTarget;
  if (primaryTarget)
  {
    if (objc_opt_respondsToSelector())
    {
      primaryTarget = [self->_primaryTarget displayName];
    }

    else
    {
      primaryTarget = 0;
    }
  }

  return primaryTarget;
}

@end