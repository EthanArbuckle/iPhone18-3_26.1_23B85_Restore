@interface WBInMemoryChangeFilterVisible
- (BOOL)isBookmarkVisible:(id)a3;
@end

@implementation WBInMemoryChangeFilterVisible

- (BOOL)isBookmarkVisible:(id)a3
{
  v3 = a3;
  v4 = [v3 extraAttributes];
  v5 = [v4 objectForKeyedSubscript:@"com.apple.bookmarks.OmitFromUI"];
  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [v3 isHidden] ^ 1;
  }

  return v6;
}

id __99__WBInMemoryChangeFilterVisible_bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isBookmarkVisible:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "identifier")}];
  }

  return v4;
}

id __96__WBInMemoryChangeFilterVisible_bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isBookmarkVisible:v3])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "identifier")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end