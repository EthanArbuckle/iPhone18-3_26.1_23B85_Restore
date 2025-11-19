@interface NSOrderedSet(SBFloatingDockSuggestions)
- (uint64_t)sb_indexOfFloatingDockSuggestionDisplayItem:()SBFloatingDockSuggestions;
@end

@implementation NSOrderedSet(SBFloatingDockSuggestions)

- (uint64_t)sb_indexOfFloatingDockSuggestionDisplayItem:()SBFloatingDockSuggestions
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__NSOrderedSet_SBFloatingDockSuggestions__sb_indexOfFloatingDockSuggestionDisplayItem___block_invoke;
  v8[3] = &unk_2783AC6B0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 indexOfObjectPassingTest:v8];

  return v6;
}

@end