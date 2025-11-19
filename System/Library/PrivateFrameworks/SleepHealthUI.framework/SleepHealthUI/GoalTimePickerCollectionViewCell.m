@interface GoalTimePickerCollectionViewCell
- (_TtC13SleepHealthUI32GoalTimePickerCollectionViewCell)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI32GoalTimePickerCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation GoalTimePickerCollectionViewCell

- (_TtC13SleepHealthUI32GoalTimePickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtC13SleepHealthUI32GoalTimePickerCollectionViewCell)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269CC14B4(a3);

  return v4;
}

@end