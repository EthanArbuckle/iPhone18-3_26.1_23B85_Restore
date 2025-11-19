@interface NSBundle(PosterFoundation)
+ (id)pf_uniqueBundleWithURL:()PosterFoundation;
@end

@implementation NSBundle(PosterFoundation)

+ (id)pf_uniqueBundleWithURL:()PosterFoundation
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [[v3 alloc] _initUniqueWithURL:v4];

  return v5;
}

@end