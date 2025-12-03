@interface UpsellOfferTemplateViewController
- (_TtC8VideosUI33UpsellOfferTemplateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
@end

@implementation UpsellOfferTemplateViewController

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E38DD8F8();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38DE320(v4);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38DE57C(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38DE8EC(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E38DEA6C();
}

- (_TtC8VideosUI33UpsellOfferTemplateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E38DEC24(v5, v7, bundle);
}

@end