@interface TimePickerCollectionViewCell
- (NSString)description;
- (_TtC13SleepHealthUI28TimePickerCollectionViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI28TimePickerCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation TimePickerCollectionViewCell

- (_TtC13SleepHealthUI28TimePickerCollectionViewCell)initWithFrame:(CGRect)frame
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

  v7 = sub_269C62974(x, y, width, height);

  return v7;
}

- (_TtC13SleepHealthUI28TimePickerCollectionViewCell)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell____lazy_storage___timePicker) = 0;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_269C62C94();

  v3 = sub_269D9A5F0();

  return v3;
}

@end