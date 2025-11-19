@interface PXPeopleUnifiedItemFactory
+ (id)itemWithPerson:(id)a3;
+ (id)itemWithSocialGroup:(id)a3;
- (_TtC12PhotosUICore26PXPeopleUnifiedItemFactory)init;
@end

@implementation PXPeopleUnifiedItemFactory

+ (id)itemWithPerson:(id)a3
{
  v3 = sub_1A44B77D4(a3, 0);

  return v3;
}

+ (id)itemWithSocialGroup:(id)a3
{
  v3 = sub_1A44B793C(a3, 0);

  return v3;
}

- (_TtC12PhotosUICore26PXPeopleUnifiedItemFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXPeopleUnifiedItemFactory();
  return [(PXPeopleUnifiedItemFactory *)&v3 init];
}

@end