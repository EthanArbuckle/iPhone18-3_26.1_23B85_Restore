@interface PIParallaxBlackWhiteStudioStyle
+ (id)styleWithColorAnalysis:(id)a3;
- (id)defaultDominantColorWithAnalysis:(id)a3;
- (id)recipeIdentifier;
@end

@implementation PIParallaxBlackWhiteStudioStyle

- (id)defaultDominantColorWithAnalysis:(id)a3
{
  [a3 luminance];
  v5 = v4;
  v6 = [(PIParallaxStudioStyle *)self tonality];
  v7 = 0.8;
  if (v5 >= 0.8)
  {
    v7 = v5;
  }

  v8 = fmin(v5, 0.4);
  if (v6 == 3)
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

+ (id)styleWithColorAnalysis:(id)a3
{
  [a3 backgroundLuminance];
  if (v4 < 0.35)
  {
    v5 = [MEMORY[0x1E69C0750] whiteColor];
    v6 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69C0750] blackColor];
    v6 = 3;
  }

  v7 = [a1 alloc];
  v8 = [v7 initWithClockColor:v5 colorSuggestions:MEMORY[0x1E695E0F0]];
  [v8 setTonality:v6];

  return v8;
}

@end