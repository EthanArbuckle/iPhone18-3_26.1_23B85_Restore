@interface WelcomeUIViewController
- (_TtC7Welcome23WelcomeUIViewController)initWithCoder:(id)a3;
- (_TtC7Welcome23WelcomeUIViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation WelcomeUIViewController

- (_TtC7Welcome23WelcomeUIViewController)initWithCoder:(id)a3
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

  v3 = self;
  sub_273D99F80();
}

- (_TtC7Welcome23WelcomeUIViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_273DA23AC();
  }

  v6 = a4;
  WelcomeUIViewController.init(nibName:bundle:)();
}

@end