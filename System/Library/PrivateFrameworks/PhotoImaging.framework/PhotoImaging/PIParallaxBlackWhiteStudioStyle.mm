@interface PIParallaxBlackWhiteStudioStyle
+ (id)styleWithColorAnalysis:(id)analysis;
- (id)defaultDominantColorWithAnalysis:(id)analysis;
- (id)recipeIdentifier;
@end

@implementation PIParallaxBlackWhiteStudioStyle

- (id)defaultDominantColorWithAnalysis:(id)analysis
{
  [analysis luminance];
  v5 = v4;
  tonality = [(PIParallaxStudioStyle *)self tonality];
  v7 = 0.8;
  if (v5 >= 0.8)
  {
    v7 = v5;
  }

  v8 = fmin(v5, 0.4);
  if (tonality == 3)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = [objc_alloc(MEMORY[0x1E69C0750]) initWithRed:v9 green:v9 blue:v9];

  return v10;
}

- (id)recipeIdentifier
{
  if ([(PIParallaxStudioStyle *)self tonality]== 3)
  {
    v2 = @"BlackWhiteHighKey";
  }

  else
  {
    v2 = @"BlackWhiteStage";
  }

  return v2;
}

+ (id)styleWithColorAnalysis:(id)analysis
{
  [analysis backgroundLuminance];
  if (v4 < 0.35)
  {
    whiteColor = [MEMORY[0x1E69C0750] whiteColor];
    v6 = 1;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69C0750] blackColor];
    v6 = 3;
  }

  v7 = [self alloc];
  v8 = [v7 initWithClockColor:whiteColor colorSuggestions:MEMORY[0x1E695E0F0]];
  [v8 setTonality:v6];

  return v8;
}

@end