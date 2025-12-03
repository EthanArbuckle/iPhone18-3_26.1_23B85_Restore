@interface NSData(ICFairPlayUtilityAdditions)
+ (id)ic_dataWithFairPlayBytes:()ICFairPlayUtilityAdditions length:;
@end

@implementation NSData(ICFairPlayUtilityAdditions)

+ (id)ic_dataWithFairPlayBytes:()ICFairPlayUtilityAdditions length:
{
  v4 = [[self alloc] initWithBytesNoCopy:a3 length:a4 deallocator:&__block_literal_global_17983];

  return v4;
}

@end