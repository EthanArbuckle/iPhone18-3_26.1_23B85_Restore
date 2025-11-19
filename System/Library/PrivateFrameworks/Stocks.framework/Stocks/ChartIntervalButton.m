@interface ChartIntervalButton
+ (id)titleForInterval:(int64_t)a3;
- (ChartIntervalButton)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation ChartIntervalButton

- (ChartIntervalButton)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = ChartIntervalButton;
  v3 = [(ChartIntervalButton *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(ChartIntervalButton *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x277D75348] whiteColor];
    [(ChartIntervalButton *)v3 setTextColor:v5];

    v6 = +[StocksStyle sharedStyle];
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 _referenceBounds];
    v8 = 14.0;
    if (v9 == 667.0)
    {
      v8 = 17.0;
    }

    v10 = [v6 lightFontOfSize:v8];
    [(ChartIntervalButton *)v3 setFont:v10];

    [(ChartIntervalButton *)v3 setTextAlignment:1];
  }

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  if ([(ChartIntervalButton *)self isSelected]!= a3)
  {
    self->_selected = a3;
    v9 = +[StocksStyle sharedStyle];
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 _referenceBounds];
    v6 = 14.0;
    if (v7 == 667.0)
    {
      v6 = 17.0;
    }

    if (a3)
    {
      [v9 boldFontOfSize:v6];
    }

    else
    {
      [v9 lightFontOfSize:v6];
    }
    v8 = ;
    [(ChartIntervalButton *)self setFont:v8];
  }
}

+ (id)titleForInterval:(int64_t)a3
{
  v4 = [StocksBundles getBundle:1];
  v5 = v4;
  if ((a3 - 1) > 7)
  {
    v6 = @"1d";
  }

  else
  {
    v6 = off_279D16758[a3 - 1];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_287C73C90 table:@"Localizable"];

  return v7;
}

@end