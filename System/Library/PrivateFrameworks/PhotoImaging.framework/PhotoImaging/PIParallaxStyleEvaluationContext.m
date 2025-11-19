@interface PIParallaxStyleEvaluationContext
- (CGRect)visibleRect;
- (CIImage)lightMapImage;
- (id)debugDescription;
@end

@implementation PIParallaxStyleEvaluationContext

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CIImage)lightMapImage
{
  v3 = [(PIParallaxStyleEvaluationContext *)self guideImage];

  if (v3)
  {
    v4 = [(PIParallaxStyleEvaluationContext *)self localLightData];
    if (v4)
    {
      v5 = [PICoreImageUtilities loadFilterWithName:@"_PIDynamicLocalLightMapPrepare"];
      v6 = [(PIParallaxStyleEvaluationContext *)self guideImage];
      [v5 setValue:v6 forKey:@"inputGuideImage"];

      v7 = [v4 objectForKeyedSubscript:@"lightMap"];
      [v5 setValue:v7 forKey:@"inputLightMap"];

      v8 = [v4 objectForKeyedSubscript:@"lightMapWidth"];
      [v5 setValue:v8 forKey:@"inputLightMapWidth"];

      v9 = [v4 objectForKeyedSubscript:@"lightMapHeight"];
      [v5 setValue:v9 forKey:@"inputLightMapHeight"];

      v10 = [v5 outputImage];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PIParallaxStyleEvaluationContext *)self parameters];
  v6 = [v3 stringWithFormat:@"<%@: %p parameters = %@>", v4, self, v5];;

  return v6;
}

@end