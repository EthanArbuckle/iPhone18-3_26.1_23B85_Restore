@interface DisplayLinkTarget
- (BOOL)drawAndReturnError:(id *)a3;
@end

@implementation DisplayLinkTarget

- (BOOL)drawAndReturnError:(id *)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = objc_autoreleasePoolPush();
    sub_1AF6F5158(v4);
    objc_autoreleasePoolPop(v5);
  }

  return 1;
}

@end