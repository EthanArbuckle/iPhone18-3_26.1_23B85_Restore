@interface SBSMutableUserNotificationButtonDefinition
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIsPreferredButton:(BOOL)button;
- (void)setPresentationStyle:(int)style;
- (void)setTitle:(id)title;
@end

@implementation SBSMutableUserNotificationButtonDefinition

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [titleCopy copy];
    title = self->super._title;
    self->super._title = v4;
  }
}

- (void)setPresentationStyle:(int)style
{
  if (self->super._presentationStyle != style)
  {
    self->super._presentationStyle = style;
  }
}

- (void)setIsPreferredButton:(BOOL)button
{
  if (self->super._isPreferredButton != button)
  {
    self->super._isPreferredButton = button;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SBSUserNotificationButtonDefinition alloc] initWithTitle:self->super._title];
  [(SBSUserNotificationButtonDefinition *)self _copyPropertiesToDefinition:v4];
  return v4;
}

@end