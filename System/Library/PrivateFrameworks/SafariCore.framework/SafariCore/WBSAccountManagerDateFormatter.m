@interface WBSAccountManagerDateFormatter
+ (NSDateFormatter)dateFormatterWithDynamicContext;
+ (NSDateFormatter)dateFormatterWithStandaloneContext;
@end

@implementation WBSAccountManagerDateFormatter

+ (NSDateFormatter)dateFormatterWithDynamicContext
{
  if (dateFormatterWithDynamicContext_onceToken != -1)
  {
    +[WBSAccountManagerDateFormatter dateFormatterWithDynamicContext];
  }

  v3 = dateFormatterWithDynamicContext_dateFormatter;

  return v3;
}

uint64_t __65__WBSAccountManagerDateFormatter_dateFormatterWithDynamicContext__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dateFormatterWithDynamicContext_dateFormatter;
  dateFormatterWithDynamicContext_dateFormatter = v0;

  [dateFormatterWithDynamicContext_dateFormatter setTimeStyle:0];
  [dateFormatterWithDynamicContext_dateFormatter setDateStyle:1];
  [dateFormatterWithDynamicContext_dateFormatter setDoesRelativeDateFormatting:1];
  v2 = dateFormatterWithDynamicContext_dateFormatter;

  return [v2 setFormattingContext:1];
}

+ (NSDateFormatter)dateFormatterWithStandaloneContext
{
  if (dateFormatterWithStandaloneContext_onceToken != -1)
  {
    +[WBSAccountManagerDateFormatter dateFormatterWithStandaloneContext];
  }

  v3 = dateFormatterWithStandaloneContext_dateFormatter;

  return v3;
}

uint64_t __68__WBSAccountManagerDateFormatter_dateFormatterWithStandaloneContext__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dateFormatterWithStandaloneContext_dateFormatter;
  dateFormatterWithStandaloneContext_dateFormatter = v0;

  [dateFormatterWithStandaloneContext_dateFormatter setTimeStyle:0];
  [dateFormatterWithStandaloneContext_dateFormatter setDateStyle:1];
  [dateFormatterWithStandaloneContext_dateFormatter setDoesRelativeDateFormatting:1];
  v2 = dateFormatterWithStandaloneContext_dateFormatter;

  return [v2 setFormattingContext:2];
}

@end