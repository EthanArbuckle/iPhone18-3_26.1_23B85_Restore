@interface NSDateFormatter
@end

@implementation NSDateFormatter

void __79__NSDateFormatter_TVPlaybackAdditions__tvp_ISO8601CombinedDateAndTimeFormatter__block_invoke()
{
  v0 = objc_opt_new();
  [v0 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v1 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v0 setTimeZone:v1];

  v2 = tvp_ISO8601CombinedDateAndTimeFormatter_iso8601Formatter;
  tvp_ISO8601CombinedDateAndTimeFormatter_iso8601Formatter = v0;
}

void __64__NSDateFormatter_TVPlaybackAdditions__tvp_RFC1123DateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = tvp_RFC1123DateFormatter_rfc1123Formatter;
  tvp_RFC1123DateFormatter_rfc1123Formatter = v0;

  [tvp_RFC1123DateFormatter_rfc1123Formatter setFormatterBehavior:1040];
  [tvp_RFC1123DateFormatter_rfc1123Formatter setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
  v2 = tvp_RFC1123DateFormatter_rfc1123Formatter;
  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  v4 = tvp_RFC1123DateFormatter_rfc1123Formatter;
  v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v4 setCalendar:v5];
}

void __63__NSDateFormatter_TVPlaybackAdditions__tvp_RFC850DateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = tvp_RFC850DateFormatter_rfc850Formatter;
  tvp_RFC850DateFormatter_rfc850Formatter = v0;

  [tvp_RFC850DateFormatter_rfc850Formatter setFormatterBehavior:1040];
  [tvp_RFC850DateFormatter_rfc850Formatter setDateFormat:@"EEEE, dd-MMM-yyyy HH:mm:ss zzz"];
  v2 = tvp_RFC850DateFormatter_rfc850Formatter;
  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  v4 = tvp_RFC850DateFormatter_rfc850Formatter;
  v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v4 setCalendar:v5];
}

void __64__NSDateFormatter_TVPlaybackAdditions__tvp_asctimeDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = tvp_asctimeDateFormatter_asctimeFormatter;
  tvp_asctimeDateFormatter_asctimeFormatter = v0;

  [tvp_asctimeDateFormatter_asctimeFormatter setFormatterBehavior:1040];
  [tvp_asctimeDateFormatter_asctimeFormatter setDateFormat:@"EEE MMM dd HH:mm:ss yyyy"];
  v2 = tvp_asctimeDateFormatter_asctimeFormatter;
  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  v4 = tvp_asctimeDateFormatter_asctimeFormatter;
  v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v4 setCalendar:v5];
}

@end