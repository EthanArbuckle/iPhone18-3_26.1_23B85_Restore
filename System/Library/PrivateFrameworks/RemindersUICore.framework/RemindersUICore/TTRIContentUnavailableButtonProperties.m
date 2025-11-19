@interface TTRIContentUnavailableButtonProperties
- (UIAction)primaryAction;
- (void)setPrimaryAction:(id)a3;
@end

@implementation TTRIContentUnavailableButtonProperties

- (UIAction)primaryAction
{
  v2 = [(TTRIContentUnavailableButtonProperties *)self asUIKit];
  v3 = [v2 primaryAction];

  return v3;
}

- (void)setPrimaryAction:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableButtonProperties *)self asUIKit];
  [v5 setPrimaryAction:v4];
}

@end