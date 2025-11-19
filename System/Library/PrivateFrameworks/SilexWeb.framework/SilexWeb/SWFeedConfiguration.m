@interface SWFeedConfiguration
- (BOOL)isEqual:(id)a3;
- (SWFeedConfiguration)init;
- (SWFeedConfiguration)initWithSelectors:(id)a3 configuration:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (SWFeedConfiguration)initWithSelectors:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SWFeedConfiguration;
  v9 = [(SWFeedConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selectors, a3);
    objc_storeStrong(&v10->_configuration, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SWFeedConfiguration alloc];
  v5 = [(SWFeedConfiguration *)self selectors];
  v6 = [(SWFeedConfiguration *)self configuration];
  v7 = [(SWFeedConfiguration *)v4 initWithSelectors:v5 configuration:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SWFeedConfiguration *)self selectors];
    v7 = [v5 selectors];
    v8 = [v6 isEqualToSet:v7];

    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = [(SWFeedConfiguration *)self configuration];
    v10 = [v5 configuration];

    if (v9 == v10)
    {
      v16 = 1;
      goto LABEL_10;
    }

    v11 = [(SWFeedConfiguration *)self configuration];
    if (v11 && (v12 = v11, [v5 configuration], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = [(SWFeedConfiguration *)self configuration];
      v15 = [v5 configuration];
      v16 = [v14 isEqualToDictionary:v15];
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