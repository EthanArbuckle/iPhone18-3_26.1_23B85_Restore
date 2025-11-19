@interface StackViewController
- (BOOL)collectionView:(id)a3 dragSessionAllowsMoveOperation:(id)a4;
- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)a3 in:(id)a4 at:(id)a5;
- (BOOL)vui_handleActionInCell:(id)a3 fromSubview:(id)a4 details:(id)a5;
- (_TtC8VideosUI19StackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)vuiCollectionView:(id)a3 contextMenuConfigurationForItemAt:(id)a4 point:(CGPoint)a5;
- (id)vuiCollectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4;
- (void)vuiCollectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5;
- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6;
- (void)vuiCollectionView:(id)a3 willEndContextMenuInteraction:(id)a4 animator:(id)a5;
- (void)vuiCollectionView:(id)a3 willPerformPreviewActionForMenuWith:(id)a4 animator:(id)a5;
- (void)vuiScrollViewDidEndScrollingAnimation:(id)a3;
- (void)vuiScrollViewDidScroll:(id)a3;
- (void)vui_cellNeedsReloading:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillLayoutSubviews;
@end

@implementation StackViewController

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_65();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;
  sub_1E39FFF54(v13, v14, v5);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v5, v8);
  sub_1E3280A90(0, &qword_1ECF309A8);
  v15 = sub_1E42062A4();

  return v15;
}

- (BOOL)collectionView:(id)a3 dragSessionAllowsMoveOperation:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1E3A005B4();

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  v6 = OUTLINED_FUNCTION_13_8();
  sub_1E3A00E60(v6, v7);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  if (a5)
  {
    sub_1E41FE804();
    v11 = sub_1E41FE874();
    v12 = 0;
  }

  else
  {
    v11 = sub_1E41FE874();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  v15 = sub_1E3A01A08();

  swift_unknownObjectRelease();
  sub_1E325F748(v10, &qword_1ECF309A0);

  return v15;
}

- (void)vui_viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E41CAD34();
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_1E41CB1A4();
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E41CB5AC();
}

- (void)vui_viewWillLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E41CB6CC();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E41CB7B4();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1E41CC934(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC8VideosUI19StackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E41CF370();
}

- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E4205F14();
  sub_1E41FE804();

  v7 = OUTLINED_FUNCTION_74();
  v8(v7);
}

- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4
{
  OUTLINED_FUNCTION_54_57();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FE804();
  v7 = v4;
  v8 = v5;
  OUTLINED_FUNCTION_50();
  sub_1E41D11A4();

  v9 = OUTLINED_FUNCTION_53();
  v10(v9);
}

- (void)vuiCollectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v10 = self;
  v8 = OUTLINED_FUNCTION_74();
  sub_1E41D1448(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (id)vuiCollectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = OUTLINED_FUNCTION_38();
  v10 = sub_1E41D1ED8(v9, v7);

  return v10;
}

- (id)vuiCollectionView:(id)a3 contextMenuConfigurationForItemAt:(id)a4 point:(CGPoint)a5
{
  OUTLINED_FUNCTION_54_57();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FE804();
  v8 = v5;
  v9 = v6;
  v10 = OUTLINED_FUNCTION_50();
  v11 = sub_1E41D1F80(v10);

  v12 = OUTLINED_FUNCTION_53();
  v13(v12);

  return v11;
}

- (void)vuiCollectionView:(id)a3 willPerformPreviewActionForMenuWith:(id)a4 animator:(id)a5
{
  OUTLINED_FUNCTION_93_19();
  v7 = v6;
  v9 = v8;
  v10 = v5;
  swift_unknownObjectRetain();
  v11 = v7;
  OUTLINED_FUNCTION_51();
  sub_1E41D216C();

  swift_unknownObjectRelease();
}

- (void)vuiCollectionView:(id)a3 willEndContextMenuInteraction:(id)a4 animator:(id)a5
{
  OUTLINED_FUNCTION_93_19();
  v8 = v7;
  v10 = v9;
  v11 = v6;
  swift_unknownObjectRetain();
  v12 = v8;
  sub_1E41D221C(v12, v11, v5);

  swift_unknownObjectRelease();
}

- (void)vuiScrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E41D23B0(v6);
}

- (void)vuiScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E41D2520(v6);
}

- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)a3 in:(id)a4 at:(id)a5
{
  OUTLINED_FUNCTION_93_19();
  v8 = v7;
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E41FE804();
  v13 = v5;
  v14 = v8;
  v15 = OUTLINED_FUNCTION_38();
  v16 = sub_1E41D2828(v15);

  (*(v11 + 8))(v6, v9);
  return v16 & 1;
}

- (void)vui_cellNeedsReloading:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_1_26();
  sub_1E41D29F4();
}

- (BOOL)vui_handleActionInCell:(id)a3 fromSubview:(id)a4 details:(id)a5
{
  OUTLINED_FUNCTION_54_57();
  sub_1E4205C64();
  v8 = v6;
  v9 = v5;
  v10 = v7;
  v11 = sub_1E41D2E1C();

  return v11 & 1;
}

@end