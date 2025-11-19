@interface PXStoryConcreteFrameFillingEffectResource
- (BOOL)isEqual:(id)a3;
- (PXStoryConcreteFrameFillingEffectResource)initWithDisplayAsset:(id)a3 useSmartColor:(BOOL)a4;
- (PXStoryConcreteFrameFillingEffectResource)initWithIdentifier:(id)a3 kind:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation PXStoryConcreteFrameFillingEffectResource

- (unint64_t)hash
{
  v3 = [(PXStoryConcreteFrameFillingEffectResource *)self px_storyResourceUseSmartColor];
  v4 = [(PXStoryConcreteFrameFillingEffectResource *)self px_storyResourceDisplayAsset];
  v5 = v3 | (2 * [v4 hash]);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryConcreteFrameFillingEffectResource *)self px_storyResourceDisplayAsset];
      v7 = [(PXStoryConcreteFrameFillingEffectResource *)v5 px_storyResourceDisplayAsset];
      if ([v6 isEqual:v7])
      {
        v8 = [(PXStoryConcreteFrameFillingEffectResource *)self px_storyResourceUseSmartColor];
        v9 = v8 ^ [(PXStoryConcreteFrameFillingEffectResource *)v5 px_storyResourceUseSmartColor]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (PXStoryConcreteFrameFillingEffectResource)initWithDisplayAsset:(id)a3 useSmartColor:(BOOL)a4
{
  v7 = a3;
  v8 = [v7 uuid];
  v11.receiver = self;
  v11.super_class = PXStoryConcreteFrameFillingEffectResource;
  v9 = [(PXStoryConcreteResource *)&v11 initWithIdentifier:v8 kind:5];

  if (v9)
  {
    objc_storeStrong(&v9->_displayAsset, a3);
    v9->_useSmartColor = a4;
  }

  return v9;
}

- (PXStoryConcreteFrameFillingEffectResource)initWithIdentifier:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteResources.m" lineNumber:199 description:{@"%s is not available as initializer", "-[PXStoryConcreteFrameFillingEffectResource initWithIdentifier:kind:]"}];

  abort();
}

@end