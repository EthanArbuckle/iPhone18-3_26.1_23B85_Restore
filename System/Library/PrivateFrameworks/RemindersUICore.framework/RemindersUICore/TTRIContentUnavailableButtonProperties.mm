@interface TTRIContentUnavailableButtonProperties
- (UIAction)primaryAction;
- (void)setPrimaryAction:(id)action;
@end

@implementation TTRIContentUnavailableButtonProperties

- (UIAction)primaryAction
{
  asUIKit = [(TTRIContentUnavailableButtonProperties *)self asUIKit];
  primaryAction = [asUIKit primaryAction];

  return primaryAction;
}

- (void)setPrimaryAction:(id)action
{
  actionCopy = action;
  asUIKit = [(TTRIContentUnavailableButtonProperties *)self asUIKit];
  [asUIKit setPrimaryAction:actionCopy];
}

@end