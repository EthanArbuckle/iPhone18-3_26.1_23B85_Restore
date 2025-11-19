@interface SceneHostingViewController
- (BOOL)canBecomeFirstResponder;
- (_TtC18PreviewsServicesUI26SceneHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SceneHostingViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(SceneHostingViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  SceneHostingViewController.viewDidLayoutSubviews()();
}

- (BOOL)canBecomeFirstResponder
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_host))
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v2);
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  if (*(&self->super.super.super.isa + v4) == 1)
  {
    v5 = self;
    v6 = [(SceneHostingViewController *)v5 traitCollection];
    [v6 activeAppearance];
  }
}

- (_TtC18PreviewsServicesUI26SceneHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_25F55F3F8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SceneHostingViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end