@interface StackCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(void *)a3;
@end

@implementation StackCollectionViewLayoutAttributes

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_1E37BD72C(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1E4207994();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1E37BD88C();

  sub_1E329505C(v8);
  return v6 & 1;
}

@end