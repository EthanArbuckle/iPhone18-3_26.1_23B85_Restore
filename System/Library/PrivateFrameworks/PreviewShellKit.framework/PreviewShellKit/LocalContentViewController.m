@interface LocalContentViewController
- (_TtC15PreviewShellKit26LocalContentViewController)initWithCoder:(id)a3;
- (_TtC15PreviewShellKit26LocalContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation LocalContentViewController

- (void)viewDidLayoutSubviews
{
  v2 = self;
  LocalContentViewController.viewDidLayoutSubviews()();
}

- (_TtC15PreviewShellKit26LocalContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_25F17908C();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController) = 0;
    v8 = a4;
    a3 = sub_25F17905C();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController) = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(LocalContentViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC15PreviewShellKit26LocalContentViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(LocalContentViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end