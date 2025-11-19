@interface TSDStyleWarmingOperation
- (TSDStyleWarmingOperation)initWithStyle:(id)a3 property:(int)a4 accessController:(id)a5;
- (void)warm;
@end

@implementation TSDStyleWarmingOperation

- (TSDStyleWarmingOperation)initWithStyle:(id)a3 property:(int)a4 accessController:(id)a5
{
  v9.receiver = self;
  v9.super_class = TSDStyleWarmingOperation;
  result = [(TSDStyleWarmingOperation *)&v9 init];
  if (result)
  {
    result->mStyle = a3;
    result->mProperty = a4;
    result->mAccessController = a5;
  }

  return result;
}

- (void)warm
{
  objc_opt_class();
  [(TSSStyle *)self->mStyle valueForProperty:self->mProperty];
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = [v3 imageData];
    v5 = objc_autoreleasePoolPush();
    [v4 NSData];

    objc_autoreleasePoolPop(v5);
  }
}

@end