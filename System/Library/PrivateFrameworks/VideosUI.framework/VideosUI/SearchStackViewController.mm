@interface SearchStackViewController
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at;
- (void)vuiScrollViewDidScroll:(id)scroll;
- (void)vui_didMoveToParentViewController:(id)controller;
- (void)vui_viewDidLoad;
@end

@implementation SearchStackViewController

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E3E67DE8();
}

- (void)vui_didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E3E680BC(controller);
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  sub_1E3E683AC(window);
}

- (void)vuiCollectionView:(id)view didSelectItemAt:(id)at
{
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  sub_1E41FE804();
  viewCopy = view;
  selfCopy = self;
  sub_1E3E686B8(viewCopy);

  v9 = OUTLINED_FUNCTION_53();
  v10(v9);
}

- (void)vuiScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1E3E6BA6C(scrollCopy);
}

@end