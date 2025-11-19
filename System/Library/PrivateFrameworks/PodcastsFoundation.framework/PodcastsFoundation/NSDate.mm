@interface NSDate
@end

@implementation NSDate

void __53__NSDate_MTAdditions__dayOfWeekFromDate_abbreviated___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dayOfWeekFromDate_abbreviated__formatterAbbrev;
  dayOfWeekFromDate_abbreviated__formatterAbbrev = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [dayOfWeekFromDate_abbreviated__formatterAbbrev setLocale:v2];

  v3 = MEMORY[0x1E696AB78];
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v4 = [v3 dateFormatFromTemplate:@"EEE" options:0 locale:v5];
  [dayOfWeekFromDate_abbreviated__formatterAbbrev setDateFormat:v4];
}

void __53__NSDate_MTAdditions__dayOfWeekFromDate_abbreviated___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dayOfWeekFromDate_abbreviated__formatterVerbose;
  dayOfWeekFromDate_abbreviated__formatterVerbose = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [dayOfWeekFromDate_abbreviated__formatterVerbose setLocale:v2];

  v3 = MEMORY[0x1E696AB78];
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v4 = [v3 dateFormatFromTemplate:@"EEEE" options:0 locale:v5];
  [dayOfWeekFromDate_abbreviated__formatterVerbose setDateFormat:v4];
}

uint64_t __33__NSDate_MTAdditions__timeString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = timeString_fmt;
  timeString_fmt = v0;

  [timeString_fmt setDateStyle:0];
  v2 = timeString_fmt;

  return [v2 setTimeStyle:1];
}

void __50__NSDate_MTAdditions__mt_dateFormatterRelativeDay__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = mt_dateFormatterRelativeDay__s__dateFormatterRelativeDay;
  mt_dateFormatterRelativeDay__s__dateFormatterRelativeDay = v0;

  [mt_dateFormatterRelativeDay__s__dateFormatterRelativeDay setDoesRelativeDateFormatting:1];
  [mt_dateFormatterRelativeDay__s__dateFormatterRelativeDay setDateStyle:2];
  [mt_dateFormatterRelativeDay__s__dateFormatterRelativeDay setFormattingContext:4];
  v2 = mt_dateFormatterRelativeDay__s__dateFormatterRelativeDay;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

void __47__NSDate_MTAdditions__mt_dateFormatterWithYear__block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v0 dateFormatFromTemplate:@"MMM d options:yyyy" locale:{0, v1}];

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = mt_dateFormatterWithYear__s__dateFormatterWithYear;
  mt_dateFormatterWithYear__s__dateFormatterWithYear = v2;

  [mt_dateFormatterWithYear__s__dateFormatterWithYear setDateFormat:v6];
  v4 = mt_dateFormatterWithYear__s__dateFormatterWithYear;
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];
}

void __47__NSDate_MTAdditions__mt_dateFormatterJustYear__block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v0 dateFormatFromTemplate:@"yyyy" options:0 locale:v1];

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = mt_dateFormatterJustYear_justYearFormatter;
  mt_dateFormatterJustYear_justYearFormatter = v2;

  [mt_dateFormatterJustYear_justYearFormatter setDateFormat:v6];
  v4 = mt_dateFormatterJustYear_justYearFormatter;
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];
}

void __52__NSDate_MTAdditions__mt_dateFormatterNoDayWithYear__block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v0 dateFormatFromTemplate:@"MMM yyyy" options:0 locale:v1];

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = mt_dateFormatterNoDayWithYear__s__dateFormatterNoDayWithYear;
  mt_dateFormatterNoDayWithYear__s__dateFormatterNoDayWithYear = v2;

  [mt_dateFormatterNoDayWithYear__s__dateFormatterNoDayWithYear setDateFormat:v6];
  v4 = mt_dateFormatterNoDayWithYear__s__dateFormatterNoDayWithYear;
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];
}

void __57__NSDate_MTAdditions__mt_dateFormatterShortStyleWithYear__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = mt_dateFormatterShortStyleWithYear_dateFormatter;
  mt_dateFormatterShortStyleWithYear_dateFormatter = v0;

  [mt_dateFormatterShortStyleWithYear_dateFormatter setDateStyle:1];
  [mt_dateFormatterShortStyleWithYear_dateFormatter setTimeStyle:0];
  v2 = mt_dateFormatterShortStyleWithYear_dateFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

void __45__NSDate_MTAdditions__mt_dateFormatterNoYear__block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v0 dateFormatFromTemplate:@"MMMM d" options:0 locale:v1];

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = mt_dateFormatterNoYear__s__dateFormatterNoYear;
  mt_dateFormatterNoYear__s__dateFormatterNoYear = v2;

  [mt_dateFormatterNoYear__s__dateFormatterNoYear setDateFormat:v6];
  v4 = mt_dateFormatterNoYear__s__dateFormatterNoYear;
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];
}

void __56__NSDate_MTAdditions__mt_dateFormatterNoYearAbbrevMonth__block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v0 dateFormatFromTemplate:@"MMM d" options:0 locale:v1];

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = mt_dateFormatterNoYearAbbrevMonth__s__dateFormatterNoYearAbbrevMonth;
  mt_dateFormatterNoYearAbbrevMonth__s__dateFormatterNoYearAbbrevMonth = v2;

  [mt_dateFormatterNoYearAbbrevMonth__s__dateFormatterNoYearAbbrevMonth setDateFormat:v6];
  v4 = mt_dateFormatterNoYearAbbrevMonth__s__dateFormatterNoYearAbbrevMonth;
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];
}

void __46__NSDate_MTAdditions__mt_verboseDateFormatter__block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v0 dateFormatFromTemplate:@"MMMM d options:yyyy" locale:{0, v1}];

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = mt_verboseDateFormatter__s__dateFormatterWithYear;
  mt_verboseDateFormatter__s__dateFormatterWithYear = v2;

  [mt_verboseDateFormatter__s__dateFormatterWithYear setDateFormat:v6];
  v4 = mt_verboseDateFormatter__s__dateFormatterWithYear;
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];
}

void __50__NSDate_MTAdditions__mt_lessVerboseDateFormatter__block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v0 dateFormatFromTemplate:@"MMM d options:yyyy" locale:{0, v1}];

  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = mt_lessVerboseDateFormatter__s__dateFormatterWithYear;
  mt_lessVerboseDateFormatter__s__dateFormatterWithYear = v2;

  [mt_lessVerboseDateFormatter__s__dateFormatterWithYear setDateFormat:v6];
  v4 = mt_lessVerboseDateFormatter__s__dateFormatterWithYear;
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];
}

@end