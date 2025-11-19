@interface NSMutableSet(VKFoundationUtility)
+ (CFMutableSetRef)_vk_newWeakSet;
@end

@implementation NSMutableSet(VKFoundationUtility)

+ (CFMutableSetRef)_vk_newWeakSet
{
  v1.version = 0;
  v1.retain = _weakSetRetain;
  v1.release = _weakSetRelease;
  v1.copyDescription = _weakSetDescription;
  v1.equal = _weakSetEqual;
  v1.hash = _weakSetHash;
  return CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v1);
}

@end