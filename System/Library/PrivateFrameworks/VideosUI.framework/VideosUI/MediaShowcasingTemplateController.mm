@interface MediaShowcasingTemplateController
- (void)vuiScrollViewDidScroll:(id)scroll;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillAppear:(BOOL)appear;
@end

@implementation MediaShowcasingTemplateController

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3B39F24();
}

- (void)vuiScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1E3B3C0B0(scrollCopy);
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3B3C170(v4);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3B3C214(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3B3C394(v4);
}

@end