@interface TSKMockUIAlert
- (TSKMockUIAlert)initWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle;
@end

@implementation TSKMockUIAlert

- (TSKMockUIAlert)initWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle
{
  v7.receiver = self;
  v7.super_class = TSKMockUIAlert;
  return [(TSKAbstractAlert *)&v7 init:title];
}

@end