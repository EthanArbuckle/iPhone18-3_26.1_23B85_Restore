@interface PXMemoriesFeedLayoutGenerator
- (PXMemoriesFeedLayoutGenerator)initWithMetrics:(id)metrics;
@end

@implementation PXMemoriesFeedLayoutGenerator

- (PXMemoriesFeedLayoutGenerator)initWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedLayoutGenerator.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"[metrics isKindOfClass:[PXMemoriesFeedLayoutMetrics class]]"}];
  }

  v9.receiver = self;
  v9.super_class = PXMemoriesFeedLayoutGenerator;
  v6 = [(PXMemoriesFeedLayoutGenerator *)&v9 initWithMetrics:metricsCopy];

  return v6;
}

@end