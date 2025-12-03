@interface GoalTimePickerCollectionViewCell
- (_TtC13SleepHealthUI32GoalTimePickerCollectionViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI32GoalTimePickerCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation GoalTimePickerCollectionViewCell

- (_TtC13SleepHealthUI32GoalTimePickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_269CC1314(x, y, width, height);

  return v7;
}

- (_TtC13SleepHealthUI32GoalTimePickerCollectionViewCell)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269CC14B4(coder);

  return v4;
}

@end