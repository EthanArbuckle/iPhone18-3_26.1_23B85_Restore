@interface PPSocialHighlightStorageGuardedData
- (void)addToBloomFilter:(uint64_t)a1;
- (void)sendEvent:(uint64_t)a1;
@end

@implementation PPSocialHighlightStorageGuardedData

- (void)sendEvent:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v5 = a2;
    v4 = [v3 source];
    [v4 sendEvent:v5];

    [(PPSocialHighlightStorageGuardedData *)a1 addToBloomFilter:v5];
  }
}

- (void)addToBloomFilter:(uint64_t)a1
{
  v3 = a2;
  if (a1 && *(a1 + 16))
  {
    v4 = MEMORY[0x277D41E40];
    v11 = v3;
    v5 = [v3 highlight];
    v6 = [v5 sourceBundleId];
    v7 = [v11 highlight];
    v8 = [v7 domainIdentifier];
    v9 = [v11 highlight];
    v10 = [v9 attributionIdentifier];
    [v4 addDeletableContentWithBundleIdentifier:v6 domainIdentifier:v8 uniqueIdentifier:v10 toBloomFilter:*(a1 + 16)];

    v3 = v11;
    ++*(a1 + 24);
  }
}

@end