@interface RepeatStateResolutionResult
+ (id)confirmationRequiredWithRepeatStateToConfirm:(int64_t)a3;
+ (id)successWithResolvedRepeatState:(int64_t)a3;
@end

@implementation RepeatStateResolutionResult

+ (id)successWithResolvedRepeatState:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithRepeatStateToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end