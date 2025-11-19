@interface ChartLabelInfo
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)retainStringAndSizeFromLabelInfo:(id)a3;
- (void)setPosition:(double)a3;
- (void)setString:(id)a3;
- (void)setStringToMonthAndDayWithDate:(id)a3 timeZone:(id)a4;
- (void)setStringToYearWithDate:(id)a3 timeZone:(id)a4;
@end

@implementation ChartLabelInfo

- (void)setString:(id)a3
{
  v5 = a3;
  p_string = &self->_string;
  if (self->_string != v5 && !self->_immutable)
  {
    v7 = v5;
    objc_storeStrong(p_string, a3);
    v5 = v7;
    self->_size = *MEMORY[0x277CBF3A8];
  }

  MEMORY[0x2821F96F8](p_string, v5);
}

- (void)setPosition:(double)a3
{
  if (!self->_immutable)
  {
    self->_position = a3;
  }
}

- (void)setStringToMonthAndDayWithDate:(id)a3 timeZone:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = monthDayFormatter;
  if (!monthDayFormatter)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    v9 = monthDayFormatter;
    monthDayFormatter = v8;

    v10 = monthDayFormatter;
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    [v10 setLocale:v11];

    [monthDayFormatter setDateStyle:1];
    [monthDayFormatter setTimeStyle:1];
    v12 = monthDayFormatter;
    v13 = CPDateFormatStringForFormatType();
    [v12 setDateFormat:v13];

    v7 = monthDayFormatter;
  }

  [v7 setTimeZone:v6];
  v14 = [monthDayFormatter stringFromDate:v15];
  [(ChartLabelInfo *)self setString:v14];
}

- (void)setStringToYearWithDate:(id)a3 timeZone:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = yearFormatter;
  if (!yearFormatter)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    v9 = yearFormatter;
    yearFormatter = v8;

    v10 = yearFormatter;
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    [v10 setLocale:v11];

    [yearFormatter setDateStyle:1];
    [yearFormatter setTimeStyle:1];
    v12 = yearFormatter;
    v13 = CPDateFormatStringForFormatType();
    [v12 setDateFormat:v13];

    v7 = yearFormatter;
  }

  [v7 setTimeZone:v6];
  v14 = [yearFormatter stringFromDate:v15];
  [(ChartLabelInfo *)self setString:v14];
}

- (CGSize)size
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_string length])
  {
    if (self->_size.width == *MEMORY[0x277CBF3A8] && self->_size.height == *(MEMORY[0x277CBF3A8] + 8))
    {
      string = self->_string;
      v11 = *MEMORY[0x277D740A8];
      v5 = +[ChartLabelInfoManager chartLabelFont];
      v12[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [(NSString *)string sizeWithAttributes:v6];
      self->_size.width = v7;
      self->_size.height = v8;
    }
  }

  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)retainStringAndSizeFromLabelInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  [(ChartLabelInfo *)self setString:v5];

  [v4 size];
  [(ChartLabelInfo *)self setSize:?];
  v6 = [v4 accessibilityLabel];

  [(ChartLabelInfo *)self setAccessibilityLabel:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ChartLabelInfo);
  [(ChartLabelInfo *)v4 setString:self->_string];
  [(ChartLabelInfo *)v4 setSize:self->_size.width, self->_size.height];
  [(ChartLabelInfo *)v4 setPosition:self->_position];
  v5 = [(ChartLabelInfo *)self accessibilityLabel];
  [(ChartLabelInfo *)v4 setAccessibilityLabel:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  string = self->_string;
  v5 = NSStringFromCGSize(self->_size);
  v6 = [v3 stringWithFormat:@"ChartLabelInfo with string = %@, size = %@, position = %f", string, v5, *&self->_position];

  return v6;
}

@end