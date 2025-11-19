@interface PXStoryLayoutSpecManager
- (PXStoryLayoutSpec)layoutSpec;
- (PXStoryLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 storyConfigurationOptions:(unint64_t)a5;
- (id)createSpec;
@end

@implementation PXStoryLayoutSpecManager

- (id)createSpec
{
  v3 = [PXStoryConcreteLayoutSpec alloc];
  v4 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v5 = [(PXStoryConcreteLayoutSpec *)v3 initWithExtendedTraitCollection:v4 options:[(PXFeatureSpecManager *)self options] storyConfigurationOptions:[(PXStoryLayoutSpecManager *)self storyConfigurationOptions]];

  return v5;
}

- (PXStoryLayoutSpec)layoutSpec
{
  v4 = [(PXFeatureSpecManager *)self spec];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXStoryLayoutSpecManager.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"layoutSpec != nil"}];
  }

  return v4;
}

- (PXStoryLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 storyConfigurationOptions:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = PXStoryLayoutSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:a3 options:a4];
  if (result)
  {
    result->_storyConfigurationOptions = a5;
  }

  return result;
}

@end