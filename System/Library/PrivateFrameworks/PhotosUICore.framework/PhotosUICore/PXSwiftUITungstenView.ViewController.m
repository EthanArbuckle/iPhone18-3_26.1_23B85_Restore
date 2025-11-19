@interface PXSwiftUITungstenView.ViewController
- (_TtCV12PhotosUICore21PXSwiftUITungstenViewP33_056D1FF7FB10D0432A5593ADA99729F214ViewController)initWithCoder:(id)a3;
- (_TtCV12PhotosUICore21PXSwiftUITungstenViewP33_056D1FF7FB10D0432A5593ADA99729F214ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXSwiftUITungstenView.ViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1A483058C(a3);
}

- (_TtCV12PhotosUICore21PXSwiftUITungstenViewP33_056D1FF7FB10D0432A5593ADA99729F214ViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1A524C674();
    v6 = a4;
    v7 = sub_1A524C634();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PXSwiftUITungstenView.ViewController();
  v9 = [(PXSwiftUITungstenView.ViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtCV12PhotosUICore21PXSwiftUITungstenViewP33_056D1FF7FB10D0432A5593ADA99729F214ViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXSwiftUITungstenView.ViewController();
  v4 = a3;
  v5 = [(PXSwiftUITungstenView.ViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end