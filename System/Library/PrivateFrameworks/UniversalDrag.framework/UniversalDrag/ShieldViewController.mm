@interface ShieldViewController
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (_TtC13UniversalDrag20ShieldViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation ShieldViewController

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_270690D44(0, &qword_28081CF58, 0x277D75C68);
  sub_270690D84(&qword_28081CF60, &qword_28081CF58, 0x277D75C68);
  v6 = sub_2706E5B9C();
  eventCopy = event;
  selfCopy = self;
  sub_27068D81C(v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_27068E530();
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27068E6E4();

  swift_unknownObjectRelease();
  return 0;
}

- (_TtC13UniversalDrag20ShieldViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_2706E5A3C();
  }

  bundleCopy = bundle;
  sub_27068EB18();
}

@end