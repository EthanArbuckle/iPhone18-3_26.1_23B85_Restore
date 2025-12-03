@interface PXSwiftUITungstenView.ViewController
- (_TtCV12PhotosUICore21PXSwiftUITungstenViewP33_056D1FF7FB10D0432A5593ADA99729F214ViewController)initWithCoder:(id)coder;
- (_TtCV12PhotosUICore21PXSwiftUITungstenViewP33_056D1FF7FB10D0432A5593ADA99729F214ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXSwiftUITungstenView.ViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1A483058C(appear);
}

- (_TtCV12PhotosUICore21PXSwiftUITungstenViewP33_056D1FF7FB10D0432A5593ADA99729F214ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1A524C674();
    bundleCopy = bundle;
    v7 = sub_1A524C634();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PXSwiftUITungstenView.ViewController();
  v9 = [(PXSwiftUITungstenView.ViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtCV12PhotosUICore21PXSwiftUITungstenViewP33_056D1FF7FB10D0432A5593ADA99729F214ViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXSwiftUITungstenView.ViewController();
  coderCopy = coder;
  v5 = [(PXSwiftUITungstenView.ViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end