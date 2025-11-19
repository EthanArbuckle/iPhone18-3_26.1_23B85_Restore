@interface RemoteNotificationSettingCell
- (_TtC9SeymourUI29RemoteNotificationSettingCell)initWithCoder:(id)a3;
- (_TtC9SeymourUI29RemoteNotificationSettingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)switchTappedWithCellSwitch:(id)a3;
@end

@implementation RemoteNotificationSettingCell

- (void)switchTappedWithCellSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BC58610(v4);
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

- (_TtC9SeymourUI29RemoteNotificationSettingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v9 = [(RemoteNotificationSettingCell *)&v11 initWithStyle:a3 reuseIdentifier:v7];

  return v9;
}

- (_TtC9SeymourUI29RemoteNotificationSettingCell)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v5 = self + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex;
  *v5 = 0;
  v5[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RemoteNotificationSettingCell();
  v6 = a3;
  v7 = [(RemoteNotificationSettingCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end