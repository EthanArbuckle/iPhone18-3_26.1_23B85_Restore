@interface TTRIInlinePermissionPrimaryButtonViewCell
+ (Class)containerViewClass;
- (_TtC15RemindersUICore41TTRIInlinePermissionPrimaryButtonViewCell)initWithCoder:(id)a3;
- (void)prepareForReuse;
@end

@implementation TTRIInlinePermissionPrimaryButtonViewCell

+ (Class)containerViewClass
{
  sub_21D0D8CF0(0, &qword_27CE5BFF8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC15RemindersUICore41TTRIInlinePermissionPrimaryButtonViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore41TTRIInlinePermissionPrimaryButtonViewCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore41TTRIInlinePermissionPrimaryButtonViewCell____lazy_storage___primaryButton) = 0;
  v4 = (self + OBJC_IVAR____TtC15RemindersUICore41TTRIInlinePermissionPrimaryButtonViewCell_appliedConfiguration);
  *v4 = 0u;
  v4[1] = 0u;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(TTRIInlinePermissionPrimaryButtonViewCell *)&v4 prepareForReuse];
  memset(v3, 0, sizeof(v3));
  TTRIInlinePermissionPrimaryButtonViewCell.configuration.setter(v3);
}

@end