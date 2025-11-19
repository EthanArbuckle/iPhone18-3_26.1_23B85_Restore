@interface DenoiseAndSharpeningTuning
- (DenoiseAndSharpeningTuning)init;
@end

@implementation DenoiseAndSharpeningTuning

- (DenoiseAndSharpeningTuning)init
{
  v6.receiver = self;
  v6.super_class = DenoiseAndSharpeningTuning;
  v2 = [(DenoiseAndSharpeningTuning *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bands = v2->bands;
    v2->bands = v3;
  }

  return v2;
}

@end