@interface SearchUICalendarIconImage
- (BOOL)isEqual:(id)equal;
- (SearchUICalendarIconImage)initWithCurrentDateAndVariant:(unint64_t)variant;
- (SearchUICalendarIconImage)initWithDate:(id)date variant:(unint64_t)variant;
- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style;
- (unint64_t)hash;
@end

@implementation SearchUICalendarIconImage

- (SearchUICalendarIconImage)initWithCurrentDateAndVariant:(unint64_t)variant
{
  [(SearchUICalendarIconImage *)self setIsCurrentDate:1];

  return [(SearchUICalendarIconImage *)self initWithDate:0 variant:variant];
}

- (SearchUICalendarIconImage)initWithDate:(id)date variant:(unint64_t)variant
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = SearchUICalendarIconImage;
  v7 = [(SearchUIAppIconImage *)&v10 initWithBundleIdentifier:0 isOnenessApp:0 variant:variant contentType:0];
  v8 = v7;
  if (v7)
  {
    [(SearchUICalendarIconImage *)v7 setDate:dateCopy];
  }

  return v8;
}

- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  if ([(SearchUICalendarIconImage *)self isCurrentDate])
  {
    [MEMORY[0x1E695DF00] now];
  }

  else
  {
    [(SearchUICalendarIconImage *)self date];
  }
  v7 = ;
  v8 = objc_alloc(MEMORY[0x1E69A8A00]);
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v8 initWithDate:v7 calendar:currentCalendar format:{-[SearchUICalendarIconImage isCurrentDate](self, "isCurrentDate") ^ 1}];

  v11 = [(SearchUIAppIconImage *)self descriptorWithScale:styleCopy isDarkStyle:scale];
  v12 = [objc_opt_class() imageForIcon:v10 descriptor:v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = SearchUICalendarIconImage;
  if ([(SearchUIAppIconImage *)&v11 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date = [(SearchUICalendarIconImage *)self date];
    date2 = [equalCopy date];
    if ([currentCalendar isDate:date inSameDayAsDate:date2])
    {
      isCurrentDate = [(SearchUICalendarIconImage *)self isCurrentDate];
      v9 = isCurrentDate ^ [equalCopy isCurrentDate] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [(SearchUICalendarIconImage *)self date];
  v5 = [currentCalendar components:30 fromDate:date];
  v6 = [v5 hash];
  isCurrentDate = [(SearchUICalendarIconImage *)self isCurrentDate];
  v10.receiver = self;
  v10.super_class = SearchUICalendarIconImage;
  v8 = isCurrentDate ^ [(SearchUIAppIconImage *)&v10 hash];

  return v6 ^ v8;
}

@end