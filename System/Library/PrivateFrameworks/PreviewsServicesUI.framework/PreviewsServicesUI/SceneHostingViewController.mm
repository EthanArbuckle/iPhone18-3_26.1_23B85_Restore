@interface SceneHostingViewController
- (BOOL)canBecomeFirstResponder;
- (_TtC18PreviewsServicesUI26SceneHostingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
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
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
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

- (void)traitCollectionDidChange:(id)change
{
  v4 = OBJC_IVAR____TtC18PreviewsServicesUI26SceneHostingViewController_isUserActivePreview;
  swift_beginAccess();
  if (*(&self->super.super.super.isa + v4) == 1)
  {
    selfCopy = self;
    traitCollection = [(SceneHostingViewController *)selfCopy traitCollection];
    [traitCollection activeAppearance];
  }
}

- (_TtC18PreviewsServicesUI26SceneHostingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_25F55F3F8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SceneHostingViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end