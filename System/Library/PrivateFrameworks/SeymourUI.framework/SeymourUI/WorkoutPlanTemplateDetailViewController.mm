@interface WorkoutPlanTemplateDetailViewController
- (CGSize)preferredContentSize;
- (_TtC9SeymourUI39WorkoutPlanTemplateDetailViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI39WorkoutPlanTemplateDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleDoneButtonTapped;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WorkoutPlanTemplateDetailViewController

- (CGSize)preferredContentSize
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {

    v6 = 764.0;
    v7 = 624.0;
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = ObjectType;
    [(WorkoutPlanTemplateDetailViewController *)&v12 preferredContentSize];
    v9 = v8;
    v11 = v10;

    v7 = v9;
    v6 = v11;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  [(WorkoutPlanTemplateDetailViewController *)&v5 setPreferredContentSize:width, height];
}

- (_TtC9SeymourUI39WorkoutPlanTemplateDetailViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_resignActiveObserver) = 0;
  v3 = self + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_isTransitioningContentInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_visibility) = 1;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(WorkoutPlanTemplateDetailViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor_];

    sub_20BAD6AD0(&unk_28228DC00);
    sub_20B794D34(0);
    sub_20B7961B8();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = sub_20C1333A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = self;
  v14.super_class = ObjectType;
  selfCopy = self;
  [(WorkoutPlanTemplateDetailViewController *)&v14 viewDidAppear:appearCopy];
  v11 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider;
  sub_20BDCB0E8();
  v12 = sub_20BAD56E0();
  v13[1] = selfCopy;
  (*(v7 + 16))(v9, *(&selfCopy->super.super.super.isa + v11) + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage, v6, v12);
  sub_20BAD9094(&qword_27C76A0B0);
  sub_20C138C54();
  (*(v7 + 8))(v9, v6);
  sub_20BAD9094(&qword_27C76A0B8);
  sub_20BAD9094(&qword_27C76A0C0);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  WorkoutPlanTemplateDetailViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(WorkoutPlanTemplateDetailViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20BAD9094(&qword_27C76A0B8);
  sub_20BAD9094(&qword_27C76A0C0);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(WorkoutPlanTemplateDetailViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)handleDoneButtonTapped
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider);
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page);
    v8 = *(v5 + 248);
    selfCopy = self;
    v8(v7, ObjectType, v5);

    swift_unknownObjectRelease();
  }
}

- (_TtC9SeymourUI39WorkoutPlanTemplateDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end