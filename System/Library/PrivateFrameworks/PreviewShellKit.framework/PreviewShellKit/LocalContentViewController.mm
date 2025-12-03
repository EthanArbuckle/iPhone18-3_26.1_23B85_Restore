@interface LocalContentViewController
- (_TtC15PreviewShellKit26LocalContentViewController)initWithCoder:(id)coder;
- (_TtC15PreviewShellKit26LocalContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
@end

@implementation LocalContentViewController

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  LocalContentViewController.viewDidLayoutSubviews()();
}

- (_TtC15PreviewShellKit26LocalContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_25F17908C();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController) = 0;
    bundleCopy = bundle;
    name = sub_25F17905C();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController) = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(LocalContentViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC15PreviewShellKit26LocalContentViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(LocalContentViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end