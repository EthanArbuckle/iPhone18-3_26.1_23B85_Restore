@interface SPUISQuickWebsiteSearchUtilities
+ (id)quickWebsiteSearchCommandWithBundleIdentifier:(id)identifier entityIdentifier:(id)entityIdentifier searchQuery:(id)query;
- (_TtC19SpotlightUIServices32SPUISQuickWebsiteSearchUtilities)init;
@end

@implementation SPUISQuickWebsiteSearchUtilities

+ (id)quickWebsiteSearchCommandWithBundleIdentifier:(id)identifier entityIdentifier:(id)entityIdentifier searchQuery:(id)query
{
  v6 = sub_26B8C7E94();
  v8 = v7;
  v9 = sub_26B8C7E94();
  v11 = v10;
  if (query)
  {
    v12 = sub_26B8C7E94();
    query = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = sub_26B8C5D04(v6, v8, v9, v11, v12, query);

  return v14;
}

- (_TtC19SpotlightUIServices32SPUISQuickWebsiteSearchUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SPUISQuickWebsiteSearchUtilities();
  return [(SPUISQuickWebsiteSearchUtilities *)&v3 init];
}

@end