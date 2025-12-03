@interface DirectionResolutionResult
+ (id)confirmationRequiredWithDirectionToConfirm:(int64_t)confirm;
+ (id)successWithResolvedDirection:(int64_t)direction;
@end

@implementation DirectionResolutionResult

+ (id)successWithResolvedDirection:(int64_t)direction
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(direction);

  return v4;
}

+ (id)confirmationRequiredWithDirectionToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end