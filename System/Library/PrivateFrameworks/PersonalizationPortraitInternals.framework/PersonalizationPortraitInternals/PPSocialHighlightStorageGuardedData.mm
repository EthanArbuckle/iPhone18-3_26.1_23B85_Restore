@interface PPSocialHighlightStorageGuardedData
- (void)addToBloomFilter:(uint64_t)filter;
- (void)sendEvent:(uint64_t)event;
@end

@implementation PPSocialHighlightStorageGuardedData

- (void)sendEvent:(uint64_t)event
{
  if (event)
  {
    v3 = *(event + 8);
    v5 = a2;
    source = [v3 source];
    [source sendEvent:v5];

    [(PPSocialHighlightStorageGuardedData *)event addToBloomFilter:v5];
  }
}

- (void)addToBloomFilter:(uint64_t)filter
{
  v3 = a2;
  if (filter && *(filter + 16))
  {
    v4 = MEMORY[0x277D41E40];
    v11 = v3;
    highlight = [v3 highlight];
    sourceBundleId = [highlight sourceBundleId];
    highlight2 = [v11 highlight];
    domainIdentifier = [highlight2 domainIdentifier];
    highlight3 = [v11 highlight];
    attributionIdentifier = [highlight3 attributionIdentifier];
    [v4 addDeletableContentWithBundleIdentifier:sourceBundleId domainIdentifier:domainIdentifier uniqueIdentifier:attributionIdentifier toBloomFilter:*(filter + 16)];

    v3 = v11;
    ++*(filter + 24);
  }
}

@end