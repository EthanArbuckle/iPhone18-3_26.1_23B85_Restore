@interface PXStoryConcreteFrameFillingEffectResource
- (BOOL)isEqual:(id)equal;
- (PXStoryConcreteFrameFillingEffectResource)initWithDisplayAsset:(id)asset useSmartColor:(BOOL)color;
- (PXStoryConcreteFrameFillingEffectResource)initWithIdentifier:(id)identifier kind:(int64_t)kind;
- (unint64_t)hash;
@end

@implementation PXStoryConcreteFrameFillingEffectResource

- (unint64_t)hash
{
  px_storyResourceUseSmartColor = [(PXStoryConcreteFrameFillingEffectResource *)self px_storyResourceUseSmartColor];
  px_storyResourceDisplayAsset = [(PXStoryConcreteFrameFillingEffectResource *)self px_storyResourceDisplayAsset];
  v5 = px_storyResourceUseSmartColor | (2 * [px_storyResourceDisplayAsset hash]);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      px_storyResourceDisplayAsset = [(PXStoryConcreteFrameFillingEffectResource *)self px_storyResourceDisplayAsset];
      px_storyResourceDisplayAsset2 = [(PXStoryConcreteFrameFillingEffectResource *)v5 px_storyResourceDisplayAsset];
      if ([px_storyResourceDisplayAsset isEqual:px_storyResourceDisplayAsset2])
      {
        px_storyResourceUseSmartColor = [(PXStoryConcreteFrameFillingEffectResource *)self px_storyResourceUseSmartColor];
        v9 = px_storyResourceUseSmartColor ^ [(PXStoryConcreteFrameFillingEffectResource *)v5 px_storyResourceUseSmartColor]^ 1;
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

- (PXStoryConcreteFrameFillingEffectResource)initWithDisplayAsset:(id)asset useSmartColor:(BOOL)color
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  v11.receiver = self;
  v11.super_class = PXStoryConcreteFrameFillingEffectResource;
  v9 = [(PXStoryConcreteResource *)&v11 initWithIdentifier:uuid kind:5];

  if (v9)
  {
    objc_storeStrong(&v9->_displayAsset, asset);
    v9->_useSmartColor = color;
  }

  return v9;
}

- (PXStoryConcreteFrameFillingEffectResource)initWithIdentifier:(id)identifier kind:(int64_t)kind
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteResources.m" lineNumber:199 description:{@"%s is not available as initializer", "-[PXStoryConcreteFrameFillingEffectResource initWithIdentifier:kind:]"}];

  abort();
}

@end