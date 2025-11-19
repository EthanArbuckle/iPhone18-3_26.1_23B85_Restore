@interface WBSPasswordAutoFillUtilities
+ (BOOL)mayAutoFillPasswordOnHost:(id)a3;
@end

@implementation WBSPasswordAutoFillUtilities

+ (BOOL)mayAutoFillPasswordOnHost:(id)a3
{
  v3 = a3;
  v4 = [v3 safari_highLevelDomainFromHost];
  v5 = ![v4 safari_isCaseInsensitiveEqualToString:@"google.com"] || (objc_msgSend(v3, "isEqualToString:", @"accounts.google.com") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"myaccount.google.com");

  return v5;
}

@end