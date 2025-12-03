@interface SBIconViewDragInfo
- (SBIconViewDragInfo)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBIconViewDragInfo

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [coderCopy encodeObject:self->_launchURL forKey:@"launchURL"];
  [coderCopy encodeInteger:self->_startLocation forKey:@"startLocation"];
  [coderCopy encodeObject:self->_customIconDataSourceConfigurations forKey:@"customIconDataSourceConfigurations"];
  [coderCopy encodeObject:self->_activeCustomIconDataSourceUniqueIdentifier forKey:@"activeCustomIconDataSourceUniqueIdentifier"];
  [coderCopy encodeObject:self->_gridSizeClass forKey:@"gridSizeClass"];
}

- (SBIconViewDragInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SBIconViewDragInfo;
  v5 = [(SBIconViewDragInfo *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"launchURL"];
    launchURL = v5->_launchURL;
    v5->_launchURL = v13;

    v5->_startLocation = [coderCopy decodeIntegerForKey:@"startLocation"];
    v15 = [coderCopy decodeObjectForKey:@"customIconDataSourceConfigurations"];
    customIconDataSourceConfigurations = v5->_customIconDataSourceConfigurations;
    v5->_customIconDataSourceConfigurations = v15;

    v17 = [coderCopy decodeObjectForKey:@"activeCustomIconDataSourceUniqueIdentifier"];
    activeCustomIconDataSourceUniqueIdentifier = v5->_activeCustomIconDataSourceUniqueIdentifier;
    v5->_activeCustomIconDataSourceUniqueIdentifier = v17;

    v19 = objc_opt_self();
    v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"gridSizeClass"];
    gridSizeClass = v5->_gridSizeClass;
    v5->_gridSizeClass = v20;
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconViewDragInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconViewDragInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
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