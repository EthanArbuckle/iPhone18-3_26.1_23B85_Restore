@interface PXSearchTitlesSpec
+ (id)searchDefaultTitleAttributes;
+ (id)searchItalicTitleAttributes;
@end

@implementation PXSearchTitlesSpec

+ (id)searchDefaultTitleAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB648];
  searchTitleLabelFont = [self searchTitleLabelFont];
  v7[0] = searchTitleLabelFont;
  v6[1] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7[1] = labelColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)searchItalicTitleAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB648];
  v2 = +[PXSearchTitlesSpec searchItalicTitleLabelFont];
  v7[0] = v2;
  v6[1] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7[1] = labelColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end