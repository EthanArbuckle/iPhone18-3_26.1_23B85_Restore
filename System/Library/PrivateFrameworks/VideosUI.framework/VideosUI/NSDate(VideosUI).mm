@interface NSDate(VideosUI)
+ (BOOL)shouldShowLabelForDownloadExpirationDate:()VideosUI;
+ (id)vui_startOfDateInGMT:()VideosUI;
- (BOOL)vui_isInTheFuture;
- (BOOL)vui_isInThePast;
@end

@implementation NSDate(VideosUI)

+ (id)vui_startOfDateInGMT:()VideosUI
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:@"GMT"];
  v5 = v3;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    [v6 setTimeZone:v4];
    v5 = [v6 startOfDayForDate:v3];
  }

  return v5;
}

+ (BOOL)shouldShowLabelForDownloadExpirationDate:()VideosUI
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  currentCalendar = [v3 currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [currentCalendar components:32 fromDate:date toDate:v4 options:0];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "hour")}];
  LODWORD(v9) = 1111490560;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  LODWORD(v4) = [v8 intValue];
  v11 = v4 <= [v10 intValue];

  return v11;
}

- (BOOL)vui_isInThePast
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self earlierDate:date];
  v4 = v3 == self;

  return v4;
}

- (BOOL)vui_isInTheFuture
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self laterDate:date];
  v4 = v3 == self;

  return v4;
}

@end