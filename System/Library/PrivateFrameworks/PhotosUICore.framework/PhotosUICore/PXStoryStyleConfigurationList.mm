@interface PXStoryStyleConfigurationList
- (BOOL)isEqual:(id)a3;
- (PXStoryStyleConfigurationList)initWithAutoEditStyleConfigurations:(id)a3 initialStyleConfiguration:(id)a4;
- (unint64_t)hash;
@end

@implementation PXStoryStyleConfigurationList

- (unint64_t)hash
{
  v3 = [(PXStoryStyleConfigurationList *)self autoEditStyleConfigurations];
  v4 = [v3 hash];

  v5 = [(PXStoryStyleConfigurationList *)self initialStyleConfiguration];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryStyleConfigurationList *)self autoEditStyleConfigurations];
      v7 = [(PXStoryStyleConfigurationList *)v5 autoEditStyleConfigurations];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(PXStoryStyleConfigurationList *)self initialStyleConfiguration];
        v9 = [(PXStoryStyleConfigurationList *)v5 initialStyleConfiguration];
        if (v8 == v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = [v8 isEqual:v9];
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

- (PXStoryStyleConfigurationList)initWithAutoEditStyleConfigurations:(id)a3 initialStyleConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXStoryStyleConfigurationList;
  v8 = [(PXStoryStyleConfigurationList *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    autoEditStyleConfigurations = v8->_autoEditStyleConfigurations;
    v8->_autoEditStyleConfigurations = v9;

    objc_storeStrong(&v8->_initialStyleConfiguration, a4);
  }

  return v8;
}

@end