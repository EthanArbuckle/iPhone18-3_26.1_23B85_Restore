@interface WiFiUsageApplicationSession
- (WiFiUsageApplicationSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4;
- (void)applicationStateDidChange:(id)a3 withAttributes:(id)a4;
@end

@implementation WiFiUsageApplicationSession

- (WiFiUsageApplicationSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4
{
  v5.receiver = self;
  v5.super_class = WiFiUsageApplicationSession;
  return [(WiFiUsageSession *)&v5 initWithSessionType:5 andInterfaceName:a3 andCapabilities:a4];
}

- (void)applicationStateDidChange:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WiFiUsageSession *)self activeApplications];
  v9 = [v8 count];

  if (!v6 || [v6 isEqualToString:@"com.apple.springboard"])
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
    v10 = [(WiFiUsageSession *)self activeApplications];
    NSLog(&cfstr_SApplicationSe_1.isa, "[WiFiUsageApplicationSession applicationStateDidChange:withAttributes:]", v10);

LABEL_7:
    v11.receiver = self;
    v11.super_class = WiFiUsageApplicationSession;
    [(WiFiUsageSession *)&v11 applicationStateDidChange:v6 withAttributes:v7];
    goto LABEL_8;
  }

  if ([v6 rangeOfString:@"spotlight" options:1] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "rangeOfString:options:", @".extension", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "rangeOfString:options:", @".widget", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "rangeOfString:options:", @"preferences", 1) == 0x7FFFFFFFFFFFFFFFLL && +[WiFiUsagePrivacyFilter canPerformActionWithSampleRate:](WiFiUsagePrivacyFilter, "canPerformActionWithSampleRate:", 3))
  {
    NSLog(&cfstr_SApplicationSe_0.isa, "[WiFiUsageApplicationSession applicationStateDidChange:withAttributes:]", v6);
    [(WiFiUsageSession *)self sessionDidStart];
    goto LABEL_7;
  }

LABEL_8:
}

@end