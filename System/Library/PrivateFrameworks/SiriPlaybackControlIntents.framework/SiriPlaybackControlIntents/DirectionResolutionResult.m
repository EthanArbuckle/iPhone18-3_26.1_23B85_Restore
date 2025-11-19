@interface DirectionResolutionResult
+ (id)confirmationRequiredWithDirectionToConfirm:(int64_t)a3;
+ (id)successWithResolvedDirection:(int64_t)a3;
@end

@implementation DirectionResolutionResult

+ (id)successWithResolvedDirection:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithDirectionToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end