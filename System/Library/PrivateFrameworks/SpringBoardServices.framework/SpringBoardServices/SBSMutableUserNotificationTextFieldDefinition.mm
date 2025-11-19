@interface SBSMutableUserNotificationTextFieldDefinition
- (id)copyWithZone:(_NSZone *)a3;
- (void)setTitle:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation SBSMutableUserNotificationTextFieldDefinition

- (void)setTitle:(id)a3
{
  if (self->super._title != a3)
  {
    self->super._title = [a3 copy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setValue:(id)a3
{
  if (self->super._value != a3)
  {
    self->super._value = [a3 copy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBSUserNotificationTextFieldDefinition);
  [(SBSUserNotificationTextFieldDefinition *)self _copyPropertiesToDefinition:v4];
  return v4;
}

@end