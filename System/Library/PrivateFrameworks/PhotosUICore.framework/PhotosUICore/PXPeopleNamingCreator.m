@interface PXPeopleNamingCreator
+ (id)namingViewControllerFor:(id)a3 presentationEnvironment:(id)a4;
- (PXPeopleNamingCreator)init;
@end

@implementation PXPeopleNamingCreator

+ (id)namingViewControllerFor:(id)a3 presentationEnvironment:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = sub_1A48690E8(v4);

  swift_unknownObjectRelease();

  return v5;
}

- (PXPeopleNamingCreator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PXPeopleNamingCreator *)&v3 init];
}

@end