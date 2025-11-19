@interface UIFont(ScreenTime)
+ (id)st_fontWithStyle:()ScreenTime traits:;
@end

@implementation UIFont(ScreenTime)

+ (id)st_fontWithStyle:()ScreenTime traits:
{
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:a4 options:1];
  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

@end