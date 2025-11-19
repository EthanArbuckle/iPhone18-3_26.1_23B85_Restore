@interface UpsellOfferTemplateViewController
- (_TtC8VideosUI33UpsellOfferTemplateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
@end

@implementation UpsellOfferTemplateViewController

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E38DD8F8();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38DE320(v4);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38DE57C(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38DE8EC(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E38DEA6C();
}

- (_TtC8VideosUI33UpsellOfferTemplateViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1E38DEC24(v5, v7, a4);
}

@end