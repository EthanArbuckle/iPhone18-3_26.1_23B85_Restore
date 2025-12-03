@interface WorkoutPlanCalendarViewController
- (_TtC9SeymourUI33WorkoutPlanCalendarViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI33WorkoutPlanCalendarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WorkoutPlanCalendarViewController

- (_TtC9SeymourUI33WorkoutPlanCalendarViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_20B81FEE4();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20B820AAC(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC9SeymourUI33WorkoutPlanCalendarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  viewCopy = view;
  selfCopy = self;
  sub_20B821B94();

  (*(v7 + 8))(v9, v6);
}

- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20B821110(view, scroll, section);

  swift_unknownObjectRelease();
}

@end