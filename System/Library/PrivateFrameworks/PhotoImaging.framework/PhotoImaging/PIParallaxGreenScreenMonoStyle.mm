@interface PIParallaxGreenScreenMonoStyle
+ (id)styleWithColorAnalysis:(id)analysis;
@end

@implementation PIParallaxGreenScreenMonoStyle

+ (id)styleWithColorAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v5 = [[PIParallaxColorSuggester alloc] initWithColorAnalysis:analysisCopy];
  backgroundColors = [analysisCopy backgroundColors];

  v7 = +[PIParallaxColorPalette greenScreenVibrantPalette];
  v8 = [(PIParallaxColorSuggester *)v5 suggestedColorsForColors:backgroundColors fromColorPalette:v7];

  v9 = PFMap();
  firstObject = [v9 firstObject];
  primaryColor = [firstObject primaryColor];

  v12 = [self alloc];
  whiteColor = [MEMORY[0x1E69C0750] whiteColor];
  v14 = [v12 initWithColor:primaryColor clockColor:whiteColor colorSuggestions:v9];

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