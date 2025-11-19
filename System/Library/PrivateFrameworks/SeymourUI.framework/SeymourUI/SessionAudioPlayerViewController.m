@interface SessionAudioPlayerViewController
- (_TtC9SeymourUI32SessionAudioPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation SessionAudioPlayerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20B8C8458();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for SessionAudioPlayerViewController();
  v4 = v9.receiver;
  v5 = a3;
  [(SessionAudioPlayerViewController *)&v9 traitCollectionDidChange:v5];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 traitCollection];
    sub_20B51C88C(0, &qword_27C7655A0);
    v8 = sub_20C13D5F4();

    if ((v8 & 1) == 0)
    {
      sub_20B8C8804();
    }

    v4 = v6;
  }

  else
  {
    sub_20B8C8804();
  }
}

- (_TtC9SeymourUI32SessionAudioPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end