@interface AMSBag(Quota)
+ (id)quotaBag;
@end

@implementation AMSBag(Quota)

+ (id)quotaBag
{
  if (quotaBag_onceToken != -1)
  {
    +[AMSBag(Quota) quotaBag];
  }

  v1 = quotaBag_quotaBag;

  return v1;
}

@end