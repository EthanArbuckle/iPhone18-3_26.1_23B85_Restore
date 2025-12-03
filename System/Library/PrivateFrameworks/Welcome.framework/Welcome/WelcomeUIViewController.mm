@interface WelcomeUIViewController
- (_TtC7Welcome23WelcomeUIViewController)initWithCoder:(id)coder;
- (_TtC7Welcome23WelcomeUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation WelcomeUIViewController

- (_TtC7Welcome23WelcomeUIViewController)initWithCoder:(id)coder
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D99EB8();
}

- (void)viewDidLoad
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_273D99F80();
}

- (_TtC7Welcome23WelcomeUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_273DA23AC();
  }

  bundleCopy = bundle;
  WelcomeUIViewController.init(nibName:bundle:)();
}

@end