@interface SportsFavoritesTemplateController
- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4;
- (void)vuiCollectionView:(id)a3 willDisplay:(id)a4 for:(id)a5;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLoad;
@end

@implementation SportsFavoritesTemplateController

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E3DB6E0C();
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3DB6F8C(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3DB738C(v4);
}

- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4
{
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FE804();
  v13 = a3;
  v14 = self;
  sub_1E3DB7960();

  (*(v8 + 8))(v12, v6);
}

- (void)vuiCollectionView:(id)a3 willDisplay:(id)a4 for:(id)a5
{
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  sub_1E41FE804();
  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_1E3DB7D24(v15, v16, v14);

  (*(v10 + 8))(v14, v8);
}

@end