@interface PSLastCommunicatedFeatures
@end

@implementation PSLastCommunicatedFeatures

id __91___PSLastCommunicatedFeatures_lastCommunicationFromCandidates_direction_mechanisms_caches___block_invoke(void *a1, uint64_t a2)
{
  v2 = [_PSLastCommunicatedFeatures lastInteractionFromCandidate:a2 caches:a1[4] direction:a1[6] mechanisms:a1[5]];
  if (v2)
  {
    [_PSLastCommunicatedFeatures timeIntervalSinceNowForInteraction:v2];
    v3 = [_PSLastCommunicatedFeatures featureValueFromTimeInterval:?];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E698ECC0]) initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:0];
  }

  v4 = v3;

  return v4;
}

@end