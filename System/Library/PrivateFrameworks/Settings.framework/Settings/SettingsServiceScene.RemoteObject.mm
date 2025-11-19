@interface SettingsServiceScene.RemoteObject
- (void)updateSidebarWithItems:(id)a3;
@end

@implementation SettingsServiceScene.RemoteObject

- (void)updateSidebarWithItems:(id)a3
{
  v3 = a3;

  v4 = sub_21CE282BC();
  if (v4)
  {
    [v4 updateSidebarWithItems_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

@end