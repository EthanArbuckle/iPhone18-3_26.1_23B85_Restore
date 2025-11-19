@interface RoomDimmingStateResolutionResult
+ (id)confirmationRequiredWithRoomDimmingStateToConfirm:(int64_t)a3;
+ (id)successWithResolvedRoomDimmingState:(int64_t)a3;
@end

@implementation RoomDimmingStateResolutionResult

+ (id)successWithResolvedRoomDimmingState:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithRoomDimmingStateToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end