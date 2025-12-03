@interface NSIndexSet(PGSuggestionSession)
- (uint64_t)pg_intersectsIndexSet:()PGSuggestionSession;
@end

@implementation NSIndexSet(PGSuggestionSession)

- (uint64_t)pg_intersectsIndexSet:()PGSuggestionSession
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__NSIndexSet_PGSuggestionSession__pg_intersectsIndexSet___block_invoke;
  v8[3] = &unk_278886940;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateIndexesUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

@end