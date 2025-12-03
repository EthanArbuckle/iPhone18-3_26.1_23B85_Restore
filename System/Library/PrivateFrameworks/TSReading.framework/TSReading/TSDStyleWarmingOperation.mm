@interface TSDStyleWarmingOperation
- (TSDStyleWarmingOperation)initWithStyle:(id)style property:(int)property accessController:(id)controller;
- (void)warm;
@end

@implementation TSDStyleWarmingOperation

- (TSDStyleWarmingOperation)initWithStyle:(id)style property:(int)property accessController:(id)controller
{
  v9.receiver = self;
  v9.super_class = TSDStyleWarmingOperation;
  result = [(TSDStyleWarmingOperation *)&v9 init];
  if (result)
  {
    result->mStyle = style;
    result->mProperty = property;
    result->mAccessController = controller;
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
    imageData = [v3 imageData];
    v5 = objc_autoreleasePoolPush();
    [imageData NSData];

    objc_autoreleasePoolPop(v5);
  }
}

@end