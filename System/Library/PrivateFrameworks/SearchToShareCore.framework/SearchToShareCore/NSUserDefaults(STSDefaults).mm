@interface NSUserDefaults(STSDefaults)
- (uint64_t)sts_setLegalNoticeCount:()STSDefaults;
@end

@implementation NSUserDefaults(STSDefaults)

- (uint64_t)sts_setLegalNoticeCount:()STSDefaults
{
  [self setInteger:a3 forKey:@"LegalNoticeCount"];

  return [self synchronize];
}

@end