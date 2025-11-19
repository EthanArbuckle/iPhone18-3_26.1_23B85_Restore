@interface NSBundle(VKBundle)
+ (id)__vkBundle;
@end

@implementation NSBundle(VKBundle)

+ (id)__vkBundle
{
  if (+[NSBundle(VKBundle) __vkBundle]::onceToken != -1)
  {
    dispatch_once(&+[NSBundle(VKBundle) __vkBundle]::onceToken, &__block_literal_global_34138);
  }

  v1 = +[NSBundle(VKBundle) __vkBundle]::bundle;

  return v1;
}

@end