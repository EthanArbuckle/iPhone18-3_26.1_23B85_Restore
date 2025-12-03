@interface ChartIntervalButton
+ (id)titleForInterval:(int64_t)interval;
- (ChartIntervalButton)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected;
@end

@implementation ChartIntervalButton

- (ChartIntervalButton)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = ChartIntervalButton;
  v3 = [(ChartIntervalButton *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ChartIntervalButton *)v3 setBackgroundColor:clearColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(ChartIntervalButton *)v3 setTextColor:whiteColor];

    v6 = +[StocksStyle sharedStyle];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
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

- (void)setSelected:(BOOL)selected
{
  if ([(ChartIntervalButton *)self isSelected]!= selected)
  {
    self->_selected = selected;
    v9 = +[StocksStyle sharedStyle];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    v6 = 14.0;
    if (v7 == 667.0)
    {
      v6 = 17.0;
    }

    if (selected)
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

+ (id)titleForInterval:(int64_t)interval
{
  v4 = [StocksBundles getBundle:1];
  v5 = v4;
  if ((interval - 1) > 7)
  {
    v6 = @"1d";
  }

  else
  {
    v6 = off_279D16758[interval - 1];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_287C73C90 table:@"Localizable"];

  return v7;
}

@end