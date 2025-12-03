@interface RemoteNotificationSettingCell
- (_TtC9SeymourUI29RemoteNotificationSettingCell)initWithCoder:(id)coder;
- (_TtC9SeymourUI29RemoteNotificationSettingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)switchTappedWithCellSwitch:(id)switch;
@end

@implementation RemoteNotificationSettingCell

- (void)switchTappedWithCellSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_20BC58610(switchCopy);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RemoteNotificationSettingCell();
  v2 = v4.receiver;
  [(RemoteNotificationSettingCell *)&v4 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex];
  *v3 = 0;
  v3[8] = 1;
}

- (_TtC9SeymourUI29RemoteNotificationSettingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_20C13C954();
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_delegate) = 0;
    swift_unknownObjectWeakInit();
    v6 = self + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex;
    *v6 = 0;
    v6[8] = 1;
    v7 = sub_20C13C914();
  }

  else
  {
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_delegate) = 0;
    swift_unknownObjectWeakInit();
    v7 = 0;
    v8 = self + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex;
    *v8 = 0;
    v8[8] = 1;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RemoteNotificationSettingCell();
  v9 = [(RemoteNotificationSettingCell *)&v11 initWithStyle:style reuseIdentifier:v7];

  return v9;
}

- (_TtC9SeymourUI29RemoteNotificationSettingCell)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v5 = self + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex;
  *v5 = 0;
  v5[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RemoteNotificationSettingCell();
  coderCopy = coder;
  v7 = [(RemoteNotificationSettingCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end