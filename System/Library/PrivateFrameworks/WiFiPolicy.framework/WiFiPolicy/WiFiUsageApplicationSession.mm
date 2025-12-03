@interface WiFiUsageApplicationSession
- (WiFiUsageApplicationSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (void)applicationStateDidChange:(id)change withAttributes:(id)attributes;
@end

@implementation WiFiUsageApplicationSession

- (WiFiUsageApplicationSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v5.receiver = self;
  v5.super_class = WiFiUsageApplicationSession;
  return [(WiFiUsageSession *)&v5 initWithSessionType:5 andInterfaceName:name andCapabilities:capabilities];
}

- (void)applicationStateDidChange:(id)change withAttributes:(id)attributes
{
  changeCopy = change;
  attributesCopy = attributes;
  activeApplications = [(WiFiUsageSession *)self activeApplications];
  v9 = [activeApplications count];

  if (!changeCopy || [changeCopy isEqualToString:@"com.apple.springboard"])
  {
    if ([(WiFiUsageSession *)self isSessionActive])
    {
      NSLog(&cfstr_SApplicationSe.isa, "[WiFiUsageApplicationSession applicationStateDidChange:withAttributes:]");
      [(WiFiUsageSession *)self sessionDidEnd];
    }

    goto LABEL_7;
  }

  if (v9)
  {
    activeApplications2 = [(WiFiUsageSession *)self activeApplications];
    NSLog(&cfstr_SApplicationSe_1.isa, "[WiFiUsageApplicationSession applicationStateDidChange:withAttributes:]", activeApplications2);

LABEL_7:
    v11.receiver = self;
    v11.super_class = WiFiUsageApplicationSession;
    [(WiFiUsageSession *)&v11 applicationStateDidChange:changeCopy withAttributes:attributesCopy];
    goto LABEL_8;
  }

  if ([changeCopy rangeOfString:@"spotlight" options:1] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(changeCopy, "rangeOfString:options:", @".extension", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(changeCopy, "rangeOfString:options:", @".widget", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(changeCopy, "rangeOfString:options:", @"preferences", 1) == 0x7FFFFFFFFFFFFFFFLL && +[WiFiUsagePrivacyFilter canPerformActionWithSampleRate:](WiFiUsagePrivacyFilter, "canPerformActionWithSampleRate:", 3))
  {
    NSLog(&cfstr_SApplicationSe_0.isa, "[WiFiUsageApplicationSession applicationStateDidChange:withAttributes:]", changeCopy);
    [(WiFiUsageSession *)self sessionDidStart];
    goto LABEL_7;
  }

LABEL_8:
}

@end