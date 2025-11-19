@interface TTRIInlinePermissionHeaderViewCell
+ (Class)containerViewClass;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)prepareForReuse;
@end

@implementation TTRIInlinePermissionHeaderViewCell

+ (Class)containerViewClass
{
  sub_21D0D8CF0(0, &qword_27CE67280);

  return swift_getObjCClassFromMetadata();
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(TTRIInlinePermissionHeaderViewCell *)&v5 prepareForReuse];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TTRIInlinePermissionHeaderViewCell.configuration.setter(v3);
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v3 = self;
  v5 = sub_21DB508E8(&OBJC_IVAR____TtC15RemindersUICore34TTRIInlinePermissionHeaderViewCell____lazy_storage___titleLabel, 9, &selRef_labelColor);
  UITableViewCell.setSeparatorInsetType(_:)(&v5);

  v4 = v5;

  sub_21D22BF80(v4);
}

@end