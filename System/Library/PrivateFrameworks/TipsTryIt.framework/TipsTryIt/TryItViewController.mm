@interface TryItViewController
- (CGSize)preferredContentSize;
- (TryItViewController)initWithCoder:(id)a3;
- (TryItViewController)initWithLessonURL:(id)a3 tipID:(id)a4 collectionID:(id)a5 correlationID:(id)a6;
- (TryItViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TryItViewControllerDelegate)delegate;
- (void)loadView;
- (void)logEndSession;
- (void)setDelegate:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation TryItViewController

- (TryItViewControllerDelegate)delegate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___TryItViewController_delegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setDelegate:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___TryItViewController_delegate);
  *(&self->super.super.super.isa + OBJC_IVAR___TryItViewController_delegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (TryItViewController)initWithLessonURL:(id)a3 tipID:(id)a4 collectionID:(id)a5 correlationID:(id)a6
{
  v9 = sub_26F17F734();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17F714();
  if (a4)
  {
    a4 = sub_26F180754();
    v14 = v13;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    return TryItViewController.init(lessonURL:tipID:collectionID:correlationID:)(v12, a4, v14, a5, v16, v17, v19);
  }

  v14 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  a5 = sub_26F180754();
  v16 = v15;
  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v17 = sub_26F180754();
  v19 = v18;
  return TryItViewController.init(lessonURL:tipID:collectionID:correlationID:)(v12, a4, v14, a5, v16, v17, v19);
}

- (TryItViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___TryItViewController_hostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___TryItViewController_delegate) = 0;
  v4 = OBJC_IVAR___TryItViewController_tryItView;
  v5 = type metadata accessor for TipsTryItView();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_26F180AC4();
  __break(1u);
  return result;
}

- (void)logEndSession
{
  v2 = self;
  sub_26F166138();
}

- (CGSize)preferredContentSize
{
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;

  if (v5 <= 744.0 && (v6 = [v2 mainScreen], objc_msgSend(v6, sel_bounds), v8 = v7, v6, v8 <= 1133.0))
  {
    v9 = 656.0;
    *&v10 = 644.0;
  }

  else
  {
    v9 = 746.0;
    *&v10 = 704.0;
  }

  v11 = *&v10;
  result.height = v9;
  result.width = v11;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TryItViewController();
  [(TryItViewController *)&v5 setPreferredContentSize:width, height];
}

- (void)loadView
{
  v2 = self;
  sub_26F166434();
}

- (TryItViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end