@interface SBIconViewDragInfo
- (SBIconViewDragInfo)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBIconViewDragInfo

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v5 encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [v5 encodeObject:self->_launchURL forKey:@"launchURL"];
  [v5 encodeInteger:self->_startLocation forKey:@"startLocation"];
  [v5 encodeObject:self->_customIconDataSourceConfigurations forKey:@"customIconDataSourceConfigurations"];
  [v5 encodeObject:self->_activeCustomIconDataSourceUniqueIdentifier forKey:@"activeCustomIconDataSourceUniqueIdentifier"];
  [v5 encodeObject:self->_gridSizeClass forKey:@"gridSizeClass"];
}

- (SBIconViewDragInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SBIconViewDragInfo;
  v5 = [(SBIconViewDragInfo *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"launchURL"];
    launchURL = v5->_launchURL;
    v5->_launchURL = v13;

    v5->_startLocation = [v4 decodeIntegerForKey:@"startLocation"];
    v15 = [v4 decodeObjectForKey:@"customIconDataSourceConfigurations"];
    customIconDataSourceConfigurations = v5->_customIconDataSourceConfigurations;
    v5->_customIconDataSourceConfigurations = v15;

    v17 = [v4 decodeObjectForKey:@"activeCustomIconDataSourceUniqueIdentifier"];
    activeCustomIconDataSourceUniqueIdentifier = v5->_activeCustomIconDataSourceUniqueIdentifier;
    v5->_activeCustomIconDataSourceUniqueIdentifier = v17;

    v19 = objc_opt_self();
    v20 = [v4 decodeObjectOfClass:v19 forKey:@"gridSizeClass"];
    gridSizeClass = v5->_gridSizeClass;
    v5->_gridSizeClass = v20;
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconViewDragInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBIconViewDragInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v6 = [v4 appendObject:self->_applicationBundleIdentifier withName:@"applicationBundleIdentifier"];
  v7 = [v4 appendObject:self->_launchURL withName:@"launchURL"];
  v8 = [v4 appendInteger:self->_startLocation withName:@"startLocation"];
  v9 = [v4 appendObject:self->_customIconDataSourceConfigurations withName:@"customIconDataSourceConfigurations"];
  v10 = [v4 appendObject:self->_activeCustomIconDataSourceUniqueIdentifier withName:@"activeCustomIconDataSourceUniqueIdentifier"];
  [v4 appendString:self->_gridSizeClass withName:@"gridSizeClass"];

  return v4;
}

@end