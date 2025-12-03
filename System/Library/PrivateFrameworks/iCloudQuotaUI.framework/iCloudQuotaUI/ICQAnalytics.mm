@interface ICQAnalytics
+ (void)logInAppBannerImpressionWithAppIdentifier:(id)identifier;
+ (void)logInAppBannerInteractionWithAppIdentifier:(id)identifier icqActionName:(id)name;
+ (void)logInAppBannerViewWithAppIdentifier:(id)identifier;
- (ICQAnalytics)init;
- (void)allSetScreenImpressionWithAttributingAppIdentifier:(id)identifier;
- (void)freshmintPageDisplayedFromInAppBannerWithAppIdentifier:(id)identifier;
- (void)freshmintPageInteractionFromInAppBannerWithAppIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier;
- (void)loadFailedWithLoadIdentifier:(id)identifier duration:(int64_t)duration errorCode:(int64_t)code;
- (void)loadSucceededWithLoadIdentifier:(id)identifier duration:(int64_t)duration;
- (void)logInAppBannerEventWithAppIdentifier:(id)identifier eventName:(id)name;
@end

@implementation ICQAnalytics

+ (void)logInAppBannerImpressionWithAppIdentifier:(id)identifier
{
  _s13iCloudQuotaUI9AnalyticsC3logyyAC5EventVFZ_0();
}

- (ICQAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Analytics();
  return [(ICQAnalytics *)&v3 init];
}

- (void)freshmintPageDisplayedFromInAppBannerWithAppIdentifier:(id)identifier
{
  v4 = sub_275797F50();
  v6 = v5;
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x80);
  selfCopy = self;
  v7(v4, v6, 0xD000000000000011, 0x80000002757B9660);
}

- (void)freshmintPageInteractionFromInAppBannerWithAppIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier
{
  v5 = sub_275797F50();
  v7 = v6;
  v8 = sub_275797F50();
  v10 = v9;
  selfCopy = self;
  MEMORY[0x277C80130](v8, v10);

  (*((*MEMORY[0x277D85000] & selfCopy->super.isa) + 0x80))(v5, v7, 0x6E696D6873657266, 0xEA00000000005F74);
}

- (void)allSetScreenImpressionWithAttributingAppIdentifier:(id)identifier
{
  v4 = sub_275797F50();
  v6 = v5;
  selfCopy = self;
  sub_275798710();

  MEMORY[0x277C80130](v4, v6);
  (*((*MEMORY[0x277D85000] & selfCopy->super.isa) + 0x80))(v4, v6, 0xD000000000000013, 0x80000002757B9680);
}

- (void)loadFailedWithLoadIdentifier:(id)identifier duration:(int64_t)duration errorCode:(int64_t)code
{
  v6 = sub_275797F50();
  v8 = v7;
  selfCopy = self;
  sub_2757416CC(v6, v8, 0x6C69614664616F6CLL, 0xEC0000005F657275);
}

- (void)loadSucceededWithLoadIdentifier:(id)identifier duration:(int64_t)duration
{
  v5 = sub_275797F50();
  v7 = v6;
  selfCopy = self;
  sub_2757416CC(v5, v7, 0x6363755364616F6CLL, 0xEC0000005F737365);
}

- (void)logInAppBannerEventWithAppIdentifier:(id)identifier eventName:(id)name
{
  v5 = sub_275797F50();
  v7 = v6;
  v11[0] = sub_275797F50();
  v11[1] = v8;
  v11[2] = v5;
  v11[3] = v7;
  v11[4] = 0;
  v9 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x50);
  selfCopy = self;

  v9(v11);
}

+ (void)logInAppBannerInteractionWithAppIdentifier:(id)identifier icqActionName:(id)name
{
  v4 = sub_275797F50();
  sub_275741774(v4, v5);
}

+ (void)logInAppBannerViewWithAppIdentifier:(id)identifier
{
  _s13iCloudQuotaUI9AnalyticsC3logyyAC5EventVFZ_0();
}

@end