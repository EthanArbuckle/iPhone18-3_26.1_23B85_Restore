@interface ConfirmationDialogTemplateController
- (_TtC8VideosUI36ConfirmationDialogTemplateController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissConfirmation;
- (void)onApplicationDidEnterBackground:(id)background;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
@end

@implementation ConfirmationDialogTemplateController

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3B4A94C();
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3B4AA20();
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3B4AB08();
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3B4ABA4();
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3B4AC78();
}

- (_TtC8VideosUI36ConfirmationDialogTemplateController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1E3B4B264(v5, v7, bundle);
}

- (void)onApplicationDidEnterBackground:(id)background
{
  v4 = sub_1E41FDF34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E3B4B3EC();

  (*(v5 + 8))(v7, v4);
}

- (void)dismissConfirmation
{
  selfCopy = self;
  sub_1E3B4B52C();
}

@end