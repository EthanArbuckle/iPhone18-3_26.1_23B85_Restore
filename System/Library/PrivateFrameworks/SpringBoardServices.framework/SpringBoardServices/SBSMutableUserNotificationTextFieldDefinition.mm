@interface SBSMutableUserNotificationTextFieldDefinition
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTitle:(id)title;
- (void)setValue:(id)value;
@end

@implementation SBSMutableUserNotificationTextFieldDefinition

- (void)setTitle:(id)title
{
  if (self->super._title != title)
  {
    self->super._title = [title copy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setValue:(id)value
{
  if (self->super._value != value)
  {
    self->super._value = [value copy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SBSUserNotificationTextFieldDefinition);
  [(SBSUserNotificationTextFieldDefinition *)self _copyPropertiesToDefinition:v4];
  return v4;
}

@end