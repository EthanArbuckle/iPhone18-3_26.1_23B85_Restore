@interface NSArray(FragmentFiltering)
- (id)fragmentsWithTrackIndex:()FragmentFiltering;
@end

@implementation NSArray(FragmentFiltering)

- (id)fragmentsWithTrackIndex:()FragmentFiltering
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__NSArray_FragmentFiltering__fragmentsWithTrackIndex___block_invoke;
  v5[3] = &__block_descriptor_40_e31_B16__0__RCCompositionFragment_8l;
  v5[4] = a3;
  v3 = [self na_filter:v5];

  return v3;
}

@end