@interface ICQAnalytics
+ (void)logInAppBannerImpressionWithAppIdentifier:(id)a3;
+ (void)logInAppBannerInteractionWithAppIdentifier:(id)a3 icqActionName:(id)a4;
+ (void)logInAppBannerViewWithAppIdentifier:(id)a3;
- (ICQAnalytics)init;
- (void)allSetScreenImpressionWithAttributingAppIdentifier:(id)a3;
- (void)freshmintPageDisplayedFromInAppBannerWithAppIdentifier:(id)a3;
- (void)freshmintPageInteractionFromInAppBannerWithAppIdentifier:(id)a3 interactionIdentifier:(id)a4;
- (void)loadFailedWithLoadIdentifier:(id)a3 duration:(int64_t)a4 errorCode:(int64_t)a5;
- (void)loadSucceededWithLoadIdentifier:(id)a3 duration:(int64_t)a4;
- (void)logInAppBannerEventWithAppIdentifier:(id)a3 eventName:(id)a4;
@end

@implementation ICQAnalytics

+ (void)logInAppBannerImpressionWithAppIdentifier:(id)a3
{
  _s13iCloudQuotaUI9AnalyticsC3logyyAC5EventVFZ_0();
}

- (ICQAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Analytics();
  return [(ICQAnalytics *)&v3 init];
}

- (void)freshmintPageDisplayedFromInAppBannerWithAppIdentifier:(id)a3
{
  v4 = sub_275797F50();
  v6 = v5;
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x80);
  v8 = self;
  v7(v4, v6, 0xD000000000000011, 0x80000002757B9660);
}

- (void)freshmintPageInteractionFromInAppBannerWithAppIdentifier:(id)a3 interactionIdentifier:(id)a4
{
  v5 = sub_275797F50();
  v7 = v6;
  v8 = sub_275797F50();
  v10 = v9;
  v11 = self;
  MEMORY[0x277C80130](v8, v10);

  (*((*MEMORY[0x277D85000] & v11->super.isa) + 0x80))(v5, v7, 0x6E696D6873657266, 0xEA00000000005F74);
}

- (void)allSetScreenImpressionWithAttributingAppIdentifier:(id)a3
{
  v4 = sub_275797F50();
  v6 = v5;
  v7 = self;
  sub_275798710();

  MEMORY[0x277C80130](v4, v6);
  (*((*MEMORY[0x277D85000] & v7->super.isa) + 0x80))(v4, v6, 0xD000000000000013, 0x80000002757B9680);
}

- (void)loadFailedWithLoadIdentifier:(id)a3 duration:(int64_t)a4 errorCode:(int64_t)a5
{
  v6 = sub_275797F50();
  v8 = v7;
  v9 = self;
  sub_2757416CC(v6, v8, 0x6C69614664616F6CLL, 0xEC0000005F657275);
}

- (void)loadSucceededWithLoadIdentifier:(id)a3 duration:(int64_t)a4
{
  v5 = sub_275797F50();
  v7 = v6;
  v8 = self;
  sub_2757416CC(v5, v7, 0x6363755364616F6CLL, 0xEC0000005F737365);
}

- (void)logInAppBannerEventWithAppIdentifier:(id)a3 eventName:(id)a4
{
  v5 = sub_275797F50();
  v7 = v6;
  v11[0] = sub_275797F50();
  v11[1] = v8;
  v11[2] = v5;
  v11[3] = v7;
  v11[4] = 0;
  v9 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x50);
  v10 = self;

  v9(v11);
}

+ (void)logInAppBannerInteractionWithAppIdentifier:(id)a3 icqActionName:(id)a4
{
  v4 = sub_275797F50();
  sub_275741774(v4, v5);
}

+ (void)logInAppBannerViewWithAppIdentifier:(id)a3
{
  _s13iCloudQuotaUI9AnalyticsC3logyyAC5EventVFZ_0();
}

@end