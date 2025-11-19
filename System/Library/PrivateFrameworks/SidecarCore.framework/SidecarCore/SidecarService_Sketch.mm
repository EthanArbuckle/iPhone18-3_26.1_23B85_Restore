@interface SidecarService_Sketch
+ (id)returnTypes;
@end

@implementation SidecarService_Sketch

+ (id)returnTypes
{
  if (returnTypes_once_1058 != -1)
  {
    dispatch_once(&returnTypes_once_1058, &__block_literal_global_1059);
  }

  v3 = returnTypes_types_1060;

  return v3;
}

@end