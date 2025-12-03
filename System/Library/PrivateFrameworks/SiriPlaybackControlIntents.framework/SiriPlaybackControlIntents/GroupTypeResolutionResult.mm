@interface GroupTypeResolutionResult
+ (id)confirmationRequiredWithGroupTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedGroupType:(int64_t)type;
@end

@implementation GroupTypeResolutionResult

+ (id)successWithResolvedGroupType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(type);

  return v4;
}

+ (id)confirmationRequiredWithGroupTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end