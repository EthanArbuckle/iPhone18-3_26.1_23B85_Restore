@interface AlertTemplateController
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (NSArray)preferredFocusEnvironments;
- (_TtC8VideosUI23AlertTemplateController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)vui_loadView;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation AlertTemplateController

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  sub_1E3E73EC4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D30);
  v3 = sub_1E42062A4();

  return v3;
}

- (void)vui_loadView
{
  v2 = self;
  sub_1E3E73F8C();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3E740E0();
}

- (_TtC8VideosUI23AlertTemplateController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1E3E756C0(v5, v7, a4);
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
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
  v15 = OUTLINED_FUNCTION_23_16();
  v16 = sub_1E3E75A18(v15);

  (*(v8 + 8))(v12, v6);

  return v16;
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FE804();
  (*(v6 + 8))(v10, v4);
  return 0;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = a3;
  v10 = self;
  sub_1E3E75F04(v9, v8);

  v11 = sub_1E41FE874();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) != 1)
  {
    v12 = sub_1E41FE7E4();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  return v12;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1E3E761F8(v11, v9);
}

@end