@interface _UIOverlayServiceInterfaceSpecification
+ (BSServiceInterface)interface;
@end

@implementation _UIOverlayServiceInterfaceSpecification

+ (BSServiceInterface)interface
{
  if (qword_1ED49F5A8 != -1)
  {
    dispatch_once(&qword_1ED49F5A8, &__block_literal_global_402);
  }

  v3 = _MergedGlobals_1204;

  return v3;
}

@end