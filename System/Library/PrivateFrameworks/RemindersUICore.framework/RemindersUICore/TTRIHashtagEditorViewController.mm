@interface TTRIHashtagEditorViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (_TtC15RemindersUICore31TTRIHashtagEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15RemindersUICore31TTRIHashtagEditorViewController)initWithStyle:(int64_t)a3;
- (void)didTapCancel:(id)a3;
- (void)didTapCommit:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TTRIHashtagEditorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_21D598518();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TTRIHashtagEditorViewController *)&v6 viewWillDisappear:v3];
  if ((*(v4 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_style + 8) & 1) != 0 || (*(v4 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_style) & 1) == 0)
  {
  }

  else
  {
    memset(v5, 0, sizeof(v5));
    sub_21D598AE0();

    sub_21D1A8418(v5);
  }
}

- (void)didTapCommit:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_21D598AE0();

  sub_21D1A8418(v6);
}

- (void)didTapCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D59AC08();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (_TtC15RemindersUICore31TTRIHashtagEditorViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore31TTRIHashtagEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = self;
  v4 = sub_21D59CBB8();

  return (v4 & 1) == 0;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D59B6A8(&unk_282EC5B88, 1, &unk_21DC1C930);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D59B6A8(&unk_282EC5AE8, 0, &unk_21DC1C918);
}

@end