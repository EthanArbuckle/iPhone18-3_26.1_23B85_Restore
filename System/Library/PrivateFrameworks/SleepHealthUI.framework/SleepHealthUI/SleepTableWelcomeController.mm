@interface SleepTableWelcomeController
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SleepTableWelcomeController

- (void)viewDidLayoutSubviews
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for SleepTableWelcomeController();
  v3 = self;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
  sub_269C61D74();
}

- (void)viewWillAppear:(BOOL)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  sub_269C61D74();
}

@end