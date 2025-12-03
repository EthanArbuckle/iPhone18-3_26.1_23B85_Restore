@interface PXPeopleNamingCreator
+ (id)namingViewControllerFor:(id)for presentationEnvironment:(id)environment;
- (PXPeopleNamingCreator)init;
@end

@implementation PXPeopleNamingCreator

+ (id)namingViewControllerFor:(id)for presentationEnvironment:(id)environment
{
  forCopy = for;
  swift_unknownObjectRetain();
  v5 = sub_1A48690E8(forCopy);

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