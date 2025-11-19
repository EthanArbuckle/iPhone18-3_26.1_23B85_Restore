@interface WindDownTimePickerCollectionViewCell
- (_TtC13SleepHealthUI36WindDownTimePickerCollectionViewCell)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI36WindDownTimePickerCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation WindDownTimePickerCollectionViewCell

- (_TtC13SleepHealthUI36WindDownTimePickerCollectionViewCell)initWithFrame:(CGRect)a3
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

  v7 = sub_269D258E0(x, y, width, height);

  return v7;
}

- (_TtC13SleepHealthUI36WindDownTimePickerCollectionViewCell)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269D25A80(a3);

  return v4;
}

@end