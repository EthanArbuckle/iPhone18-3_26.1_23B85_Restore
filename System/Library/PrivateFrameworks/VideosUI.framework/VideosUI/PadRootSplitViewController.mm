@interface PadRootSplitViewController
- (BOOL)controllerExistsForIdentifier:(id)identifier;
- (BOOL)hasRemoteBarItems;
- (BOOL)isFloatingTabBarInHierarchy;
- (BOOL)isSidebarEditing;
- (BOOL)isTabbarMode;
- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab;
- (UINavigationController)currentNavigationController;
- (UIViewController)currentViewController;
- (_TtC8VideosUI26PadRootSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8VideosUI26PadRootSplitViewController)initWithTabs:(id)tabs;
- (id)controllerForIdentifier:(id)identifier;
- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request;
- (void)preloadImageViewModelsFromBarItems:(id)items completion:(id)completion;
- (void)removeAllChildViewControllers;
- (void)setSelectedIndexForIdentifier:(id)identifier withDeeplinkURL:(id)l;
- (void)tabBarController:(id)controller sidebar:(id)sidebar didEndDisplayingTab:(id)tab;
- (void)tabBarController:(id)controller sidebar:(id)sidebar updateItem:(id)item;
- (void)tabBarController:(id)controller sidebar:(id)sidebar willBeginDisplayingTab:(id)tab;
- (void)tabBarController:(id)controller sidebarVisibilityWillChange:(id)change animator:(id)animator;
- (void)tabBarControllerDidEndEditing:(id)editing;
- (void)tabBarControllerWillBeginEditing:(id)editing;
- (void)updateWithBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults appContext:(id)context;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PadRootSplitViewController

- (UINavigationController)currentNavigationController
{
  selfCopy = self;
  v3 = sub_1E3E0EAD4();

  return v3;
}

- (UIViewController)currentViewController
{
  selfCopy = self;
  v3 = sub_1E3E0EB74();

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3E11370(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3E11508(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3E115E4();
}

- (_TtC8VideosUI26PadRootSplitViewController)initWithTabs:(id)tabs
{
  sub_1E3280A90(0, &unk_1ECF39558);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  sub_1E3E11CC8();
}

- (_TtC8VideosUI26PadRootSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3E11D38();
}

- (void)preloadImageViewModelsFromBarItems:(id)items completion:(id)completion
{
  v5 = _Block_copy(completion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1E3E14684();
}

- (void)updateWithBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults appContext:(id)context
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  OUTLINED_FUNCTION_40_3();
  sub_1E42062B4();
  contextCopy = context;
  selfCopy = self;
  sub_1E3E14798();
}

- (void)setSelectedIndexForIdentifier:(id)identifier withDeeplinkURL:(id)l
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  if (!identifier)
  {
    if (l)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = sub_1E41FE414();
    v11 = 1;
    goto LABEL_6;
  }

  sub_1E4205F14();
  if (!l)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E41FE3C4();
  v10 = sub_1E41FE414();
  v11 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  selfCopy = self;
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_59_1();
  sub_1E3E15228();

  sub_1E325F7FC(v9, &unk_1ECF363C0);
}

- (BOOL)controllerExistsForIdentifier:(id)identifier
{
  sub_1E4205F14();
  OUTLINED_FUNCTION_145();
  selfCopy = self;
  OUTLINED_FUNCTION_12_1();
  v5 = sub_1E3E165C4();

  return v5;
}

- (id)controllerForIdentifier:(id)identifier
{
  sub_1E4205F14();
  OUTLINED_FUNCTION_145();
  selfCopy = self;
  OUTLINED_FUNCTION_12_1();
  v5 = sub_1E3E16684();

  return v5;
}

- (BOOL)isTabbarMode
{
  selfCopy = self;
  v3 = sub_1E3E167D8();

  return v3;
}

- (BOOL)isSidebarEditing
{
  selfCopy = self;
  v3 = sub_1E3E1687C();

  return v3 & 1;
}

- (BOOL)isFloatingTabBarInHierarchy
{
  selfCopy = self;
  v3 = sub_1E3E168D4();

  return v3 & 1;
}

- (void)removeAllChildViewControllers
{
  selfCopy = self;
  sub_1E3E16A58();
}

- (BOOL)hasRemoteBarItems
{
  selfCopy = self;
  v3 = sub_1E3E16B14();

  return v3 & 1;
}

- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab
{
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  sub_1E3E219C8();
  v10 = v9;

  return v10 & 1;
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, controller);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  sub_1E3E21FA8();
  v13 = v12;

  return v13;
}

- (void)tabBarController:(id)controller sidebar:(id)sidebar updateItem:(id)item
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, controller);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  OUTLINED_FUNCTION_146_7();
  sub_1E3E23030();
}

- (void)tabBarController:(id)controller sidebarVisibilityWillChange:(id)change animator:(id)animator
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, controller);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v6;
  sub_1E3E23680();

  swift_unknownObjectRelease();
}

- (void)tabBarController:(id)controller sidebar:(id)sidebar willBeginDisplayingTab:(id)tab
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, controller);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  OUTLINED_FUNCTION_146_7();
  sub_1E3E23828(v12, v13, v14);
}

- (void)tabBarController:(id)controller sidebar:(id)sidebar didEndDisplayingTab:(id)tab
{
  v8 = OUTLINED_FUNCTION_16_18(self, a2, controller);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  OUTLINED_FUNCTION_146_7();
  sub_1E3E23828(v12, v13, v14);
}

- (void)tabBarControllerWillBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3E23B28(editingCopy, 1);
}

- (void)tabBarControllerDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3E23B28(editingCopy, 0);
}

@end