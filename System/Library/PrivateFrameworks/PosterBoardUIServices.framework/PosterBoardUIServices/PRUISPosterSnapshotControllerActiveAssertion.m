@interface PRUISPosterSnapshotControllerActiveAssertion
- (void)dealloc;
@end

@implementation PRUISPosterSnapshotControllerActiveAssertion

- (void)dealloc
{
  [(BSSimpleAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRUISPosterSnapshotControllerActiveAssertion;
  [(BSSimpleAssertion *)&v3 dealloc];
}

@end