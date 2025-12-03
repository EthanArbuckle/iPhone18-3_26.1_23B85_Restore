@interface UIButton(ScreenTime)
- (void)st_setBackgroundColor:()ScreenTime;
- (void)st_setTitleColor:()ScreenTime;
@end

@implementation UIButton(ScreenTime)

- (void)st_setBackgroundColor:()ScreenTime
{
  v4 = a3;
  v7 = [v4 colorWithAlphaComponent:0.5];
  v5 = [MEMORY[0x277D755B8] st_pointImageOfColor:v4];

  [self setBackgroundImage:v5 forState:0];
  v6 = [MEMORY[0x277D755B8] st_pointImageOfColor:v7];
  [self setBackgroundImage:v6 forState:1];
}

- (void)st_setTitleColor:()ScreenTime
{
  v4 = a3;
  v5 = [v4 colorWithAlphaComponent:0.25];
  [self setTitleColor:v4 forState:0];

  [self setTitleColor:v5 forState:1];
}

@end