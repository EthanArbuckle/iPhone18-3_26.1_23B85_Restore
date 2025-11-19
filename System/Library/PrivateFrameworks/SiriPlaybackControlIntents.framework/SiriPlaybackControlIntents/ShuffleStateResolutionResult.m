@interface ShuffleStateResolutionResult
+ (id)confirmationRequiredWithShuffleStateToConfirm:(int64_t)a3;
+ (id)successWithResolvedShuffleState:(int64_t)a3;
@end

@implementation ShuffleStateResolutionResult

+ (id)successWithResolvedShuffleState:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithShuffleStateToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end