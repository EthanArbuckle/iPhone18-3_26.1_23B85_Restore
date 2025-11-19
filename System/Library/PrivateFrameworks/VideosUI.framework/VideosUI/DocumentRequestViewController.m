@interface DocumentRequestViewController
- (BOOL)handleDeeplink:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation DocumentRequestViewController

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentRequestViewController.vuiViewWillAppear(_:)(v4);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentRequestViewController.vuiViewDidAppear(_:)(v4);
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentRequestViewController.vuiViewWillDisappear(_:)(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  DocumentRequestViewController.vuiViewDidDisappear(_:)(v4);
}

- (BOOL)handleDeeplink:(id)a3
{
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FE3C4();
  v11 = self;
  DocumentRequestViewController.handleDeeplink(_:)(v10);

  (*(v6 + 8))(v10, v4);
  return 1;
}

@end