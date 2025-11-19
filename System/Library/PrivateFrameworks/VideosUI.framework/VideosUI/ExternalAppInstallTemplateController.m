@interface ExternalAppInstallTemplateController
- (_TtC8VideosUI36ExternalAppInstallTemplateController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)vui_viewDidAppear:(BOOL)a3;
@end

@implementation ExternalAppInstallTemplateController

- (void)vui_viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1E41E267C(a3);
}

- (_TtC8VideosUI36ExternalAppInstallTemplateController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1E41E2838(v5, v7, a4);
}

@end