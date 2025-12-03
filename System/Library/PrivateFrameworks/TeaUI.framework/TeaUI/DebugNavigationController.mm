@interface DebugNavigationController
- (_TtC5TeaUI25DebugNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC5TeaUI25DebugNavigationController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation DebugNavigationController

- (_TtC5TeaUI25DebugNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (!class)
  {
    ObjCClassMetadata = 0;
    if (toolbarClass)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return DebugNavigationController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return DebugNavigationController.init(navigationBarClass:toolbarClass:)(ObjCClassMetadata, v6);
}

- (_TtC5TeaUI25DebugNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1D8190F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return DebugNavigationController.init(nibName:bundle:)(v5, v7, bundle);
}

@end