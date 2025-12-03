@interface NSRelativeDateTimeFormatter(WBSNSRelativeDateTimeFormatterExtras)
+ (id)safari_suggestionsRelativeDateTimeFormatter;
- (__CFString)safari_suggestionsLocalizedStringRelativeToNowForDate:()WBSNSRelativeDateTimeFormatterExtras;
@end

@implementation NSRelativeDateTimeFormatter(WBSNSRelativeDateTimeFormatterExtras)

+ (id)safari_suggestionsRelativeDateTimeFormatter
{
  v0 = objc_alloc_init(MEMORY[0x1E696AE78]);
  [v0 setDateTimeStyle:1];
  [v0 setFormattingContext:4];

  return v0;
}

- (__CFString)safari_suggestionsLocalizedStringRelativeToNowForDate:()WBSNSRelativeDateTimeFormatterExtras
{
  v4 = a3;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar isDateInToday:v4];

  if (v6)
  {
    v7 = @"Today (Frequently Visited)";
LABEL_5:
    v10 = _WBSLocalizedString(v7, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    goto LABEL_6;
  }

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar2 isDateInYesterday:v4];

  if (v9)
  {
    v7 = @"Yesterday";
    goto LABEL_5;
  }

  if (v4)
  {
    v12 = [MEMORY[0x1E695DF00] now];
    v10 = [self localizedStringForDate:v4 relativeToDate:v12];
  }

  else
  {
    v10 = &stru_1F3064D08;
  }

LABEL_6:

  return v10;
}

@end