@interface SHUDJindoAccessoryView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (void)setFrame:(CGRect)frame;
@end

@implementation SHUDJindoAccessoryView

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = SHUDJindoAccessoryView;
  [(SHUDJindoAccessoryView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  [(SHUDJindoAccessoryView *)self sizeThatFits:mode, fits.width, fits.height];
  result.height = v5;
  result.width = v4;
  return result;
}

@end