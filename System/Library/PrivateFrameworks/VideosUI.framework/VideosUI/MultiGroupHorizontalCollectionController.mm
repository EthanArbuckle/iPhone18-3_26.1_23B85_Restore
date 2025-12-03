@interface MultiGroupHorizontalCollectionController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout selectionMarginsForItemAtIndexPath:(id)path;
- (_TtC8VideosUI40MultiGroupHorizontalCollectionController)initWithNibName:(id)name bundle:(id)bundle;
- (id)vuiCollectionView:(id)view contextMenuConfigurationForItemAt:(id)at point:(CGPoint)point;
- (id)vuiCollectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vuiCollectionView:(id)view didEndDisplaying:(id)displaying for:(id)for;
- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at;
- (void)vuiCollectionView:(id)view willDisplay:(id)display for:(id)for;
- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at;
- (void)vuiCollectionView:(id)view willEndContextMenuInteraction:(id)interaction animator:(id)animator;
- (void)vuiCollectionView:(id)view willPerformPreviewActionForMenuWith:(id)with animator:(id)animator;
- (void)vuiScrollViewDidEndDecelerating:(id)decelerating;
- (void)vuiScrollViewDidScroll:(id)scroll;
- (void)vui_loadView;
- (void)vui_viewDidLoad;
@end

@implementation MultiGroupHorizontalCollectionController

- (void)vui_loadView
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E4088424();
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E40884B4();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E4088B8C();
  swift_unknownObjectRelease();
}

- (_TtC8VideosUI40MultiGroupHorizontalCollectionController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E40895AC();
}

- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at
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

- (void)vuiCollectionView:(id)view willDisplay:(id)display for:(id)for
{
  OUTLINED_FUNCTION_11_14();
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_65();
  viewCopy = view;
  displayCopy = display;
  v15 = v5;
  sub_1E408B880(v15, displayCopy);

  (*(v11 + 8))(v6, v9);
}

- (void)vuiCollectionView:(id)view didEndDisplaying:(id)displaying for:(id)for
{
  OUTLINED_FUNCTION_11_14();
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_65();
  viewCopy = view;
  displayingCopy = displaying;
  v15 = v5;
  sub_1E408BB84();

  (*(v11 + 8))(v6, v9);
}

- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at
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

- (void)vuiScrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E408BE58();
}

- (void)vuiScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1E408BEC4(scrollCopy);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_50_1();
  if (path)
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
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_1E408C028(selfCopy, v17, v5);
  OUTLINED_FUNCTION_18_3();

  sub_1E325F7FC(v5, &qword_1ECF309A0);
  v18 = OUTLINED_FUNCTION_17_4();
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, view);
  v9 = v6;
  v10 = v7;
  sub_1E408C7E0(v10, v11, v5);
  OUTLINED_FUNCTION_18_3();

  v12 = OUTLINED_FUNCTION_17_4();
  result.height = v13;
  result.width = v12;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, view);
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout selectionMarginsForItemAtIndexPath:(id)path
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_50_1();
  if (path)
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
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
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

- (id)vuiCollectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_1E408E8E8(viewCopy, configurationCopy);

  return v9;
}

- (id)vuiCollectionView:(id)view contextMenuConfigurationForItemAt:(id)at point:(CGPoint)point
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

- (void)vuiCollectionView:(id)view willPerformPreviewActionForMenuWith:(id)with animator:(id)animator
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, view);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v6;
  OUTLINED_FUNCTION_51();
  sub_1E408EB50();

  swift_unknownObjectRelease();
}

- (void)vuiCollectionView:(id)view willEndContextMenuInteraction:(id)interaction animator:(id)animator
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, view);
  v9 = v6;
  swift_unknownObjectRetain();
  v10 = v7;
  sub_1E408EBF8(v10, v9, v5);

  swift_unknownObjectRelease();
}

@end