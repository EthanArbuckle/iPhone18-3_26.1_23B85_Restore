@interface FindFriendFriendResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation FindFriendFriendResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = sub_266D9F49C(reason);

  return v4;
}

@end