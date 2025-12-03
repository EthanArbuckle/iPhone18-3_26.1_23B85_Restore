@interface UIFont(WiFiKitUI)
+ (id)preferredFontForStyle:()WiFiKitUI weight:;
@end

@implementation UIFont(WiFiKitUI)

+ (id)preferredFontForStyle:()WiFiKitUI weight:
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:?];
  v9 = *MEMORY[0x277D74430];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v2 fontDescriptorByAddingAttributes:v4];

  v6 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end