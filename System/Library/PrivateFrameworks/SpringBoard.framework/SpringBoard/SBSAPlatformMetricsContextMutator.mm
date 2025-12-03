@interface SBSAPlatformMetricsContextMutator
- (SBSAPlatformMetricsContextMutator)initWithPlatformMetricsContext:(id)context;
@end

@implementation SBSAPlatformMetricsContextMutator

- (SBSAPlatformMetricsContextMutator)initWithPlatformMetricsContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SBSAPlatformMetricsContextMutator;
  v6 = [(SBSAPlatformMetricsContextMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutatable, context);
  }

  return v7;
}

@end