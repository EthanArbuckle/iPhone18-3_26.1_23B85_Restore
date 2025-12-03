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
  guideImage = [(PIParallaxStyleEvaluationContext *)self guideImage];

  if (guideImage)
  {
    localLightData = [(PIParallaxStyleEvaluationContext *)self localLightData];
    if (localLightData)
    {
      v5 = [PICoreImageUtilities loadFilterWithName:@"_PIDynamicLocalLightMapPrepare"];
      guideImage2 = [(PIParallaxStyleEvaluationContext *)self guideImage];
      [v5 setValue:guideImage2 forKey:@"inputGuideImage"];

      v7 = [localLightData objectForKeyedSubscript:@"lightMap"];
      [v5 setValue:v7 forKey:@"inputLightMap"];

      v8 = [localLightData objectForKeyedSubscript:@"lightMapWidth"];
      [v5 setValue:v8 forKey:@"inputLightMapWidth"];

      v9 = [localLightData objectForKeyedSubscript:@"lightMapHeight"];
      [v5 setValue:v9 forKey:@"inputLightMapHeight"];

      outputImage = [v5 outputImage];
    }

    else
    {
      outputImage = 0;
    }
  }

  else
  {
    outputImage = 0;
  }

  return outputImage;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  parameters = [(PIParallaxStyleEvaluationContext *)self parameters];
  v6 = [v3 stringWithFormat:@"<%@: %p parameters = %@>", v4, self, parameters];;

  return v6;
}

@end