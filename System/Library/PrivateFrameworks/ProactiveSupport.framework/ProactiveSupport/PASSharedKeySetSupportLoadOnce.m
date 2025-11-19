@interface PASSharedKeySetSupportLoadOnce
@end

@implementation PASSharedKeySetSupportLoadOnce

void ___PASSharedKeySetSupportLoadOnce_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = NSClassFromString(@"NSSharedKeySet");
  if (!v2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASSharedKeySetSupportLoadOnce(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"_PASSharedKeySetSupport.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"clsSharedKeySet"}];
  }

  _sharedKeySetCountSelector = NSSelectorFromString(@"count");
  v3 = [(objc_class *)v2 instanceMethodForSelector:_sharedKeySetCountSelector];
  if (!v3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASSharedKeySetSupportLoadOnce(void)_block_invoke"];
    [v8 handleFailureInFunction:v9 file:@"_PASSharedKeySetSupport.m" lineNumber:30 description:@"Failed to find NSSharedKeySet IMP for count"];
  }

  _sharedKeySetCount = v3;
  _sharedKeySetIndexForKeySelector = NSSelectorFromString(@"indexForKey:");
  v4 = [(objc_class *)v2 instanceMethodForSelector:_sharedKeySetIndexForKeySelector];
  if (!v4)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASSharedKeySetSupportLoadOnce(void)_block_invoke"];
    [v10 handleFailureInFunction:v11 file:@"_PASSharedKeySetSupport.m" lineNumber:36 description:@"Failed to find NSSharedKeySet IMP for indexForKey:"];
  }

  _sharedKeySetIndexForKey = v4;
  _sharedKeySetKeyAtIndexSelector = NSSelectorFromString(@"keyAtIndex:");
  v5 = [(objc_class *)v2 instanceMethodForSelector:_sharedKeySetKeyAtIndexSelector];
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASSharedKeySetSupportLoadOnce(void)_block_invoke"];
    [v12 handleFailureInFunction:v13 file:@"_PASSharedKeySetSupport.m" lineNumber:42 description:@"Failed to find NSSharedKeySet IMP for keyAtIndex:"];
  }

  _sharedKeySetKeyAtIndex = v5;
  objc_autoreleasePoolPop(v1);

  objc_autoreleasePoolPop(v0);
}

@end