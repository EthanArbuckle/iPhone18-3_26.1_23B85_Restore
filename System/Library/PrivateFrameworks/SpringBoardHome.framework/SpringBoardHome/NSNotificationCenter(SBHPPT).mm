@interface NSNotificationCenter(SBHPPT)
+ (id)sbh_defaultPPTNotificationCenter;
@end

@implementation NSNotificationCenter(SBHPPT)

+ (id)sbh_defaultPPTNotificationCenter
{
  if (os_variant_has_internal_content())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  }

  else
  {
    defaultCenter = 0;
  }

  return defaultCenter;
}

@end