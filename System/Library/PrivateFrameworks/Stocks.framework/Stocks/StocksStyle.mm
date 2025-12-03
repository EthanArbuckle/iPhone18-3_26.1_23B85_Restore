@interface StocksStyle
+ (id)sharedStyle;
- (StocksStyle)init;
- (id)chartHighlightColor;
- (id)gainColor;
- (id)lossColor;
- (void)resetLocale;
@end

@implementation StocksStyle

+ (id)sharedStyle
{
  v2 = _sharedInstance;
  if (!_sharedInstance)
  {
    v3 = objc_opt_new();
    v4 = _sharedInstance;
    _sharedInstance = v3;

    v2 = _sharedInstance;
  }

  return v2;
}

- (StocksStyle)init
{
  v5.receiver = self;
  v5.super_class = StocksStyle;
  v2 = [(StocksStyle *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_resetLocale name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (void)resetLocale
{
  mainFont = self->_mainFont;
  self->_mainFont = 0;

  chartLabelFont = self->_chartLabelFont;
  self->_chartLabelFont = 0;
}

- (id)gainColor
{
  v2 = +[StocksPreferences sharedPreferences];
  isChangeColorSwapped = [v2 isChangeColorSwapped];

  if (isChangeColorSwapped)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGreenColor];
  }
  v4 = ;

  return v4;
}

- (id)lossColor
{
  v2 = +[StocksPreferences sharedPreferences];
  isChangeColorSwapped = [v2 isChangeColorSwapped];

  if (isChangeColorSwapped)
  {
    [MEMORY[0x277D75348] systemGreenColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v4 = ;

  return v4;
}

- (id)chartHighlightColor
{
  chartHighlightColor = self->_chartHighlightColor;
  if (!chartHighlightColor)
  {
    v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.584313725 blue:1.0 alpha:1.0];
    v5 = self->_chartHighlightColor;
    self->_chartHighlightColor = v4;

    chartHighlightColor = self->_chartHighlightColor;
  }

  return chartHighlightColor;
}

@end