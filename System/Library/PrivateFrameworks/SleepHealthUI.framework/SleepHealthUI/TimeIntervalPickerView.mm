@interface TimeIntervalPickerView
- (_TtC13SleepHealthUI22TimeIntervalPickerView)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI22TimeIntervalPickerView)initWithFrame:(CGRect)frame;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)numberOfComponentsInPickerView:(id)view;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation TimeIntervalPickerView

- (_TtC13SleepHealthUI22TimeIntervalPickerView)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269CD9DCC(coder);

  return v4;
}

- (_TtC13SleepHealthUI22TimeIntervalPickerView)initWithFrame:(CGRect)frame
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfComponentsInPickerView:(id)view
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.super._cachedTraitCollection + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration);

  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_269CDACBC(component);

  return v5;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = self + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration;
  v9 = *(&self->super.super._cachedTraitCollection + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration);
  if (v9 << 63 >> 63 == component)
  {
    selfCopy = self;
    sub_269CDA20C(row);

LABEL_11:
    v16 = sub_269D9A5F0();

    goto LABEL_12;
  }

  if (!(v9 & 1) == component)
  {
    selfCopy2 = self;
    result = sub_269CD9C48();
    v13 = *(v8 + 2);
    if ((row * v13) >> 64 != (row * v13) >> 63)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    stringFromTimeInterval_ = [result stringFromTimeInterval_];

    if (stringFromTimeInterval_)
    {
      sub_269D9A630();
    }

    else
    {
    }

    goto LABEL_11;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  sub_269CDA7D8(row, component, 1, v10);
}

@end