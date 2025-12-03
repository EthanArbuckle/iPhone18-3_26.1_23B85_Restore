@interface TTRICustomRecurrenceCellRowSeparatorView
- (void)tintColorDidChange;
@end

@implementation TTRICustomRecurrenceCellRowSeparatorView

- (void)tintColorDidChange
{
  if ([(TTRICustomRecurrenceCellRowSeparatorView *)self vibrant])
  {
    tintColor = [(TTRICustomRecurrenceCellRowSeparatorView *)self tintColor];
    [(TTRICustomRecurrenceCellRowSeparatorView *)self setBackgroundColor:tintColor];
  }
}

@end