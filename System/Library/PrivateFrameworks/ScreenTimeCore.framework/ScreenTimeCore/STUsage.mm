@interface STUsage
+ (id)fetchRequest;
+ (id)fetchRequestMatchingUser:(id)user device:(id)device;
@end

@implementation STUsage

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STUsage;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchRequestMatchingUser:(id)user device:(id)device
{
  deviceCopy = device;
  userCopy = user;
  v7 = +[STUsage fetchRequest];
  deviceCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"user", userCopy, @"device", deviceCopy];

  [v7 setPredicate:deviceCopy];

  return v7;
}

@end