@interface TTRIRowSeparatorView
- (void)tintColorDidChange;
@end

@implementation TTRIRowSeparatorView

- (void)tintColorDidChange
{
  if ([(TTRIRowSeparatorView *)self isVibrant])
  {
    tintColor = [(TTRIRowSeparatorView *)self tintColor];
    [(TTRIRowSeparatorView *)self setBackgroundColor:tintColor];
  }
}

@end