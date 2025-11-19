@interface SBContinuityDisplaySystemGestureManager
- (BOOL)_shouldEnableSystemGestureWithType:(unint64_t)a3;
- (SBContinuityDisplaySystemGestureManager)initWithDisplayIdentity:(id)a3;
@end

@implementation SBContinuityDisplaySystemGestureManager

- (SBContinuityDisplaySystemGestureManager)initWithDisplayIdentity:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBContinuityDisplaySystemGestureManager *)a2 initWithDisplayIdentity:?];
  }

  v10.receiver = self;
  v10.super_class = SBContinuityDisplaySystemGestureManager;
  v6 = [(SBSystemGestureManager *)&v10 _initWithDisplayIdentity:v5];
  if (v6)
  {
    v7 = objc_alloc_init(SBFailingSystemGestureRecognizer);
    minimumViableGestureRecognizer = v6->_minimumViableGestureRecognizer;
    v6->_minimumViableGestureRecognizer = &v7->super;

    [(UIGestureRecognizer *)v6->_minimumViableGestureRecognizer setName:@"continuity.minimum-viable"];
    [(SBSystemGestureManager *)v6 addGestureRecognizer:v6->_minimumViableGestureRecognizer withType:144];
  }

  return v6;
}

- (BOOL)_shouldEnableSystemGestureWithType:(unint64_t)a3
{
  v3 = a3 - 99;
  if (a3 - 99 > 0x2D)
  {
    return 0;
  }

  if (((1 << v3) & 0x200000000039) != 0)
  {
    return 1;
  }

  if (((1 << v3) & 0x3000000000) != 0)
  {
    return SBUIIsSystemApertureEnabled();
  }

  else
  {
    return 0;
  }
}

- (void)initWithDisplayIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuityDisplaySystemGestureManager.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"displayIdentity"}];
}

@end