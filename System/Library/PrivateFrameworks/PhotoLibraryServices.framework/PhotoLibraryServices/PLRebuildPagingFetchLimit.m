@interface PLRebuildPagingFetchLimit
@end

@implementation PLRebuildPagingFetchLimit

void ___PLRebuildPagingFetchLimit_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v0 objectForKey:@"PLSearchRebuildPagingFetchLimit"];

  v1 = v2;
  if (v2)
  {
    _PLRebuildPagingFetchLimit__pagingFetchLimit = [v2 integerValue];
    v1 = v2;
  }
}

@end