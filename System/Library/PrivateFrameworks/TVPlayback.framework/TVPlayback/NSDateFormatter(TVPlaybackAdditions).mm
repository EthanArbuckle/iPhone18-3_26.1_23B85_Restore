@interface NSDateFormatter(TVPlaybackAdditions)
+ (id)tvp_ISO8601CombinedDateAndTimeFormatter;
+ (id)tvp_RFC1123DateFormatter;
+ (id)tvp_RFC850DateFormatter;
+ (id)tvp_asctimeDateFormatter;
@end

@implementation NSDateFormatter(TVPlaybackAdditions)

+ (id)tvp_ISO8601CombinedDateAndTimeFormatter
{
  if (tvp_ISO8601CombinedDateAndTimeFormatter_onceToken != -1)
  {
    +[NSDateFormatter(TVPlaybackAdditions) tvp_ISO8601CombinedDateAndTimeFormatter];
  }

  v1 = tvp_ISO8601CombinedDateAndTimeFormatter_iso8601Formatter;

  return v1;
}

+ (id)tvp_RFC1123DateFormatter
{
  if (tvp_RFC1123DateFormatter_pred != -1)
  {
    +[NSDateFormatter(TVPlaybackAdditions) tvp_RFC1123DateFormatter];
  }

  v1 = tvp_RFC1123DateFormatter_rfc1123Formatter;

  return v1;
}

+ (id)tvp_RFC850DateFormatter
{
  if (tvp_RFC850DateFormatter_pred != -1)
  {
    +[NSDateFormatter(TVPlaybackAdditions) tvp_RFC850DateFormatter];
  }

  v1 = tvp_RFC850DateFormatter_rfc850Formatter;

  return v1;
}

+ (id)tvp_asctimeDateFormatter
{
  if (tvp_asctimeDateFormatter_pred != -1)
  {
    +[NSDateFormatter(TVPlaybackAdditions) tvp_asctimeDateFormatter];
  }

  v1 = tvp_asctimeDateFormatter_asctimeFormatter;

  return v1;
}

@end