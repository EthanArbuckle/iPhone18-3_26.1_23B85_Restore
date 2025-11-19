@interface UIFont(TVMLKitAdditions)
+ (id)tv_fontFromTextStyle:()TVMLKitAdditions fontWeight:fontSize:symbolicTraits:;
@end

@implementation UIFont(TVMLKitAdditions)

+ (id)tv_fontFromTextStyle:()TVMLKitAdditions fontWeight:fontSize:symbolicTraits:
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (tv_fontFromTextStyle_fontWeight_fontSize_symbolicTraits__onceToken != -1)
  {
    +[UIFont(TVMLKitAdditions) tv_fontFromTextStyle:fontWeight:fontSize:symbolicTraits:];
  }

  v11 = [tv_fontFromTextStyle_fontWeight_fontSize_symbolicTraits__sTextStyleMap objectForKeyedSubscript:v9];
  if (![v11 length])
  {
    v14 = 0;
    goto LABEL_9;
  }

  v12 = 0x277D74000uLL;
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:v11];
  v14 = v13;
  if (!v13)
  {
LABEL_9:
    v24 = 0;
    goto LABEL_19;
  }

  v15 = [v13 fontDescriptor];
  if ([v10 length] && (objc_msgSend(tv_fontFromTextStyle_fontWeight_fontSize_symbolicTraits__sTextStyleFontWeightMap, "objectForKeyedSubscript:", v10), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    v18 = MEMORY[0x277CBEB38];
    v19 = *MEMORY[0x277D74380];
    v20 = [v15 objectForKey:*MEMORY[0x277D74380]];
    v21 = [v18 dictionaryWithDictionary:v20];

    [v21 setObject:v17 forKey:*MEMORY[0x277D74430]];
    v29 = v19;
    v30[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v23 = [v15 fontDescriptorByAddingAttributes:v22];

    v12 = 0x277D74000;
    v15 = v23;
  }

  else if ([v10 isEqualToString:@"emphasized"])
  {
    v25 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v11 variant:1024];
    v26 = [v25 fontDescriptor];

    v15 = v26;
  }

  if (a6 && v15)
  {
    v27 = [v15 fontDescriptorWithSymbolicTraits:{objc_msgSend(v15, "symbolicTraits") | a6}];

    v15 = v27;
  }

  if (v15)
  {
    v24 = [*(v12 + 768) fontWithDescriptor:v15 size:a1];
  }

  else
  {
    v24 = 0;
  }

LABEL_19:

  return v24;
}

@end