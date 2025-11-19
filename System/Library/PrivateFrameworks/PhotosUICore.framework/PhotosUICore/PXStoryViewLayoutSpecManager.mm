@interface PXStoryViewLayoutSpecManager
- (PXStoryViewLayoutSpec)viewLayoutSpec;
- (id)createSpec;
- (void)setCustomGeneralChromeTitleConfiguration:(id)a3;
- (void)setStoryConfigurationOptions:(unint64_t)a3;
@end

@implementation PXStoryViewLayoutSpecManager

- (id)createSpec
{
  v3 = [PXStoryConcreteViewLayoutSpec alloc];
  v4 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v5 = [(PXFeatureSpecManager *)self options];
  v6 = [(PXStoryViewLayoutSpecManager *)self storyConfigurationOptions];
  v7 = [(PXStoryViewLayoutSpecManager *)self customGeneralChromeTitleConfiguration];
  v8 = [(PXStoryConcreteViewLayoutSpec *)v3 initWithExtendedTraitCollection:v4 options:v5 storyConfigurationOptions:v6 customGeneralChromeTitleConfiguration:v7];

  return v8;
}

- (void)setCustomGeneralChromeTitleConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_customGeneralChromeTitleConfiguration != v4)
  {
    v9 = v4;
    v6 = [(PXStoryViewChromeTitleConfiguration *)v4 isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXStoryViewChromeTitleConfiguration *)v9 copy];
      customGeneralChromeTitleConfiguration = self->_customGeneralChromeTitleConfiguration;
      self->_customGeneralChromeTitleConfiguration = v7;

      [(PXFeatureSpecManager *)self invalidateSpec];
      v5 = v9;
    }
  }
}

- (void)setStoryConfigurationOptions:(unint64_t)a3
{
  if (self->_storyConfigurationOptions != a3)
  {
    self->_storyConfigurationOptions = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (PXStoryViewLayoutSpec)viewLayoutSpec
{
  v4 = [(PXFeatureSpecManager *)self spec];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXStoryViewLayoutSpecManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"viewLayoutSpec != nil"}];
  }

  return v4;
}

@end