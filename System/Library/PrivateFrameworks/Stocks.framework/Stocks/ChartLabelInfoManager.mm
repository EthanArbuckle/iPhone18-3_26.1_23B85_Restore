@interface ChartLabelInfoManager
+ (__CFString)_CFDateFormatterPropertyForMonthLabelLength:(int64_t)length;
+ (id)chartLabelFont;
+ (id)sharedLabelInfoManager;
+ (void)clearSharedManager;
- (ChartLabelInfoManager)init;
- (id)labelInfoForYAxis;
- (id)labelInfoWithString:(id)string;
- (id)labelInfoWithUnsignedInteger:(unint64_t)integer;
- (id)monthLabelInfoArrayForLabelLength:(int64_t)length;
- (void)dealloc;
- (void)resetLocale;
@end

@implementation ChartLabelInfoManager

+ (id)sharedLabelInfoManager
{
  v2 = __sharedInstance;
  if (!__sharedInstance)
  {
    v3 = objc_alloc_init(ChartLabelInfoManager);
    v4 = __sharedInstance;
    __sharedInstance = v3;

    v2 = __sharedInstance;
  }

  return v2;
}

+ (void)clearSharedManager
{
  v2 = __sharedInstance;
  __sharedInstance = 0;
}

+ (id)chartLabelFont
{
  v2 = axisLabelFont;
  if (!axisLabelFont)
  {
    v3 = MEMORY[0x277D74300];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    v5 = 12.0;
    if (v6 == 667.0)
    {
      v5 = 15.0;
    }

    v7 = [v3 systemFontOfSize:v5];
    v8 = axisLabelFont;
    axisLabelFont = v7;

    v2 = axisLabelFont;
  }

  return v2;
}

- (ChartLabelInfoManager)init
{
  v5.receiver = self;
  v5.super_class = ChartLabelInfoManager;
  v2 = [(ChartLabelInfoManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ChartLabelInfoManager *)v2 resetLocale];
  }

  return v3;
}

- (void)dealloc
{
  [(ChartLabelInfoManager *)self resetLocale];
  v3.receiver = self;
  v3.super_class = ChartLabelInfoManager;
  [(ChartLabelInfoManager *)&v3 dealloc];
}

- (id)labelInfoWithString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(ChartLabelInfo);
  [(ChartLabelInfo *)v4 setString:stringCopy];

  return v4;
}

- (id)labelInfoForYAxis
{
  yAxisLabelInfo = self->_yAxisLabelInfo;
  if (!yAxisLabelInfo)
  {
    v4 = objc_alloc_init(ChartLabelInfo);
    v5 = self->_yAxisLabelInfo;
    self->_yAxisLabelInfo = v4;

    [(ChartLabelInfo *)self->_yAxisLabelInfo setPosition:1.0];
    [(ChartLabelInfo *)self->_yAxisLabelInfo setImmutable:1];
    yAxisLabelInfo = self->_yAxisLabelInfo;
  }

  return yAxisLabelInfo;
}

- (id)labelInfoWithUnsignedInteger:(unint64_t)integer
{
  if (!self->_integerLabelInfoArray)
  {
    v5 = 31;
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:31];
    integerLabelInfoArray = self->_integerLabelInfoArray;
    self->_integerLabelInfoArray = v6;

    do
    {
      v8 = self->_integerLabelInfoArray;
      null = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)v8 addObject:null];

      --v5;
    }

    while (v5);
  }

  if (integer - 32 > 0xFFFFFFFFFFFFFFE0)
  {
    v14 = integer - 1;
    v15 = [(NSMutableArray *)self->_integerLabelInfoArray objectAtIndex:integer - 1];
    null2 = [MEMORY[0x277CBEB68] null];

    if (v15 == null2)
    {
      v17 = objc_alloc_init(ChartLabelInfo);
      v18 = +[StockDataFormatter sharedDataFormatter];
      doesLocaleUseASCII = [v18 doesLocaleUseASCII];

      if (doesLocaleUseASCII)
      {
        v26[0] = (integer % 0xAu) | 0x30;
        if (integer < 0xA)
        {
          v20 = 1;
        }

        else
        {
          v26[1] = (integer % 0xAu) | 0x30;
          v26[0] = (integer / 0xAu) | 0x30;
          v20 = 2;
        }

        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v26 length:v20 encoding:1];
        [(ChartLabelInfo *)v17 setString:v24];
      }

      else
      {
        v21 = +[StockDataFormatter sharedDataFormatter];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integer];
        v23 = [v21 formattedNumber:v22 withPrecision:0 useGroupSeparator:0];
        [(ChartLabelInfo *)v17 setString:v23];
      }

      [(ChartLabelInfo *)v17 setImmutable:1];
      [(NSMutableArray *)self->_integerLabelInfoArray replaceObjectAtIndex:v14 withObject:v17];
    }

    v13 = [(NSMutableArray *)self->_integerLabelInfoArray objectAtIndex:v14];
  }

  else
  {
    v10 = +[StockDataFormatter sharedDataFormatter];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integer];
    v12 = [v10 formattedNumber:v11 withPrecision:0 useGroupSeparator:0];
    v13 = [(ChartLabelInfoManager *)self labelInfoWithString:v12];
  }

  return v13;
}

