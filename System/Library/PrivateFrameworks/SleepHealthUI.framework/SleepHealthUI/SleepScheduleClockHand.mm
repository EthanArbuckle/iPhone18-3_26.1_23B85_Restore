@interface SleepScheduleClockHand
- (BOOL)accessibilityHandIsBedtime;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isHighlighted;
- (_TtC13SleepHealthUI22SleepScheduleClockHand)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI22SleepScheduleClockHand)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SleepScheduleClockHand

- (_TtC13SleepHealthUI22SleepScheduleClockHand)initWithCoder:(id)coder
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

  selfCopy = self;
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
  isHighlighted = [(SleepScheduleClockHand *)&v5 isHighlighted];

  return isHighlighted;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for SleepScheduleClockHand();
  selfCopy = self;
  [(SleepScheduleClockHand *)&v15 setHighlighted:highlightedCopy];
  v7 = *(&selfCopy->super.super.super._responderFlags + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v8 = *(&selfCopy->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v9 = *(&selfCopy->super.super._cachedTraitCollection + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v16[0] = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v6 = v16[0];
  v16[1] = v7;
  v16[2] = v8;
  v16[3] = v9;
  v17 = *(&selfCopy->super.super._swiftAnimationInfo + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
  v10 = v17;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  sub_269D2F550(v16);
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
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

- (_TtC13SleepHealthUI22SleepScheduleClockHand)initWithFrame:(CGRect)frame
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