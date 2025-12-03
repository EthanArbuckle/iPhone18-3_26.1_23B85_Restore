@interface AdsLocationServicesViewController
- (_TtC5TeaUI33AdsLocationServicesViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5TeaUI33AdsLocationServicesViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinue;
- (void)didTapManage;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AdsLocationServicesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D818C64C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D818CA04();
}

- (void)updateViewConstraints
{
  selfCopy = self;
  sub_1D818CAF8();
}

- (_TtC5TeaUI33AdsLocationServicesViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  sub_1D8190F14();
  if (text)
  {
    sub_1D8190F14();
    if (!name)
    {
LABEL_3:
      sub_1D818CCD0();
    }
  }

  else if (!name)
  {
    goto LABEL_3;
  }

  sub_1D8190F14();
  sub_1D818CCD0();
}

- (_TtC5TeaUI33AdsLocationServicesViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  sub_1D8190F14();
  if (text)
  {
    sub_1D8190F14();
  }

  iconCopy = icon;
  sub_1D818CD44();
}

- (void)didTapContinue
{
  selfCopy = self;
  sub_1D818CE94(&OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_continueCallback);
}

- (void)didTapManage
{
  selfCopy = self;
  sub_1D818CE94(&OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_manageCallback);
}

@end