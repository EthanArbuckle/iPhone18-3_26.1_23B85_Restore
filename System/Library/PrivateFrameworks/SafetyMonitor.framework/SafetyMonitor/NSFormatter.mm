@interface NSFormatter
@end

@implementation NSFormatter

void __42__NSFormatter_SMExtensions__dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_13;
  _MergedGlobals_13 = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [_MergedGlobals_13 setLocale:v2];
}

uint64_t __50__NSFormatter_SMExtensions__relativeDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_280BCBA60;
  qword_280BCBA60 = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [qword_280BCBA60 setLocale:v2];

  [qword_280BCBA60 setUnitsStyle:0];
  [qword_280BCBA60 setDateTimeStyle:1];
  v3 = qword_280BCBA60;

  return [v3 setFormattingContext:1];
}

uint64_t __46__NSFormatter_SMExtensions__dateTimeFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_280BCBA70;
  qword_280BCBA70 = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [qword_280BCBA70 setLocale:v2];

  [qword_280BCBA70 setDateStyle:0];
  v3 = qword_280BCBA70;

  return [v3 setTimeStyle:1];
}

void __60__NSFormatter_SMExtensions__transcriptTimeIntervalFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_280BCBA80;
  qword_280BCBA80 = v0;

  [qword_280BCBA80 setUnitsStyle:3];
  [qword_280BCBA80 setAllowedUnits:96];
  [qword_280BCBA80 setIncludesApproximationPhrase:1];
  v2 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  [qword_280BCBA80 setCalendar:v2];
}

void __60__NSFormatter_SMExtensions__hourMinuteTimeIntervalFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_280BCBA90;
  qword_280BCBA90 = v0;

  [qword_280BCBA90 setUnitsStyle:3];
  [qword_280BCBA90 setAllowedUnits:96];
  v2 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  [qword_280BCBA90 setCalendar:v2];
}

void __65__NSFormatter_SMExtensions__hourMinuteShortTimeIntervalFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_280BCBAA0;
  qword_280BCBAA0 = v0;

  [qword_280BCBAA0 setUnitsStyle:5];
  [qword_280BCBAA0 setAllowedUnits:96];
  v2 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  [qword_280BCBAA0 setCalendar:v2];
}

@end