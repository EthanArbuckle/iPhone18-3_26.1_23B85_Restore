@interface _PIParallaxRenderResource
- ($C28CD4A45FD07A4F97CC9D5F91F25271)luminanceThresholds;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)luminanceWeights;
- (PFParallaxColor)dominantColor;
- (PFParallaxColor)medianColor;
@end

@implementation _PIParallaxRenderResource

- ($C28CD4A45FD07A4F97CC9D5F91F25271)luminanceThresholds
{
  r = self->_luminanceThresholds.r;
  g = self->_luminanceThresholds.g;
  b = self->_luminanceThresholds.b;
  a = self->_luminanceThresholds.a;
  result.var3 = a;
  result.var2 = b;
  result.var1 = g;
  result.var0 = r;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)luminanceWeights
{
  r = self->_luminanceWeights.r;
  g = self->_luminanceWeights.g;
  b = self->_luminanceWeights.b;
  a = self->_luminanceWeights.a;
  result.var3 = a;
  result.var2 = b;
  result.var1 = g;
  result.var0 = r;
  return result;
}

- (PFParallaxColor)dominantColor
{
  imageHistogram = [(_PIParallaxRenderResource *)self imageHistogram];
  v3 = [imageHistogram mutableCopy];

  [v3 smoothWithFunction:1 windowSize:13 sampleMode:0];
  v4 = [v3 red];
  [v4 mode];
  v6 = v5;

  green = [v3 green];
  [green mode];
  v9 = v8;

  blue = [v3 blue];
  [blue mode];
  v12 = v11;

  v13 = [objc_alloc(MEMORY[0x1E69C0750]) initWithRed:v6 green:v9 blue:v12];

  return v13;
}

- (PFParallaxColor)medianColor
{
  imageHistogram = [(_PIParallaxRenderResource *)self imageHistogram];
  v4 = [imageHistogram red];
  [v4 median];
  v6 = v5;

  imageHistogram2 = [(_PIParallaxRenderResource *)self imageHistogram];
  green = [imageHistogram2 green];
  [green median];
  v10 = v9;

  imageHistogram3 = [(_PIParallaxRenderResource *)self imageHistogram];
  blue = [imageHistogram3 blue];
  [blue median];
  v14 = v13;

  v15 = [objc_alloc(MEMORY[0x1E69C0750]) initWithRed:v6 green:v10 blue:v14];

  return v15;
}

@end