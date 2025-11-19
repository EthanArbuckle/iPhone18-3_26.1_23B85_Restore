@interface NSArray(VGInternal)
+ (id)vg_arrayWithNumbersFromVectorf:()VGInternal;
@end

@implementation NSArray(VGInternal)

+ (id)vg_arrayWithNumbersFromVectorf:()VGInternal
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a3 + 16)];
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = *a3;
    v9 = 4 * v7;
    do
    {
      LODWORD(v6) = *v8;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
      [v5 addObject:v10];

      ++v8;
      v9 -= 4;
    }

    while (v9);
  }

  v11 = [a1 arrayWithArray:v5];

  return v11;
}

@end