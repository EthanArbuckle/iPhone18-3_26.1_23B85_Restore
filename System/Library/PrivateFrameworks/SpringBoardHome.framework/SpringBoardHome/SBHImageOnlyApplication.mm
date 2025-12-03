@interface SBHImageOnlyApplication
- (NSURL)bundleURL;
- (SBHImageOnlyApplication)init;
- (SBHImageOnlyApplication)initWithBundleIdentifier:(id)identifier;
- (id)applicationBundleIdentifierForImageForIcon:(id)icon;
- (id)icon:(id)icon displayNameForLocation:(id)location;
@end

@implementation SBHImageOnlyApplication

- (SBHImageOnlyApplication)initWithBundleIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v5 = (self + OBJC_IVAR___SBHImageOnlyApplication_bundleIdentifier);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ImageOnlyApplication();
  return [(SBHImageOnlyApplication *)&v8 init];
}

- (NSURL)bundleURL
{
  v2 = sub_1BEE4685C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4683C();
  v6 = sub_1BEE4684C();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{

  v4 = sub_1BEE4705C();

  return v4;
}

- (id)applicationBundleIdentifierForImageForIcon:(id)icon
{

  v3 = sub_1BEE4705C();

  return v3;
}

- (SBHImageOnlyApplication)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end