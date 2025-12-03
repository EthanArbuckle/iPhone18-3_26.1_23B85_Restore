@interface TTRBoardColumnItemLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (_TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation TTRBoardColumnItemLayoutAttributes

- (_TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners) = 15;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(UICollectionViewLayoutAttributes *)&v5 init];
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  TTRBoardColumnItemLayoutAttributes.copy(with:)(zone, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_21DBFC62C();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = TTRBoardColumnItemLayoutAttributes.isEqual(_:)(v8);

  sub_21D1A8418(v8);
  return v6;
}

@end