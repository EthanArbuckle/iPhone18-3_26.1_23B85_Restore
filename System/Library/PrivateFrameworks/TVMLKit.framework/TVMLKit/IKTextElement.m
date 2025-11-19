@interface IKTextElement
@end

@implementation IKTextElement

void __73__IKTextElement_TVMLKitAdditions__tv_attributedStringReplacingSFSymbols___block_invoke(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1[4] objectForKeyedSubscript:a2];
  if (v7)
  {
    v9 = v7;
    v8 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
    [a1[5] setObject:v9 forKeyedSubscript:v8];
    [a1[6] addObject:v8];

    v7 = v9;
  }
}

void __73__IKTextElement_TVMLKitAdditions__tv_attributedStringReplacingSFSymbols___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v19 = [v3 objectForKeyedSubscript:v4];
  v5 = *(a1 + 40);
  v6 = *MEMORY[0x277D740A8];
  v7 = [v4 rangeValue];
  v9 = [v5 attribute:v6 atIndex:0 longestEffectiveRange:0 inRange:{v7, v8}];
  [v9 pointSize];
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:?];
  v11 = [MEMORY[0x277D755B8] systemImageNamed:v19 withConfiguration:v10];
  v12 = objc_alloc_init(MEMORY[0x277D74270]);
  v13 = [v11 imageWithRenderingMode:2];
  [v12 setImage:v13];

  v14 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v12];
  v15 = *(a1 + 40);
  v16 = [v4 rangeValue];
  v18 = v17;

  [v15 replaceCharactersInRange:v16 withAttributedString:{v18, v14}];
}

@end