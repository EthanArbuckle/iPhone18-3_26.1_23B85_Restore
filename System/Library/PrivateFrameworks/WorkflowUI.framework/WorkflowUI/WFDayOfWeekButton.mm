@interface WFDayOfWeekButton
- (void)layoutSubviews;
@end

@implementation WFDayOfWeekButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = WFDayOfWeekButton;
  [(WFDayOfWeekButton *)&v5 layoutSubviews];
  [(WFDayOfWeekButton *)self bounds];
  v3 = CGRectGetWidth(v6) * 0.5;
  layer = [(WFDayOfWeekButton *)self layer];
  [layer setCornerRadius:v3];
}

@end