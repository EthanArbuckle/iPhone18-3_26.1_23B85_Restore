@interface GenericApplicationIconDataSource
- (NSString)uniqueIdentifier;
- (_TtC15SpringBoardHomeP33_14F9E5E684559CC7FCC39AA4C6A93D2732GenericApplicationIconDataSource)init;
- (id)icon:(id)icon displayNameForLocation:(id)location;
- (id)iconServicesIconForImageForIcon:(id)icon;
@end

@implementation GenericApplicationIconDataSource

- (NSString)uniqueIdentifier
{
  v2 = sub_1BEE4705C();

  return v2;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  v4 = sub_1BEE4705C();

  return v4;
}

- (id)iconServicesIconForImageForIcon:(id)icon
{
  genericApplicationIcon = [objc_opt_self() genericApplicationIcon];

  return genericApplicationIcon;
}

- (_TtC15SpringBoardHomeP33_14F9E5E684559CC7FCC39AA4C6A93D2732GenericApplicationIconDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenericApplicationIconDataSource();
  return [(GenericApplicationIconDataSource *)&v3 init];
}

@end