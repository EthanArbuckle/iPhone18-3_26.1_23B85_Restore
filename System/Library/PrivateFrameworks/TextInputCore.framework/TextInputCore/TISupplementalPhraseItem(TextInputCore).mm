@interface TISupplementalPhraseItem(TextInputCore)
- (id)core_nameReadingPairsWithGenerationMode:()TextInputCore mecabraEnvironment:;
- (id)core_nonPhoneticRangesInString:()TextInputCore options:locale:;
- (uint64_t)core_isEqualToMecabraCandidate:()TextInputCore;
- (void)core_appendEntitiesToArray:()TextInputCore;
@end

@implementation TISupplementalPhraseItem(TextInputCore)

- (id)core_nameReadingPairsWithGenerationMode:()TextInputCore mecabraEnvironment:
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [a1 phoneticTitle];
  v10 = [a1 title];
  v11 = TIGenerateReading(v9, v10, a3, v7);

  v12 = [a1 title];
  v13 = [TINameReadingPair nameReadingPairWithName:v12 reading:v11];

  [v8 addObject:v13];

  return v8;
}

- (id)core_nonPhoneticRangesInString:()TextInputCore options:locale:
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 title];
  v11 = rangesOfStringInString(v10, v9, a4, v8);

  return v11;
}

- (uint64_t)core_isEqualToMecabraCandidate:()TextInputCore
{
  v6 = a3;
  v7 = [v6 input];
  v8 = [v7 length];
  if (v8)
  {
    v3 = [a1 phoneticTitle];
    v4 = [v6 input];
    if ([v3 isEqualToString:v4])
    {
      v9 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [v6 candidate];
  if ([v10 length])
  {
    v11 = [a1 title];
    v12 = [v6 candidate];
    v9 = [v11 isEqualToString:v12];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (void)core_appendEntitiesToArray:()TextInputCore
{
  v12 = a3;
  v4 = objc_alloc(MEMORY[0x277D1C0B8]);
  v5 = [a1 title];
  v6 = [v4 initWithName:v5 data:{objc_msgSend(a1, "identifier")}];
  [v12 addObject:v6];

  v7 = [a1 phoneticTitle];
  v8 = [v7 length];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D1C0B8]);
    v10 = [a1 phoneticTitle];
    v11 = [v9 initWithName:v10 data:{objc_msgSend(a1, "identifier")}];
    [v12 addObject:v11];
  }
}

@end