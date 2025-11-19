@interface ConfirmationDialogTemplateController
- (_TtC8VideosUI36ConfirmationDialogTemplateController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissConfirmation;
- (void)onApplicationDidEnterBackground:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation ConfirmationDialogTemplateController

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3B4A94C();
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3B4AA20();
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3B4AB08();
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3B4ABA4();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3B4AC78();
}

- (_TtC8VideosUI36ConfirmationDialogTemplateController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1E3B4B264(v5, v7, a4);
}

- (void)onApplicationDidEnterBackground:(id)a3
{
  v4 = sub_1E41FDF34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();
  v8 = self;
  sub_1E3B4B3EC();

  (*(v5 + 8))(v7, v4);
}

- (void)dismissConfirmation
{
  v2 = self;
  sub_1E3B4B52C();
}

@end