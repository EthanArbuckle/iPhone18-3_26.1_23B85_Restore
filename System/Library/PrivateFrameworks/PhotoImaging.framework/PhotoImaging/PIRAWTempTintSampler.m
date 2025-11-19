@interface PIRAWTempTintSampler
- (PIRAWTempTintSampler)initWithComposition:(id)a3 responseQueue:(id)a4;
- (id)_pipelineFilters;
@end

@implementation PIRAWTempTintSampler

- (id)_pipelineFilters
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = +[PIPipelineFilters sourceFilterNoOrientation];
  v6[0] = v2;
  v3 = +[PIPipelineFilters sushiLevel1Filter];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (PIRAWTempTintSampler)initWithComposition:(id)a3 responseQueue:(id)a4
{
  v7.receiver = self;
  v7.super_class = PIRAWTempTintSampler;
  v4 = [(NUTagColorSampler *)&v7 initWithComposition:a3 tag:@"/RAW/SushiLevel1" responseQueue:a4];
  v5 = [MEMORY[0x1E69B3A10] sRGBLinearColorSpace];
  [(NUColorSampler *)v4 setColorSpace:v5];

  return v4;
}

@end