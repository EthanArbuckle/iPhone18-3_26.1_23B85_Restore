@interface NSDictionary(HKSPSleep)
- (HKSPDictionaryDiff)hksp_computeDiffFromDictionary:()HKSPSleep keysToDiff:;
- (id)hksp_computeDiffFromDictionary:()HKSPSleep;
- (id)hksp_dictionaryByFilteringKeys:()HKSPSleep;
- (uint64_t)hksp_hash;
@end

@implementation NSDictionary(HKSPSleep)

- (id)hksp_dictionaryByFilteringKeys:()HKSPSleep
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__NSDictionary_HKSPSleep__hksp_dictionaryByFilteringKeys___block_invoke;
  v8[3] = &unk_279C759A0;
  v9 = v4;
  v5 = v4;
  v6 = [self na_filter:v8];

  return v6;
}

- (id)hksp_computeDiffFromDictionary:()HKSPSleep
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  allKeys = [v5 allKeys];
  v7 = [v4 setWithArray:allKeys];

  allKeys2 = [self allKeys];
  v9 = [v7 setByAddingObjectsFromArray:allKeys2];

  v10 = [self hksp_computeDiffFromDictionary:v5 keysToDiff:v9];

  return v10;
}

- (HKSPDictionaryDiff)hksp_computeDiffFromDictionary:()HKSPSleep keysToDiff:
{
  v6 = a4;
  v7 = a3;
  v8 = [[HKSPDictionaryDiff alloc] initWithOriginalDictionary:v7 updatedDictionary:self keysToDiff:v6];

  return v8;
}

- (uint64_t)hksp_hash
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = [self hash];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__NSDictionary_HKSPSleep__hksp_hash__block_invoke;
  v4[3] = &unk_279C759C8;
  v4[4] = &v5;
  [self enumerateKeysAndObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end