@interface UITableViewCell(SS)
- (id)defaultConfig;
@end

@implementation UITableViewCell(SS)

- (id)defaultConfig
{
  [a1 setSelectionStyle:0];
  v2 = [a1 defaultContentConfiguration];
  v3 = [MEMORY[0x277D75348] lightGrayColor];
  v4 = [v2 secondaryTextProperties];
  [v4 setColor:v3];

  return v2;
}

@end