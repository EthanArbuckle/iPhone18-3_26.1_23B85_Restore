@interface TimeIntervalPickerView
- (_TtC13SleepHealthUI22TimeIntervalPickerView)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI22TimeIntervalPickerView)initWithFrame:(CGRect)a3;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)numberOfComponentsInPickerView:(id)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation TimeIntervalPickerView

- (_TtC13SleepHealthUI22TimeIntervalPickerView)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269CD9DCC(a3);

  return v4;
}

- (_TtC13SleepHealthUI22TimeIntervalPickerView)initWithFrame:(CGRect)a3
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

- (int64_t)numberOfComponentsInPickerView:(id)a3
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

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_269CDACBC(a4);

  return v5;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
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
  if (v9 << 63 >> 63 == a5)
  {
    v10 = self;
    sub_269CDA20C(a4);

LABEL_11:
    v16 = sub_269D9A5F0();

    goto LABEL_12;
  }

  if (!(v9 & 1) == a5)
  {
    v11 = self;
    result = sub_269CD9C48();
    v13 = *(v8 + 2);
    if ((a4 * v13) >> 64 != (a4 * v13) >> 63)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = [result stringFromTimeInterval_];

    if (v15)
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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v11 = self;
  sub_269CDA7D8(a4, a5, 1, v10);
}

@end