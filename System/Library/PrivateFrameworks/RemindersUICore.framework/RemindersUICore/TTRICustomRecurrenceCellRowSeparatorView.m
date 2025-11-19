@interface TTRICustomRecurrenceCellRowSeparatorView
- (void)tintColorDidChange;
@end

@implementation TTRICustomRecurrenceCellRowSeparatorView

- (void)tintColorDidChange
{
  if ([(TTRICustomRecurrenceCellRowSeparatorView *)self vibrant])
  {
    v3 = [(TTRICustomRecurrenceCellRowSeparatorView *)self tintColor];
    [(TTRICustomRecurrenceCellRowSeparatorView *)self setBackgroundColor:v3];
  }
}

@end