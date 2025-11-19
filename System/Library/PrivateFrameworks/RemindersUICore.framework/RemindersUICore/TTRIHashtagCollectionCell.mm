@interface TTRIHashtagCollectionCell
+ (Class)containerViewClass;
- (_TtC15RemindersUICore25TTRIHashtagCollectionCell)initWithCoder:(id)a3;
- (_TtC15RemindersUICore25TTRIHashtagCollectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRIHashtagCollectionCell

+ (Class)containerViewClass
{
  type metadata accessor for TTRIMarginTransferringContainerBoxView();

  return swift_getObjCClassFromMetadata();
}

- (_TtC15RemindersUICore25TTRIHashtagCollectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21DAD2004(a3, a4, v6);
}

- (_TtC15RemindersUICore25TTRIHashtagCollectionCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

@end