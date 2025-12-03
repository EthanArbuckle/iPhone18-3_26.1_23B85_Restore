@interface PlusMinusButton
- (BOOL)isEnabled;
- (_TtC13SleepHealthUI15PlusMinusButton)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI15PlusMinusButton)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation PlusMinusButton

- (_TtC13SleepHealthUI15PlusMinusButton)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (BOOL)isEnabled
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for PlusMinusButton();
  isEnabled = [(PlusMinusButton *)&v5 isEnabled];

  return isEnabled;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for PlusMinusButton();
  selfCopy = self;
  [(PlusMinusButton *)&v8 setEnabled:enabledCopy];
  v6 = [(PlusMinusButton *)selfCopy isEnabled:v8.receiver];
  v7 = 0.5;
  if (v6)
  {
    v7 = 1.0;
  }

  [(PlusMinusButton *)selfCopy setAlpha:v7];
}

- (_TtC13SleepHealthUI15PlusMinusButton)initWithFrame:(CGRect)frame
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

@end