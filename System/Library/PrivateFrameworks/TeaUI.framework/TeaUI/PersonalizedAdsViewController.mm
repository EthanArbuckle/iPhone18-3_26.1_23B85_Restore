@interface PersonalizedAdsViewController
- (_TtC5TeaUI29PersonalizedAdsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5TeaUI29PersonalizedAdsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapLearnMore;
- (void)didTapTurnOff;
- (void)didTapTurnOn;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PersonalizedAdsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D817B250();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D817BE60();
}

- (_TtC5TeaUI29PersonalizedAdsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  sub_1D8190F14();
  if (text)
  {
    sub_1D8190F14();
    if (!name)
    {
LABEL_3:
      sub_1D817C43C();
    }
  }

  else if (!name)
  {
    goto LABEL_3;
  }

  sub_1D8190F14();
  sub_1D817C43C();
}

- (_TtC5TeaUI29PersonalizedAdsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  sub_1D8190F14();
  if (text)
  {
    sub_1D8190F14();
  }

  iconCopy = icon;
  sub_1D817C4B0();
}

- (void)didTapLearnMore
{
  selfCopy = self;
  sub_1D817C5AC();
}

- (void)didTapTurnOn
{
  selfCopy = self;
  sub_1D817C758(&OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_turnOnCallback);
}

- (void)didTapTurnOff
{
  selfCopy = self;
  sub_1D817C758(&OBJC_IVAR____TtC5TeaUI29PersonalizedAdsViewController_turnOffCallback);
}

@end