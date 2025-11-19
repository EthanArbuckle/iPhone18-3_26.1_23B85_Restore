@interface TVPlaylistElement
- (NSArray)videos;
@end

@implementation TVPlaylistElement

- (NSArray)videos
{
  v2 = [(TVViewElement *)self childViewElements];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_13];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [v4 copy];

  return v5;
}

uint64_t __27__TVPlaylistElement_videos__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end