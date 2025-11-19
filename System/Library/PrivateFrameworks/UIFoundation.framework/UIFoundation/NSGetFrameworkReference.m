@interface NSGetFrameworkReference
@end

@implementation NSGetFrameworkReference

const char *____NSGetFrameworkReference_block_invoke()
{
  result = __NSLoadFramework(0, 0);
  __NSGetFrameworkReference_UIFrameworkReference = result;
  return result;
}

@end