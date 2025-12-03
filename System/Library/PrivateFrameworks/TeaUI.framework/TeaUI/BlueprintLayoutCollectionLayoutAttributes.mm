@interface BlueprintLayoutCollectionLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(void *)zone;
@end

@implementation BlueprintLayoutCollectionLayoutAttributes

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  BlueprintLayoutCollectionLayoutAttributes.copy(with:)(zone, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1D8192614();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = BlueprintLayoutCollectionLayoutAttributes.isEqual(_:)(v8);

  sub_1D7E70EA0(v8, sub_1D7E2CEC0);
  return v6 & 1;
}

@end