@interface PersonalizedAdsViewController
- (_TtC5TeaUI29PersonalizedAdsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5TeaUI29PersonalizedAdsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapLearnMore;
- (void)didTapTurnOff;
- (void)didTapTurnOn;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PersonalizedAdsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D817B250();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D817BE60();
}

- (_TtC5TeaUI29PersonalizedAdsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  sub_1D8190F14();
  if (a4)
  {
    sub_1D8190F14();
    if (!a5)
    {
LABEL_3:
      sub_1D817C43C();
    }
  }

  else if (!a5)
  {
    goto LABEL_3;
  }

  sub_1D8190F14();
  sub_1D817C43C();
}

- (_TtC5TeaUI29PersonalizedAdsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  sub_1D8190F14();
  if (a4)
  {
    sub_1D8190F14();
  }

  v8 = a5;
  sub_1D817C4B0();
}

- (void)didTapLearnMore
{
  v2 = self;
  sub_1D817C5AC();
}

- (void)didTapTurnOn
{
  v2 = self;
  sub_1D817C758(&OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_turnOnCallback);
}

- (void)didTapTurnOff
{
  v2 = self;
  sub_1D817C758(&OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_turnOffCallback);
}

@end