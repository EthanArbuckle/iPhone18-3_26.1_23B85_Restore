@interface PXStoryStyleConfigurationList
- (BOOL)isEqual:(id)equal;
- (PXStoryStyleConfigurationList)initWithAutoEditStyleConfigurations:(id)configurations initialStyleConfiguration:(id)configuration;
- (unint64_t)hash;
@end

@implementation PXStoryStyleConfigurationList

- (unint64_t)hash
{
  autoEditStyleConfigurations = [(PXStoryStyleConfigurationList *)self autoEditStyleConfigurations];
  v4 = [autoEditStyleConfigurations hash];

  initialStyleConfiguration = [(PXStoryStyleConfigurationList *)self initialStyleConfiguration];
  v6 = [initialStyleConfiguration hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      autoEditStyleConfigurations = [(PXStoryStyleConfigurationList *)self autoEditStyleConfigurations];
      autoEditStyleConfigurations2 = [(PXStoryStyleConfigurationList *)v5 autoEditStyleConfigurations];
      if (autoEditStyleConfigurations == autoEditStyleConfigurations2 || [autoEditStyleConfigurations isEqual:autoEditStyleConfigurations2])
      {
        initialStyleConfiguration = [(PXStoryStyleConfigurationList *)self initialStyleConfiguration];
        initialStyleConfiguration2 = [(PXStoryStyleConfigurationList *)v5 initialStyleConfiguration];
        if (initialStyleConfiguration == initialStyleConfiguration2)
        {
          v10 = 1;
        }

        else
        {
          v10 = [initialStyleConfiguration isEqual:initialStyleConfiguration2];
        }
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
  }

  return v10;
}

- (PXStoryStyleConfigurationList)initWithAutoEditStyleConfigurations:(id)configurations initialStyleConfiguration:(id)configuration
{
  configurationsCopy = configurations;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = PXStoryStyleConfigurationList;
  v8 = [(PXStoryStyleConfigurationList *)&v12 init];
  if (v8)
  {
    v9 = [configurationsCopy copy];
    autoEditStyleConfigurations = v8->_autoEditStyleConfigurations;
    v8->_autoEditStyleConfigurations = v9;

    objc_storeStrong(&v8->_initialStyleConfiguration, configuration);
  }

  return v8;
}

@end