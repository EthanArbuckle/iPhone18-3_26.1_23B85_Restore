@interface StackViewController
- (BOOL)collectionView:(id)view dragSessionAllowsMoveOperation:(id)operation;
- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)category in:(id)in at:(id)at;
- (BOOL)vui_handleActionInCell:(id)cell fromSubview:(id)subview details:(id)details;
- (_TtC8VideosUI19StackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)vuiCollectionView:(id)view contextMenuConfigurationForItemAt:(id)at point:(CGPoint)point;
- (id)vuiCollectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at;
- (void)vuiCollectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section;
- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at;
- (void)vuiCollectionView:(id)view willEndContextMenuInteraction:(id)interaction animator:(id)animator;
- (void)vuiCollectionView:(id)view willPerformPreviewActionForMenuWith:(id)with animator:(id)animator;
- (void)vuiScrollViewDidEndScrollingAnimation:(id)animation;
- (void)vuiScrollViewDidScroll:(id)scroll;
- (void)vui_cellNeedsReloading:(id)reloading;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillLayoutSubviews;
@end

@implementation StackViewController

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_65();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E39FFF54(selfCopy, v14, v5);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v5, v8);
  sub_1E3280A90(0, &qword_1ECF309A8);
  v15 = sub_1E42062A4();

  return v15;
}

- (BOOL)collectionView:(id)view dragSessionAllowsMoveOperation:(id)operation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1E3A005B4();

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_13_8();
  sub_1E3A00E60(v6, v7);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  if (path)
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
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v15 = sub_1E3A01A08();

  swift_unknownObjectRelease();
  sub_1E325F748(v10, &qword_1ECF309A0);

  return v15;
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E41CAD34();
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E41CB1A4();
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E41CB5AC();
}

- (void)vui_viewWillLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E41CB6CC();
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E41CB7B4();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E41CC934(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC8VideosUI19StackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E41CF370();
}

- (void)vuiCollectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind at:(id)at
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

- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at
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

- (void)vuiCollectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = OUTLINED_FUNCTION_74();
  sub_1E41D1448(v8, v9, section);

  swift_unknownObjectRelease();
}

- (id)vuiCollectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = OUTLINED_FUNCTION_38();
  v10 = sub_1E41D1ED8(v9, configurationCopy);

  return v10;
}

- (id)vuiCollectionView:(id)view contextMenuConfigurationForItemAt:(id)at point:(CGPoint)point
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

- (void)vuiCollectionView:(id)view willPerformPreviewActionForMenuWith:(id)with animator:(id)animator
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

- (void)vuiCollectionView:(id)view willEndContextMenuInteraction:(id)interaction animator:(id)animator
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

- (void)vuiScrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E41D23B0(v6);
}

- (void)vuiScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E41D2520(v6);
}

- (BOOL)shouldRubberbandElementWithCategory:(unint64_t)category in:(id)in at:(id)at
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

- (void)vui_cellNeedsReloading:(id)reloading
{
  reloadingCopy = reloading;
  selfCopy = self;
  OUTLINED_FUNCTION_1_26();
  sub_1E41D29F4();
}

- (BOOL)vui_handleActionInCell:(id)cell fromSubview:(id)subview details:(id)details
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