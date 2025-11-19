@interface NSFormatter(SMExtensions)
+ (id)dateFormatter;
+ (id)dateTimeFormatter;
+ (id)hourMinuteShortTimeIntervalFormatter;
+ (id)hourMinuteTimeIntervalFormatter;
+ (id)relativeDateFormatter;
+ (id)transcriptTimeIntervalFormatter;
@end

@implementation NSFormatter(SMExtensions)

+ (id)dateFormatter
{
  if (qword_280BCBA58 != -1)
  {
    dispatch_once(&qword_280BCBA58, &__block_literal_global_1);
  }

  v1 = _MergedGlobals_13;

  return v1;
}

+ (id)relativeDateFormatter
{
  if (qword_280BCBA68 != -1)
  {
    dispatch_once(&qword_280BCBA68, &__block_literal_global_3);
  }

  v1 = qword_280BCBA60;

  return v1;
}

+ (id)dateTimeFormatter
{
  if (qword_280BCBA78 != -1)
  {
    dispatch_once(&qword_280BCBA78, &__block_literal_global_6);
  }

  v1 = qword_280BCBA70;

  return v1;
}

+ (id)transcriptTimeIntervalFormatter
{
  if (qword_280BCBA88 != -1)
  {
    dispatch_once(&qword_280BCBA88, &__block_literal_global_8);
  }

  v1 = qword_280BCBA80;

  return v1;
}

+ (id)hourMinuteTimeIntervalFormatter
{
  if (qword_280BCBA98 != -1)
  {
    dispatch_once(&qword_280BCBA98, &__block_literal_global_12);
  }

  v1 = qword_280BCBA90;

  return v1;
}

+ (id)hourMinuteShortTimeIntervalFormatter
{
  if (qword_280BCBAA8 != -1)
  {
    dispatch_once(&qword_280BCBAA8, &__block_literal_global_14);
  }

  v1 = qword_280BCBAA0;

  return v1;
}

@end