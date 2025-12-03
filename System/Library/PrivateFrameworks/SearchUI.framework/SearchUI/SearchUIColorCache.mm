@interface SearchUIColorCache
- (SearchUIColorCache)init;
@end

@implementation SearchUIColorCache

- (SearchUIColorCache)init
{
  v5.receiver = self;
  v5.super_class = SearchUIColorCache;
  v2 = [(TLKAsyncCache *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_clear name:*MEMORY[0x1E69DD8B8] object:0];
  }

  return v2;
}

@end