@interface UITableView(Bridge)
+ (uint64_t)ts_bridgedAnimationForAnimation:()Bridge;
@end

@implementation UITableView(Bridge)

+ (uint64_t)ts_bridgedAnimationForAnimation:()Bridge
{
  if (a3 > 7)
  {
    return 3;
  }

  else
  {
    return qword_1D819CDE0[a3];
  }
}

@end