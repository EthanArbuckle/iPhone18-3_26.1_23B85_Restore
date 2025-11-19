@interface PXMemoriesFeedLayoutGenerator
- (PXMemoriesFeedLayoutGenerator)initWithMetrics:(id)a3;
@end

@implementation PXMemoriesFeedLayoutGenerator

- (PXMemoriesFeedLayoutGenerator)initWithMetrics:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedLayoutGenerator.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"[metrics isKindOfClass:[PXMemoriesFeedLayoutMetrics class]]"}];
  }

  v9.receiver = self;
  v9.super_class = PXMemoriesFeedLayoutGenerator;
  v6 = [(PXMemoriesFeedLayoutGenerator *)&v9 initWithMetrics:v5];

  return v6;
}

@end