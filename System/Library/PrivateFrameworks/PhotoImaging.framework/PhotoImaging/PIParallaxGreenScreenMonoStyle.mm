@interface PIParallaxGreenScreenMonoStyle
+ (id)styleWithColorAnalysis:(id)a3;
@end

@implementation PIParallaxGreenScreenMonoStyle

+ (id)styleWithColorAnalysis:(id)a3
{
  v4 = a3;
  v5 = [[PIParallaxColorSuggester alloc] initWithColorAnalysis:v4];
  v6 = [v4 backgroundColors];

  v7 = +[PIParallaxColorPalette greenScreenVibrantPalette];
  v8 = [(PIParallaxColorSuggester *)v5 suggestedColorsForColors:v6 fromColorPalette:v7];

  v9 = PFMap();
  v10 = [v9 firstObject];
  v11 = [v10 primaryColor];

  v12 = [a1 alloc];
  v13 = [MEMORY[0x1E69C0750] whiteColor];
  v14 = [v12 initWithColor:v11 clockColor:v13 colorSuggestions:v9];

  return v14;
}

id __57__PIParallaxGreenScreenMonoStyle_styleWithColorAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C07B0];
  v3 = a2;
  v4 = [[v2 alloc] initWithPrimaryColor:v3 secondaryColor:0];

  return v4;
}

@end