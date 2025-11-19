@interface SHUDJindoAccessoryView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (void)setFrame:(CGRect)a3;
@end

@implementation SHUDJindoAccessoryView

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = SHUDJindoAccessoryView;
  [(SHUDJindoAccessoryView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  [(SHUDJindoAccessoryView *)self sizeThatFits:a4, a3.width, a3.height];
  result.height = v5;
  result.width = v4;
  return result;
}

@end