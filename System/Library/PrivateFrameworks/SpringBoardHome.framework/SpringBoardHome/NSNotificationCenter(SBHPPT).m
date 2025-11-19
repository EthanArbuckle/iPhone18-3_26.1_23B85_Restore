@interface NSNotificationCenter(SBHPPT)
+ (id)sbh_defaultPPTNotificationCenter;
@end

@implementation NSNotificationCenter(SBHPPT)

+ (id)sbh_defaultPPTNotificationCenter
{
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x1E696AD88] defaultCenter];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

@end