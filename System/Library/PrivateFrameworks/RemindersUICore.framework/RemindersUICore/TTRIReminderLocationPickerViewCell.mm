@interface TTRIReminderLocationPickerViewCell
- (_TtC15RemindersUICore34TTRIReminderLocationPickerViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)setAddressLabel:(id)label;
- (void)setNameLabel:(id)label;
- (void)setPinImageBackgroundView:(id)view;
- (void)setPinImageView:(id)view;
@end

@implementation TTRIReminderLocationPickerViewCell

- (void)awakeFromNib
{
  selfCopy = self;
  sub_21D587818();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21D587BA4();
}

- (void)setNameLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel) = label;
  labelCopy = label;
}

- (void)setAddressLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_addressLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_addressLabel) = label;
  labelCopy = label;
}

- (void)setPinImageView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView) = view;
  viewCopy = view;
}

- (void)setPinImageBackgroundView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView) = view;
  viewCopy = view;
}

- (_TtC15RemindersUICore34TTRIReminderLocationPickerViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_21D587F8C(style, identifier, v6);
}

@end