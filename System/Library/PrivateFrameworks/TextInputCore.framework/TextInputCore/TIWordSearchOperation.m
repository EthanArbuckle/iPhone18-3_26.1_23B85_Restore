@interface TIWordSearchOperation
- (void)main;
@end

@implementation TIWordSearchOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if (([(TIWordSearchOperation *)self isCancelled]& 1) == 0)
  {
    [(TIWordSearchOperation *)self perform];
  }

  objc_autoreleasePoolPop(v3);
}

@end