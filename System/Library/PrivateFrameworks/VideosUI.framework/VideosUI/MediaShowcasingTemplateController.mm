@interface MediaShowcasingTemplateController
- (void)vuiScrollViewDidScroll:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillAppear:(BOOL)a3;
@end

@implementation MediaShowcasingTemplateController

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3B39F24();
}

- (void)vuiScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3B3C0B0(v4);
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3B3C170(v4);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3B3C214(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3B3C394(v4);
}

@end