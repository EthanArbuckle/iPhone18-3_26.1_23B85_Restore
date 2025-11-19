@interface PXSwitchableAssetsDataSourceManager.Key
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
@end

@implementation PXSwitchableAssetsDataSourceManager.Key

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_29EC68CA0(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_29EC7F494();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_29EC68DB4();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_29EC7F314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_29EC68E2C(v8);

  sub_29EC6A2EC(v8);
  return v6 & 1;
}

@end