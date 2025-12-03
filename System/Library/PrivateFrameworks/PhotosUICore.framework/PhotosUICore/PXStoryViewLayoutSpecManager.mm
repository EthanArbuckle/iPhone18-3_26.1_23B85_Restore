@interface PXStoryViewLayoutSpecManager
- (PXStoryViewLayoutSpec)viewLayoutSpec;
- (id)createSpec;
- (void)setCustomGeneralChromeTitleConfiguration:(id)configuration;
- (void)setStoryConfigurationOptions:(unint64_t)options;
@end

@implementation PXStoryViewLayoutSpecManager

- (id)createSpec
{
  v3 = [PXStoryConcreteViewLayoutSpec alloc];
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  options = [(PXFeatureSpecManager *)self options];
  storyConfigurationOptions = [(PXStoryViewLayoutSpecManager *)self storyConfigurationOptions];
  customGeneralChromeTitleConfiguration = [(PXStoryViewLayoutSpecManager *)self customGeneralChromeTitleConfiguration];
  v8 = [(PXStoryConcreteViewLayoutSpec *)v3 initWithExtendedTraitCollection:extendedTraitCollection options:options storyConfigurationOptions:storyConfigurationOptions customGeneralChromeTitleConfiguration:customGeneralChromeTitleConfiguration];

  return v8;
}

- (void)setCustomGeneralChromeTitleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (self->_customGeneralChromeTitleConfiguration != configurationCopy)
  {
    v9 = configurationCopy;
    v6 = [(PXStoryViewChromeTitleConfiguration *)configurationCopy isEqual:?];
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

- (void)setStoryConfigurationOptions:(unint64_t)options
{
  if (self->_storyConfigurationOptions != options)
  {
    self->_storyConfigurationOptions = options;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (PXStoryViewLayoutSpec)viewLayoutSpec
{
  spec = [(PXFeatureSpecManager *)self spec];
  if (!spec)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewLayoutSpecManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"viewLayoutSpec != nil"}];
  }

  return spec;
}

@end