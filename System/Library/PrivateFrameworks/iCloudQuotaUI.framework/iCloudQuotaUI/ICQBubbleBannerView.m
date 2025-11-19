@interface ICQBubbleBannerView
- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)initWithCoder:(id)a3;
- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)initWithFrame:(CGRect)a3;
- (_TtP13iCloudQuotaUI27ICQBubbleBannerViewDelegate_)delegate;
- (void)updateBannerView;
@end

@implementation ICQBubbleBannerView

- (_TtP13iCloudQuotaUI27ICQBubbleBannerViewDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_actionButtons) = 0;
  v4 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_delegate;
  swift_unknownObjectWeakInit();

  sub_275782BFC(self + v4);
  type metadata accessor for ICQBubbleBannerView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)updateBannerView
{
  v2 = self;
  sub_275781D90();
}

- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end