@interface UIFont(TipsUIAdditions)
+ (id)tps_preferredFontForTextStyle:()TipsUIAdditions symbolicTraits:weight:size:;
@end

@implementation UIFont(TipsUIAdditions)

+ (id)tps_preferredFontForTextStyle:()TipsUIAdditions symbolicTraits:weight:size:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a5 addingSymbolicTraits:a6 options:0];
  fontAttributes = [v8 fontAttributes];
  v10 = *MEMORY[0x277D74418];
  if (*MEMORY[0x277D74418] != self)
  {
    fontAttributes2 = [v8 fontAttributes];
    v12 = [fontAttributes2 mutableCopy];

    v20 = *MEMORY[0x277CC49B8];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self];
    v21[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277CC4950]];

    v15 = [v12 copy];
    fontAttributes = v15;
  }

  v16 = MEMORY[0x277D74300];
  v17 = [MEMORY[0x277D74310] fontDescriptorWithFontAttributes:{fontAttributes, v10}];
  v18 = [v16 fontWithDescriptor:v17 size:a2];

  return v18;
}

@end