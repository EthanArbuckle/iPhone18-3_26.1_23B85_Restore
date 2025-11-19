@interface PlayerHUDTemplateController
- (id)vuiCollectionView:(id)a3 contextMenuConfigurationForItemAt:(id)a4 point:(CGPoint)a5;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
@end

@implementation PlayerHUDTemplateController

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E378BAE8();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1E378BFB0(a3, &selRef_vui_viewWillAppear_);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1E378BFB0(a3, &selRef_vui_viewDidDisappear_);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E378C2A4();
}

- (id)vuiCollectionView:(id)a3 contextMenuConfigurationForItemAt:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E41FE804();
  v16 = a3;
  v17 = self;
  v18 = OUTLINED_FUNCTION_50();
  v19 = sub_1E378FECC(v18, x, y);

  (*(v11 + 8))(v15, v9);

  return v19;
}

@end