+ (__CFString)_CFDateFormatterPropertyForMonthLabelLength:(int64_t)length
{
  switch(length)
  {
    case 0:
      v3 = MEMORY[0x277CBEE08];
      return *v3;
    case 1:
      v3 = MEMORY[0x277CBEDC0];
      return *v3;
    case 2:
      v3 = MEMORY[0x277CBEDE0];
      return *v3;
  }

  return 0;
}

- (id)monthLabelInfoArrayForLabelLength:(int64_t)length
{
  v38 = *MEMORY[0x277D85DE8];
  monthLabelInfoArrays = self->_monthLabelInfoArrays;
  if (!monthLabelInfoArrays)
  {
    v6 = 3;
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v8 = self->_monthLabelInfoArrays;
    self->_monthLabelInfoArrays = v7;

    do
    {
      v9 = self->_monthLabelInfoArrays;
      null = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)v9 addObject:null];

      --v6;
    }

    while (v6);
    monthLabelInfoArrays = self->_monthLabelInfoArrays;
  }

  v11 = [(NSMutableArray *)monthLabelInfoArrays objectAtIndex:length];
  null2 = [MEMORY[0x277CBEB68] null];

  if (v11 != null2)
  {
    v13 = v11;
LABEL_7:
    v11 = v13;
    v14 = v11;
    goto LABEL_27;
  }

  v15 = [ChartLabelInfoManager _CFDateFormatterPropertyForMonthLabelLength:length];
  if (v15)
  {
    v16 = v15;
    v17 = dateFormatter;
    if (!dateFormatter)
    {
      v17 = CFDateFormatterCreate(0, [MEMORY[0x277CBEAF8] currentLocale], kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
      dateFormatter = v17;
    }

    v18 = CFDateFormatterCopyProperty(v17, v16);
    if (v18)
    {
      v19 = v18;
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [(ChartLabelInfoManager *)self labelInfoWithString:*(*(&v33 + 1) + 8 * i), v33];
            [v13 addObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v22);
      }

      v26 = CFDateFormatterCopyProperty(dateFormatter, *MEMORY[0x277CBED98]);
      v27 = [v26 count];
      if (v27 == [v13 count] && v27 >= 1)
      {
        v29 = 0;
        do
        {
          v30 = [v13 objectAtIndex:{v29, v33}];
          v31 = [v26 objectAtIndex:v29];
          [v30 setAccessibilityLabel:v31];

          ++v29;
        }

        while (v27 != v29);
      }

      [(NSMutableArray *)self->_monthLabelInfoArrays replaceObjectAtIndex:length withObject:v13, v33];

      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_27:

  return v14;
}

- (void)resetLocale
{
  monthLabelInfoArrays = self->_monthLabelInfoArrays;
  self->_monthLabelInfoArrays = 0;

  integerLabelInfoArray = self->_integerLabelInfoArray;
  self->_integerLabelInfoArray = 0;

  self->_use24hrTime = _CPTimeFormatIs24HourMode() != 0;
  if (dateFormatter)
  {
    CFRelease(dateFormatter);
    dateFormatter = 0;
  }

  v5 = monthDayFormatter;
  monthDayFormatter = 0;

  v6 = yearFormatter;
  yearFormatter = 0;

  v7 = axisLabelFont;
  axisLabelFont = 0;
}

@end