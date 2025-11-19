@interface SBFPasscodeLockTrackerForTransientAssertions
- (BOOL)isAssertionValid:(id)a3;
@end

@implementation SBFPasscodeLockTrackerForTransientAssertions

- (BOOL)isAssertionValid:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBFPasscodeLockTrackerForTransientAssertions;
  v4 = [(SBFAuthenticationAssertionTracker *)&v6 isAssertionValid:a3];
  if (v4)
  {
    LOBYTE(v4) = self->super._mkbAssertion != 0;
  }

  return v4;
}

@end