@interface NSMutableDictionary(TSUAdditions)
+ (id)tsu_dictionaryByInvertingDictionaryIfPossible:()TSUAdditions;
+ (uint64_t)tsu_dictionaryByInvertingDictionary:()TSUAdditions;
- (uint64_t)tsu_objectForKey:()TSUAdditions withDefaultOfClass:;
- (uint64_t)tsu_objectForKey:()TSUAdditions withDefaultUsingBlock:;
- (void)tsu_removeObjectsWithoutKeys:()TSUAdditions;
@end

@implementation NSMutableDictionary(TSUAdditions)

- (uint64_t)tsu_objectForKey:()TSUAdditions withDefaultUsingBlock:
{
  v7 = [a1 objectForKey:?];
  if (!v7)
  {
    v7 = (*(a4 + 16))(a4);
    [a1 setObject:v7 forKey:a3];
  }

  return v7;
}

- (uint64_t)tsu_objectForKey:()TSUAdditions withDefaultOfClass:
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__NSMutableDictionary_TSUAdditions__tsu_objectForKey_withDefaultOfClass___block_invoke;
  v5[3] = &unk_279D66060;
  v5[4] = a4;
  return [a1 tsu_objectForKey:a3 withDefaultUsingBlock:v5];
}

+ (id)tsu_dictionaryByInvertingDictionaryIfPossible:()TSUAdditions
{
  if (!a3)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSMutableDictionary(TSUAdditions) tsu_dictionaryByInvertingDictionaryIfPossible:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSDictionaryAdditions.m"), 67, @"invalid nil value for '%s'", "source"}];
  }

  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__NSMutableDictionary_TSUAdditions__tsu_dictionaryByInvertingDictionaryIfPossible___block_invoke;
  v9[3] = &unk_279D66088;
  v9[4] = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = [a3 count];
  if (v7 == [v6 count])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)tsu_dictionaryByInvertingDictionary:()TSUAdditions
{
  v1 = [a1 tsu_dictionaryByInvertingDictionaryIfPossible:?];
  if (!v1)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSMutableDictionary(TSUAdditions) tsu_dictionaryByInvertingDictionary:]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSDictionaryAdditions.m"), 86, @"Source dictionary is not invertible."}];
  }

  return v1;
}

- (void)tsu_removeObjectsWithoutKeys:()TSUAdditions
{
  v5 = [objc_msgSend(a1 "allKeys")];
  [v5 removeObjectsInArray:a3];
  [a1 removeObjectsForKeys:v5];
}

@end