@interface RoomDimmingStateResolutionResult
+ (id)confirmationRequiredWithRoomDimmingStateToConfirm:(int64_t)confirm;
+ (id)successWithResolvedRoomDimmingState:(int64_t)state;
@end

@implementation RoomDimmingStateResolutionResult

+ (id)successWithResolvedRoomDimmingState:(int64_t)state
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(state);

  return v4;
}

+ (id)confirmationRequiredWithRoomDimmingStateToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end