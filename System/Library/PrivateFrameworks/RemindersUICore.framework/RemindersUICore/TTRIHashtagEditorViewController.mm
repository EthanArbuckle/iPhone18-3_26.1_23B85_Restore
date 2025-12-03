@interface TTRIHashtagEditorViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (_TtC15RemindersUICore31TTRIHashtagEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15RemindersUICore31TTRIHashtagEditorViewController)initWithStyle:(int64_t)style;
- (void)didTapCancel:(id)cancel;
- (void)didTapCommit:(id)commit;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTRIHashtagEditorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D598518();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TTRIHashtagEditorViewController *)&v6 viewWillDisappear:disappearCopy];
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

- (void)didTapCommit:(id)commit
{
  if (commit)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_21D598AE0();

  sub_21D1A8418(v6);
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D59AC08();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (_TtC15RemindersUICore31TTRIHashtagEditorViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore31TTRIHashtagEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  selfCopy = self;
  v4 = sub_21D59CBB8();

  return (v4 & 1) == 0;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_21D59B6A8(&unk_282EC5B88, 1, &unk_21DC1C930);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_21D59B6A8(&unk_282EC5AE8, 0, &unk_21DC1C918);
}

@end