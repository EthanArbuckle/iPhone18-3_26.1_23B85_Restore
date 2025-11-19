@interface PhotosMenu
- (id)copyWithZone:(void *)a3;
- (id)menuByReplacingChildren:(id)a3;
@end

@implementation PhotosMenu

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_1B3FDF8F4(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1B405DEB4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

- (id)menuByReplacingChildren:(id)a3
{
  sub_1B3FDFCD8();
  sub_1B405D5E4();
  v4 = self;
  v5 = sub_1B3FDFA20();

  return v5;
}

@end