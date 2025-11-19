@interface SBSMutableUserNotificationButtonDefinition
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIsPreferredButton:(BOOL)a3;
- (void)setPresentationStyle:(int)a3;
- (void)setTitle:(id)a3;
@end

@implementation SBSMutableUserNotificationButtonDefinition

- (void)setTitle:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    title = self->super._title;
    self->super._title = v4;
  }
}

- (void)setPresentationStyle:(int)a3
{
  if (self->super._presentationStyle != a3)
  {
    self->super._presentationStyle = a3;
  }
}

- (void)setIsPreferredButton:(BOOL)a3
{
  if (self->super._isPreferredButton != a3)
  {
    self->super._isPreferredButton = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SBSUserNotificationButtonDefinition alloc] initWithTitle:self->super._title];
  [(SBSUserNotificationButtonDefinition *)self _copyPropertiesToDefinition:v4];
  return v4;
}

@end