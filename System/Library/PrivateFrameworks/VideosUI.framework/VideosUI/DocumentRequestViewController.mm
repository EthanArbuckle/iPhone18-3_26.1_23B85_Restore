@interface DocumentRequestViewController
- (BOOL)handleDeeplink:(id)deeplink;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
@end

@implementation DocumentRequestViewController

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentRequestViewController.vuiViewWillAppear(_:)(v4);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentRequestViewController.vuiViewDidAppear(_:)(v4);
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentRequestViewController.vuiViewWillDisappear(_:)(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentRequestViewController.vuiViewDidDisappear(_:)(v4);
}

- (BOOL)handleDeeplink:(id)deeplink
{
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FE3C4();
  selfCopy = self;
  DocumentRequestViewController.handleDeeplink(_:)(v10);

  (*(v6 + 8))(v10, v4);
  return 1;
}

@end