@interface TIZhuyinPunctuationManager
+ (id)shareZhuyinPunctuationManager;
- (NSDictionary)punctuationMap;
- (id)candidatesFor:(id)a3;
@end

@implementation TIZhuyinPunctuationManager

+ (id)shareZhuyinPunctuationManager
{
  if (shareZhuyinPunctuationManager___onceToken != -1)
  {
    +[TIZhuyinPunctuationManager shareZhuyinPunctuationManager];
  }

  v3 = shareZhuyinPunctuationManager___sharedInstance;

  return v3;
}

uint64_t __59__TIZhuyinPunctuationManager_shareZhuyinPunctuationManager__block_invoke()
{
  shareZhuyinPunctuationManager___sharedInstance = objc_alloc_init(TIZhuyinPunctuationManager);

  return MEMORY[0x2A1C71028]();
}

- (id)candidatesFor:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(TIZhuyinPunctuationManager *)self punctuationMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v8 = [MEMORY[0x29EDB8DE8] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [MEMORY[0x29EDC7088] candidateWithCandidate:v13 forInput:0];
        v15 = [v7 localizedStringForKey:v13 value:&stru_2A252F9A8 table:@"CIMPunctuationDescription_zh_Hant"];
        [v14 setAlternativeText:v15];
        [v8 addObject:v14];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x29EDCA608];

  return v8;
}

- (NSDictionary)punctuationMap
{
  if (punctuationMap___onceToken != -1)
  {
    [TIZhuyinPunctuationManager punctuationMap];
  }

  v3 = punctuationMap___punctuationMap;

  return v3;
}

void __44__TIZhuyinPunctuationManager_punctuationMap__block_invoke()
{
  v0 = punctuationMap___punctuationMap;
  punctuationMap___punctuationMap = &unk_2A2532388;
}

@end