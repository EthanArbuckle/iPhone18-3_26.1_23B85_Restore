@interface UITableViewCell(SS)
- (id)defaultConfig;
@end

@implementation UITableViewCell(SS)

- (id)defaultConfig
{
  [self setSelectionStyle:0];
  defaultContentConfiguration = [self defaultContentConfiguration];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:lightGrayColor];

  return defaultContentConfiguration;
}

@end