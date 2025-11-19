@interface AccountMessageViewController
- (_TtC8VideosUI28AccountMessageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)vui_loadView;
@end

@implementation AccountMessageViewController

- (void)vui_loadView
{
  v2 = self;
  sub_1E3A51A84();
}

- (_TtC8VideosUI28AccountMessageViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1E3A51C58(v5, v7, a4);
}

@end