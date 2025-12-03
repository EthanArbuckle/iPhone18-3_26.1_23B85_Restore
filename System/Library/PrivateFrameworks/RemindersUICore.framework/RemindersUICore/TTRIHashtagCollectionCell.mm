@interface TTRIHashtagCollectionCell
+ (Class)containerViewClass;
- (_TtC15RemindersUICore25TTRIHashtagCollectionCell)initWithCoder:(id)coder;
- (_TtC15RemindersUICore25TTRIHashtagCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRIHashtagCollectionCell

+ (Class)containerViewClass
{
  type metadata accessor for TTRIMarginTransferringContainerBoxView();

  return swift_getObjCClassFromMetadata();
}

- (_TtC15RemindersUICore25TTRIHashtagCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21DAD2004(style, identifier, v6);
}

- (_TtC15RemindersUICore25TTRIHashtagCollectionCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

@end