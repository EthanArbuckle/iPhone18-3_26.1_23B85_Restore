@interface WorkoutPlanCalendarViewController
- (_TtC9SeymourUI33WorkoutPlanCalendarViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI33WorkoutPlanCalendarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_collectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WorkoutPlanCalendarViewController

- (_TtC9SeymourUI33WorkoutPlanCalendarViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_dataSource) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isApplyingSnapshot) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isTappingScrollView) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20B81FEE4();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_20B820AAC(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC9SeymourUI33WorkoutPlanCalendarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v10 = a3;
  v11 = self;
  sub_20B821B94();

  (*(v7 + 8))(v9, v6);
}

- (void)_collectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = self;
  sub_20B821110(a3, a4, a5);

  swift_unknownObjectRelease();
}

@end