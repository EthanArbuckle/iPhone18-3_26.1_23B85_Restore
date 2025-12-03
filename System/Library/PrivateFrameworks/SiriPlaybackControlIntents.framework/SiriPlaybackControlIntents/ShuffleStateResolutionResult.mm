@interface ShuffleStateResolutionResult
+ (id)confirmationRequiredWithShuffleStateToConfirm:(int64_t)confirm;
+ (id)successWithResolvedShuffleState:(int64_t)state;
@end

@implementation ShuffleStateResolutionResult

+ (id)successWithResolvedShuffleState:(int64_t)state
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(state);

  return v4;
}

+ (id)confirmationRequiredWithShuffleStateToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end