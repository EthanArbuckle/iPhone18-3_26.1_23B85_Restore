@interface NSBundle
@end

@implementation NSBundle

void __32__NSBundle_VKBundle____vkBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = +[NSBundle(VKBundle) __vkBundle]::bundle;
  +[NSBundle(VKBundle) __vkBundle]::bundle = v0;
}

@end