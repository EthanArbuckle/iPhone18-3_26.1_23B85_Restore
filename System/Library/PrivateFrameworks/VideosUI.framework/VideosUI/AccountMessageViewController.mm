@interface AccountMessageViewController
- (_TtC8VideosUI28AccountMessageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)vui_loadView;
@end

@implementation AccountMessageViewController

- (void)vui_loadView
{
  selfCopy = self;
  sub_1E3A51A84();
}

- (_TtC8VideosUI28AccountMessageViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1E3A51C58(v5, v7, bundle);
}

@end