@interface WindDownTimePickerCollectionViewCell
- (_TtC13SleepHealthUI36WindDownTimePickerCollectionViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI36WindDownTimePickerCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation WindDownTimePickerCollectionViewCell

- (_TtC13SleepHealthUI36WindDownTimePickerCollectionViewCell)initWithFrame:(CGRect)frame
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

  v7 = sub_269D258E0(x, y, width, height);

  return v7;
}

- (_TtC13SleepHealthUI36WindDownTimePickerCollectionViewCell)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269D25A80(coder);

  return v4;
}

@end