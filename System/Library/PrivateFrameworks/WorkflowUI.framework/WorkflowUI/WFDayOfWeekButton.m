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
  v4 = [(WFDayOfWeekButton *)self layer];
  [v4 setCornerRadius:v3];
}

@end