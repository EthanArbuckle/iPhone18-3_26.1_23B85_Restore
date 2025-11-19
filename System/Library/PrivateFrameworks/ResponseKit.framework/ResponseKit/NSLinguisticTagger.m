@interface NSLinguisticTagger
@end

@implementation NSLinguisticTagger

void __94__NSLinguisticTagger_RKPrivate__languageOfRange_withAdditionalContext_withPreferredLanguages___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:&obj];
  objc_storeStrong((v1 + 40), obj);
  v3 = languageOfRange_withAdditionalContext_withPreferredLanguages__dataDetector;
  languageOfRange_withAdditionalContext_withPreferredLanguages__dataDetector = v2;
}

uint64_t __94__NSLinguisticTagger_RKPrivate__languageOfRange_withAdditionalContext_withPreferredLanguages___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 countForObject:a3];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
  }
}

uint64_t __94__NSLinguisticTagger_RKPrivate__languageOfRange_withAdditionalContext_withPreferredLanguages___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) tagAtIndex:a3 scheme:*MEMORY[0x277CCA3D8] tokenRange:0 sentenceRange:0];
  if (v4)
  {
    v9 = v4;
    v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
    v6 = ([v5 unsignedIntegerValue] + 1.0);

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v9];

    ++*(*(*(a1 + 48) + 8) + 24);
  }

  return MEMORY[0x2821F96F8]();
}

void __94__NSLinguisticTagger_RKPrivate__languageOfRange_withAdditionalContext_withPreferredLanguages___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 unsignedIntegerValue] / *(*(*(a1 + 32) + 8) + 24) >= 0.7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end