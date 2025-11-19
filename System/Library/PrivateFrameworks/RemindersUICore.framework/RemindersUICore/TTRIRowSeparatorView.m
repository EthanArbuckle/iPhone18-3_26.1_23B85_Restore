@interface TTRIRowSeparatorView
- (void)tintColorDidChange;
@end

@implementation TTRIRowSeparatorView

- (void)tintColorDidChange
{
  if ([(TTRIRowSeparatorView *)self isVibrant])
  {
    v3 = [(TTRIRowSeparatorView *)self tintColor];
    [(TTRIRowSeparatorView *)self setBackgroundColor:v3];
  }
}

@end