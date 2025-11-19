@interface TTRIReminderLocationPickerViewCell
- (_TtC15RemindersUICore34TTRIReminderLocationPickerViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)setAddressLabel:(id)a3;
- (void)setNameLabel:(id)a3;
- (void)setPinImageBackgroundView:(id)a3;
- (void)setPinImageView:(id)a3;
@end

@implementation TTRIReminderLocationPickerViewCell

- (void)awakeFromNib
{
  v2 = self;
  sub_21D587818();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21D587BA4();
}

- (void)setNameLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel) = a3;
  v3 = a3;
}

- (void)setAddressLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_addressLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_addressLabel) = a3;
  v3 = a3;
}

- (void)setPinImageView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView) = a3;
  v3 = a3;
}

- (void)setPinImageBackgroundView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView) = a3;
  v3 = a3;
}

- (_TtC15RemindersUICore34TTRIReminderLocationPickerViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_21D587F8C(a3, a4, v6);
}

@end