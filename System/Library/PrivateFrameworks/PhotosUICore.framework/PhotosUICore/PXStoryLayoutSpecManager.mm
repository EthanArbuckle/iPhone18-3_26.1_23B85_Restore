@interface PXStoryLayoutSpecManager
- (PXStoryLayoutSpec)layoutSpec;
- (PXStoryLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options storyConfigurationOptions:(unint64_t)configurationOptions;
- (id)createSpec;
@end

@implementation PXStoryLayoutSpecManager

- (id)createSpec
{
  v3 = [PXStoryConcreteLayoutSpec alloc];
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v5 = [(PXStoryConcreteLayoutSpec *)v3 initWithExtendedTraitCollection:extendedTraitCollection options:[(PXFeatureSpecManager *)self options] storyConfigurationOptions:[(PXStoryLayoutSpecManager *)self storyConfigurationOptions]];

  return v5;
}

- (PXStoryLayoutSpec)layoutSpec
{
  spec = [(PXFeatureSpecManager *)self spec];
  if (!spec)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryLayoutSpecManager.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"layoutSpec != nil"}];
  }

  return spec;
}

- (PXStoryLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options storyConfigurationOptions:(unint64_t)configurationOptions
{
  v7.receiver = self;
  v7.super_class = PXStoryLayoutSpecManager;
  result = [(PXFeatureSpecManager *)&v7 initWithExtendedTraitCollection:collection options:options];
  if (result)
  {
    result->_storyConfigurationOptions = configurationOptions;
  }

  return result;
}

@end