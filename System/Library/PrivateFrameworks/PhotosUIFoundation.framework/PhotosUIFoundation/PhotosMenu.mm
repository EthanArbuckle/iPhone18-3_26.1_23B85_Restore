@interface PhotosMenu
- (id)copyWithZone:(void *)zone;
- (id)menuByReplacingChildren:(id)children;
@end

@implementation PhotosMenu

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1B3FDF8F4(zone, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1B405DEB4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

- (id)menuByReplacingChildren:(id)children
{
  sub_1B3FDFCD8();
  sub_1B405D5E4();
  selfCopy = self;
  v5 = sub_1B3FDFA20();

  return v5;
}

@end