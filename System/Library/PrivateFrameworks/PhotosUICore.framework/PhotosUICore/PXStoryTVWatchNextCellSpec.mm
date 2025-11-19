@interface PXStoryTVWatchNextCellSpec
- (id)memorySubtitleFont;
- (id)memoryTitleFont;
@end

@implementation PXStoryTVWatchNextCellSpec

- (id)memorySubtitleFont
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69DB8F0];
  v10[0] = *MEMORY[0x1E69DB9C0];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69659B8]];
  v11[0] = v2;
  v10[1] = *MEMORY[0x1E69DB990];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v10[2] = *MEMORY[0x1E69DB940];
  v4 = *MEMORY[0x1E69DB8C8];
  v11[1] = v3;
  v11[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v7 = [objc_alloc(MEMORY[0x1E69DB880]) initWithFontAttributes:v6];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:17.0];

  return v8;
}

- (id)memoryTitleFont
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69DB8F0];
  v10[0] = *MEMORY[0x1E69DB9C0];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965998]];
  v11[0] = v2;
  v10[1] = *MEMORY[0x1E69DB990];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
  v10[2] = *MEMORY[0x1E69DB940];
  v4 = *MEMORY[0x1E69DB8C8];
  v11[1] = v3;
  v11[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v7 = [objc_alloc(MEMORY[0x1E69DB880]) initWithFontAttributes:v6];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:34.0];

  return v8;
}

@end