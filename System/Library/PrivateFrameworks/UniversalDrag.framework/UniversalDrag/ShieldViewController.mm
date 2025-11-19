@interface ShieldViewController
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (_TtC13UniversalDrag20ShieldViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)viewDidLoad;
@end

@implementation ShieldViewController

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_270690D44(0, &qword_28081CF58, 0x277D75C68);
  sub_270690D84(&qword_28081CF60, &qword_28081CF58, 0x277D75C68);
  v6 = sub_2706E5B9C();
  v7 = a4;
  v8 = self;
  sub_27068D81C(v6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_27068E530();
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_27068E6E4();

  swift_unknownObjectRelease();
  return 0;
}

- (_TtC13UniversalDrag20ShieldViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_2706E5A3C();
  }

  v5 = a4;
  sub_27068EB18();
}

@end