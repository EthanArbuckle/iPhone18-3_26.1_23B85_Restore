@interface SBFloatyFolderControllerConfiguration
- (SBFloatyFolderControllerConfiguration)initWithConfiguration:(id)configuration;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBFloatyFolderControllerConfiguration

- (SBFloatyFolderControllerConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SBFloatyFolderControllerConfiguration;
  v5 = [(SBFolderControllerConfiguration *)&v9 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5->_backgroundEffect = [configurationCopy backgroundEffect];
    }
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBFloatyFolderControllerConfiguration;
  v4 = [(SBFolderControllerConfiguration *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendInteger:-[SBFloatyFolderControllerConfiguration backgroundEffect](self withName:{"backgroundEffect"), @"backgroundEffect"}];

  return v4;
}

@end