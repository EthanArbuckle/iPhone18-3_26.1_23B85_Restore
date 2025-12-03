@interface PlayerHUDTemplateController
- (id)vuiCollectionView:(id)view contextMenuConfigurationForItemAt:(id)at point:(CGPoint)point;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
@end

@implementation PlayerHUDTemplateController

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E378BAE8();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E378BFB0(appear, &selRef_vui_viewWillAppear_);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1E378BFB0(disappear, &selRef_vui_viewDidDisappear_);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E378C2A4();
}

- (id)vuiCollectionView:(id)view contextMenuConfigurationForItemAt:(id)at point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E41FE804();
  viewCopy = view;
  selfCopy = self;
  v18 = OUTLINED_FUNCTION_50();
  v19 = sub_1E378FECC(v18, x, y);

  (*(v11 + 8))(v15, v9);

  return v19;
}

@end