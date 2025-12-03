@interface WBSPasswordAutoFillUtilities
+ (BOOL)mayAutoFillPasswordOnHost:(id)host;
@end

@implementation WBSPasswordAutoFillUtilities

+ (BOOL)mayAutoFillPasswordOnHost:(id)host
{
  hostCopy = host;
  safari_highLevelDomainFromHost = [hostCopy safari_highLevelDomainFromHost];
  v5 = ![safari_highLevelDomainFromHost safari_isCaseInsensitiveEqualToString:@"google.com"] || (objc_msgSend(hostCopy, "isEqualToString:", @"accounts.google.com") & 1) != 0 || objc_msgSend(hostCopy, "isEqualToString:", @"myaccount.google.com");

  return v5;
}

@end