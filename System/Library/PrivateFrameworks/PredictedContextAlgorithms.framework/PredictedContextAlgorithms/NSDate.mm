@interface NSDate
@end

@implementation NSDate

uint64_t __37__NSDate_PCExtensions__dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_0;
  _MergedGlobals_0 = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [_MergedGlobals_0 setLocale:v2];

  [_MergedGlobals_0 setDateStyle:1];
  v3 = _MergedGlobals_0;

  return [v3 setTimeStyle:3];
}

void __49__NSDate_PCExtensions__dayNameFormatterInEnglish__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1EE04AEB0;
  qword_1EE04AEB0 = v0;

  [qword_1EE04AEB0 setDateFormat:@"EEEE"];
  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  [qword_1EE04AEB0 setLocale:v2];
}

uint64_t __51__NSDate_PCExtensions__relativeBundleDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1EE04AEC0;
  qword_1EE04AEC0 = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [qword_1EE04AEC0 setLocale:v2];

  [qword_1EE04AEC0 setTimeStyle:0];
  [qword_1EE04AEC0 setDateStyle:4];
  [qword_1EE04AEC0 setDoesRelativeDateFormatting:1];
  v3 = qword_1EE04AEC0;

  return [v3 setFormattingContext:5];
}

void __41__NSDate_PCExtensions__monthDayFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1EE04AED0;
  qword_1EE04AED0 = v0;

  v2 = MEMORY[0x1E696AB78];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v2 dateFormatFromTemplate:@"MM/dd" options:0 locale:v3];

  [qword_1EE04AED0 setDateFormat:v4];
}

@end