@interface SBFPasscodeLockTrackerForTransientAssertions
- (BOOL)isAssertionValid:(id)valid;
@end

@implementation SBFPasscodeLockTrackerForTransientAssertions

- (BOOL)isAssertionValid:(id)valid
{
  v6.receiver = self;
  v6.super_class = SBFPasscodeLockTrackerForTransientAssertions;
  v4 = [(SBFAuthenticationAssertionTracker *)&v6 isAssertionValid:valid];
  if (v4)
  {
    LOBYTE(v4) = self->super._mkbAssertion != 0;
  }

  return v4;
}

@end