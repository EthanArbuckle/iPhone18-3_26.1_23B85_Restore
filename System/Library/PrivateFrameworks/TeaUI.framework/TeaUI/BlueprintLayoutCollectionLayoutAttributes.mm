@interface BlueprintLayoutCollectionLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(void *)a3;
@end

@implementation BlueprintLayoutCollectionLayoutAttributes

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  BlueprintLayoutCollectionLayoutAttributes.copy(with:)(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1D8192614();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = BlueprintLayoutCollectionLayoutAttributes.isEqual(_:)(v8);

  sub_1D7E70EA0(v8, sub_1D7E2CEC0);
  return v6 & 1;
}

@end