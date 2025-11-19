@interface SearchUICalendarIconImage
- (BOOL)isEqual:(id)a3;
- (SearchUICalendarIconImage)initWithCurrentDateAndVariant:(unint64_t)a3;
- (SearchUICalendarIconImage)initWithDate:(id)a3 variant:(unint64_t)a4;
- (id)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation SearchUICalendarIconImage

- (SearchUICalendarIconImage)initWithCurrentDateAndVariant:(unint64_t)a3
{
  [(SearchUICalendarIconImage *)self setIsCurrentDate:1];

  return [(SearchUICalendarIconImage *)self initWithDate:0 variant:a3];
}

- (SearchUICalendarIconImage)initWithDate:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SearchUICalendarIconImage;
  v7 = [(SearchUIAppIconImage *)&v10 initWithBundleIdentifier:0 isOnenessApp:0 variant:a4 contentType:0];
  v8 = v7;
  if (v7)
  {
    [(SearchUICalendarIconImage *)v7 setDate:v6];
  }

  return v8;
}

- (id)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4
{
  v4 = a4;
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
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v8 initWithDate:v7 calendar:v9 format:{-[SearchUICalendarIconImage isCurrentDate](self, "isCurrentDate") ^ 1}];

  v11 = [(SearchUIAppIconImage *)self descriptorWithScale:v4 isDarkStyle:a3];
  v12 = [objc_opt_class() imageForIcon:v10 descriptor:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SearchUICalendarIconImage;
  if ([(SearchUIAppIconImage *)&v11 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [(SearchUICalendarIconImage *)self date];
    v7 = [v4 date];
    if ([v5 isDate:v6 inSameDayAsDate:v7])
    {
      v8 = [(SearchUICalendarIconImage *)self isCurrentDate];
      v9 = v8 ^ [v4 isCurrentDate] ^ 1;
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
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [(SearchUICalendarIconImage *)self date];
  v5 = [v3 components:30 fromDate:v4];
  v6 = [v5 hash];
  v7 = [(SearchUICalendarIconImage *)self isCurrentDate];
  v10.receiver = self;
  v10.super_class = SearchUICalendarIconImage;
  v8 = v7 ^ [(SearchUIAppIconImage *)&v10 hash];

  return v6 ^ v8;
}

@end