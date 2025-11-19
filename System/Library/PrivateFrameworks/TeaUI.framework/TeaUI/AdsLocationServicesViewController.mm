@interface AdsLocationServicesViewController
- (_TtC5TeaUI33AdsLocationServicesViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5TeaUI33AdsLocationServicesViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinue;
- (void)didTapManage;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AdsLocationServicesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D818C64C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D818CA04();
}

- (void)updateViewConstraints
{
  v2 = self;
  sub_1D818CAF8();
}

- (_TtC5TeaUI33AdsLocationServicesViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  sub_1D8190F14();
  if (a4)
  {
    sub_1D8190F14();
    if (!a5)
    {
LABEL_3:
      sub_1D818CCD0();
    }
  }

  else if (!a5)
  {
    goto LABEL_3;
  }

  sub_1D8190F14();
  sub_1D818CCD0();
}

- (_TtC5TeaUI33AdsLocationServicesViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  sub_1D8190F14();
  if (a4)
  {
    sub_1D8190F14();
  }

  v8 = a5;
  sub_1D818CD44();
}

- (void)didTapContinue
{
  v2 = self;
  sub_1D818CE94(&OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_continueCallback);
}

- (void)didTapManage
{
  v2 = self;
  sub_1D818CE94(&OBJC_IVAR____TtC5TeaUI33AdsLocationServicesViewController_manageCallback);
}

@end