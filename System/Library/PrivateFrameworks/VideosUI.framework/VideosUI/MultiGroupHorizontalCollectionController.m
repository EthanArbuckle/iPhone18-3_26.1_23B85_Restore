@interface MultiGroupHorizontalCollectionController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 selectionMarginsForItemAtIndexPath:(id)a5;
- (_TtC8VideosUI40MultiGroupHorizontalCollectionController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)vuiCollectionView:(id)a3 contextMenuConfigurationForItemAt:(id)a4 point:(CGPoint)a5;
- (id)vuiCollectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vuiCollectionView:(id)a3 didEndDisplaying:(id)a4 for:(id)a5;
- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4;
- (void)vuiCollectionView:(id)a3 willDisplay:(id)a4 for:(id)a5;
- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6;
- (void)vuiCollectionView:(id)a3 willEndContextMenuInteraction:(id)a4 animator:(id)a5;
- (void)vuiCollectionView:(id)a3 willPerformPreviewActionForMenuWith:(id)a4 animator:(id)a5;
- (void)vuiScrollViewDidEndDecelerating:(id)a3;
- (void)vuiScrollViewDidScroll:(id)a3;
- (void)vui_loadView;
- (void)vui_viewDidLoad;
@end

@implementation MultiGroupHorizontalCollectionController

- (void)vui_loadView
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E4088424();
}

- (void)vui_viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E40884B4();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1E4088B8C();
  swift_unknownObjectRelease();
}

- (_TtC8VideosUI40MultiGroupHorizontalCollectionController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E40895AC();
}

- (void)vuiCollectionView:(id)a3 didSelectItemAt:(id)a4
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_16_39();
  v7 = v4;
  v8 = v5;
  sub_1E408B498();

  v9 = OUTLINED_FUNCTION_53();
  v10(v9);
}

- (void)vuiCollectionView:(id)a3 willDisplay:(id)a4 for:(id)a5
{
  OUTLINED_FUNCTION_11_14();
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_65();
  v13 = a3;
  v14 = a4;
  v15 = v5;
  sub_1E408B880(v15, v14);

  (*(v11 + 8))(v6, v9);
}

- (void)vuiCollectionView:(id)a3 didEndDisplaying:(id)a4 for:(id)a5
{
  OUTLINED_FUNCTION_11_14();
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_65();
  v13 = a3;
  v14 = a4;
  v15 = v5;
  sub_1E408BB84();

  (*(v11 + 8))(v6, v9);
}

- (void)vuiCollectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 at:(id)a6
{
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E4205F14();
  sub_1E41FE804();

  (*(v9 + 8))(v6, v7);
}

- (void)vuiScrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E408BE58();
}

- (void)vuiScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E408BEC4(v4);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_50_1();
  if (a5)
  {
    sub_1E41FE804();
    v12 = sub_1E41FE874();
    v13 = 0;
  }

  else
  {
    v12 = sub_1E41FE874();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v13, 1, v12);
  v14 = a3;
  v15 = a4;
  v16 = self;
  sub_1E408C028(v16, v17, v5);
  OUTLINED_FUNCTION_18_3();

  sub_1E325F7FC(v5, &qword_1ECF309A0);
  v18 = OUTLINED_FUNCTION_17_4();
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v9 = v6;
  v10 = v7;
  sub_1E408C7E0(v10, v11, v5);
  OUTLINED_FUNCTION_18_3();

  v12 = OUTLINED_FUNCTION_17_4();
  result.height = v13;
  result.width = v12;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v9 = v6;
  v10 = v7;
  sub_1E408CBB4(v10, v11, v5);
  OUTLINED_FUNCTION_3();

  v12 = OUTLINED_FUNCTION_6();
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 selectionMarginsForItemAtIndexPath:(id)a5
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_50_1();
  if (a5)
  {
    sub_1E41FE804();
    v12 = sub_1E41FE874();
    v13 = 0;
  }

  else
  {
    v12 = sub_1E41FE874();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v13, 1, v12);
  v14 = a3;
  v15 = a4;
  v16 = self;
  v17 = OUTLINED_FUNCTION_11_5();
  sub_1E408CC98(v17, v18, v5);
  OUTLINED_FUNCTION_3();

  sub_1E325F7FC(v5, &qword_1ECF309A0);
  v19 = OUTLINED_FUNCTION_6();
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (id)vuiCollectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1E408E8E8(v6, v7);

  return v9;
}

- (id)vuiCollectionView:(id)a3 contextMenuConfigurationForItemAt:(id)a4 point:(CGPoint)a5
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_16_39();
  v8 = v5;
  v9 = v6;
  v10 = OUTLINED_FUNCTION_50();
  v11 = sub_1E408E994(v10);

  v12 = OUTLINED_FUNCTION_53();
  v13(v12);

  return v11;
}

- (void)vuiCollectionView:(id)a3 willPerformPreviewActionForMenuWith:(id)a4 animator:(id)a5
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v6;
  OUTLINED_FUNCTION_51();
  sub_1E408EB50();

  swift_unknownObjectRelease();
}

- (void)vuiCollectionView:(id)a3 willEndContextMenuInteraction:(id)a4 animator:(id)a5
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v9 = v6;
  swift_unknownObjectRetain();
  v10 = v7;
  sub_1E408EBF8(v10, v9, v5);

  swift_unknownObjectRelease();
}

@end