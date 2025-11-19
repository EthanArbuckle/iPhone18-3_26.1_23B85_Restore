@interface CRLanguageModelConfiguration
+ (id)configurationForLanguageIdentifier:(id)a3 rev:(unint64_t)a4;
- (CRLanguageModelConfiguration)initWithDictionary:(id)a3;
- (float)lmThresholdForLength:(int64_t)a3;
@end

@implementation CRLanguageModelConfiguration

+ (id)configurationForLanguageIdentifier:(id)a3 rev:(unint64_t)a4
{
  v5 = a3;
  if (a4 < 2)
  {
    v12 = [CRLanguageModelConfiguration alloc];
    v11 = [(CRLanguageModelConfiguration *)v12 initWithDictionary:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v6 = lmConfig();
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v8 = [v7 stringValue];
    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [v9 objectForKeyedSubscript:v5];

    v11 = [[CRLanguageModelConfiguration alloc] initWithDictionary:v10];
  }

  return v11;
}

- (CRLanguageModelConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CRLanguageModelConfiguration;
  v5 = [(CRLanguageModelConfiguration *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"lexicon"];
    lexiconWeight = v5->_lexiconWeight;
    v5->_lexiconWeight = v6;

    v8 = [v4 objectForKeyedSubscript:@"charlm"];
    characterLMWeight = v5->_characterLMWeight;
    v5->_characterLMWeight = v8;

    v10 = [v4 objectForKeyedSubscript:@"wordlm"];
    wordLMWeight = v5->_wordLMWeight;
    v5->_wordLMWeight = v10;

    v12 = [v4 objectForKeyedSubscript:@"lmFiltering"];
    v13 = [v12 objectForKeyedSubscript:@"activationThreshold"];
    [v13 floatValue];
    v5->_filteringActivationThreshold = v14;

    v15 = [v4 objectForKeyedSubscript:@"lmFiltering"];
    v16 = [v15 objectForKeyedSubscript:@"charLengths"];
    filteringCharLengths = v5->_filteringCharLengths;
    v5->_filteringCharLengths = v16;

    v18 = [v4 objectForKeyedSubscript:@"lmFiltering"];
    v19 = [v18 objectForKeyedSubscript:@"lmThresholds"];
    lmFilteringThresholds = v5->_lmFilteringThresholds;
    v5->_lmFilteringThresholds = v19;

    v21 = [(NSArray *)v5->_filteringCharLengths lastObject];
    v5->_filteringMinimumLength = [v21 integerValue];
  }

  return v5;
}

- (float)lmThresholdForLength:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 2139095039;
  v5 = [(CRLanguageModelConfiguration *)self filteringCharLengths];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CRLanguageModelConfiguration_lmThresholdForLength___block_invoke;
  v8[3] = &unk_1E7BC36F8;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = self;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[6];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __53__CRLanguageModelConfiguration_lmThresholdForLength___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 48);
  if (v7 >= [a2 integerValue])
  {
    v8 = [*(a1 + 32) lmFilteringThresholds];
    v9 = [v8 objectAtIndexedSubscript:a3];
    [v9 floatValue];
    *(*(*(a1 + 40) + 8) + 24) = v10;

    *a4 = 1;
  }
}

@end