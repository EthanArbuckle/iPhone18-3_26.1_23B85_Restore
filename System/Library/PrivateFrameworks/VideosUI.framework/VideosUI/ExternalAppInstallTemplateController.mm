@interface ExternalAppInstallTemplateController
- (_TtC8VideosUI36ExternalAppInstallTemplateController)initWithNibName:(id)name bundle:(id)bundle;
- (void)vui_viewDidAppear:(BOOL)appear;
@end

@implementation ExternalAppInstallTemplateController

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E41E267C(appear);
}

- (_TtC8VideosUI36ExternalAppInstallTemplateController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1E41E2838(v5, v7, bundle);
}

@end