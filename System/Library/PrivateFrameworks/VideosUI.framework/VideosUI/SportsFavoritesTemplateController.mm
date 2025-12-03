@interface SportsFavoritesTemplateController
- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at;
- (void)vuiCollectionView:(id)view willDisplay:(id)display for:(id)for;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLoad;
@end

@implementation SportsFavoritesTemplateController

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E3DB6E0C();
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3DB6F8C(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3DB738C(v4);
}

- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at
{
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FE804();
  viewCopy = view;
  selfCopy = self;
  sub_1E3DB7960();

  (*(v8 + 8))(v12, v6);
}

- (void)vuiCollectionView:(id)view willDisplay:(id)display for:(id)for
{
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  sub_1E41FE804();
  viewCopy = view;
  displayCopy = display;
  selfCopy = self;
  sub_1E3DB7D24(viewCopy, displayCopy, v14);

  (*(v10 + 8))(v14, v8);
}

@end