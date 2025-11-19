@interface SleepScheduleClockHand
- (BOOL)accessibilityHandIsBedtime;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isHighlighted;
- (_TtC13SleepHealthUI22SleepScheduleClockHand)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI22SleepScheduleClockHand)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SleepScheduleClockHand

- (_TtC13SleepHealthUI22SleepScheduleClockHand)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_background;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_269D2FD78();
}

- (BOOL)isHighlighted
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for SleepScheduleClockHand();
  v3 = [(SleepScheduleClockHand *)&v5 isHighlighted];

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for SleepScheduleClockHand();
  v5 = self;
  [(SleepScheduleClockHand *)&v15 setHighlighted:v3];
  v7 = *(&v5->super.super.super._responderFlags + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v8 = *(&v5->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v9 = *(&v5->super.super._cachedTraitCollection + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v16[0] = *(&v5->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v6 = v16[0];
  v16[1] = v7;
  v16[2] = v8;
  v16[3] = v9;
  v17 = *(&v5->super.super._swiftAnimationInfo + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v10 = v17;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  sub_269D2F550(v16);
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (BOOL)accessibilityHandIsBedtime
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_symbol);

  return !(v3 >> 12) && v3 == 0;
}

- (_TtC13SleepHealthUI22SleepScheduleClockHand)initWithFrame:(CGRect)a3
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