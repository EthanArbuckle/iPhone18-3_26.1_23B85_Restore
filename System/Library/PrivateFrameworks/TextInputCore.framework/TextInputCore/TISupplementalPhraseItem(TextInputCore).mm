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
  phoneticTitle = [self phoneticTitle];
  title = [self title];
  v11 = TIGenerateReading(phoneticTitle, title, a3, v7);

  title2 = [self title];
  v13 = [TINameReadingPair nameReadingPairWithName:title2 reading:v11];

  [v8 addObject:v13];

  return v8;
}

- (id)core_nonPhoneticRangesInString:()TextInputCore options:locale:
{
  v8 = a5;
  v9 = a3;
  title = [self title];
  v11 = rangesOfStringInString(title, v9, a4, v8);

  return v11;
}

- (uint64_t)core_isEqualToMecabraCandidate:()TextInputCore
{
  v6 = a3;
  input = [v6 input];
  v8 = [input length];
  if (v8)
  {
    phoneticTitle = [self phoneticTitle];
    input2 = [v6 input];
    if ([phoneticTitle isEqualToString:input2])
    {
      v9 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  candidate = [v6 candidate];
  if ([candidate length])
  {
    title = [self title];
    candidate2 = [v6 candidate];
    v9 = [title isEqualToString:candidate2];
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
  title = [self title];
  v6 = [v4 initWithName:title data:{objc_msgSend(self, "identifier")}];
  [v12 addObject:v6];

  phoneticTitle = [self phoneticTitle];
  v8 = [phoneticTitle length];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D1C0B8]);
    phoneticTitle2 = [self phoneticTitle];
    v11 = [v9 initWithName:phoneticTitle2 data:{objc_msgSend(self, "identifier")}];
    [v12 addObject:v11];
  }
}

@end