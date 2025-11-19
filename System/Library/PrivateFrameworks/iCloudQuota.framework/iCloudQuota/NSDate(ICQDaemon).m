@interface NSDate(ICQDaemon)
- (id)icq_serverFriendlyString;
@end

@implementation NSDate(ICQDaemon)

- (id)icq_serverFriendlyString
{
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
  [v3 setLocale:v2];
  v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];

  v5 = [v3 stringFromDate:a1];

  return v5;
}

@end