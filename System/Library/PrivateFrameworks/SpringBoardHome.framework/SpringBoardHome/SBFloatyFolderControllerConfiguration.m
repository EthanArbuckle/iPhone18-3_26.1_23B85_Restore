@interface SBFloatyFolderControllerConfiguration
- (SBFloatyFolderControllerConfiguration)initWithConfiguration:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBFloatyFolderControllerConfiguration

- (SBFloatyFolderControllerConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBFloatyFolderControllerConfiguration;
  v5 = [(SBFolderControllerConfiguration *)&v9 initWithConfiguration:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5->_backgroundEffect = [v4 backgroundEffect];
    }
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBFloatyFolderControllerConfiguration;
  v4 = [(SBFolderControllerConfiguration *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendInteger:-[SBFloatyFolderControllerConfiguration backgroundEffect](self withName:{"backgroundEffect"), @"backgroundEffect"}];

  return v4;
}

@end