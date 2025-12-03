@interface UITableConstants_Phone
+ (id)sharedConstants;
@end

@implementation UITableConstants_Phone

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_1;
  if (!sharedConstants___sharedConstants_1)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedConstants___sharedConstants_1;
    sharedConstants___sharedConstants_1 = v4;

    v3 = sharedConstants___sharedConstants_1;
  }

  return v3;
}

@end