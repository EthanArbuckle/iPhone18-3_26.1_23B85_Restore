@interface SWFeedConfiguration
- (BOOL)isEqual:(id)equal;
- (SWFeedConfiguration)init;
- (SWFeedConfiguration)initWithSelectors:(id)selectors configuration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SWFeedConfiguration

- (SWFeedConfiguration)init
{
  v7.receiver = self;
  v7.super_class = SWFeedConfiguration;
  v2 = [(SWFeedConfiguration *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    selectors = v2->_selectors;
    v2->_selectors = v3;

    configuration = v2->_configuration;
    v2->_configuration = 0;
  }

  return v2;
}

- (SWFeedConfiguration)initWithSelectors:(id)selectors configuration:(id)configuration
{
  selectorsCopy = selectors;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SWFeedConfiguration;
  v9 = [(SWFeedConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selectors, selectors);
    objc_storeStrong(&v10->_configuration, configuration);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SWFeedConfiguration alloc];
  selectors = [(SWFeedConfiguration *)self selectors];
  configuration = [(SWFeedConfiguration *)self configuration];
  v7 = [(SWFeedConfiguration *)v4 initWithSelectors:selectors configuration:configuration];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    selectors = [(SWFeedConfiguration *)self selectors];
    selectors2 = [v5 selectors];
    v8 = [selectors isEqualToSet:selectors2];

    if (!v8)
    {
      goto LABEL_8;
    }

    configuration = [(SWFeedConfiguration *)self configuration];
    configuration2 = [v5 configuration];

    if (configuration == configuration2)
    {
      v16 = 1;
      goto LABEL_10;
    }

    configuration3 = [(SWFeedConfiguration *)self configuration];
    if (configuration3 && (v12 = configuration3, [v5 configuration], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      configuration4 = [(SWFeedConfiguration *)self configuration];
      configuration5 = [v5 configuration];
      v16 = [configuration4 isEqualToDictionary:configuration5];
    }

    else
    {
LABEL_8:
      v16 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

@end