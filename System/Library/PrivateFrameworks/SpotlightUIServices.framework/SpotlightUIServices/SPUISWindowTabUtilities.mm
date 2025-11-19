@interface SPUISWindowTabUtilities
+ (id)openWindowCommandWithAppBundleId:(id)a3 processInstanceIdentifier:(id)a4 entityIdentifier:(id)a5;
- (_TtC19SpotlightUIServices23SPUISWindowTabUtilities)init;
@end

@implementation SPUISWindowTabUtilities

+ (id)openWindowCommandWithAppBundleId:(id)a3 processInstanceIdentifier:(id)a4 entityIdentifier:(id)a5
{
  v5 = sub_26B8C7E94();
  v7 = v6;
  v8 = sub_26B8C7E94();
  v10 = v9;
  v11 = sub_26B8C7E94();
  v13 = sub_26B8C499C(v5, v7, v8, v10, v11, v12);

  return v13;
}

- (_TtC19SpotlightUIServices23SPUISWindowTabUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SPUISWindowTabUtilities();
  return [(SPUISWindowTabUtilities *)&v3 init];
}

@end