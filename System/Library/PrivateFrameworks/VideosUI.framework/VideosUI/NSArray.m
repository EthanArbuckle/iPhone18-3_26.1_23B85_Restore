@interface NSArray
@end

@implementation NSArray

void __42__NSArray_VideosExtras__ikAssetAttributes__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 attributes];
    [*(a1 + 32) addObject:v3];
  }
}

@end