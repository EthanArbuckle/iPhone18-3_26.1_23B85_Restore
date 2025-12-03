@interface AlertTemplateController
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (NSArray)preferredFocusEnvironments;
- (_TtC8VideosUI23AlertTemplateController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)vui_loadView;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation AlertTemplateController

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  sub_1E3E73EC4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D30);
  v3 = sub_1E42062A4();

  return v3;
}

- (void)vui_loadView
{
  selfCopy = self;
  sub_1E3E73F8C();
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3E740E0();
}

- (_TtC8VideosUI23AlertTemplateController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E3E756C0(v5, v7, bundle);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
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
  v15 = OUTLINED_FUNCTION_23_16();
  v16 = sub_1E3E75A18(v15);

  (*(v8 + 8))(v12, v6);

  return v16;
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
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

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  viewCopy = view;
  selfCopy = self;
  sub_1E3E75F04(viewCopy, v8);

  v11 = sub_1E41FE874();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) != 1)
  {
    v12 = sub_1E41FE7E4();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  return v12;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1E3E761F8(selfCopy, contextCopy);
}

@end